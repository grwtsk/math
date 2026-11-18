/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilShiftedSourceSolve
import GRWTSK.FunctionalAnalysis.InverseResponseOperator

/-!
# Self-adjoint physical operator of the original signed odd Weil form

Invert the actual bounded physical response on its proved dense range,
then remove its explicit PHYSICAL regularization. This constructs a
Mathlib LinearPMap on the original supported odd L2 space. Its graph is
characterized by the original signed form against EVERY maximal-domain
test. The original gamma, prime and negative pole terms remain unchanged.

This is a source-association theorem, not a proof of source nonnegativity,
a sine form core, a zeta-zero spectral identity, or cofinal certificates.
The operator is not defined on all physical L2 inputs by fiat.

SOURCE_PROOF_CANDIDATE. Elaboration, exact signatures, kernel replay,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set
open scoped Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PhysicalSourceOperator

open TranslationCutoffs TranslationEnergyDomain FormDomainDensity
open ClosedSourceBilinear ShiftedSourceSolve MirroredHermitian

/-- The actual inverse response, with its physical shift REMOVED. -/
def sourceOperator (T β : ℝ) (hT : 0 < T) :
    WindowPhysical T →ₗ.[ℝ] WindowPhysical T :=
  GRWTSK.FunctionalAnalysis.InverseResponseOperator.operator
    (physicalResponse T β hT) (regularization T β)

/-- Full graph equation, including the scalar physical regularization. -/
theorem sourceOperator_graph (T β : ℝ) (hT : 0 < T)
    (f g : WindowPhysical T) :
    (f, g) ∈ (sourceOperator T β hT).graph ↔
      physicalResponse T β hT (g + regularization T β • f) = f :=
  GRWTSK.FunctionalAnalysis.InverseResponseOperator.mem_operator_graph
    (physicalResponse T β hT) (regularization T β)
    (physicalResponse_injective T β hT) f g

theorem sourceOperator_domain (T β : ℝ) (hT : 0 < T) :
    (sourceOperator T β hT).domain = (physicalResponse T β hT).range :=
  GRWTSK.FunctionalAnalysis.InverseResponseOperator.operator_domain
    (physicalResponse T β hT) (regularization T β)
    (physicalResponse_injective T β hT)

theorem response_dense (T β : ℝ) (hT : 0 < T) :
    Dense ((physicalResponse T β hT).range : Set (WindowPhysical T)) := by
  rw [dense_iff_closure_eq, ← Submodule.topologicalClosure_coe]
  exact congrArg (fun S : Submodule ℝ (WindowPhysical T) => (S : Set (WindowPhysical T)))
    (physicalResponse_range_closure T β hT)

theorem sourceOperator_dense_domain (T β : ℝ) (hT : 0 < T) :
    Dense ((sourceOperator T β hT).domain : Set (WindowPhysical T)) :=
  GRWTSK.FunctionalAnalysis.InverseResponseOperator.operator_dense_domain
    (physicalResponse T β hT) (regularization T β)
    (physicalResponse_injective T β hT) (response_dense T β hT)

theorem sourceOperator_isClosed (T β : ℝ) (hT : 0 < T) :
    (sourceOperator T β hT).IsClosed :=
  GRWTSK.FunctionalAnalysis.InverseResponseOperator.operator_isClosed
    (physicalResponse T β hT) (regularization T β)
    (physicalResponse_injective T β hT)

/-- Equality with Mathlib's maximal adjoint, not just formal symmetry. -/
theorem sourceOperator_isSelfAdjoint (T β : ℝ) (hT : 0 < T) :
    IsSelfAdjoint (sourceOperator T β hT) :=
  GRWTSK.FunctionalAnalysis.InverseResponseOperator.operator_isSelfAdjoint
    (physicalResponse T β hT) (regularization T β)
    (physicalResponse_injective T β hT) (response_dense T β hT)
    (physicalResponse_symmetric T β hT)

/-- On a specified form-domain lift, the operator output is exactly the
physical representer of the unchanged signed form on the ENTIRE domain. -/
theorem sourceOperator_form_iff (T β : ℝ) (hT : 0 < T)
    (z : FormDomain T) (g : WindowPhysical T) :
    (windowInput T z, g) ∈ (sourceOperator T β hT).graph ↔
      ∀ w : FormDomain T, sourceForm T β z w = inner ℝ g (windowInput T w) := by
  rw [sourceOperator_graph]
  constructor
  · intro h w
    have hz : weakSolve T β hT (g + regularization T β • windowInput T z) = z :=
      windowInput_injective T h
    have hp := weakSolve_spec T β hT
      (g + regularization T β • windowInput T z) w
    rw [hz, coerciveForm_apply, inner_add_left, real_inner_smul_left] at hp
    change sourceForm T β z w + regularization T β *
        inner ℝ (windowInput T z) (windowInput T w) =
      inner ℝ g (windowInput T w) + regularization T β *
        inner ℝ (windowInput T z) (windowInput T w) at hp
    linarith
  · intro h
    have hw : ∀ w : FormDomain T,
        coerciveForm T β z w =
          inner ℝ (g + regularization T β • windowInput T z) (windowInput T w) := by
      intro w
      rw [coerciveForm_apply, h w, inner_add_left, real_inner_smul_left]
    have hz := weakSolve_unique T β hT
      (g + regularization T β • windowInput T z) z hw
    change windowInput T (weakSolve T β hT
      (g + regularization T β • windowInput T z)) = windowInput T z
    exact congrArg (windowInput T) hz.symm

