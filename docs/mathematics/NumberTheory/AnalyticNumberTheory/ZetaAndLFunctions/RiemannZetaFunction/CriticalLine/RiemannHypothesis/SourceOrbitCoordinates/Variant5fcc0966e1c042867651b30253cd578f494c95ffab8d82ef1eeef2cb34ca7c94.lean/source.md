# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceOrbitCoordinates.Variant5fcc0966e1c042867651b30253cd578f494c95ffab8d82ef1eeef2cb34ca7c94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6ff797cf61c16f3991aa53386952173a177d254` · SHA-256 `5fcc0966e1c042867651b30253cd578f494c95ffab8d82ef1eeef2cb34ca7c94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceArithmeticOrbit

/-!
# Exact coefficient channels and fixed-source refinement

Labelled coefficients retain the full Gram geometry and its actual synthesis
kernel. Inventory refinement below fixes the source vector, extends coordinates
by zero, and preserves complete signed reflection interactions. It asserts no
cross-scale nesting, unitary refinement, arithmetic estimate or RH conclusion.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceOrbitCoordinates
open SourceArithmeticOrbit SourceReflectionDuality
open scoped BigOperators InnerProductSpace

/-- Select one literal translation/duality channel without declaring a basis. -/
def embedChannel (I : Finset ℕ) (ε δ : Bool) (c : ℕ → ℂ) : OrbitIndex I → ℂ :=
  fun i => if i.1 = ε ∧ i.2.1 = δ then c i.2.2 else 0

/-- Channel selection synthesizes exactly the retained weighted profile. -/
theorem synthesis_embedChannel (q : ComplexL2) (I : Finset ℕ) (ε δ : Bool)
    (c : ℕ → ℂ) :
    synthesis q I (embedChannel I ε δ c) = finiteProfile q I ε δ c := by
  classical
  have h := Finset.sum_coe_sort I (fun m => c m • orbitAtom q ε δ m)
  cases ε <;> cases δ <;>
    simpa [synthesis_apply, embedChannel, Fintype.sum_prod_type,
      orbitGenerator, finiteProfile] using h

/-- Full Gram coordinates retain all interactions of the selected profiles. -/
theorem finiteProfile_inner_coordinates (q : ComplexL2) (I : Finset ℕ)
    (ε δ η κ : Bool) (c d : ℕ → ℂ) :
    ⟪finiteProfile q I ε δ c, finiteProfile q I η κ d⟫_ℂ =
      ∑ i, ∑ j, star (embedChannel I ε δ c i) * embedChannel I η κ d j *
        gramMatrix q I i j := by
  rw [← synthesis_embedChannel, ← synthesis_embedChannel, synthesis_inner]

/-- The signed observable is reconstructed separately from the positive Gram metric. -/
theorem finiteProfile_reflected_coordinates (q : ComplexL2) (I : Finset ℕ)
    (ε δ η κ : Bool) (c d : ℕ → ℂ) :
    ⟪finiteProfile q I ε δ c, reflection (finiteProfile q I η κ d)⟫_ℂ =
      ∑ i, ∑ j, star (embedChannel I ε δ c i) * embedChannel I η κ d j *
        reflectedMatrix q I i j := by
  rw [← synthesis_embedChannel, ← synthesis_embedChannel, synthesis_reflected_inner]

/-- Even-source reflection reverses original channels with no extra minus. -/
theorem finiteProfile_reflection_original {q : ComplexL2} (hq : reflection q = q)
    (I : Finset ℕ) (ε : Bool) (c : ℕ → ℂ) :
    reflection (finiteProfile q I ε false c) = finiteProfile q I (!ε) false c := by
  simp only [finiteProfile, map_sum, map_smul, orbitAtom_reflection_original hq]

/-- The dual channel carries the required reflection minus sign. -/
theorem finiteProfile_reflection_dual {q : ComplexL2} (hq : reflection q = q)
    (I : Finset ℕ) (ε : Bool) (c : ℕ → ℂ) :
    reflection (finiteProfile q I ε true c) = -finiteProfile q I (!ε) true c := by
  simp [finiteProfile, map_sum, map_smul, orbitAtom_reflection_dual hq,
    Finset.sum_neg_distrib]

