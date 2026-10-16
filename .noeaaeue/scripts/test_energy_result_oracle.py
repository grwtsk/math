"""Portable actual-output fixtures and hostile tests; never launch Lean."""
from copy import deepcopy
import hashlib
import json
from pathlib import Path
import unittest

import energy_result_oracle as oracle

ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / ".noeaaeue/tests/fixtures/energy"
FIXTURE_SHA256 = "88bc2d08ee05442c4edb7a0a86b3f35eee160e6430a919b78e6d798b92c51bae"
NATIVE_STDOUT_SHA256 = {'checks/Analysis/Energy/Declarations.lean': '2c978fbe242c9114f9040c5051c290a0a8f0cea4257f7d06f232e2707877c7dd', 'checks/Analysis/Energy/Controls/MissingBudget.lean': '2a3ac4ac4dc96193871f0f7243a639b7da44cacb445667135f4c35390cc726aa', 'checks/Analysis/Energy/Controls/DeterminantPaysBudget.lean': '33b833d83d4865f8d7932287995875fea96177063b4dc63939e057974fb25b06', 'checks/Analysis/Energy/Controls/SingleRate.lean': '90083840b4f6f4d37fa30298b7a11855f15b5957e1ca3aaee9160e75f0f7a01a', 'checks/Analysis/Energy/Controls/FiniteSamples.lean': '8a12d3e2d44a7dc14937b7e2329eaac4c6c74ded9146442a9095e89004b79788', 'checks/Analysis/Energy/Controls/DroppedResidual.lean': '9774d4c1201136952662ccc69ad863923fb7c617552946dec0ca12a857a55b3b', 'checks/Analysis/Energy/Controls/WrongPhase.lean': '47e325a9618e3efa2d0969b3775814ca9d673c514929aef843aa45fc0c9a5e99'}
FIXTURE_CASES = []


def record(name, expected):
    FIXTURE_CASES.append({"name": name, "expected": expected})


def require_fixture_binding(fixtures, contract):
    data = oracle._json(contract.raw)
    if (fixtures.get("schema") != "energy-result-oracle-fixtures-v2"
            or fixtures.get("contract_sha256") != hashlib.sha256(contract.raw).hexdigest()
            or not oracle._same(fixtures.get("source_sha256"), data["source_sha256"])
            or fixtures.get("authority_sha256") != {
                "observations": data["authority"]["observations"]["sha256"],
                "qualified_receipt": data["authority"]["qualified_receipt"]["sha256"]}):
        raise ValueError("fixture evidence belongs to another contract/source generation")
    records = [("checks/Analysis/Energy/Declarations.lean", fixtures["positive"])]
    records += list(fixtures["negatives"].items())
    for source, fixture in records:
        evidence = fixture["evidence"]
        reused = source == "checks/Analysis/Energy/Controls/WrongPhase.lean"
        reuse = data["authority"]["wrong_phase_exact_unchanged_ancestry_reuse"]
        expected = {"mode": "EXACT_UNCHANGED_ANCESTRY_REUSE" if reused else "FRESH_ACTUAL_SUCCESSOR_COMMAND",
                    "actual_authority_sha256": {
                        "observations": reuse["observations_sha256"],
                        "qualified_receipt": reuse["qualified_receipt_sha256"]} if reused else fixtures["authority_sha256"],
                    "qualified_in_successor_sha256": fixtures["authority_sha256"]["qualified_receipt"],
                    "context_source_sha256": reuse["ancestry_source_sha256"] if reused else fixtures["source_sha256"]}
        if not oracle._same(evidence, expected):
            raise ValueError("fixture per-record fresh/reuse source authority differs")


class EnergyResultOracleTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        raw = (DATA / "result-oracle-fixtures.json").read_bytes()
        if hashlib.sha256(raw).hexdigest() != FIXTURE_SHA256:
            raise ValueError("actual-output fixture generation drift")
        cls.fixtures = oracle._json(raw)
        cls.contract = oracle.load_contract((DATA / "result-contracts.json").read_bytes())
        require_fixture_binding(cls.fixtures, cls.contract)
        cls.context = oracle._json(cls.contract.raw)["source_sha256"]

    def negative(self, source, **changes):
        fixture = deepcopy(self.fixtures["negatives"].get(
            source, next(iter(self.fixtures["negatives"].values()))))
        args = {"source": source, "source_path": fixture["source_path"],
                "source_bytes": fixture["source_text"].encode(),
                "context_source_hashes": deepcopy(self.context),
                "returncode": fixture["returncode"], "stdout": fixture["stdout"],
                "stderr": fixture["stderr"], "timed_out": fixture["timed_out"],
                "argv": fixture["argv"], "contract": self.contract}
        args.update(changes)
        return oracle.validate_negative_result(**args)

    def positive(self, **changes):
        fixture = deepcopy(self.fixtures["positive"])
        args = {"source": fixture["source"], "source_path": fixture["source_path"],
                "source_bytes": fixture["source_text"].encode(),
                "context_source_hashes": deepcopy(self.context),
                "returncode": fixture["returncode"], "stdout": fixture["stdout"],
                "stderr": fixture["stderr"], "timed_out": fixture["timed_out"],
                "argv": fixture["argv"], "contract": self.contract}
        args.update(changes)
        return oracle.validate_positive_audit(**args)

    def rejected(self, name, function, *args, **kwargs):
        record(name, "REJECT")
        with self.subTest(case=name):
            with self.assertRaises(ValueError):
                function(*args, **kwargs)

    def output(self, rows, count="CCC_COUNT::243"):
        return "\n".join("CCC_DECL::" + json.dumps(row, ensure_ascii=False) for row in rows) + "\n" + count + "\n"

    def test_portable_normalization_contract(self):
        self.assertEqual(self.fixtures["authority_sha256"], {
            "observations": "44928c9ca7fbd092397f67c3d02adbe9ec6b81784ea02cde4126102bc0840c3b",
            "qualified_receipt": "1e11c69ba3c6823be79b9c1579da1b5d75e151fbac9707cdbf7b3649ee80a1e0"})
        self.assertNotIn("/Users/", json.dumps(self.fixtures))
        contract = oracle._json(self.contract.raw)
        entries = [("checks/Analysis/Energy/Declarations.lean", self.fixtures["positive"])]
        entries += list(self.fixtures["negatives"].items())
        for source, fixture in entries:
            record("portable-source-and-native-hash:" + source, "ACCEPT")
            negative = source != "checks/Analysis/Energy/Declarations.lean"
            expected = {"diagnostic_filename_only": negative,
                        "source_path_and_argv_last_rebound": True,
                        "argv_compiler_path_rebound": True,
                        "all_other_argv_bytes_unchanged": True,
                        "source_bytes_unchanged": True,
                        "other_eight_diagnostic_fields_unchanged": negative,
                        "positive_stdout_bytes_unchanged": not negative}
            self.assertEqual(fixture["normalization"], expected)
            self.assertEqual(fixture["source_path"], "/frozen-energy-fixtures/" + source)
            self.assertEqual(fixture["argv"][0], "/qualified-toolchain/bin/lean")
            self.assertEqual(fixture["argv"][-1], fixture["source_path"])
            self.assertEqual(fixture["native_stdout_sha256"], NATIVE_STDOUT_SHA256[source])
            if negative:
                diagnostic = oracle._json(fixture["stdout"])
                self.assertEqual(diagnostic["fileName"], fixture["source_path"])
                other_fields = {key: value for key, value in diagnostic.items() if key != "fileName"}
                self.assertTrue(oracle._same(other_fields, contract["negative_profiles"][source]["diagnostic"]))
                self.assertEqual(hashlib.sha256(fixture["source_text"].encode()).hexdigest(),
                                 contract["negative_profiles"][source]["source_sha256"])
            else:
                self.assertEqual(fixture["stdout_sha256"], fixture["native_stdout_sha256"])

    def test_crossed_source_generations(self):
        previous = self.fixtures["previous_generation"]
        source = next(iter(self.fixtures["negatives"]))
        self.rejected("old-context-new-positive-contract", self.positive,
                      context_source_hashes=previous["source_sha256"])
        self.rejected("old-context-new-negative-contract", self.negative, source,
                      context_source_hashes=previous["source_sha256"])
        self.rejected("new-context-old-contract", self.positive,
                      contract=oracle.EnergyContract(previous["contract_bytes_utf8"].encode()))
        changed = deepcopy(self.fixtures)
        changed["authority_sha256"] = previous["authority_sha256"]
        self.rejected("historical-authority-new-fixture", require_fixture_binding, changed, self.contract)
        changed = deepcopy(self.fixtures)
        changed["source_sha256"] = previous["source_sha256"]
        self.rejected("historical-source-map-new-fixture", require_fixture_binding, changed, self.contract)
        changed = deepcopy(self.fixtures)
        changed["contract_sha256"] = previous["contract_sha256"]
        self.rejected("historical-contract-hash-new-fixture", require_fixture_binding, changed, self.contract)
        changed = deepcopy(self.fixtures)
        changed["negatives"][source]["evidence"]["mode"] = "FRESH_ACTUAL_SUCCESSOR_COMMAND" if source.endswith("WrongPhase.lean") else "EXACT_UNCHANGED_ANCESTRY_REUSE"
        self.rejected("per-record-fresh-reuse-confusion", require_fixture_binding, changed, self.contract)
        record("historical453-contract-retained-verbatim", "ACCEPT")
        self.assertEqual(hashlib.sha256(previous["contract_bytes_utf8"].encode()).hexdigest(), previous["contract_sha256"])

    def test_actual_saved_outputs(self):
        for source, fixture in self.fixtures["negatives"].items():
            record("filename-normalized-actual-negative:" + source, "ACCEPT")
            self.assertEqual(hashlib.sha256(fixture["stdout"].encode()).hexdigest(),
                             fixture["stdout_sha256"])
            self.assertTrue(self.negative(source)["sole_exact_rejection"])
        fixture = self.fixtures["positive"]
        record("byte-identical-actual-positive243", "ACCEPT")
        self.assertEqual(hashlib.sha256(fixture["stdout"].encode()).hexdigest(), fixture["stdout_sha256"])
        result = self.positive()
        self.assertEqual(len(self.context), 26)
        self.assertEqual(len(self.fixtures["previous_generation"]["source_sha256"]), 26)
        self.assertIn("GRWTSK/Analysis/LaplaceTransform/ExponentialEnergy.lean", self.context)
        self.assertIn("GRWTSK/Analysis/LaplaceTransform/ExponentialEnergy.lean", self.fixtures["previous_generation"]["source_sha256"])
        self.assertEqual(result["count"], 243)
        self.assertEqual(result["owners"], 22)
        self.assertFalse(result["complete_project_owned_audit"])
        self.assertFalse(result["unsafe_partial_fields_reported_by_consumer"])
        self.assertFalse(result["whole_project_acceptance"])
        self.assertFalse(result["rh_proved"])

    def test_negative_filename_only_rebinding(self):
        for source, fixture in self.fixtures["negatives"].items():
            diagnostic = oracle._json(fixture["stdout"])
            path = "/portable-frozen-source/" + source
            diagnostic["fileName"] = path
            argv = fixture["argv"][:-1] + [path]
            record("filename-rebind:" + source, "ACCEPT")
            self.assertTrue(self.negative(source, source_path=path, argv=argv,
                                          stdout=json.dumps(diagnostic))["sole_exact_rejection"])

    def test_negative_process_and_source_mutations(self):
        for source, fixture in self.fixtures["negatives"].items():
            for rc in (-6, -9, 2, 0, True, "1", 1.0):
                self.rejected(source + ":exit:" + repr(rc), self.negative, source, returncode=rc)
            for timeout in (True, 0, "false", None):
                self.rejected(source + ":timeout:" + repr(timeout), self.negative, source, timed_out=timeout)
            for stderr in ("compiler abort", "warning", " ", None):
                self.rejected(source + ":stderr:" + repr(stderr), self.negative, source, stderr=stderr)
            self.rejected(source + ":source-drift", self.negative, source,
                          source_bytes=(fixture["source_text"] + "\n").encode())
            self.rejected(source + ":mutable-source", self.negative, source,
                          source_bytes=bytearray(fixture["source_text"].encode()))
            self.rejected(source + ":foreign-source", self.negative, "checks/Foreign.lean")
            self.rejected(source + ":foreign-filename", self.negative, source,
                          source_path="/wrong-source/" + source)
            for position, value in ((1, "--trust=1"), (2, "--memory=0"),
                                    (3, "--threads=2"), (4, "-DwarningAsError=false"),
                                    (5, "--json=false"), (-1, "/foreign.lean")):
                argv = list(fixture["argv"])
                argv[position] = value
                self.rejected(source + ":argv:" + value, self.negative, source, argv=argv)
            self.rejected(source + ":extra-argv", self.negative, source,
                          argv=fixture["argv"][:-1] + ["-Ddebug.skipKernelTC=true", fixture["argv"][-1]])

    def test_negative_json_and_literal_mutations(self):
        for source, fixture in self.fixtures["negatives"].items():
            original = oracle._json(fixture["stdout"])
            for key in oracle.DIAGNOSTIC_KEYS:
                diagnostic = deepcopy(original)
                del diagnostic[key]
                self.rejected(source + ":missing:" + key, self.negative, source,
                              stdout=json.dumps(diagnostic))
            mutations = {"caption": "another error", "data": "Type mismatch in unrelated proof",
                         "kind": "lean.synthInstanceFailed", "severity": "warning",
                         "isSilent": 0, "keepFullRange": 0, "fileName": "/foreign.lean",
                         "pos": {"line": True, "column": original["pos"]["column"]},
                         "endPos": {"line": original["endPos"]["line"], "column": False}}
            for key, value in mutations.items():
                diagnostic = dict(original, **{key: value})
                self.rejected(source + ":literal:" + key, self.negative, source,
                              stdout=json.dumps(diagnostic))
            for key in ("pos", "endPos"):
                diagnostic = deepcopy(original)
                diagnostic[key]["column"] += 1
                self.rejected(source + ":range:" + key, self.negative, source,
                              stdout=json.dumps(diagnostic))
            variants = {
                "extra-field": json.dumps(dict(original, unknown=False)),
                "duplicate-key": '{"severity":"warning",' + fixture["stdout"].lstrip()[1:],
                "nested-duplicate": fixture["stdout"].replace('"line":11', '"line":11,"line":11', 1),
                "NaN": json.dumps(dict(original, pos={"line": float("nan"), "column": 1})),
                "infinity": json.dumps(dict(original, pos={"line": float("inf"), "column": 1})),
                "overflow-float": fixture["stdout"].replace('"isSilent":false', '"isSilent":1e400'),
                "fractional-coordinate": json.dumps(dict(original, pos={"line": 1.0, "column": 1})),
                "another-diagnostic": fixture["stdout"] + fixture["stdout"],
                "warning-prefix": "warning: unrelated\n" + fixture["stdout"],
                "suffix": fixture["stdout"].rstrip() + " trailing-junk",
                "array": "[" + fixture["stdout"].strip() + "]",
                "empty": "",
            }
            # Construct a guaranteed duplicate nested integer key for every control.
            variants["nested-duplicate"] = fixture["stdout"].replace(
                '"pos":{', '"pos":{"line":' + str(original["pos"]["line"]) + ',', 1)
            for name, output in variants.items():
                self.rejected(source + ":json:" + name, self.negative, source, stdout=output)

    def test_positive_family_and_literal_mutations(self):
        rows = oracle._json(self.contract.raw)["consumer"]["rows"]
        generated = next(i for i, row in enumerate(rows) if "._proof_" in row["name"] or "._simp_" in row["name"])
        self.rejected("missing-generated-record", self.positive, stdout=self.output(rows[:generated] + rows[generated + 1:]))
        self.rejected("duplicate-generated-record", self.positive, stdout=self.output(rows + [rows[generated]]))
        for key, value in (("name", "Foreign.Module.forged"), ("module", "Foreign.Module"),
                           ("kind", "axiom"), ("type", "False"), ("axioms", ["foreignAx"]),
                           ("axioms", ["propext", "propext"]), ("type", False)):
            changed = deepcopy(rows)
            changed[0][key] = value
            self.rejected("positive-row:" + key + ":" + repr(value), self.positive,
                          stdout=self.output(changed))
        for key in oracle.ROW_KEYS:
            changed = deepcopy(rows)
            del changed[0][key]
            self.rejected("positive-missing-field:" + key, self.positive, stdout=self.output(changed))
        for key, value in (("unsafe", True), ("partial", True), ("unsafe", False),
                           ("mathematical_admission", True), ("unknown", None)):
            changed = deepcopy(rows)
            changed[0][key] = value
            self.rejected("positive-extra-field:" + key + ":" + repr(value), self.positive,
                          stdout=self.output(changed))
        terminals = [i for i, row in enumerate(rows) if row["name"].split(".")[-1].startswith("riemannHypothesis_of_")]
        for index in terminals:
            changed = deepcopy(rows)
            changed[index]["type"] = "RiemannHypothesis"
            self.rejected("terminal-premise-removal:" + rows[index]["name"], self.positive,
                          stdout=self.output(changed))
        changed = deepcopy(rows)
        changed[0]["axioms"] = []
        self.rejected("unexpected-even-standard-axiom-change", self.positive, stdout=self.output(changed))
        record("positive-record-order-only", "ACCEPT")
        self.assertEqual(self.positive(stdout=self.output(list(reversed(rows))))["count"], 243)

    def test_positive_json_counts_and_process(self):
        fixture = self.fixtures["positive"]
        output = fixture["stdout"]
        for name, changed in {
            "count-suffix": output.replace("CCC_COUNT::243", "CCC_COUNT::243junk"),
            "count-prefix": output.replace("CCC_COUNT::243", "other CCC_COUNT::243"),
            "duplicate-count": output + "CCC_COUNT::243\n",
            "wrong-count": output.replace("CCC_COUNT::243", "CCC_COUNT::242"),
            "missing-count": output.rsplit("CCC_COUNT::243", 1)[0],
            "count-first": "CCC_COUNT::243\n" + output,
            "count-in-type-only": output.rsplit("CCC_COUNT::243", 1)[0].replace('"type":', '"type":"CCC_COUNT::243", "type":', 1),
            "foreign-line": output + "warning: suspicious\n",
            "duplicate-row-key": output.replace('"kind":', '"kind":"axiom","kind":', 1),
            "nonfinite-axiom": output.replace('"axioms":[', '"axioms":[NaN,', 1),
            "nested-row-object": output.replace('"kind":"theorem"', '"kind":{"unsafe":true}', 1),
            "html": "<pre>" + output + "</pre>",
        }.items():
            self.rejected("positive-output:" + name, self.positive, stdout=changed)
        for rc in (-6, 1, True, False, "0", 0.0):
            self.rejected("positive-exit:" + repr(rc), self.positive, returncode=rc)
        self.rejected("positive-stderr", self.positive, stderr="fatal warning")
        self.rejected("positive-timeout", self.positive, timed_out=True)
        self.rejected("positive-source-drift", self.positive,
                      source_bytes=(fixture["source_text"] + "\n").encode())
        self.rejected("positive-foreign-source", self.positive, source="checks/Foreign.lean")
        argv = list(fixture["argv"])
        argv[4] = "-DwarningAsError=false"
        self.rejected("positive-nonfatal-warnings", self.positive, argv=argv)

    def test_generation_and_contract_binding(self):
        original = deepcopy(self.context)
        first = next(iter(original))
        cases = {"missing-owner": {k: v for k, v in original.items() if k != first},
                 "extra-owner": dict(original, **{"GRWTSK/NewUnqualified.lean": "0" * 64}),
                 "changed-owner": dict(original, **{first: "0" * 64}),
                 "nonstring-hash": dict(original, **{first: 0}),
                 "list-context": list(original.items())}
        source = next(iter(self.fixtures["negatives"]))
        for name, context in cases.items():
            self.rejected("positive-context:" + name, self.positive, context_source_hashes=context)
            self.rejected("negative-context:" + name, self.negative, source, context_source_hashes=context)
        self.rejected("changed-contract", oracle.load_contract, self.contract.raw + b"\n")
        self.rejected("mutable-contract", oracle.load_contract, bytearray(self.contract.raw))
        self.rejected("dict-contract-bypass", self.positive, contract=oracle._json(self.contract.raw))
        self.rejected("forged-contract-object", self.positive, contract=oracle.EnergyContract(b"{}"))

    def test_generic_success_keeps_scope(self):
        record("generic-process-success-only", "ACCEPT")
        result = oracle.validate_positive_result(0, "informational theorem output\n", "")
        self.assertTrue(result["process_success_only"])
        self.assertNotIn("declarations", result)
        for rc in (-6, 1, False, "0", 0.0):
            self.rejected("generic-exit:" + repr(rc), oracle.validate_positive_result, rc, "", "")
        self.rejected("generic-stderr", oracle.validate_positive_result, 0, "", "fatal")
        self.rejected("generic-timeout", oracle.validate_positive_result, 0, "", "", True)


if __name__ == "__main__":
    suite = unittest.defaultTestLoader.loadTestsFromTestCase(EnergyResultOracleTests)
    result = unittest.TextTestRunner(verbosity=2).run(suite)
    print("ENERGY_ORACLE_FIXTURE_CASES::" + str(len(FIXTURE_CASES)))
    print("ENERGY_ORACLE_FIXTURE_TABLE::" + json.dumps(FIXTURE_CASES, sort_keys=True))
    raise SystemExit(0 if result.wasSuccessful() else 1)
