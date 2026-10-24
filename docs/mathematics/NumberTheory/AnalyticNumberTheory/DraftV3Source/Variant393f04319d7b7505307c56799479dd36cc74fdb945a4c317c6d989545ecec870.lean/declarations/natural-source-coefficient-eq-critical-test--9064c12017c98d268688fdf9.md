# natural_source_coefficient_eq_critical_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cebad7f207d2cab487d7eaff1db875daac2211c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/393f04319d7b7505307c56799479dd36cc74fdb945a4c317c6d989545ecec870.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ed6ef66-ee55-be74-059f-fe4c2bee8977",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7555d866-e670-c5df-1c5f-0cdc1666fb98",
  "kind": "theorem",
  "lexical_name": "natural_source_coefficient_eq_critical_test",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "natural-source-coefficient-eq-critical-test--9064c12017c98d268688fdf9",
  "source": {
    "blob": "cebad7f207d2cab487d7eaff1db875daac2211c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 227,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant393f04319d7b7505307c56799479dd36cc74fdb945a4c317c6d989545ecec870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9064c12017c98d268688fdf91caa9bc9f4f3499d547003ab2e206393c3e3b575",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant393f04319d7b7505307c56799479dd36cc74fdb945a4c317c6d989545ecec870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7555d866-e670-c5df-1c5f-0cdc1666fb98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natural_source_coefficient_eq_critical_test (A : ℝ) {n : ℕ} (hn : 0 < n) :
    ArithmeticFunction.vonMangoldt n * closedPrimeWeight A n =
      ArithmeticFunction.vonMangoldt n / (n : ℝ) * criticalPrimeTest A (Real.log n) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast hn
  have he : Real.exp (-Real.log (n : ℝ) / 2) =
      Real.exp (Real.log (n : ℝ) / 2) / (n : ℝ) := by
    calc
      Real.exp (-Real.log (n : ℝ) / 2) =
          Real.exp (Real.log (n : ℝ) / 2 - Real.log n) := by congr 1; ring
      _ = Real.exp (Real.log (n : ℝ) / 2) / Real.exp (Real.log n) :=
        Real.exp_sub _ _
      _ = Real.exp (Real.log (n : ℝ) / 2) / (n : ℝ) := by rw [Real.exp_log hn0]
  unfold closedPrimeWeight exponentialTest criticalPrimeTest
  rw [he]
  ring

/-- The original closed prime-power moment is exactly the full-Mangoldt test sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant393f04319d7b7505307c56799479dd36cc74fdb945a4c317c6d989545ecec870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant393f04319d7b7505307c56799479dd36cc74fdb945a4c317c6d989545ecec870.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cebad7f207d2cab487d7eaff1db875daac2211c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
