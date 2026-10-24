# actual_source_absolute_tail_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61d2d7e6-4ae5-2ffa-44c2-2cd60d00266c",
  "kind": "theorem",
  "lexical_name": "actual_source_absolute_tail_majorant",
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
  "slug": "actual-source-absolute-tail-majorant--0ac0596ce8a721cc6848f7c2",
  "source": {
    "blob": "e6b80c436df8d48baa55c04397943562b4b5a028",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 148,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variantfc725e9dd1175e01869da0bb0ed2a6192122d3fcd573ee344ef9461709bbc393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ac0596ce8a721cc6848f7c2743b7d42969ed6682dfecefe380be8823959edc4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variantfc725e9dd1175e01869da0bb0ed2a6192122d3fcd573ee344ef9461709bbc393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61d2d7e6-4ae5-2ffa-44c2-2cd60d00266c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_absolute_tail_majorant (A T : ℝ) (hA : 1 ≤ A) (hT : 0 < T) :
    SourceAbsoluteTailMajorant A T := by
  intro o ho
  have hApos : 0 < A := by linarith
  have hzpos := source_normalization_pos A hA
  have hTz : T ≤ ‖ZeroObject.shiftedValue o‖ :=
    ho.le.trans (Complex.abs_im_le_norm _)
  have hrpos : 0 < ‖ZeroObject.shiftedValue o‖ := hT.trans_le hTz
  have hb := actual_bilateral_sharp_tail_bound A T hA hT (ZeroObject.shiftedValue o)
    ⟨(ZeroObject.shiftedValue_strip o).1.le, (ZeroObject.shiftedValue_strip o).2.le⟩ hTz
  have hs := pow_le_pow_left₀ (norm_nonneg (bilateralTransform A (ZeroObject.shiftedValue o))) hb 2
  have hnormZ : ‖(sourceNormalization A : ℂ)‖ = sourceNormalization A := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_pos hzpos]
  unfold actualZeroSquareNorm
  rw [normalized_bilateral_square A hA, norm_div, norm_pow, hnormZ]
  calc
    _ ≤ (((Real.exp (A/2) + Real.exp (-(A/2))) * sourceTransformPolynomialBudget (A*T) *
        (1 + 1/(4*T^2)) / (A^4 * Real.sqrt A * ‖ZeroObject.shiftedValue o‖^3))^2 /
          sourceNormalization A) := div_le_div_of_nonneg_right hs hzpos.le
    _ = sourceAbsoluteTailConstant A T / ‖ZeroObject.shiftedValue o‖^6 := by
      unfold sourceAbsoluteTailConstant
      simp only [div_pow, mul_pow, ← pow_mul, Real.sq_sqrt hApos.le, exponential_sum_square]
      field_simp
      ring
    _ ≤ _ := by
      have hk := source_absolute_tail_constant_nonnegative A T hA
      have hg : 0 < |(ZeroObject.shiftedValue o).im| := hT.trans ho
      gcongr
      exact Complex.abs_im_le_norm _

end CommonMeanScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variantfc725e9dd1175e01869da0bb0ed2a6192122d3fcd573ee344ef9461709bbc393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variantfc725e9dd1175e01869da0bb0ed2a6192122d3fcd573ee344ef9461709bbc393.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6b80c436df8d48baa55c04397943562b4b5a028` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
