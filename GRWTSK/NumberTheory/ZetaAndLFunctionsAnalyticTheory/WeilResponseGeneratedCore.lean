/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPhysicalSourceOperator
import Mathlib.LinearAlgebra.Finsupp.LinearCombination
import Mathlib.Analysis.InnerProductSpace.Projection.Submodule
import Mathlib.Tactic.Abel

/-!
# Response-generated cores of the original signed Weil source

Use arbitrary FINITE combinations of the original sine LOADS. Their exact
weak responses are graph-norm dense in the maximal source form domain.
Their physical responses are a core of the actual self-adjoint operator.
These vectors are not the original finite-sine TRIALS: no unproved sine
form-core theorem or computable rate of solution is inferred.

The form-density proof uses the actual weak equation, invertibility of the
coercive source representative, and original Lebesgue Parseval. The operator
core uses the continuous map h -> (R h, h-lambda R h) and its exact graph.
The consumer is `WeilResponseSignReturn`: lower signs can be checked on all
finite response combinations without changing the original source domain.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, kernel replay, transitive
axiom audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ResponseGeneratedCore

open TranslationCutoffs TranslationEnergyDomain FormDomainDensity
open ClosedSourceBilinear ShiftedSourceSolve PhysicalSourceOperator
open OddSineParseval

/-- Choose a lift only after the original finite-energy theorem provides it. -/
def sineLift (T : ℝ) (hT : 0 < T) (n : ℕ) : FormDomain T :=
  Classical.choose (exists_sine_lift T hT n)

theorem sineLift_input (T : ℝ) (hT : 0 < T) (n : ℕ) :
    input T (sineLift T hT n) = sinePhysical T (n + 1) :=
  Classical.choose_spec (exists_sine_lift T hT n)

/-- An original normalized sine as an actual supported odd physical load. -/
def sineLoad (T : ℝ) (hT : 0 < T) (n : ℕ) : WindowPhysical T :=
  windowInput T (sineLift T hT n)

theorem sineLoad_coe (T : ℝ) (hT : 0 < T) (n : ℕ) :
    (sineLoad T hT n : Physical) = sinePhysical T (n + 1) :=
  sineLift_input T hT n

theorem sineLoad_inner (T : ℝ) (hT : 0 < T) (n : ℕ) (f : WindowPhysical T) :
    inner ℝ (sineLoad T hT n) f = sineCoefficient T (f : Physical) (n + 1) := by
  change inner ℝ (sineLoad T hT n : Physical) (f : Physical) = _
  rw [sineLoad_coe, sinePhysical_inner]

/-- Finite support means arbitrary finite combinations, not only basis tests. -/
def loadMap (T : ℝ) (hT : 0 < T) : (ℕ →₀ ℝ) →ₗ[ℝ] WindowPhysical T :=
  Finsupp.linearCombination ℝ (sineLoad T hT)

@[simp] theorem loadMap_single (T : ℝ) (hT : 0 < T) (n : ℕ) :
    loadMap T hT (Finsupp.single n 1) = sineLoad T hT n := by
  simp [loadMap]

def loadSpace (T : ℝ) (hT : 0 < T) : Submodule ℝ (WindowPhysical T) :=
  (loadMap T hT).range

/-- Original Parseval rules out a physical vector invisible to every sine load. -/
theorem sineLoads_total (T : ℝ) (hT : 0 < T) (f : WindowPhysical T)
    (h : ∀ n, inner ℝ (sineLoad T hT n) f = 0) : f = 0 := by
  have hcoeff (n : ℕ) : sineCoefficient T (f : Physical) (n + 1) = 0 := by
    rw [← sineLoad_inner T hT n f]
    exact h n
  have hc := (mem_supportedOdd_iff T (f : Physical)).1 f.property
  have hs := hasSum_source_sineCoefficient_sq_ae T hT (Lp.memLp (f : Physical))
    hc.2 hc.1
  have hm : (∫ t : ℝ, ‖(f : Physical) t‖ ^ 2) = 0 := by
    simpa only [hcoeff, sq, zero_mul, tsum_zero] using hs.tsum_eq.symm
  have hn : ‖(f : Physical)‖ ^ 2 = 0 :=
    (norm_sq_integral volume (f : Physical)).trans hm
  exact Subtype.ext (norm_eq_zero.mp (sq_eq_zero_iff.mp hn))

theorem loadSpace_closure (T : ℝ) (hT : 0 < T) :
    (loadSpace T hT).topologicalClosure = ⊤ := by
  rw [Submodule.topologicalClosure_eq_top_iff, Submodule.eq_bot_iff]
  intro f hf
  apply sineLoads_total T hT f
  intro n
  have h := hf (loadMap T hT (Finsupp.single n 1)) ⟨Finsupp.single n 1, rfl⟩
  simpa only [loadMap_single] using h