/-- Inventory inclusion keeps both channel tags and the exact underlying index. -/
def includeIndex {I K : Finset ℕ} (hIK : I ⊆ K) (i : OrbitIndex I) : OrbitIndex K :=
  (i.1, i.2.1, ⟨i.2.2, hIK i.2.2.property⟩)

/-- Refinement does not identify distinct original labels. -/
theorem includeIndex_injective {I K : Finset ℕ} (hIK : I ⊆ K) :
    Function.Injective (includeIndex hIK) := by
  intro i j h
  cases i with | mk ε i =>
    cases i with | mk δ m =>
      cases j with | mk η j =>
        cases j with | mk κ n =>
          simp only [includeIndex, Prod.mk.injEq] at h
          rcases h with ⟨rfl, rfl, h⟩
          have he : m = n := Subtype.ext (congrArg (fun k : K => (k : ℕ)) h)
          subst he
          rfl

/-- The larger inventory carries precisely the same ambient generator. -/
theorem orbitGenerator_includeIndex (q : ComplexL2) {I K : Finset ℕ}
    (hIK : I ⊆ K) (i : OrbitIndex I) :
    orbitGenerator q K (includeIndex hIK i) = orbitGenerator q I i := rfl

/-- Extend labelled coordinates by zero through the actual label inclusion. -/
def extendCoefficients {I K : Finset ℕ} (hIK : I ⊆ K) :
    (OrbitIndex I → ℂ) →ₗ[ℂ] (OrbitIndex K → ℂ) where
  toFun c := ∑ i, c i • Pi.single (includeIndex hIK i) 1
  map_add' c d := by simp [add_smul, Finset.sum_add_distrib]
  map_smul' a c := by simp [Finset.smul_sum, smul_smul]

/-- Exact synthesis freezes the ambient state under classification refinement. -/
theorem synthesis_extendCoefficients (q : ComplexL2) {I K : Finset ℕ}
    (hIK : I ⊆ K) (c : OrbitIndex I → ℂ) :
    synthesis q K (extendCoefficients hIK c) = synthesis q I c := by
  simp [extendCoefficients, map_sum, map_smul, orbitGenerator_includeIndex,
    synthesis_apply]

/-- Included coordinates retain their exact signed scalar value. -/
theorem extendCoefficients_apply_includeIndex {I K : Finset ℕ} (hIK : I ⊆ K)
    (c : OrbitIndex I → ℂ) (i : OrbitIndex I) :
    extendCoefficients hIK c (includeIndex hIK i) = c i := by
  classical
  simp [extendCoefficients, Pi.single_apply, (includeIndex_injective hIK).eq_iff]

/-- Every newly added underlying index has zero extended coordinate in every channel. -/
theorem extendCoefficients_apply_of_not_mem {I K : Finset ℕ} (hIK : I ⊆ K)
    (c : OrbitIndex I → ℂ) (k : OrbitIndex K) (hk : (k.2.2 : ℕ) ∉ I) :
    extendCoefficients hIK c k = 0 := by
  classical
  have hn (i : OrbitIndex I) : includeIndex hIK i ≠ k := by
    intro he
    have hv := congrArg (fun j : OrbitIndex K => (j.2.2 : ℕ)) he
    exact hk (hv ▸ i.2.2.property)
  simp [extendCoefficients, hn]

/-- A single coordinate moves only to its literal included label. -/
theorem extendCoefficients_single {I K : Finset ℕ} (hIK : I ⊆ K)
    (i : OrbitIndex I) (a : ℂ) :
    extendCoefficients hIK (Pi.single i a) = Pi.single (includeIndex hIK i) a := by
  classical
  have he : extendCoefficients hIK (Pi.single i a) =
      a • Pi.single (includeIndex hIK i) 1 := by
    simp [extendCoefficients, Pi.single_apply]
  rw [he]
  funext j
  by_cases hj : j = includeIndex hIK i <;> simp [hj]

