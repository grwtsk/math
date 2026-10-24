# diagonalCorrelation_integral_eq_quarter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c00954cc-2b29-b1ae-6a2a-c0e0538c78ba",
  "kind": "theorem",
  "lexical_name": "diagonalCorrelation_integral_eq_quarter",
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
  "slug": "diagonalcorrelation-integral-eq-quarter--442f323dc2c53e9de986e5c0",
  "source": {
    "blob": "8b48f83aeff85de5e275b9147707f358ab1557f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant6d466112a002f7113d52ea761798d8b56f32f75d73167de3d3d61b35728e8427.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:442f323dc2c53e9de986e5c0ce667805791f46d9a52e26f777836b7e04c1afec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant6d466112a002f7113d52ea761798d8b56f32f75d73167de3d3d61b35728e8427.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c00954cc-2b29-b1ae-6a2a-c0e0538c78ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalCorrelation_integral_eq_quarter (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..A, diagonalCorrelation A t) =
      (1 / 4 : ℝ) * (∫ t : ℝ, sourceCorrelation explicitSecondDerivative A t) := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  have hi := (sourceCorrelation_contDiff A hp).continuous
  have hs : Function.support C ⊆ Ioc (-(2 * A)) (2 * A) := by
    intro t ht
    have hn : |t| < 2 * A := by
      by_contra hn
      exact ht (sourceCorrelation_eq_zero_of_two_mul_le_abs A t hp (le_of_not_gt hn))
    exact ⟨by linarith [neg_abs_le t], (le_abs_self t).trans hn.le⟩
  have hfull := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume) hs
  have heven : (∫ t in -(2 * A)..0, C t) = ∫ t in 0..2 * A, C t := by
    have he : (fun t : ℝ => C (-t)) = C := funext (sourceCorrelation_even A)
    have hn := intervalIntegral.integral_comp_neg C (a := -(2 * A)) (b := 0)
    rw [he] at hn
    simpa using hn
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hi.intervalIntegrable (μ := volume) (-(2 * A)) 0)
    (hi.intervalIntegrable (μ := volume) 0 (2 * A))
  change (∫ t in 0..A, C (2 * t)) = (1 / 4 : ℝ) * ∫ t : ℝ, C t
  rw [intervalIntegral.integral_comp_mul_left C (by norm_num : (2 : ℝ) ≠ 0)]
  simp only [mul_zero, smul_eq_mul]
  change (2 : ℝ)⁻¹ * (∫ t in 0..2 * A, C t) = _
  rw [heven, hfull] at hadd
  linarith

/-- The canonical coefficient retains the exact source normalization `Z_A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant6d466112a002f7113d52ea761798d8b56f32f75d73167de3d3d61b35728e8427.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant6d466112a002f7113d52ea761798d8b56f32f75d73167de3d3d61b35728e8427.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b48f83aeff85de5e275b9147707f358ab1557f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
