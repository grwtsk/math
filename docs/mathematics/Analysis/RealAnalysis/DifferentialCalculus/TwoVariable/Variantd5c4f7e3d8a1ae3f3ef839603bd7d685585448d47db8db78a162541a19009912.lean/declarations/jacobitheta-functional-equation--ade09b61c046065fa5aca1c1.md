# jacobiTheta₂'_functional_equation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3705a71d-948c-12bf-acfd-26393153c3b5",
  "kind": "theorem",
  "lexical_name": "jacobiTheta₂'_functional_equation",
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
  "slug": "jacobitheta-functional-equation--ade09b61c046065fa5aca1c1",
  "source": {
    "blob": "fff7edb82ee71ebadce8dce2f842269bc7169126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 511,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ade09b61c046065fa5aca1c1a89f824efdd83c0acbe5d368c2cc83ca06adf30c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3705a71d-948c-12bf-acfd-26393153c3b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiTheta₂'_functional_equation (z τ : ℂ) :
    jacobiTheta₂' z τ = 1 / (-I * τ) ^ (1 / 2 : ℂ) * cexp (-π * I * z ^ 2 / τ) / τ *
      (jacobiTheta₂' (z / τ) (-1 / τ) - 2 * π * I * z * jacobiTheta₂ (z / τ) (-1 / τ)) := by
  rcases le_or_lt (im τ) 0 with hτ | hτ
  · rw [jacobiTheta₂'_undef z hτ, jacobiTheta₂'_undef, jacobiTheta₂_undef, mul_zero,
      sub_zero, mul_zero] <;>
    rw [neg_div, neg_im, one_div, inv_im, neg_nonpos] <;>
    exact div_nonneg (neg_nonneg.mpr hτ) (normSq_nonneg τ)
  have hτ' : 0 < (-1 / τ).im := by
    rw [div_eq_mul_inv, neg_one_mul, neg_im, inv_im, neg_div, neg_neg]
    exact div_pos hτ (normSq_pos.mpr (fun h ↦ lt_irrefl 0 (zero_im ▸ h ▸ hτ)))
  have hj : HasDerivAt (fun w ↦ jacobiTheta₂ (w / τ) (-1 / τ))
      ((1 / τ) * jacobiTheta₂' (z / τ) (-1 / τ)) z := by
    have := hasDerivAt_jacobiTheta₂_fst (z / τ) hτ'
    simpa only [mul_comm, one_div] using this.comp z (hasDerivAt_mul_const τ⁻¹)
  calc
  _ = deriv (jacobiTheta₂ · τ) z := (hasDerivAt_jacobiTheta₂_fst z hτ).deriv.symm
  _ = deriv (fun z ↦ 1 / (-I * τ) ^ (1 / 2 : ℂ) *
        cexp (-π * I * z ^ 2 / τ) * jacobiTheta₂ (z / τ) (-1 / τ)) z := by
    rw [funext (jacobiTheta₂_functional_equation · τ)]
  _ = 1 / (-I * τ) ^ (1 / 2 : ℂ) *
        deriv (fun z ↦ cexp (-π * I * z ^ 2 / τ) * jacobiTheta₂ (z / τ) (-1 / τ)) z := by
    simp_rw [mul_assoc, deriv_const_mul_field]
  _ = 1 / (-I * τ) ^ (1 / 2 : ℂ) *
        (deriv (fun z ↦ cexp (-π * I * z ^ 2 / τ)) z * jacobiTheta₂ (z / τ) (-1 / τ)
         + cexp (-π * I * z ^ 2 / τ) * deriv (fun z ↦ jacobiTheta₂ (z / τ) (-1 / τ)) z) := by
    rw [deriv_mul _ hj.differentiableAt]
    exact (((differentiableAt_pow 2).const_mul _).mul_const _).cexp
  _ = _ := by
    rw [hj.deriv]
    simp only [div_eq_mul_inv _ τ]
    rw [deriv_cexp (((differentiableAt_pow _).const_mul _).mul_const _), mul_comm,
      deriv_mul_const_field, deriv_const_mul_field, deriv_pow]
    ring_nf
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fff7edb82ee71ebadce8dce2f842269bc7169126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
