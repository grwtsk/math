# norm_iteratedFDerivWithin_comp_le_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44d976e9-6f8a-b3d1-05bc-0aeacb861165",
  "kind": "theorem",
  "lexical_name": "norm_iteratedFDerivWithin_comp_le_aux",
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
  "slug": "norm-iteratedfderivwithin-comp-le-aux--e0520e480e7e0dbab226192a",
  "source": {
    "blob": "e3e0719a513f23401ea0440813da91afcece7937",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 358,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0520e480e7e0dbab226192a0a482bd4f7d0d41b602dcdddd566b1ad92a6302b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44d976e9-6f8a-b3d1-05bc-0aeacb861165`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_iteratedFDerivWithin_comp_le_aux {Fu Gu : Type u} [NormedAddCommGroup Fu]
    [NormedSpace 𝕜 Fu] [NormedAddCommGroup Gu] [NormedSpace 𝕜 Gu] {g : Fu → Gu} {f : E → Fu} {n : ℕ}
    {s : Set E} {t : Set Fu} {x : E} (hg : ContDiffOn 𝕜 n g t) (hf : ContDiffOn 𝕜 n f s)
    (ht : UniqueDiffOn 𝕜 t) (hs : UniqueDiffOn 𝕜 s) (hst : MapsTo f s t) (hx : x ∈ s) {C : ℝ}
    {D : ℝ} (hC : ∀ i, i ≤ n → ‖iteratedFDerivWithin 𝕜 i g t (f x)‖ ≤ C)
    (hD : ∀ i, 1 ≤ i → i ≤ n → ‖iteratedFDerivWithin 𝕜 i f s x‖ ≤ D ^ i) :
    ‖iteratedFDerivWithin 𝕜 n (g ∘ f) s x‖ ≤ n ! * C * D ^ n := by
  /- We argue by induction on `n`, using that `D^(n+1) (g ∘ f) = D^n (g ' ∘ f ⬝ f')`. The successive
    derivatives of `g' ∘ f` are controlled thanks to the inductive assumption, and those of `f'` are
    controlled by assumption.
    As composition of linear maps is a bilinear map, one may use
    `ContinuousLinearMap.norm_iteratedFDeriv_le_of_bilinear_of_le_one` to get from these a bound
    on `D^n (g ' ∘ f ⬝ f')`. -/
  induction' n using Nat.case_strong_induction_on with n IH generalizing Gu
  · simpa [norm_iteratedFDerivWithin_zero, Nat.factorial_zero, algebraMap.coe_one, one_mul,
      pow_zero, mul_one, comp_apply] using hC 0 le_rfl
  have M : (n : WithTop ℕ∞) < n.succ := Nat.cast_lt.2 n.lt_succ_self
  have Cnonneg : 0 ≤ C := (norm_nonneg _).trans (hC 0 bot_le)
  have Dnonneg : 0 ≤ D := by
    have : 1 ≤ n + 1 := by simp only [le_add_iff_nonneg_left, zero_le']
    simpa only [pow_one] using (norm_nonneg _).trans (hD 1 le_rfl this)
  -- use the inductive assumption to bound the derivatives of `g' ∘ f`.
  have I : ∀ i ∈ Finset.range (n + 1),
      ‖iteratedFDerivWithin 𝕜 i (fderivWithin 𝕜 g t ∘ f) s x‖ ≤ i ! * C * D ^ i := by
    intro i hi
    simp only [Finset.mem_range_succ_iff] at hi
    apply IH i hi
    · apply hg.fderivWithin ht
      simp only [Nat.cast_succ]
      exact add_le_add_right (Nat.cast_le.2 hi) _
    · apply hf.of_le (Nat.cast_le.2 (hi.trans n.le_succ))
    · intro j hj
      have : ‖iteratedFDerivWithin 𝕜 j (fderivWithin 𝕜 g t) t (f x)‖ =
          ‖iteratedFDerivWithin 𝕜 (j + 1) g t (f x)‖ := by
        rw [iteratedFDerivWithin_succ_eq_comp_right ht (hst hx), comp_apply,
          LinearIsometryEquiv.norm_map]
      rw [this]
      exact hC (j + 1) (add_le_add (hj.trans hi) le_rfl)
    · intro j hj h'j
      exact hD j hj (h'j.trans (hi.trans n.le_succ))
  -- reformulate `hD` as a bound for the derivatives of `f'`.
  have J : ∀ i, ‖iteratedFDerivWithin 𝕜 (n - i) (fderivWithin 𝕜 f s) s x‖ ≤ D ^ (n - i + 1) := by
    intro i
    have : ‖iteratedFDerivWithin 𝕜 (n - i) (fderivWithin 𝕜 f s) s x‖ =
        ‖iteratedFDerivWithin 𝕜 (n - i + 1) f s x‖ := by
      rw [iteratedFDerivWithin_succ_eq_comp_right hs hx, comp_apply, LinearIsometryEquiv.norm_map]
    rw [this]
    apply hD
    · simp only [le_add_iff_nonneg_left, zero_le']
    · apply Nat.succ_le_succ tsub_le_self
  -- Now put these together: first, notice that we have to bound `D^n (g' ∘ f ⬝ f')`.
  calc
    ‖iteratedFDerivWithin 𝕜 (n + 1) (g ∘ f) s x‖ =
        ‖iteratedFDerivWithin 𝕜 n (fun y : E => fderivWithin 𝕜 (g ∘ f) s y) s x‖ := by
      rw [iteratedFDerivWithin_succ_eq_comp_right hs hx, comp_apply,
        LinearIsometryEquiv.norm_map]
    _ = ‖iteratedFDerivWithin 𝕜 n (fun y : E => ContinuousLinearMap.compL 𝕜 E Fu Gu
        (fderivWithin 𝕜 g t (f y)) (fderivWithin 𝕜 f s y)) s x‖ := by
      have L : (1 : WithTop ℕ∞) ≤ n.succ := by
        simpa only [ENat.coe_one, Nat.one_le_cast] using n.succ_pos
      congr 1
      refine iteratedFDerivWithin_congr (fun y hy => ?_) hx _
      apply fderivWithin_comp _ _ _ hst (hs y hy)
      · exact hg.differentiableOn L _ (hst hy)
      · exact hf.differentiableOn L _ hy
    -- bound it using the fact that the composition of linear maps is a bilinear operation,
    -- for which we have bounds for the`n`-th derivative.
    _ ≤ ∑ i ∈ Finset.range (n + 1),
        (n.choose i : ℝ) * ‖iteratedFDerivWithin 𝕜 i (fderivWithin 𝕜 g t ∘ f) s x‖ *
          ‖iteratedFDerivWithin 𝕜 (n - i) (fderivWithin 𝕜 f s) s x‖ := by
      have A : ContDiffOn 𝕜 n (fderivWithin 𝕜 g t ∘ f) s := by
        apply ContDiffOn.comp _ (hf.of_le M.le) hst
        apply hg.fderivWithin ht
        simp only [Nat.cast_succ, le_refl]
      have B : ContDiffOn 𝕜 n (fderivWithin 𝕜 f s) s := by
        apply hf.fderivWithin hs
        simp only [Nat.cast_succ, le_refl]
      exact (ContinuousLinearMap.compL 𝕜 E Fu Gu).norm_iteratedFDerivWithin_le_of_bilinear_of_le_one
        A B hs hx le_rfl (ContinuousLinearMap.norm_compL_le 𝕜 E Fu Gu)
    -- bound each of the terms using the estimates on previous derivatives (that use the inductive
    -- assumption for `g' ∘ f`).
    _ ≤ ∑ i ∈ Finset.range (n + 1), (n.choose i : ℝ) * (i ! * C * D ^ i) * D ^ (n - i + 1) := by
      gcongr with i hi
      · exact I i hi
      · exact J i
    -- We are left with trivial algebraic manipulations to see that this is smaller than
    -- the claimed bound.
    _ = ∑ i ∈ Finset.range (n + 1),
        (n ! : ℝ) * ((i ! : ℝ)⁻¹ * i !) * C * (D ^ i * D ^ (n - i + 1)) * ((n - i)! : ℝ)⁻¹ := by
      congr! 1 with i hi
      simp only [Nat.cast_choose ℝ (Finset.mem_range_succ_iff.1 hi), div_eq_inv_mul, mul_inv]
      ring
    _ = ∑ i ∈ Finset.range (n + 1), (n ! : ℝ) * 1 * C * D ^ (n + 1) * ((n - i)! : ℝ)⁻¹ := by
      congr! with i hi
      · apply inv_mul_cancel₀
        simpa only [Ne, Nat.cast_eq_zero] using i.factorial_ne_zero
      · rw [← pow_add]
        congr 1
        rw [Nat.add_succ, Nat.succ_inj]
        exact Nat.add_sub_of_le (Finset.mem_range_succ_iff.1 hi)
    _ ≤ ∑ i ∈ Finset.range (n + 1), (n ! : ℝ) * 1 * C * D ^ (n + 1) * 1 := by
      gcongr with i
      apply inv_le_one_of_one_le₀
      simpa only [Nat.one_le_cast] using (n - i).factorial_pos
    _ = (n + 1)! * C * D ^ (n + 1) := by
      simp only [mul_assoc, mul_one, Finset.sum_const, Finset.card_range, nsmul_eq_mul,
        Nat.factorial_succ, Nat.cast_mul]

/-- If the derivatives within a set of `g` at `f x` are bounded by `C`, and the `i`-th derivative
within a set of `f` at `x` is bounded by `D^i` for all `1 ≤ i ≤ n`, then the `n`-th derivative
of `g ∘ f` is bounded by `n! * C * D^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e0719a513f23401ea0440813da91afcece7937` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