/-- Label inclusions compose in the stated small-to-large order. -/
theorem includeIndex_trans {I K L : Finset ℕ} (hIK : I ⊆ K) (hKL : K ⊆ L)
    (i : OrbitIndex I) :
    includeIndex hKL (includeIndex hIK i) = includeIndex (hIK.trans hKL) i := rfl

/-- Successive refinements keep every coefficient, not merely a sampled readout. -/
theorem extendCoefficients_trans {I K L : Finset ℕ} (hIK : I ⊆ K) (hKL : K ⊆ L)
    (c : OrbitIndex I → ℂ) :
    extendCoefficients hKL (extendCoefficients hIK c) =
      extendCoefficients (hIK.trans hKL) c := by
  change extendCoefficients hKL (∑ i, c i • Pi.single (includeIndex hIK i) 1) =
    ∑ i, c i • Pi.single (includeIndex (hIK.trans hKL) i) 1
  simp [map_sum, map_smul, extendCoefficients_single, includeIndex_trans]

/-- Refining to the same inventory is the identity on labelled coefficients. -/
theorem extendCoefficients_refl (I : Finset ℕ) (c : OrbitIndex I → ℂ) :
    extendCoefficients (Finset.Subset.refl I) c = c := by
  funext i
  exact extendCoefficients_apply_includeIndex (Finset.Subset.refl I) c i

/-- Dependencies are preserved because the full ambient state is preserved. -/
theorem extendCoefficients_ker (q : ComplexL2) {I K : Finset ℕ} (hIK : I ⊆ K) :
    LinearMap.ker (synthesis q I) ≤
      Submodule.comap (extendCoefficients hIK) (LinearMap.ker (synthesis q K)) := by
  intro c hc
  change synthesis q K (extendCoefficients hIK c) = 0
  rw [synthesis_extendCoefficients]
  exact hc

/-- The fixed-source refinement descends through the exact synthesis dependency kernels. -/
def quotientRefinement (q : ComplexL2) {I K : Finset ℕ} (hIK : I ⊆ K) :
    ((OrbitIndex I → ℂ) ⧸ LinearMap.ker (synthesis q I)) →ₗ[ℂ]
      ((OrbitIndex K → ℂ) ⧸ LinearMap.ker (synthesis q K)) :=
  Submodule.mapQ _ _ (extendCoefficients hIK) (extendCoefficients_ker q hIK)

/-- Quotient refinement is literal zero extension on representative coordinates. -/
theorem quotientRefinement_apply_mk (q : ComplexL2) {I K : Finset ℕ}
    (hIK : I ⊆ K) (c : OrbitIndex I → ℂ) :
    quotientRefinement q hIK (Submodule.Quotient.mk c) =
      Submodule.Quotient.mk (extendCoefficients hIK c) := rfl

/-- The transported quotient state is the same actual L² vector. -/
theorem quotientRefinement_state (q : ComplexL2) {I K : Finset ℕ}
    (hIK : I ⊆ K) (x : (OrbitIndex I → ℂ) ⧸ LinearMap.ker (synthesis q I)) :
    (synthesisQuotientEquivOrbit q K (quotientRefinement q hIK x) : ComplexL2) =
      (synthesisQuotientEquivOrbit q I x : ComplexL2) := by
  refine Submodule.Quotient.induction_on _ x (fun c => ?_)
  simpa only [quotientRefinement_apply_mk, synthesisQuotientEquivOrbit_apply_mk] using
    synthesis_extendCoefficients q hIK c

/-- Refinement loses no equivalence class after exact dependencies have been removed. -/
theorem quotientRefinement_injective (q : ComplexL2) {I K : Finset ℕ}
    (hIK : I ⊆ K) : Function.Injective (quotientRefinement q hIK) := by
  intro x y h
  apply (synthesisQuotientEquivOrbit q I).injective
  apply Subtype.ext
  calc
    (synthesisQuotientEquivOrbit q I x : ComplexL2) =
        (synthesisQuotientEquivOrbit q K (quotientRefinement q hIK x) : ComplexL2) :=
      (quotientRefinement_state q hIK x).symm
    _ = (synthesisQuotientEquivOrbit q K (quotientRefinement q hIK y) : ComplexL2) :=
      congrArg (fun z => (synthesisQuotientEquivOrbit q K z : ComplexL2)) h
    _ = (synthesisQuotientEquivOrbit q I y : ComplexL2) := quotientRefinement_state q hIK y