/-- These are exact source responses, not a new finite-dimensional solver. -/
def responseMap (T β : ℝ) (hT : 0 < T) : (ℕ →₀ ℝ) →ₗ[ℝ] FormDomain T :=
  (weakSolve T β hT).toLinearMap.comp (loadMap T hT)

@[simp] theorem responseMap_apply (T β : ℝ) (hT : 0 < T) (c : ℕ →₀ ℝ) :
    responseMap T β hT c = weakSolve T β hT (loadMap T hT c) := rfl

def responseCore (T β : ℝ) (hT : 0 < T) : Submodule ℝ (FormDomain T) :=
  (responseMap T β hT).range

/-- A genuine form core in the COMPLETE gamma graph topology.
This does not claim that the original sine span itself is a form core. -/
theorem responseCore_closure (T β : ℝ) (hT : 0 < T) :
    (responseCore T β hT).topologicalClosure = ⊤ := by
  rw [Submodule.topologicalClosure_eq_top_iff, Submodule.eq_bot_iff]
  intro z hz
  let u := (variationalEquiv T β hT).symm z
  have heu : variationalEquiv T β hT u = z :=
    (variationalEquiv T β hT).apply_symm_apply z
  have hJu : windowInput T u = 0 := by
    apply sineLoads_total T hT (windowInput T u)
    intro n
    let c : ℕ →₀ ℝ := Finsupp.single n 1
    have ho : inner ℝ (responseMap T β hT c) z = 0 :=
      hz (responseMap T β hT c) ⟨c, rfl⟩
    calc
      inner ℝ (sineLoad T hT n) (windowInput T u) =
          inner ℝ (loadMap T hT c) (windowInput T u) := by simp [c]
      _ = coerciveForm T β (responseMap T β hT c) u :=
        (weakSolve_spec T β hT (loadMap T hT c) u).symm
      _ = coerciveForm T β u (responseMap T β hT c) :=
        coerciveForm_symmetric T β _ _
      _ = inner ℝ (variationalEquiv T β hT u) (responseMap T β hT c) :=
        (variationalEquiv_pairing T β hT u _).symm
      _ = inner ℝ (responseMap T β hT c) z := by rw [heu, real_inner_comm]
      _ = 0 := ho
  have hu : u = 0 := windowInput_injective T (by simpa only [map_zero] using hJu)
  calc
    z = variationalEquiv T β hT u := heu.symm
    _ = 0 := by rw [hu, map_zero]

/-- Actual approximation existence, without an invented effective rate. -/
theorem exists_response_approx (T β : ℝ) (hT : 0 < T)
    (z : FormDomain T) {ε : ℝ} (hε : 0 < ε) :
    ∃ c : ℕ →₀ ℝ, ‖z - responseMap T β hT c‖ < ε := by
  have hz : z ∈ closure (responseCore T β hT : Set (FormDomain T)) := by
    rw [← Submodule.topologicalClosure_coe, responseCore_closure]
    trivial
  obtain ⟨w, hw, hd⟩ := (Metric.mem_closure_iff.mp hz) ε hε
  obtain ⟨c, rfl⟩ := hw
  exact ⟨c, by simpa only [dist_eq_norm] using hd⟩

/-- Parametrize the complete physical operator graph by its physical load. -/
def graphResponse (T β : ℝ) (hT : 0 < T) :
    WindowPhysical T →L[ℝ] (WindowPhysical T × WindowPhysical T) :=
  (physicalResponse T β hT).prod
    (ContinuousLinearMap.id ℝ (WindowPhysical T) -
      regularization T β • physicalResponse T β hT)

@[simp] theorem graphResponse_apply (T β : ℝ) (hT : 0 < T) (h : WindowPhysical T) :
    graphResponse T β hT h =
      (physicalResponse T β hT h,
        h - regularization T β • physicalResponse T β hT h) := rfl

def responseGraph (T β : ℝ) (hT : 0 < T) :
    Submodule ℝ (WindowPhysical T × WindowPhysical T) :=
  ((graphResponse T β hT).toLinearMap.comp (loadMap T hT)).range

def physicalCore (T β : ℝ) (hT : 0 < T) : Submodule ℝ (WindowPhysical T) :=
  ((physicalResponse T β hT).toLinearMap.comp (loadMap T hT)).range

theorem responseGraph_le (T β : ℝ) (hT : 0 < T) :
    responseGraph T β hT ≤ (sourceOperator T β hT).graph := by
  rintro _ ⟨c, rfl⟩
  exact sourceOperator_resolvent_graph T β hT (loadMap T hT c)

