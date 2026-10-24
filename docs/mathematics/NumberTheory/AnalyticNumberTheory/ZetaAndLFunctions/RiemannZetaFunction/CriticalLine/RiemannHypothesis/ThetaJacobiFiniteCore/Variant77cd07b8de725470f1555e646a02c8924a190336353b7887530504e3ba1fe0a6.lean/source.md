# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaJacobiFiniteCore.Variant77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7012619d7870e3ee0266de0ef902f513c8d2936` · SHA-256 `77cd07b8de725470f1555e646a02c8924a190336353b7887530504e3ba1fe0a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ThetaJacobiRecurrence

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false

/-!
# The finite-sequence graph core of the actual theta Jacobi realization

Review-only transport of the checked theta polynomial graph core through the
constructed pointed unitary. The literal maximal domain remains the unitary
preimage of the multiplication domain. All-degree finite sequences form a core;
a fixed finite truncation does not. Original and normalized pointed vectors are
reused unchanged, with no free/Catalan identification or signed RH estimate.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/

namespace FormalResearch.RiemannHypothesis.ThetaJacobiFiniteCore

open MeasureTheory Polynomial Filter
open scoped Topology ComplexConjugate InnerProductSpace
open ThetaMomentMeasure ThetaMultiplicationAdapter ThetaMultiplicationDomain
open ThetaPolynomialGraphCore ThetaJacobiUnitary ThetaJacobiRecurrence

noncomputable section

/-- The all-degree finite-coordinate span c₀₀ in the actual Jacobi ℓ² space. -/
def finiteSequences : Submodule ℂ (lp (fun _ : ℕ => ℂ) 2) :=
  Submodule.span ℂ (Set.range (fun n : ℕ => lp.single (E := fun _ : ℕ => ℂ) 2 n (1 : ℂ)))

/-- Finite linear combinations have finite literal coordinate support. -/
theorem finiteSequences_support_finite (f : lp (fun _ : ℕ => ℂ) 2)
    (hf : f ∈ finiteSequences) : (Function.support f).Finite := by
  classical
  induction hf using Submodule.span_induction with
  | mem f hf =>
    obtain ⟨n, rfl⟩ := hf
    have h : Function.support (lp.single (E := fun _ : ℕ => ℂ) 2 n (1 : ℂ)) ⊆ {n} := by
      intro i hi
      by_contra hin
      have hne : i ≠ n := by simpa only [Set.mem_singleton_iff] using hin
      exact hi (lp.single_apply_ne (E := fun _ : ℕ => ℂ) 2 n (1 : ℂ) hne)
    exact (Set.finite_singleton n).subset h
  | zero => simpa only [lp.coeFn_zero, Function.support_zero] using Set.finite_empty
  | add f g _ _ hf hg =>
    apply (hf.union hg).subset
    intro n hn
    by_contra h
    have hf0 : f n = 0 := by
      by_contra hf1
      exact h (Or.inl hf1)
    have hg0 : g n = 0 := by
      by_contra hg1
      exact h (Or.inr hg1)
    exact hn (by simp [hf0, hg0])
  | smul c f _ hf =>
    apply hf.subset
    intro n hn
    by_contra h
    exact hn (by simp [lp.coeFn_smul, not_not.mp h])

/-- Every finitely supported ℓ² vector belongs to the finite-coordinate span. -/
theorem mem_finiteSequences_of_support_finite (f : lp (fun _ : ℕ => ℂ) 2)
    (hf : (Function.support f).Finite) : f ∈ finiteSequences := by
  classical
  let s := hf.toFinset
  have heq : f = ∑ n ∈ s, lp.single (E := fun _ : ℕ => ℂ) 2 n (f n) := by
    apply lp.ext
    funext i
    simp only [lp.coeFn_sum, Finset.sum_apply, lp.single_apply, Finset.sum_pi_single]
    by_cases hi : i ∈ s
    · simp [hi]
    · have hf0 : f i = 0 := by
        have hnot : i ∉ Function.support f := by simpa only [s, hf.mem_toFinset] using hi
        exact not_not.mp hnot
      simp [hi, hf0]
  rw [heq]
  apply Submodule.sum_mem
  intro n _
  have hs : (lp.single (E := fun _ : ℕ => ℂ) 2 n (f n) : lp (fun _ : ℕ => ℂ) 2) =
      f n • lp.single (E := fun _ : ℕ => ℂ) 2 n (1 : ℂ) := by
    simpa only [smul_eq_mul, mul_one] using
      (lp.single_smul (E := fun _ : ℕ => ℂ) 2 n (f n) (1 : ℂ))
  rw [hs]
  exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨n, rfl⟩)

