# norm_iteratedFDeriv_fourierPowSMulRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:723e99dd-97f1-3de1-d79a-c78948775b68",
  "kind": "lemma",
  "lexical_name": "norm_iteratedFDeriv_fourierPowSMulRight",
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
  "slug": "norm-iteratedfderiv-fourierpowsmulright--0c6dc1a3c17fe4502db87aae",
  "source": {
    "blob": "0c09287ffc79cc80115f3e70237dffca6ab50a28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 345,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c6dc1a3c17fe4502db87aae09c63d79cd45eb6693bfaefa4ce3d5f75d286ef5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:723e99dd-97f1-3de1-d79a-c78948775b68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_iteratedFDeriv_fourierPowSMulRight
    {f : V → E} {K : WithTop ℕ∞} {C : ℝ} (hf : ContDiff ℝ K f) {n : ℕ} {k : ℕ} (hk : k ≤ K)
    {v : V} (hv : ∀ i ≤ k, ∀ j ≤ n, ‖v‖ ^ j * ‖iteratedFDeriv ℝ i f v‖ ≤ C) :
    ‖iteratedFDeriv ℝ k (fun v ↦ fourierPowSMulRight L f v n) v‖ ≤
      (2 * π) ^ n * (2 * n + 2) ^ k * ‖L‖ ^ n * C := by
  /- We write `fourierPowSMulRight L f v n` as a composition of bilinear and multilinear maps,
  thanks to `fourierPowSMulRight_eq_comp`, and then we control the iterated derivatives of these
  thanks to general bounds on derivatives of bilinear and multilinear maps. More precisely,
  `fourierPowSMulRight L f v n m = (- (2 * π * I))^n • (∏ i, L v (m i)) • f v`. Here,
  `(- (2 * π * I))^n` contributes `(2π)^n` to the bound. The second product is bilinear, so the
  iterated derivative is controlled as a weighted sum of those of `v ↦ ∏ i, L v (m i)` and of `f`.

  The harder part is to control the iterated derivatives of `v ↦ ∏ i, L v (m i)`. For this, one
  argues that this is multilinear in `v`, to apply general bounds for iterated derivatives of
  multilinear maps. More precisely, we write it as the composition of a multilinear map `T` (making
  the product operation) and the tuple of linear maps `v ↦ (L v ⬝, ..., L v ⬝)` -/
  simp_rw [fourierPowSMulRight_eq_comp]
  -- first step: controlling the iterated derivatives of `v ↦ ∏ i, L v (m i)`, written below
  -- as `v ↦ T (fun _ ↦ L v)`, or `T ∘ (ContinuousLinearMap.pi (fun (_ : Fin n) ↦ L))`.
  let T : (W →L[ℝ] ℝ) [×n]→L[ℝ] (W [×n]→L[ℝ] ℝ) :=
    compContinuousLinearMapLRight (ContinuousMultilinearMap.mkPiAlgebra ℝ (Fin n) ℝ)
  have I₁ m : ‖iteratedFDeriv ℝ m T (fun _ ↦ L v)‖ ≤
      n.descFactorial m * 1 * (‖L‖ * ‖v‖) ^ (n - m) := by
    have : ‖T‖ ≤ 1 := by
      apply (norm_compContinuousLinearMapLRight_le _ _).trans
      simp only [norm_mkPiAlgebra, le_refl]
    apply (ContinuousMultilinearMap.norm_iteratedFDeriv_le _ _ _).trans
    simp only [Fintype.card_fin]
    gcongr
    refine (pi_norm_le_iff_of_nonneg (by positivity)).mpr (fun _ ↦ ?_)
    exact ContinuousLinearMap.le_opNorm _ _
  have I₂ m : ‖iteratedFDeriv ℝ m (T ∘ (ContinuousLinearMap.pi (fun (_ : Fin n) ↦ L))) v‖ ≤
      (n.descFactorial m * 1 * (‖L‖ * ‖v‖) ^ (n - m)) * ‖L‖ ^ m := by
    rw [ContinuousLinearMap.iteratedFDeriv_comp_right _ (ContinuousMultilinearMap.contDiff _)
      _ (mod_cast le_top)]
    apply (norm_compContinuousLinearMap_le _ _).trans
    simp only [Finset.prod_const, Finset.card_fin]
    gcongr
    · exact I₁ m
    · exact ContinuousLinearMap.norm_pi_le_of_le (fun _ ↦ le_rfl) (norm_nonneg _)
  have I₃ m : ‖iteratedFDeriv ℝ m (T ∘ (ContinuousLinearMap.pi (fun (_ : Fin n) ↦ L))) v‖ ≤
      n.descFactorial m * ‖L‖ ^ n * ‖v‖ ^ (n - m) := by
    apply (I₂ m).trans (le_of_eq _)
    rcases le_or_lt m n with hm | hm
    · rw [show ‖L‖ ^ n = ‖L‖ ^ (m + (n - m)) by rw [Nat.add_sub_cancel' hm], pow_add]
      ring
    · simp only [Nat.descFactorial_eq_zero_iff_lt.mpr hm, CharP.cast_eq_zero, mul_one, zero_mul]
  -- second step: factor out the `(2 * π) ^ n` factor, and cancel it on both sides.
  have A : ContDiff ℝ K (fun y ↦ T (fun _ ↦ L y)) :=
    (ContinuousMultilinearMap.contDiff _).comp (contDiff_pi.2 fun _ ↦ L.contDiff)
  rw [iteratedFDeriv_const_smul_apply' (hf := ((smulRightL ℝ (fun _ ↦ W)
    E).isBoundedBilinearMap.contDiff.comp₂ (A.of_le hk) (hf.of_le hk)).contDiffAt),
    norm_smul (β := V [×k]→L[ℝ] (W [×n]→L[ℝ] E))]
  simp only [mul_assoc, norm_pow, norm_neg, Complex.norm_mul, Complex.norm_ofNat, norm_real,
    Real.norm_eq_abs, abs_of_nonneg pi_nonneg, norm_I, mul_one, smulRightL_apply, ge_iff_le]
  gcongr
  -- third step: argue that the scalar multiplication is bilinear to bound the iterated derivatives
  -- of `v ↦ (∏ i, L v (m i)) • f v` in terms of those of `v ↦ (∏ i, L v (m i))` and of `f`.
  -- The former are controlled by the first step, the latter by the assumptions.
  apply (ContinuousLinearMap.norm_iteratedFDeriv_le_of_bilinear_of_le_one _ A hf _
    hk ContinuousMultilinearMap.norm_smulRightL_le).trans
  calc
  ∑ i ∈ Finset.range (k + 1),
    k.choose i * ‖iteratedFDeriv ℝ i (fun (y : V) ↦ T (fun _ ↦ L y)) v‖ *
      ‖iteratedFDeriv ℝ (k - i) f v‖
    ≤ ∑ i ∈ Finset.range (k + 1),
      k.choose i * (n.descFactorial i * ‖L‖ ^ n * ‖v‖ ^ (n - i)) *
        ‖iteratedFDeriv ℝ (k - i) f v‖ := by
    gcongr with i _hi
    exact I₃ i
  _ = ∑ i ∈ Finset.range (k + 1), (k.choose i * n.descFactorial i * ‖L‖ ^ n) *
        (‖v‖ ^ (n - i) * ‖iteratedFDeriv ℝ (k - i) f v‖) := by
    congr with i
    ring
  _ ≤ ∑ i ∈ Finset.range (k + 1), (k.choose i * (n + 1 : ℕ) ^ k * ‖L‖ ^ n) * C := by
    gcongr with i hi
    · rw [← Nat.cast_pow, Nat.cast_le]
      calc n.descFactorial i ≤ n ^ i := Nat.descFactorial_le_pow _ _
      _ ≤ (n + 1) ^ i := by gcongr; omega
      _ ≤ (n + 1) ^ k := by gcongr; exacts [le_add_self, Finset.mem_range_succ_iff.mp hi]
    · exact hv _ (by omega) _ (by omega)
  _ = (2 * n + 2) ^ k * (‖L‖^n * C) := by
    simp only [← Finset.sum_mul, ← Nat.cast_sum, Nat.sum_range_choose, mul_one, ← mul_assoc,
      Nat.cast_pow, Nat.cast_ofNat, Nat.cast_add, Nat.cast_one, ← mul_pow, mul_add]

variable [MeasurableSpace V] [BorelSpace V] {μ : Measure V}

section SecondCountableTopology

variable [SecondCountableTopology V]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c09287ffc79cc80115f3e70237dffca6ab50a28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
