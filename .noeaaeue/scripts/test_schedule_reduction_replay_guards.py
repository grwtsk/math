"""Bounded hostile controls for selected replay object custody and diagnostics."""
import importlib.util
import copy
import json
from pathlib import Path
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[2]


def module(name):
    spec = importlib.util.spec_from_file_location(name, ROOT / '.noeaaeue/scripts' / (name + '.py'))
    value = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(value)
    return value


class SelectedReplayGuards(unittest.TestCase):
    def test_current_source_profile_rejects_forged_native_facts(self):
        guard = module('check_math_trust')
        protocol = guard.owned_audit_protocol
        owner = 'GRWTSK.Logic.FiniteSequences.SelectedGuardFixture'
        digest = '1' * 64
        row = {
            'module': owner, 'name': owner + '.fixture', 'kind': 'theorem',
            'type': 'True', 'level_params': [], 'unsafe': False, 'partial': False,
            'known_generated_runtime_helper': False, 'mathematical_admission': True,
            'runtime_helper_parent': '', 'runtime_helper_same_owner': False,
            'runtime_helper_type_equal': False, 'runtime_helper_level_params_equal': False,
            'runtime_helper_profile_source_sha256': '',
            'runtime_helper_owner_source_sha256': digest,
            'direct_type_references_to_runtime_helpers': [],
            'direct_value_references_to_runtime_helpers': [],
            'direct_value_reference_to_runtime_helper': False, 'axioms': ['propext'],
        }

        def output(declaration):
            return '\n'.join([
                'MATH_TRUST_DECL::' + json.dumps(declaration),
                'MATH_TRUST_MODULE::' + json.dumps({'module': owner, 'declarations': 1}),
                'MATH_TRUST_COUNT::1', 'MATH_TRUST_MODULE_COUNT::1', '',
            ])

        def validate(declaration, hashes=None):
            return protocol.validate_census(output(declaration), [owner],
                {owner: digest} if hashes is None else hashes, {}, guard.census_records)

        self.assertEqual(len(validate(row)[0]), 1)
        changes = {
            'wrong-source': {'runtime_helper_owner_source_sha256': '2' * 64},
            'partial': {'partial': True}, 'unsafe': {'unsafe': True},
            'nonmathematical': {'mathematical_admission': False},
            'unapproved-axiom': {'axioms': ['sorryAx']},
            'invented-helper': {'known_generated_runtime_helper': True},
            'unqualified-reference': {
                'direct_value_references_to_runtime_helpers': [owner + '.fake._unsafe_rec'],
                'direct_value_reference_to_runtime_helper': True},
        }
        for name, changed in changes.items():
            with self.subTest(case=name):
                bad = copy.deepcopy(row)
                bad.update(changed)
                with self.assertRaises(RuntimeError):
                    validate(bad)
        with self.assertRaises(RuntimeError):
            validate(row, {})

    def test_generated_object_families(self):
        for name in ('check_prefix_table_schedule', 'check_third_cyclotomic_reduction'):
            driver = module(name)
            for change in ('unchanged', 'replace', 'truncate', 'delete-main', 'replace-private',
                           'delete-private', 'add-server', 'link-main', 'link-private'):
                with self.subTest(driver=name, change=change), tempfile.TemporaryDirectory() as raw:
                    folder = Path(raw)
                    main = folder / 'Selected.olean'
                    private = folder / 'Selected.olean.private'
                    main.write_bytes(b'original-main')
                    private.write_bytes(b'original-private')
                    frozen = {str(main): driver.object_family(main)}
                    if change == 'replace':
                        main.write_bytes(b'different-main')
                    elif change == 'truncate':
                        main.write_bytes(b'')
                    elif change == 'delete-main':
                        main.unlink()
                    elif change == 'replace-private':
                        private.write_bytes(b'different-private')
                    elif change == 'delete-private':
                        private.unlink()
                    elif change == 'add-server':
                        (folder / 'Selected.olean.server').write_bytes(b'new-server')
                    elif change in ('link-main', 'link-private'):
                        target = main if change == 'link-main' else private
                        content = target.read_bytes()
                        other = folder / 'same-bytes'
                        other.write_bytes(content)
                        target.unlink()
                        target.symlink_to(other)
                    if change == 'unchanged':
                        driver.verify_project_objects(frozen)
                    else:
                        with self.assertRaises(RuntimeError):
                            driver.verify_project_objects(frozen)

    def test_all_error_forms_counted(self):
        guard = module('check_math_trust')
        plain = 'x:1:1: error: Type mismatch\n'
        coded = 'x:2:1: error(lean.unknownIdentifier): Unknown identifier extra\n'
        self.assertEqual(len(guard.error_messages(plain)), 1)
        self.assertEqual(len(guard.error_messages(plain + coded)), 2)
        self.assertEqual(len(guard.error_messages(coded)), 1)
        self.assertEqual(guard.error_messages('x: warning: error-like prose\n'), [])
        # Both real drivers must call the structured parser and custody check.
        for name in ('check_prefix_table_schedule', 'check_third_cyclotomic_reduction'):
            source = (ROOT / '.noeaaeue/scripts' / (name + '.py')).read_text()
            self.assertIn('len(guard.error_messages(diagnostic)) == 1', source)
            self.assertIn('verify_project_objects(receipt["generated_project_objects"])', source)


if __name__ == '__main__':
    unittest.main()
