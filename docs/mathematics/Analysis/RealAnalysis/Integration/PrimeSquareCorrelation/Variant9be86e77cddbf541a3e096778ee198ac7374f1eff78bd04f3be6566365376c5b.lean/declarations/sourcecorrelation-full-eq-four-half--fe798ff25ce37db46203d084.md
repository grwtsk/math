# sourceCorrelation_full_eq_four_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b6e97e244f9104f54aea6fe81b8401690b9e433",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9be86e77cddbf541a3e096778ee198ac7374f1eff78bd04f3be6566365376c5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b15ee51-acf9-0b12-ccb0-6cbc08fe1956",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1da97e33-de39-66c5-b8cf-a848d2f4ce54",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_full_eq_four_half",
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
  "slug": "sourcecorrelation-full-eq-four-half--fe798ff25ce37db46203d084",
  "source": {
    "blob": "7b6e97e244f9104f54aea6fe81b8401690b9e433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 140,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant9be86e77cddbf541a3e096778ee198ac7374f1eff78bd04f3be6566365376c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe798ff25ce37db46203d0843f579c498e45d9f98ad6b0b65a94c2800cb85e16",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant9be86e77cddbf541a3e096778ee198ac7374f1eff78bd04f3be6566365376c5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1da97e33-de39-66c5-b8cf-a848d2f4ce54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_full_eq_four_half (A : ℝ) (hA : 1 ≤ A) :
    (∫ t, sourceCorrelation explicitSecondDerivative A t) =
      4 * ∫ u in 0..A, sourceCorrelation explicitSecondDerivative A (2 * u) := by
  let C := sourceCorrelation explicitSecondDerivative A
  have hi := sourceCorrelation_integrable A (by linarith)
  have hfull : (∫ t, C t) = ∫ t in -(2 * A)..(2 * A), C t := by
    calc
      _ = ∫ t, (Icc (-(2 * A)) (2 * A)).indicator C t := by
        apply integral_congr_ae
        filter_upwards [] with t
        by_cases ht : t ∈ Icc (-(2 * A)) (2 * A)
        · simp only [indicator_of_mem ht]
        · rw [indicator_of_notMem ht]
          exact sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith)
            (by by_contra h; exact ht (abs_le.mp (le_of_lt (lt_of_not_ge h))))
      _ = _ := zeroExtension_integral _ _ _ (by linarith)
  have hr : (∫ t in -(2 * A)..0, C t) = ∫ t in 0..(2 * A), C t := by
    calc
      _ = ∫ t in 0..(2 * A), C (-t) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg C (a := 0) (b := 2 * A)).symm
      _ = _ := by
        apply intervalIntegral.integral_congr
        intro t _
        exact sourceCorrelation_even A t
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (a := -(2 * A)) (b := 0) (c := 2 * A) hi.intervalIntegrable hi.intervalIntegrable
  have hscale := intervalIntegral.integral_comp_mul_left C (a := 0) (b := A)
    (by norm_num : (2 : ℝ) ≠ 0)
  simp only [mul_zero, smul_eq_mul] at hscale
  change (∫ u in 0..A, C (2 * u)) = _ at hscale
  rw [hr, ← hfull] at hsplit
  change (∫ t, C t) = 4 * ∫ u in 0..A, C (2 * u)
  rw [hscale]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant9be86e77cddbf541a3e096778ee198ac7374f1eff78bd04f3be6566365376c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant9be86e77cddbf541a3e096778ee198ac7374f1eff78bd04f3be6566365376c5b.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b6e97e244f9104f54aea6fe81b8401690b9e433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
