"""Finite taxonomy placement and pure Lean-tree hostile controls; no proof claims."""
import hashlib
import importlib.util
import json
import sys
from pathlib import Path
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / '.noeaaeue/scripts'))
SPEC = importlib.util.spec_from_file_location('math_layout_taxonomy_test', ROOT / '.noeaaeue/scripts/check_math_layout.py')
M = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(M)


def canonical(value):
    return (json.dumps(value, sort_keys=True, separators=(',', ':'), ensure_ascii=True) + '\n').encode()


class TaxonomyTreeTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory(prefix='math-taxonomy-tree-')
        self.root = Path(self.temp.name).resolve()
        self.meta = self.root / '.noeaaeue/documentation/reference/taxonomy'
        self.meta.mkdir(parents=True)
        self.base = self.root / 'GRWTSK'
        self.base.mkdir()
        self.policy = {'required_directories': ['', 'Algebra', 'Algebra/Rings']}
        for relative in self.policy['required_directories']:
            p = self.base / relative
            p.mkdir(parents=True, exist_ok=True)
            (p / '.gitkeep').write_bytes(b'')

    def tearDown(self):
        self.temp.cleanup()

    def findings(self):
        return M.taxonomy_tree_findings(self.root, self.policy)

    def codes(self):
        return {x['code'] for x in self.findings()}

    def author(self):
        snapshot = {'identity': 'snapshot', 'root': 'root', 'nodes': [
            {'id': 'root', 'primary_parent': None}, {'id': 'algebra', 'primary_parent': 'root'},
            {'id': 'rings', 'primary_parent': 'algebra'}]}
        paths = {'snapshot': 'snapshot', 'occurrences': [
            {'id': 'root', 'directory': '', 'primary_parent': None},
            {'id': 'algebra', 'directory': 'Algebra', 'primary_parent': 'root'},
            {'id': 'rings', 'directory': 'Algebra/Rings', 'primary_parent': 'algebra'}]}
        for name, value in [('snapshot-v1.json', snapshot), ('paths-v1.json', paths)]:
            (self.meta / name).write_bytes(canonical(value))
        policy = dict(self.policy, schema='math-pmd-source-tree/1', root='GRWTSK',
                      snapshot='snapshot', snapshot_file=M.TAXONOMY_SNAPSHOT,
                      paths_file=M.TAXONOMY_PATHS, allowed_files=['.lean', '.gitkeep'],
                      mathematical_acceptance=False,
                      snapshot_sha256=hashlib.sha256(canonical(snapshot)).hexdigest(),
                      paths_sha256=hashlib.sha256(canonical(paths)).hexdigest())
        self.seal(policy)
        return policy

    def seal(self, policy):
        policy.pop('identity', None)
        policy['identity'] = hashlib.sha256(canonical(policy)).hexdigest()
        (self.meta / 'tree-policy-v1.json').write_bytes(canonical(policy))

    def test_interior_empty_direct_folder_requires_placeholder(self):
        self.assertEqual(self.findings(), [])
        (self.base / 'Algebra/.gitkeep').unlink()
        self.assertIn('missing-taxonomy-placeholder', self.codes())

    def test_direct_lean_disallows_placeholder(self):
        (self.base / 'Algebra/Rings/Core.lean').write_text('def x := 1\n')
        self.assertIn('redundant-taxonomy-placeholder', self.codes())
        (self.base / 'Algebra/Rings/.gitkeep').unlink()
        self.assertEqual(self.findings(), [])

    def test_metadata_and_operational_fragment_disallowed(self):
        for name in ('.pmd.json', 'AGENTS.md', 'Part.lean.inc', '.DS_Store'):
            with self.subTest(name=name):
                p = self.base / 'Algebra/Rings' / name
                p.write_bytes(b'x')
                self.assertIn('non-lean-taxonomy-entry', self.codes())
                p.unlink()

    def test_nonzero_placeholder_rejects(self):
        (self.base / '.gitkeep').write_bytes(b'\n')
        self.assertIn('nonempty-taxonomy-placeholder', self.codes())

    def test_symlink_file_and_directory_reject(self):
        (self.base / 'Algebra/Rings/X.lean').symlink_to(self.meta / 'missing')
        (self.base / 'Alias').symlink_to(self.base / 'Algebra', target_is_directory=True)
        self.assertEqual(sum(f['code'] == 'unsafe-taxonomy-entry' for f in self.findings()), 2)

    def test_missing_occurrence_directory_rejects(self):
        (self.base / 'Algebra/Rings/.gitkeep').unlink()
        (self.base / 'Algebra/Rings').rmdir()
        self.assertIn('missing-taxonomy-directory', self.codes())

    def test_exact_external_policy_loads(self):
        policy = self.author()
        self.assertEqual(M.taxonomy_tree_policy(self.root), (policy, []))

    def test_unsafe_declared_directory_rejects(self):
        policy = self.author()
        policy['required_directories'] = ['', '../Escape']
        self.seal(policy)
        self.assertIsNone(M.taxonomy_tree_policy(self.root)[0])

    def test_changed_external_metadata_rejects(self):
        self.author()
        (self.meta / 'paths-v1.json').write_bytes(b'{}\n')
        self.assertIsNone(M.taxonomy_tree_policy(self.root)[0])

    def test_policy_identity_drift_rejects(self):
        policy = self.author()
        policy['mathematical_acceptance'] = True
        (self.meta / 'tree-policy-v1.json').write_bytes(canonical(policy))
        self.assertIsNone(M.taxonomy_tree_policy(self.root)[0])

    def test_nonobject_external_metadata_classifies(self):
        policy = self.author()
        (self.meta / 'paths-v1.json').write_bytes(b'[]\n')
        policy['paths_sha256'] = hashlib.sha256(b'[]\n').hexdigest()
        self.seal(policy)
        self.assertIsNone(M.taxonomy_tree_policy(self.root)[0])

    def test_absent_policy_retains_legacy_subject_profile(self):
        self.assertEqual(M.taxonomy_tree_policy(self.root), (None, []))

    def test_dangling_policy_symlink_rejects(self):
        (self.meta / 'tree-policy-v1.json').symlink_to(self.meta / 'missing')
        self.assertTrue(M.taxonomy_tree_policy(self.root)[1])

    def candidate(self, role='negative-control', path='GRWTSK/Algebra/Checks/Negative/Fixture.lean'):
        entry = {'path': path, 'sha256': 'a' * 64, 'bytes': 1,
                 'status': M.CANDIDATE_STATUS, 'mathematical_admission': False,
                 'public_release_eligible': False, 'source_projection': 'noe-overlay-import-rewrite',
                 'provenance': {'repository': 'grwtsk/noeaaeue', 'original_path': path,
                                'original_sha256': 'b' * 64, 'original_role': role}}
        plan = {'schema': 'math-pmd-overlay-plan/1', 'targets': [
            {'target': path, 'sha256': entry['sha256'], 'occurrences': [
                {'origin': 'noe', 'source': path.removeprefix('GRWTSK/'), 'source_sha256': 'b' * 64}]}]}
        plan['identity'] = hashlib.sha256(canonical(plan)).hexdigest()
        (self.meta / 'overlay-plan-v1.json').write_bytes(canonical(plan))
        self.intake(entry)
        return entry

    def intake(self, entry):
        p = self.root / M.CANDIDATE_INTAKE
        p.parent.mkdir(parents=True, exist_ok=True)
        p.write_bytes(canonical({'schema': 'mathematical-source-intake-v1',
                                'status': 'CANDIDATE_SOURCE_INTAKE_NOT_THEOREM_ACCEPTANCE',
                                'sources': [entry], 'source_count': 1}))

    def test_exact_noe_negative_control_can_remain_isolated_candidate(self):
        entry = self.candidate()
        indexed, findings = M.candidate_intake(self.root)
        self.assertEqual(findings, [])
        self.assertIn(entry['path'], indexed)

    def test_broken_provider_stays_candidate_and_rejects(self):
        entry = self.candidate()
        entry['provenance']['original_sha256'] = 'c' * 64
        self.intake(entry)
        indexed, findings = M.candidate_intake(self.root)
        self.assertIn(entry['path'], indexed)
        self.assertIn('invalid-overlay-candidate-provider', {r['code'] for r in findings})

    def test_negative_control_cannot_be_relabelled_by_provenance(self):
        self.candidate(role='library')
        self.assertIn('invalid-candidate-path', {r['code'] for r in M.candidate_intake(self.root)[1]})

    def test_positive_check_is_not_admitted_as_overlay_candidate_profile(self):
        self.candidate(role='negative-control', path='GRWTSK/Algebra/Checks/Positive/Fixture.lean')
        self.assertIn('invalid-candidate-path', {r['code'] for r in M.candidate_intake(self.root)[1]})

    def test_legacy_checks_candidate_does_not_become_active_on_rejection(self):
        entry = self.candidate()
        entry['source_projection'] = 'byte-exact'
        self.intake(entry)
        indexed, findings = M.candidate_intake(self.root)
        self.assertIn(entry['path'], indexed)
        self.assertIn('invalid-candidate-path', {r['code'] for r in findings})

    def concurrent_candidate(self, role, group):
        entry = self.candidate(role=role, path='GRWTSK/Algebra/Checks/' + group + '/Fixture.lean')
        entry['source_projection'] = 'math-overlay-concurrent-import-rewrite'
        entry['provenance']['repository'] = 'grwtsk/math'
        supplement = {'schema': 'math-pmd-overlay-supplement/1', 'additions': [
            {'target': entry['path'], 'source': entry['path'], 'source_sha256': 'b' * 64, 'sha256': 'a' * 64}]}
        supplement['identity'] = hashlib.sha256(canonical(supplement)).hexdigest()
        (self.meta / 'overlay-supplement-v1.json').write_bytes(canonical(supplement))
        self.intake(entry)
        return entry

    def test_concurrent_positive_and_negative_controls_preserve_candidate_scope(self):
        for role, group in [('positive-check', 'Positive'), ('negative-control', 'Negative')]:
            with self.subTest(role=role):
                entry = self.concurrent_candidate(role, group)
                indexed, findings = M.candidate_intake(self.root)
                self.assertEqual(findings, [])
                self.assertIn(entry['path'], indexed)

    def test_concurrent_profile_cannot_relabel_original_role(self):
        entry = self.concurrent_candidate('positive-check', 'Positive')
        entry['provenance']['original_role'] = 'negative-control'
        self.intake(entry)
        self.assertIn('invalid-overlay-candidate-provider', {r['code'] for r in M.candidate_intake(self.root)[1]})

    def test_concurrent_profile_requires_exact_supplement_binding(self):
        entry = self.concurrent_candidate('positive-check', 'Positive')
        entry['provenance']['original_sha256'] = '0' * 64
        self.intake(entry)
        self.assertIn('invalid-overlay-candidate-provider', {r['code'] for r in M.candidate_intake(self.root)[1]})


if __name__ == '__main__':
    unittest.main()
