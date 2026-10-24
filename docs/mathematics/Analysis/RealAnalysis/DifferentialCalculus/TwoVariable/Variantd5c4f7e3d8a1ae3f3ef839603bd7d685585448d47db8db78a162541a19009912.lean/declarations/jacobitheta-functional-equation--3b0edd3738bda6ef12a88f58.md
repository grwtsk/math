# jacobiTheta₂_functional_equation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:866fcadc-4c97-7531-c8a1-3bb4285d7225",
  "kind": "theorem",
  "lexical_name": "jacobiTheta₂_functional_equation",
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
  "slug": "jacobitheta-functional-equation--3b0edd3738bda6ef12a88f58",
  "source": {
    "blob": "fff7edb82ee71ebadce8dce2f842269bc7169126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 480,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b0edd3738bda6ef12a88f5823fdce84139d17d9d60870ff1e74db91a73b4d50",
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

Occurrence: `result:866fcadc-4c97-7531-c8a1-3bb4285d7225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiTheta₂_functional_equation (z τ : ℂ) : jacobiTheta₂ z τ =
    1 / (-I * τ) ^ (1 / 2 : ℂ) * cexp (-π * I * z ^ 2 / τ) * jacobiTheta₂ (z / τ) (-1 / τ) := by
  rcases le_or_lt (im τ) 0 with hτ | hτ
  · have : (-1 / τ).im ≤ 0 := by
      rw [neg_div, neg_im, one_div, inv_im, neg_nonpos]
      exact div_nonneg (neg_nonneg.mpr hτ) (normSq_nonneg τ)
    rw [jacobiTheta₂_undef z hτ, jacobiTheta₂_undef _ this, mul_zero]
  unfold jacobiTheta₂ jacobiTheta₂_term
  have h0 : τ ≠ 0 := by contrapose! hτ; rw [hτ, zero_im]
  have h2 : 0 < (-I * τ).re := by
    simpa only [neg_mul, neg_re, mul_re, I_re, zero_mul, I_im, one_mul, zero_sub, neg_neg] using hτ
  calc
  _ = ∑' n : ℤ, cexp (-π * (-I * τ) * ↑n ^ 2 + 2 * π * (I * z) * ↑n) :=
    tsum_congr (fun n ↦ by ring_nf)
  _ = 1 / (-I * τ) ^ (1 / 2 : ℂ) * ∑' (n : ℤ), cexp (-π / (-I * τ) * (n + I * (I * z)) ^ 2) := by
    rw [tsum_exp_neg_quadratic h2]
  _ = 1 / (-I * τ) ^ (1 / 2 : ℂ) * cexp (π * I * (-1 / τ) * z ^ 2) *
      ∑' (n : ℤ), cexp (2 * π * I * n * (z / τ) + π * I * n ^ 2 * (-1 / τ)) := by
    simp_rw [mul_assoc _ (cexp _), ← tsum_mul_left (a := cexp _), ← Complex.exp_add]
    congr 2 with n : 1; congr 1
    field_simp [I_ne_zero]
    ring_nf
    simp_rw [I_sq, I_pow_four]
    ring_nf
  _ = _ := by
    congr 3
    ring

/-- The functional equation for the derivative of the Jacobi theta function, relating
`jacobiTheta₂' z τ` to `jacobiTheta₂' (z / τ) (-1 / τ)`. This is the key lemma behind the proof of
the functional equation for L-series of odd Dirichlet characters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fff7edb82ee71ebadce8dce2f842269bc7169126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
