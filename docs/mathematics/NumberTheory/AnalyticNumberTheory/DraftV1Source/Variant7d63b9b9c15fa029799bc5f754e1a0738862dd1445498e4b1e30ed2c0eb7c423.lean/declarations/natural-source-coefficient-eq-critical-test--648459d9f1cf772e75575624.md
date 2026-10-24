# natural_source_coefficient_eq_critical_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8e3e772-6290-6aa8-49c6-0abd451acd92",
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
  "slug": "natural-source-coefficient-eq-critical-test--648459d9f1cf772e75575624",
  "source": {
    "blob": "edc8886d0722fd372baf94b044bea53e1c05f393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 228,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7d63b9b9c15fa029799bc5f754e1a0738862dd1445498e4b1e30ed2c0eb7c423.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:648459d9f1cf772e75575624146138a9929098d1238c1fc89adb30a160ccb38e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7d63b9b9c15fa029799bc5f754e1a0738862dd1445498e4b1e30ed2c0eb7c423.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8e3e772-6290-6aa8-49c6-0abd451acd92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–244.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7d63b9b9c15fa029799bc5f754e1a0738862dd1445498e4b1e30ed2c0eb7c423.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7d63b9b9c15fa029799bc5f754e1a0738862dd1445498e4b1e30ed2c0eb7c423.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc8886d0722fd372baf94b044bea53e1c05f393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
