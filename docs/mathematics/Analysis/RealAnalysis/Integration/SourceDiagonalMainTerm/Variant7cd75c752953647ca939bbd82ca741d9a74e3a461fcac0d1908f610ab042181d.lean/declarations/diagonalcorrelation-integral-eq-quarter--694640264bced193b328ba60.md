# diagonalCorrelation_integral_eq_quarter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3e6a170a6f86f9b3da85b31abdabe0f596d6b7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14a13a70-402f-989f-c72d-e996d279fbee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f910589-6f10-36c9-b0f9-4b3088515194",
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
  "slug": "diagonalcorrelation-integral-eq-quarter--694640264bced193b328ba60",
  "source": {
    "blob": "e3e6a170a6f86f9b3da85b31abdabe0f596d6b7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:694640264bced193b328ba603d9989e5b47cb3273361729105cc7b1fd6ecac64",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f910589-6f10-36c9-b0f9-4b3088515194`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–136.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e6a170a6f86f9b3da85b31abdabe0f596d6b7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