/-- Maximal source graph: BOTH form membership and a physical representer
are necessary. Form-domain membership alone is not operator membership. -/
theorem sourceOperator_graph_iff (T β : ℝ) (hT : 0 < T)
    (f g : WindowPhysical T) :
    (f, g) ∈ (sourceOperator T β hT).graph ↔
      ∃ z : FormDomain T, windowInput T z = f ∧
        ∀ w : FormDomain T, sourceForm T β z w = inner ℝ g (windowInput T w) := by
  constructor
  · intro h
    let z := weakSolve T β hT (g + regularization T β • f)
    have hz : windowInput T z = f := (sourceOperator_graph T β hT f g).1 h
    refine ⟨z, hz, (sourceOperator_form_iff T β hT z g).1 ?_⟩
    simpa only [hz] using h
  · rintro ⟨z, hz, hform⟩
    have h := (sourceOperator_form_iff T β hT z g).2 hform
    simpa only [hz] using h

/-- Exact operator-domain characterization with no finite-test reduction. -/
theorem sourceOperator_domain_iff (T β : ℝ) (hT : 0 < T)
    (f : WindowPhysical T) :
    f ∈ (sourceOperator T β hT).domain ↔
      ∃ z : FormDomain T, windowInput T z = f ∧
        ∃ g : WindowPhysical T,
          ∀ w : FormDomain T, sourceForm T β z w = inner ℝ g (windowInput T w) := by
  rw [LinearPMap.mem_domain_iff]
  constructor
  · rintro ⟨g, hg⟩
    obtain ⟨z, hz, hform⟩ := (sourceOperator_graph_iff T β hT f g).1 hg
    exact ⟨z, hz, g, hform⟩
  · rintro ⟨z, hz, g, hform⟩
    exact ⟨g, (sourceOperator_graph_iff T β hT f g).2 ⟨z, hz, hform⟩⟩

/-- Return the graph to the literal gamma/prime/pole source pairing. -/
theorem sourceOperator_literal_graph_iff (T β : ℝ) (hT : 0 < T)
    (f g : WindowPhysical T) :
    (f, g) ∈ (sourceOperator T β hT).graph ↔
      ∃ z : FormDomain T, windowInput T z = f ∧
        ∀ w : FormDomain T,
          sourcePairing T β (input T z) (input T w) = inner ℝ g (windowInput T w) := by
  simpa only [sourceForm_apply] using sourceOperator_graph_iff T β hT f g

/-- The original regularized response is the exact inverse of A+lambda.
The subtraction here removes regularization, not an arithmetic error term. -/
theorem sourceOperator_resolvent_graph (T β : ℝ) (hT : 0 < T)
    (h : WindowPhysical T) :
    (physicalResponse T β hT h,
      h - regularization T β • physicalResponse T β hT h) ∈
        (sourceOperator T β hT).graph := by
  apply (sourceOperator_graph T β hT _ _).2
  simp

/-- The source operator retains its original fixed-window lower bound.
It is NOT asserted to be nonnegative after regularization is removed. -/
theorem sourceOperator_lower (T β : ℝ) (hT : 0 < T)
    (x : (sourceOperator T β hT).domain) :
    (1 - regularization T β) * ‖(x : WindowPhysical T)‖ ^ 2 ≤
      inner ℝ (sourceOperator T β hT x) (x : WindowPhysical T) := by
  obtain ⟨z, hz, hform⟩ := (sourceOperator_graph_iff T β hT _ _).1
    ((sourceOperator T β hT).mem_graph x)
  have hco := (coerciveForm_bounds T β hT.le z).1
  rw [coerciveForm_apply, hform z] at hco
  change ‖z‖ ^ 2 ≤ inner ℝ (sourceOperator T β hT x) (windowInput T z) +
    regularization T β * inner ℝ (windowInput T z) (windowInput T z) at hco
  rw [real_inner_self_eq_norm_sq, hz] at hco
  have hn := windowInput_norm_le T z
  rw [hz] at hn
  have hsq : ‖(x : WindowPhysical T)‖ ^ 2 ≤ ‖z‖ ^ 2 :=
    (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).2 hn
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.PhysicalSourceOperator
