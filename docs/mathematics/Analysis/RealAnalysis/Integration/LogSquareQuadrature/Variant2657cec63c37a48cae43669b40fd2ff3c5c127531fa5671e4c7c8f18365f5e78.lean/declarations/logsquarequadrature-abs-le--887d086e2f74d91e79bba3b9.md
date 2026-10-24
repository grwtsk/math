# logSquareQuadrature_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "814d549a4dbf8cb774fd7d59cd2005070c156052",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ac08de0-a212-eab1-35fc-13a760238dbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7ff2cdf-551b-b2a6-45f4-e52afa6b7af7",
  "kind": "theorem",
  "lexical_name": "logSquareQuadrature_abs_le",
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
  "slug": "logsquarequadrature-abs-le--887d086e2f74d91e79bba3b9",
  "source": {
    "blob": "814d549a4dbf8cb774fd7d59cd2005070c156052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:887d086e2f74d91e79bba3b9141971969c02d97cc71519d2923d2b8a43b3cbc4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7ff2cdf-551b-b2a6-45f4-e52afa6b7af7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSquareQuadrature_abs_le (y : ℝ) (hy : 1 ≤ y) :
    |logSquareQuadrature y| ≤ (Real.log y) ^ 2 := by
  let N := ⌊y⌋₊
  have hN : 1 ≤ N := Nat.le_floor (by simpa using hy)
  have hN1 : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hNy : (N : ℝ) ≤ y := Nat.floor_le (zero_le_one.trans hy)
  have hgap : y - (N : ℝ) ≤ 1 := by
    have h := Nat.lt_floor_add_one y
    dsimp only [N]
    linarith
  have hi := logSquare_intervalIntegrable (N : ℝ) y hN1 hy
  have hzero : 0 ≤ ∫ t in (N : ℝ)..y, (Real.log t) ^ 2 :=
    intervalIntegral.integral_nonneg hNy (fun _ _ => sq_nonneg _)
  have htail : (∫ t in (N : ℝ)..y, (Real.log t) ^ 2) ≤ (Real.log y) ^ 2 := by
    have hb := intervalIntegral.integral_mono_on hNy hi
      (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => (Real.log y) ^ 2)
        volume (N : ℝ) y)
      (fun t ht => logSquare_monotoneOn (hN1.trans ht.1) hy ht.2)
    rw [intervalIntegral.integral_const, smul_eq_mul] at hb
    exact hb.trans (mul_le_of_le_one_left (sq_nonneg _) hgap)
  have hmono := logSquare_monotoneOn hN1 hy hNy
  have hb := logSquare_integer_bounds N hN
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (logSquare_intervalIntegrable 1 (N : ℝ) le_rfl hN1) hi
  change |(∑ m ∈ Finset.Icc 1 N, (Real.log (m : ℝ)) ^ 2) -
    ∫ t in 1..y, (Real.log t) ^ 2| ≤ _
  exact abs_le.mpr ⟨by linarith [hb.1], by linarith [hb.2]⟩

end
end LogSquareQuadratureScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `814d549a4dbf8cb774fd7d59cd2005070c156052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
