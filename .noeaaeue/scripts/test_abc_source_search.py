#!/usr/bin/env python3
"""Hostile neighboring fixtures for the research-only search scheduler."""
import copy
import unittest
import abc_source_search as controller


class SearchControls(unittest.TestCase):
    def setUp(self):
        self.signature = dict(zip(controller.SIGNATURE_FIELDS, [
            ["positive scale", "closed cycle"], "real vector spaces",
            "forall n forall composable cycles", ["positive scales", "composite equals identity"],
            "product of scales = 1", "none", "all finite cycles", "none",
            "chosen positive basis at each vertex", "forward",
        ]))
        self.obligation = {"id": "cycle", "signature": self.signature,
                           "exact_statement": "A commuting finite positive scale cycle has product one"}

    def test_bounded_plan_is_deterministic_and_has_negative_search(self):
        a = controller.plan([self.obligation], 100)
        self.assertEqual(a, controller.plan([self.obligation], 100))
        self.assertIn("negative", {r["family"] for r in a["queries"]})
        self.assertIn("premise-deletion", {r["family"] for r in a["queries"]})
        self.assertFalse(a["coverage"]["mathematical_admission"])
        self.assertEqual(a["coverage"]["executed"], 0)
        self.assertEqual(len(controller.plan([self.obligation], 2)["queries"]), 2)

    def test_quantifiers_constants_and_coprimality_change_identity(self):
        original = controller.statement_identity(self.signature)
        for key in ("quantifiers", "hypotheses", "constant_dependence", "uniformity", "normalization"):
            bad = copy.deepcopy(self.signature)
            bad[key] = [] if isinstance(bad[key], list) else "weakened"
            self.assertNotEqual(original, controller.statement_identity(bad))
        with self.assertRaises(ValueError):
            controller.statement_identity({"conclusion": "abc"})

    def test_nary_edge_requires_every_premise(self):
        graph = {"nodes": [{"id": x} for x in "abcd"], "edges": [{
            "id": "descent", "premises": ["a", "b", "c"],
            "required_premises": ["a", "b", "c"], "conclusion": "d"}]}
        self.assertEqual(controller.ready_edges(graph, "abc")["ready_for_review"], ["descent"])
        self.assertEqual(controller.ready_edges(graph, "ab")["ready_for_review"], [])
        graph["edges"][0]["premises"].pop()
        with self.assertRaises(ValueError):
            controller.ready_edges(graph, "ab")

    def test_occurrences_survive_dedup_and_versions_are_distinct(self):
        records = [{"source_id": "one", "arxiv": "2106.16165v1"},
                   {"source_id": "two", "arxiv": "2106.16165v1"},
                   {"source_id": "three", "arxiv": "2106.16165v3"}]
        grouped = controller.deduplicate(records)
        self.assertEqual(sorted(map(len, grouped.values())), [1, 2])
        with self.assertRaises(ValueError):
            controller.work_identity({"arxiv": "2106.16165"})

    def test_published_or_cached_is_not_a_scoring_proof(self):
        self.assertEqual(controller.rank({"primary": True})["score"], 4)
        with self.assertRaises(ValueError):
            controller.rank({"published_proof": True})
        with self.assertRaises(ValueError):
            controller.rank({"primary": "true"})

    def test_legacy_arxiv_and_doi_do_not_erase_revisions(self):
        self.assertEqual(controller.work_identity({"arxiv": "math/9909098v1"}), "arxiv:math/9909098v1")
        one = {"arxiv": "2004.13228v1", "doi": "10.1000/shared"}
        two = {"arxiv": "2004.13228v2", "doi": "10.1000/shared"}
        self.assertNotEqual(controller.work_identity(one), controller.work_identity(two))
        with self.assertRaises(ValueError):
            controller.work_identity({"doi": "10.1000/shared"})

    def test_priority_and_duplicate_obligations(self):
        low = {**self.obligation, "id": "low", "priority": 9}
        high = {**self.obligation, "id": "high", "priority": 1}
        self.assertEqual(controller.plan([low, high], 1)["queries"][0]["obligation"], "high")
        with self.assertRaises(ValueError):
            controller.plan([high, high], 1)

    def test_bidirectional_bounded_snowball(self):
        rows = [{"source_id": "s", "backward": [{"identity": "a", "locator": "p4 ref1", "url": "https://example.org/a"}],
                 "critique": [{"identity": "b", "locator": "p5", "url": "https://example.org/b", "priority": 2}]}]
        self.assertEqual(controller.snowball(rows, set(), 1)[0]["identity"], "b")
        self.assertEqual(controller.snowball(rows, {"b"}, 1)[0]["identity"], "a")


if __name__ == "__main__":
    unittest.main()
