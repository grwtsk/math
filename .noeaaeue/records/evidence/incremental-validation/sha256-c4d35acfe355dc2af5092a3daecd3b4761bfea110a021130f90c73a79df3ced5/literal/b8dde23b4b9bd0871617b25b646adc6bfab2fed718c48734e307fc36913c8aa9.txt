"""Current generation contracts retain historical recipes and bind all adapters."""
import copy
import json
from pathlib import Path
from types import SimpleNamespace
import unittest
from unittest.mock import patch

import check_repository_conformance as conformance


class CurrentGenerationBindings(unittest.TestCase):
    def historical(self):
        return json.loads(conformance.RECIPES.read_bytes())

    def test_projection_is_explicit_idempotent_and_preserves_history(self):
        raw = conformance.RECIPES.read_bytes()
        original = self.historical();before = copy.deepcopy(original)
        current = conformance.current_recipe_view(original)
        self.assertEqual(original, before)
        self.assertEqual(conformance.RECIPES.read_bytes(), raw)
        self.assertEqual(conformance.current_recipe_view(current), current)
        recipe = current['generated_artifacts']['docs/reference/math-source-catalog.json']
        for dependency in conformance.CURRENT_CATALOG_INPUTS:
            self.assertIn(dependency, recipe['content_inputs'])
        self.assertEqual(current['default_reproduction']['historical_check_record'],
                         'immutable-observation')
        conformance.validate_recipes(current)

    def test_omitted_current_dependency_cannot_be_silently_added_to_current_contract(self):
        current = conformance.current_recipe_view(self.historical())
        current['generated_artifacts']['docs/reference/math-source-catalog.json']['content_inputs'].remove(
            conformance.CURRENT_CATALOG_INPUTS[0])
        with self.assertRaisesRegex(conformance.Invalid, 'reviewed adapter'):
            conformance.validate_recipes(current)

    def test_old_and_current_aliases_cannot_shadow_each_other(self):
        value = {'generated_artifacts':{
            'docs/reference/repository-artifact-catalog.json':{},
            conformance.CATALOG_REL:{}}}
        with self.assertRaisesRegex(conformance.Invalid, 'ambiguous'):
            conformance.current_recipe_view(value)

    def test_expected_catalog_binds_strict_current_observation(self):
        observed = {'identity':'exact-current-input','mathematical_admission':False}
        calls = []
        def observation(root):
            calls.append(('observe',root));return observed
        def catalog(layout,current=None):
            calls.append(('catalog',current));return {'layout':layout,'current':current}
        helper = SimpleNamespace(current_observations=observation,catalog=catalog,
                                 encoded=lambda value:json.dumps(value))
        with patch.object(conformance,'import_script',return_value=helper):
            result=conformance.generated_expected_bytes('docs/reference/math-source-catalog.json',{'old':'retained'})
        self.assertEqual(calls,[('observe',conformance.ROOT),('catalog',observed)])
        self.assertEqual(json.loads(result)['current'],observed)


if __name__ == '__main__':unittest.main()
