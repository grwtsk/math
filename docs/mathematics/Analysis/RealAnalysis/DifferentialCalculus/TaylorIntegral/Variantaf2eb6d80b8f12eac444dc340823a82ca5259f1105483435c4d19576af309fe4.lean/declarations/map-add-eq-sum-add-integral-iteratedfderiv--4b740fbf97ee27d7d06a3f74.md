# map_add_eq_sum_add_integral_iteratedFDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00153124-1704-df86-6b96-5b2835011692",
  "kind": "theorem",
  "lexical_name": "map_add_eq_sum_add_integral_iteratedFDeriv",
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
  "slug": "map-add-eq-sum-add-integral-iteratedfderiv--4b740fbf97ee27d7d06a3f74",
  "source": {
    "blob": "ba1d0e399178f3e0c9ad4e4b01c0db20ee1ab4f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TaylorIntegral/Variantaf2eb6d80b8f12eac444dc340823a82ca5259f1105483435c4d19576af309fe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b740fbf97ee27d7d06a3f7473d4db337bee41d06e31467a2d3417b9cbc46e14",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TaylorIntegral/Variantaf2eb6d80b8f12eac444dc340823a82ca5259f1105483435c4d19576af309fe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00153124-1704-df86-6b96-5b2835011692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_add_eq_sum_add_integral_iteratedFDeriv (hf : ∀ (t : ℝ) (_ht : t ∈ Set.Icc 0 1),
    ContDiffAt ℝ (n + 1) f (x + t • y)) :
    f (x + y) = ∑ k ∈ Finset.range (n + 1), (k ! : ℝ)⁻¹ • (iteratedFDeriv ℝ k f x (fun _ ↦ y)) +
    (n ! : ℝ)⁻¹ • ∫ t in 0..1, (1 - t)^n • iteratedFDeriv ℝ (n + 1) f (x + t • y) (fun _ ↦ y) := by
  simp_rw [← Set.uIcc_of_le zero_le_one] at hf
  induction n with
  | zero =>
    -- The base case follows from the fundamental theorem of calculus
    have h_eq : Set.EqOn (fun t ↦ (fderiv ℝ f (x + t • y)) y) (deriv fun (s : ℝ) ↦ f (x + s • y))
        (Set.uIcc 0 1) := by
      intro t ht
      rw [DifferentiableAt.deriv_comp_add_smul]
      exact (hf t ht).differentiableAt (by simp)
    simp only [zero_add, Finset.range_one, Finset.sum_singleton, factorial_zero, cast_one, inv_one,
      iteratedFDeriv_zero_apply, one_smul, pow_zero, reduceAdd, iteratedFDeriv_one_apply]
    rw [← sub_eq_iff_eq_add', Eq.comm, intervalIntegral.integral_congr h_eq]
    have hf' : ∀ (t : ℝ) (ht : t ∈ Set.uIcc 0 1), DifferentiableAt ℝ (fun s ↦ f (x + s • y)) t :=
      fun t ht ↦ ((hf t ht).differentiableAt (by simp)).comp t (by fun_prop)
    have hint : IntervalIntegrable (deriv (fun s ↦ f (x + s • y))) MeasureTheory.volume 0 1 := by
      have h₁ : ContinuousOn (fderiv ℝ f) ((fun t ↦ x + t • y) '' Set.uIcc (0 : ℝ) 1) := by
        intro z ⟨t, ht, hz⟩
        rw [← hz]
        exact (((hf t ht).fderiv_right (le_refl _)).continuousAt (n := 0)).continuousWithinAt
      have h₂ : ContinuousOn (fun x_1 ↦ fderiv ℝ f (x + x_1 • y)) (Set.uIcc (0 : ℝ) 1) := by
        apply h₁.comp (t := (fun t ↦ x + t • y) '' (Set.uIcc (0 : ℝ) 1)) (by fun_prop)
        intro t ht
        use t
      apply (ContinuousOn.congr _ h_eq.symm).intervalIntegrable
      fun_prop
    simpa using intervalIntegral.integral_deriv_eq_sub hf' hint
  | succ n ih =>
    -- We use the inductive hypothesis to cancel all lower order terms
    specialize ih (fun t ht ↦ (hf t ht).of_le (by simp))
    rw [Finset.sum_range_succ, add_assoc]
    convert ih using 2
    -- We define the functions u and v that we will integrate by parts
    set u := fun (k : ℕ) (t : ℝ) ↦ (k ! : ℝ)⁻¹ * (1 - t) ^ k
    have hu : ∀ (t : ℝ), HasDerivAt (u (n + 1)) (-u n t) t := by
      intro t
      unfold u
      have : (-((n ! : ℝ)⁻¹ * (1 - t) ^ n)) =
          ((n + 1) ! : ℝ)⁻¹ * ((n + 1) * (1 - t) ^ n * (-1)) := by
        field_simp
        congr 1
        rw [Nat.factorial_succ]
        grind
      rw [this]
      apply HasDerivAt.const_mul
      convert ((hasDerivAt_id t).const_sub 1).pow (n + 1)
      all_goals norm_cast
    have hu' : Continuous (u n) := by fun_prop
    set v := fun (k : ℕ) (t : ℝ) ↦ iteratedFDeriv ℝ k f (x + t • y) (fun _ ↦ y)
    have hv : ∀ (t : ℝ) (ht : t ∈ Set.uIcc 0 1), HasDerivAt (v (n + 1)) (v (n + 1 + 1) t) t := by
      intro t ht
      unfold v
      rw [← (hf t ht).deriv_fderiv_add_smul]
      have h_diff : DifferentiableAt ℝ (iteratedFDeriv ℝ (n + 1) f) (x + t • y) := by
        apply (hf t ht).differentiableAt_iteratedFDeriv
        norm_cast
        grind
      refine DifferentiableAt.hasDerivAt ?_
      fun_prop
    have hv' : ContinuousOn (v (n + 1 + 1)) (Set.uIcc 0 1) := by
      intro t ht
      have h_cont : ContinuousAt (iteratedFDeriv ℝ (n + 1 + 1) f) (x + t • y) :=
        ((hf t ht).iteratedFDeriv_right (i := n + 1 + 1) (m := 0) (by simp)).continuousAt
      exact (h_cont.comp (x := t) (by fun_prop)).continuousWithinAt.eval_const _
    -- Now we apply integration by parts and simplify
    simpa [← eq_neg_add_iff_add_eq, ← intervalIntegral.integral_smul, smul_smul, u, v] using
      intervalIntegral.integral_smul_deriv_eq_deriv_smul (fun t _ ↦ hu t) hv
      (hu'.neg.intervalIntegrable _ _) hv'.intervalIntegrable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TaylorIntegral/Variantaf2eb6d80b8f12eac444dc340823a82ca5259f1105483435c4d19576af309fe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TaylorIntegral/Variantaf2eb6d80b8f12eac444dc340823a82ca5259f1105483435c4d19576af309fe4.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba1d0e399178f3e0c9ad4e4b01c0db20ee1ab4f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