/-- Quotient refinements compose with the same source in the frozen inclusion order. -/
theorem quotientRefinement_trans (q : ComplexL2) {I K L : Finset ℕ}
    (hIK : I ⊆ K) (hKL : K ⊆ L)
    (x : (OrbitIndex I → ℂ) ⧸ LinearMap.ker (synthesis q I)) :
    quotientRefinement q hKL (quotientRefinement q hIK x) =
      quotientRefinement q (hIK.trans hKL) x := by
  refine Submodule.Quotient.induction_on _ x (fun c => ?_)
  simp only [quotientRefinement_apply_mk, extendCoefficients_trans]

/-- The identity refinement also preserves every dependency class. -/
theorem quotientRefinement_refl (q : ComplexL2) (I : Finset ℕ)
    (x : (OrbitIndex I → ℂ) ⧸ LinearMap.ker (synthesis q I)) :
    quotientRefinement q (Finset.Subset.refl I) x = x := by
  refine Submodule.Quotient.induction_on _ x (fun c => ?_)
  simp only [quotientRefinement_apply_mk, extendCoefficients_refl]

/-- Inner products use the actual transported Gram metric, without a Euclidean label norm. -/
theorem quotientRefinement_inner (q : ComplexL2) {I K : Finset ℕ}
    (hIK : I ⊆ K) (x y : (OrbitIndex I → ℂ) ⧸ LinearMap.ker (synthesis q I)) :
    ⟪(synthesisQuotientEquivOrbit q K (quotientRefinement q hIK x) : ComplexL2),
      (synthesisQuotientEquivOrbit q K (quotientRefinement q hIK y) : ComplexL2)⟫_ℂ =
    ⟪(synthesisQuotientEquivOrbit q I x : ComplexL2),
      (synthesisQuotientEquivOrbit q I y : ComplexL2)⟫_ℂ := by
  rw [quotientRefinement_state, quotientRefinement_state]

/-- The actual signed interaction also survives quotient refinement completely. -/
theorem quotientRefinement_reflected_inner (q : ComplexL2) {I K : Finset ℕ}
    (hIK : I ⊆ K) (x y : (OrbitIndex I → ℂ) ⧸ LinearMap.ker (synthesis q I)) :
    ⟪(synthesisQuotientEquivOrbit q K (quotientRefinement q hIK x) : ComplexL2),
      reflection (synthesisQuotientEquivOrbit q K (quotientRefinement q hIK y))⟫_ℂ =
    ⟪(synthesisQuotientEquivOrbit q I x : ComplexL2),
      reflection (synthesisQuotientEquivOrbit q I y)⟫_ℂ := by
  rw [quotientRefinement_state, quotientRefinement_state]

/-- No omitted cross-block term appears when the full Gram form is transported. -/
theorem gram_refinement (q : ComplexL2) {I K : Finset ℕ} (hIK : I ⊆ K)
    (c d : OrbitIndex I → ℂ) :
    (∑ i, ∑ j, star (extendCoefficients hIK c i) * extendCoefficients hIK d j *
      gramMatrix q K i j) = ∑ i, ∑ j, star (c i) * d j * gramMatrix q I i j := by
  rw [← synthesis_inner, ← synthesis_inner, synthesis_extendCoefficients,
    synthesis_extendCoefficients]

/-- Fixed-source refinement preserves the full signed reflection form as well. -/
theorem reflected_refinement (q : ComplexL2) {I K : Finset ℕ} (hIK : I ⊆ K)
    (c d : OrbitIndex I → ℂ) :
    (∑ i, ∑ j, star (extendCoefficients hIK c i) * extendCoefficients hIK d j *
      reflectedMatrix q K i j) =
      ∑ i, ∑ j, star (c i) * d j * reflectedMatrix q I i j := by
  rw [← synthesis_reflected_inner, ← synthesis_reflected_inner,
    synthesis_extendCoefficients, synthesis_extendCoefficients]

end FormalResearch.RiemannHypothesis.SourceOrbitCoordinates
```