theorem physicalCore_le_domain (T β : ℝ) (hT : 0 < T) :
    physicalCore T β hT ≤ (sourceOperator T β hT).domain := by
  rintro _ ⟨c, rfl⟩
  exact LinearPMap.mem_domain_of_mem_graph
    (sourceOperator_resolvent_graph T β hT (loadMap T hT c))

/-- Load density is transported by the bounded complete graph map. -/
theorem graphResponse_mem_closure (T β : ℝ) (hT : 0 < T) (h : WindowPhysical T) :
    graphResponse T β hT h ∈ (responseGraph T β hT).topologicalClosure := by
  have hc : IsClosed ((graphResponse T β hT) ⁻¹'
      (responseGraph T β hT).topologicalClosure) :=
    (responseGraph T β hT).isClosed_topologicalClosure.preimage
      (graphResponse T β hT).continuous
  have hs : (loadSpace T hT : Set (WindowPhysical T)) ⊆
      (graphResponse T β hT) ⁻¹' (responseGraph T β hT).topologicalClosure := by
    rintro _ ⟨c, rfl⟩
    exact (responseGraph T β hT).le_topologicalClosure ⟨c, rfl⟩
  apply closure_minimal hs hc
  rw [← Submodule.topologicalClosure_coe, loadSpace_closure]
  trivial

/-- Both the physical inputs and their ACTUAL operator outputs converge. -/
theorem responseGraph_closure (T β : ℝ) (hT : 0 < T) :
    (responseGraph T β hT).topologicalClosure = (sourceOperator T β hT).graph := by
  apply le_antisymm
  · exact (responseGraph T β hT).topologicalClosure_minimal
      (responseGraph_le T β hT) (sourceOperator_isClosed T β hT)
  · intro z hz
    let h := z.2 + regularization T β • z.1
    have he : physicalResponse T β hT h = z.1 :=
      (sourceOperator_graph T β hT z.1 z.2).1 hz
    have hg : graphResponse T β hT h = z := by
      apply Prod.ext
      · exact he
      · change h - regularization T β • physicalResponse T β hT h = z.2
        rw [he]
        dsimp [h]
        abel
    rw [← hg]
    exact graphResponse_mem_closure T β hT h

/-- The graph restriction is exactly the finite-response graph. -/
theorem restriction_graph (T β : ℝ) (hT : 0 < T) :
    ((sourceOperator T β hT).domRestrict (physicalCore T β hT)).graph =
      responseGraph T β hT := by
  let A := sourceOperator T β hT
  let S := physicalCore T β hT
  apply le_antisymm
  · intro z hz
    obtain ⟨u, hu, hv⟩ := (LinearPMap.mem_graph_iff (A.domRestrict S)).1 hz
    have huS : (u : WindowPhysical T) ∈ S := u.property.1
    obtain ⟨c, hc⟩ := huS
    have hzA : z ∈ A.graph :=
      LinearPMap.le_graph_of_le LinearPMap.domRestrict_le hz
    have hcA := sourceOperator_resolvent_graph T β hT (loadMap T hT c)
    have hf : physicalResponse T β hT (loadMap T hT c) = z.1 := hc.trans hu
    have hy : (graphResponse T β hT (loadMap T hT c)).2 = z.2 :=
      A.mem_graph_snd_inj hcA hzA hf
    exact ⟨c, Prod.ext hf hy⟩
  · rintro _ ⟨c, rfl⟩
    have hg := sourceOperator_resolvent_graph T β hT (loadMap T hT c)
    have hd := LinearPMap.mem_domain_of_mem_graph hg
    let v : A.domain := ⟨physicalResponse T β hT (loadMap T hT c), hd⟩
    let u : (A.domRestrict S).domain := ⟨v, ⟨⟨c, rfl⟩, v.property⟩⟩
    apply (LinearPMap.mem_graph_iff (A.domRestrict S)).2
    refine ⟨u, rfl, ?_⟩
    calc
      (A.domRestrict S) u = A v := LinearPMap.domRestrict_apply rfl
      _ = (graphResponse T β hT (loadMap T hT c)).2 :=
        A.mem_graph_snd_inj (A.mem_graph v) hg rfl

/-- A real Mathlib operator core, not just physical-density terminology. -/
theorem sourceOperator_has_responseCore (T β : ℝ) (hT : 0 < T) :
    (sourceOperator T β hT).HasCore (physicalCore T β hT) := by
  refine ⟨physicalCore_le_domain T β hT, ?_⟩
  have hc := (sourceOperator_isClosed T β hT).isClosable.leIsClosable
    (LinearPMap.domRestrict_le (f := sourceOperator T β hT)
      (S := physicalCore T β hT))
  apply LinearPMap.eq_of_eq_graph
  rw [← hc.graph_closure_eq_closure_graph, restriction_graph, responseGraph_closure]

end GRWTSK.NumberTheory.WeilQuadraticForm.ResponseGeneratedCore