/-- The algebraic span is exactly the literal finitely supported ℓ² sequences. -/
theorem mem_finiteSequences_iff (f : lp (fun _ : ℕ => ℂ) 2) :
    f ∈ finiteSequences ↔ (Function.support f).Finite :=
  ⟨finiteSequences_support_finite f, mem_finiteSequences_of_support_finite f⟩

/-- The actual pointed unitary maps c₀₀ onto the previously checked polynomial core. -/
theorem pointedUnitary_map_finiteSequences {t : ℝ} (ht : 0 ≤ t) :
    finiteSequences.map (pointedUnitary t ht).toLinearEquiv.toLinearMap = polynomialCore t ht := by
  rw [finiteSequences, Submodule.map_span, ← Set.range_comp]
  have h : (fun n : ℕ => pointedUnitary t ht (lp.single (E := fun _ : ℕ => ℂ) 2 n (1 : ℂ))) =
      orthogonalPolynomial t ht := funext (pointedUnitary_single ht)
  change Submodule.span ℂ (Set.range (fun n : ℕ =>
    pointedUnitary t ht (lp.single (E := fun _ : ℕ => ℂ) 2 n (1 : ℂ)))) = _
  rw [h, orthogonalPolynomial_span]

/-- Equivalently, the literal polynomial core has exactly c₀₀ as its unitary preimage. -/
theorem pointedUnitary_preimage_polynomialCore {t : ℝ} (ht : 0 ≤ t) :
    (polynomialCore t ht).comap (pointedUnitary t ht).toLinearEquiv.toLinearMap = finiteSequences := by
  rw [← pointedUnitary_map_finiteSequences ht,
    Submodule.comap_map_eq_of_injective (pointedUnitary t ht).injective]

/-- Every finite sequence is admitted by the literal maximal Jacobi domain. -/
theorem finiteSequences_le_jacobiDomain {t : ℝ} (ht : 0 ≤ t) :
    finiteSequences ≤ jacobiDomain t ht := by
  apply Submodule.span_le.mpr
  rintro f ⟨n, rfl⟩
  exact standardVector_mem_jacobiDomain ht n

/-- Graph approximation transports both norms through the same actual pointed unitary. -/
theorem finiteSequence_graph_approximation {t : ℝ} (ht : 0 ≤ t)
    (f : jacobiDomain t ht) {ε : ℝ} (hε : 0 < ε) :
    ∃ q : jacobiDomain t ht, (q : lp (fun _ : ℕ => ℂ) 2) ∈ finiteSequences ∧
      ‖f.val - q.val‖ < ε ∧
      ‖jacobiOperator t ht f - jacobiOperator t ht q‖ < ε := by
  let U := pointedUnitary t ht
  obtain ⟨p, hp, hv, hm⟩ := polynomial_graph_approximation ht (domainUnitary t ht f) hε
  let q : jacobiDomain t ht := ⟨U.symm p, by
    change U (U.symm p) ∈ coordinateDomain (momentMeasure t)
    simpa only [LinearIsometryEquiv.apply_symm_apply] using p.property⟩
  have hq : domainUnitary t ht q = p := by
    apply Subtype.ext
    exact U.apply_symm_apply p
  refine ⟨q, ?_, ?_, ?_⟩
  · rw [← pointedUnitary_preimage_polynomialCore ht]
    change U (U.symm p) ∈ polynomialCore t ht
    rw [LinearIsometryEquiv.apply_symm_apply]
    exact ⟨p, hp, rfl⟩
  · have hu := U.norm_map (f.val - q.val)
    rw [map_sub] at hu
    change ‖U f.val - U q.val‖ = ‖f.val - q.val‖ at hu
    have hv' : ‖U f.val - U q.val‖ < ε := by
      change ‖(domainUnitary t ht f).val - (domainUnitary t ht q).val‖ < ε
      rwa [hq]
    rwa [hu] at hv'
  · have hu := U.norm_map (jacobiOperator t ht f - jacobiOperator t ht q)
    rw [map_sub] at hu
    have huf : U (jacobiOperator t ht f) =
        coordinateMultiplication (momentMeasure t) (domainUnitary t ht f) :=
      pointedUnitary_jacobiOperator ht f
    have huq : U (jacobiOperator t ht q) =
        coordinateMultiplication (momentMeasure t) p := by
      rw [pointedUnitary_jacobiOperator, hq]
    rw [huf, huq] at hu
    rwa [hu] at hm

