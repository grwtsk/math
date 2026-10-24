import FormalResearch.RiemannHypothesis.Conversation.IsotypicTrace

/-!
# A free regular action retains a nonzero common trace

B24-L04 has a literal finite-group comparison model: the left regular action
on the group is free, and its linear function representation has a point mass
whose complete orbit trace is the constant one function. This establishes the
generic obstruction without importing or certifying the cited external field
theorem. It does not construct an etale number-field realization or arithmetic
candidate, and it makes no theorem about the actual six-candidate action.

Human common-root and equivariance boundary: grwtsk contributors. Local regular
representation and exact trace witness: OpenAI Codex. Mathlib group and linear
algebra retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.RegularOrbitTrace
open scoped BigOperators
noncomputable section

def regularRepresentation (G : Type*) [Group G] : G →* Module.End ℂ (G → ℂ) where
  toFun g :=
    { toFun := fun f h ↦ f (g⁻¹ * h)
      map_add' := by intros; rfl
      map_smul' := by intros; rfl }
  map_one' := by ext f h; simp
  map_mul' g h := by ext f k; simp [mul_assoc]

def pointMass {G : Type*} [Group G] [DecidableEq G] : G → ℂ :=
  fun h ↦ if h = 1 then 1 else 0

theorem left_regular_action_free {G : Type*} [Group G] {g h : G}
    (he : g * h = h) : g = 1 := by
  exact mul_right_cancel (by simpa using he : g * h = 1 * h)

theorem point_mass_trace_one {G : Type*} [Group G] [Fintype G] [DecidableEq G] :
    IsotypicTrace.orbitTrace (regularRepresentation G) pointMass = (fun _ ↦ 1) := by
  classical
  ext h
  simp [IsotypicTrace.orbitTrace, regularRepresentation, pointMass,
    Finset.sum_apply, inv_mul_eq_one]

theorem free_orbit_has_nonzero_trace {G : Type*} [Group G] [Fintype G] :
    ∃ v : G → ℂ, IsotypicTrace.orbitTrace (regularRepresentation G) v ≠ 0 := by
  classical
  refine ⟨pointMass, ?_⟩
  rw [point_mass_trace_one]
  intro h
  have he := congrFun h (1 : G)
  norm_num at he

theorem common_trace_readout_survives {G : Type*} [Group G] [Fintype G]
    [DecidableEq G] (h : G) :
    (IsotypicTrace.orbitTrace (regularRepresentation G) pointMass) h = 1 := by
  rw [point_mass_trace_one]

end
end GRWTSK.RiemannHypothesis.Conversation.RegularOrbitTrace