/-- The all-degree finite-sequence restriction has exactly the full maximal graph as its closure. -/
theorem finiteSequences_graph_closure {t : ℝ} (ht : 0 ≤ t) :
    ((jacobiOperator t ht).domRestrict finiteSequences).graph.topologicalClosure =
      (jacobiOperator t ht).graph := by
  apply le_antisymm
  · exact Submodule.topologicalClosure_minimal _
      (LinearPMap.le_graph_of_le LinearPMap.domRestrict_le) (jacobiOperator_isClosed ht)
  · intro z hz
    obtain ⟨f, rfl⟩ := (LinearPMap.mem_graph_iff' _).mp hz
    change (f.val, jacobiOperator t ht f) ∈
      closure (((jacobiOperator t ht).domRestrict finiteSequences).graph : Set _)
    rw [Metric.mem_closure_iff]
    intro ε hε
    obtain ⟨q, hq, hv, hm⟩ := finiteSequence_graph_approximation ht f hε
    refine ⟨(q.val, jacobiOperator t ht q), ?_, ?_⟩
    · apply (LinearPMap.mem_graph_iff' _).mpr
      exact ⟨⟨q.val, ⟨hq, q.property⟩⟩, rfl⟩
    · rw [Prod.dist_eq, max_lt_iff]
      exact ⟨by simpa only [dist_eq_norm] using hv,
        by simpa only [dist_eq_norm] using hm⟩

/-- Literal c₀₀ is a core of the actual unbounded self-adjoint theta Jacobi operator. -/
theorem jacobiOperator_finiteSequences_hasCore {t : ℝ} (ht : 0 ≤ t) :
    (jacobiOperator t ht).HasCore finiteSequences := by
  refine ⟨finiteSequences_le_jacobiDomain ht, ?_⟩
  apply LinearPMap.eq_of_eq_graph
  have hle : (jacobiOperator t ht).domRestrict finiteSequences ≤ jacobiOperator t ht :=
    LinearPMap.domRestrict_le
  have hc := (jacobiOperator_isClosed ht).isClosable.leIsClosable hle
  rw [← hc.graph_closure_eq_closure_graph]
  exact finiteSequences_graph_closure ht

/-- Closing the actual finite-sequence restriction recovers the exact maximal domain operator. -/
theorem finiteSequences_restriction_closure {t : ℝ} (ht : 0 ≤ t) :
    ((jacobiOperator t ht).domRestrict finiteSequences).closure = jacobiOperator t ht :=
  (jacobiOperator_finiteSequences_hasCore ht).closure_eq

/-- The finite-sequence Jacobi restriction is essentially self-adjoint on its proved core. -/
theorem finiteSequences_restriction_closure_isSelfAdjoint {t : ℝ} (ht : 0 ≤ t) :
    IsSelfAdjoint ((jacobiOperator t ht).domRestrict finiteSequences).closure := by
  rw [finiteSequences_restriction_closure]
  exact jacobiOperator_isSelfAdjoint ht

/-- A fixed finite truncation through degree N, distinguished from all-degree c₀₀. -/
def cutoffSequences (N : ℕ) : Submodule ℂ (lp (fun _ : ℕ => ℂ) 2) :=
  Submodule.span ℂ ((fun n : ℕ => lp.single (E := fun _ : ℕ => ℂ) 2 n (1 : ℂ)) '' Set.Iic N)

/-- Every fixed truncation is contained in c₀₀. -/
theorem cutoffSequences_le_finiteSequences (N : ℕ) : cutoffSequences N ≤ finiteSequences :=
  Submodule.span_mono (Set.image_subset_range _ _)

/-- The complete finite-sequence core includes all cutoffs, rather than any fixed one. -/
theorem finiteSequences_eq_iSup_cutoffs : finiteSequences = ⨆ N : ℕ, cutoffSequences N := by
  apply le_antisymm
  · apply Submodule.span_le.mpr
    rintro f ⟨n, rfl⟩
    exact (le_iSup (fun N : ℕ => cutoffSequences N) n)
      (Submodule.subset_span ⟨n, Set.mem_Iic.mpr (le_refl n), rfl⟩)
  · exact iSup_le cutoffSequences_le_finiteSequences

/-- A fixed cutoff has zero in its first omitted coordinate. -/
theorem cutoffSequences_coordinate_zero (N : ℕ) (f : lp (fun _ : ℕ => ℂ) 2)
    (hf : f ∈ cutoffSequences N) : f (N + 1) = 0 := by
  have hle : cutoffSequences N ≤ (lp.evalₗ (fun _ : ℕ => ℂ) 2 (N + 1) :
      lp (fun _ : ℕ => ℂ) 2 →ₗ[ℂ] ℂ).ker := by
    apply Submodule.span_le.mpr
    rintro x ⟨i, hi, rfl⟩
    change lp.single (E := fun _ : ℕ => ℂ) 2 i (1 : ℂ) (N + 1) = 0
    apply lp.single_apply_ne
    change i ≤ N at hi
    omega
  exact hle hf

/-- Hostile fixture: a fixed finite truncation cannot replace the actual all-degree graph core. -/
theorem cutoffSequences_not_hasCore {t : ℝ} (ht : 0 ≤ t) (N : ℕ) :
    ¬(jacobiOperator t ht).HasCore (cutoffSequences N) := by
  intro hc
  let J := jacobiOperator t ht
  let L : (lp (fun _ : ℕ => ℂ) 2 × lp (fun _ : ℕ => ℂ) 2) →L[ℂ] ℂ :=
    (lp.evalCLM ℂ (fun _ : ℕ => ℂ) 2 (N + 1)).comp (ContinuousLinearMap.fst ℂ _ _)
  have hle : (J.domRestrict (cutoffSequences N)).graph ≤ L.ker := by
    intro z hz
    obtain ⟨f, rfl⟩ := (LinearPMap.mem_graph_iff' _).mp hz
    change f.val (N + 1) = 0
    exact cutoffSequences_coordinate_zero N f.val f.property.1
  have hclosure := Submodule.topologicalClosure_minimal _ hle L.isClosed_ker
  have hclosable := (jacobiOperator_isClosed ht).isClosable.leIsClosable
    (show J.domRestrict (cutoffSequences N) ≤ J from LinearPMap.domRestrict_le)
  rw [hclosable.graph_closure_eq_closure_graph, hc.closure_eq] at hclosure
  have hz := hclosure ((LinearPMap.mem_graph_iff' J).mpr
    ⟨standardDomainVector t ht (N + 1), rfl⟩)
  change lp.single (E := fun _ : ℕ => ℂ) 2 (N + 1) (1 : ℂ) (N + 1) = 0 at hz
  exact one_ne_zero (by simpa only [lp.single_apply_self] using hz)

end
end FormalResearch.RiemannHypothesis.ThetaJacobiFiniteCore
```
