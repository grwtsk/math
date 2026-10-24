# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TorsionResolution.Variantb5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ddd19ec720e22428f08148296786010d5a6850e` · SHA-256 `b5b77dff3b277d2a90abe5f3f820bd88700a1a948f64a61e2f66b649fdcd3b7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.Basic

/-!
# Cycle-transport torsion

Here “torsion” has one precise carrier: the defect of a signal under ordered
linear transport around a declared finite family of cycles.  It is not an
algebraic torsion subgroup and no differential-geometric torsion is inferred.
-/

namespace DAF.Geometry

open scoped BigOperators

universe uSignal uCycle

/-- A finite family of ordered cycle transports and their linear defects. -/
structure CycleTorsionModel
    (Signal : Type uSignal)
    [NormedAddCommGroup Signal]
    [NormedSpace ℝ Signal] where
  cycleFamilyIdentifier : String
  metricIdentifier : String
  CycleId : Type uCycle
  cycleFintype : Fintype CycleId
  cycleDecEq : DecidableEq CycleId
  transport : CycleId → Signal →ₗ[ℝ] Signal
  defect : CycleId → Signal →ₗ[ℝ] Signal
  defect_spec : ∀ γ, defect γ = LinearMap.id - transport γ
  reference : Signal
  reference_resolved : ∀ γ, defect γ reference = 0

namespace CycleTorsionModel

variable {Signal : Type uSignal}
variable [NormedAddCommGroup Signal] [NormedSpace ℝ Signal]

instance (T : CycleTorsionModel Signal) : Fintype T.CycleId :=
  T.cycleFintype

instance (T : CycleTorsionModel Signal) : DecidableEq T.CycleId :=
  T.cycleDecEq

/-- Exact cycle-torsion energy, summed over the declared finite cycle family. -/
noncomputable def energy (T : CycleTorsionModel Signal) (y : Signal) : ℝ :=
  ∑ γ : T.CycleId, ‖T.defect γ y‖ ^ 2

/-- Exact resolution means vanishing defect for every selected cycle. -/
def Resolved (T : CycleTorsionModel Signal) (y : Signal) : Prop :=
  ∀ γ, T.defect γ y = 0

/-- The defect is exactly `y - transport γ y`. -/
@[simp]
theorem defect_apply
    (T : CycleTorsionModel Signal)
    (γ : T.CycleId)
    (y : Signal) :
    T.defect γ y = y - T.transport γ y := by
  rw [T.defect_spec]
  rfl

/-- Zero cycle defect is exactly invariance under complete cycle transport. -/
theorem defect_eq_zero_iff
    (T : CycleTorsionModel Signal)
    (γ : T.CycleId)
    (y : Signal) :
  T.defect γ y = 0 ↔ T.transport γ y = y := by
  rw [T.defect_apply]
  simpa [eq_comm] using
    (sub_eq_zero : y - T.transport γ y = 0 ↔ y = T.transport γ y)

/-- Cycle-torsion energy is nonnegative. -/
theorem energy_nonnegative
    (T : CycleTorsionModel Signal)
    (y : Signal) :
    0 ≤ T.energy y := by
  unfold energy
  exact Finset.sum_nonneg fun _ _ => sq_nonneg _

/-- The declared global reference has no cycle-transport defect. -/
theorem reference_is_resolved
    (T : CycleTorsionModel Signal) :
    T.Resolved T.reference :=
  T.reference_resolved

/-- Exact resolution forces zero energy. -/
theorem energy_eq_zero_of_resolved
    (T : CycleTorsionModel Signal)
    {y : Signal}
    (hy : T.Resolved y) :
    T.energy y = 0 := by
  unfold energy
  apply Finset.sum_eq_zero
  intro γ _
  simp [hy γ]

end CycleTorsionModel

/-- Exact and tolerance-based resolution remain distinct typed statuses. -/
inductive TorsionResolutionStatus
    {Signal : Type uSignal}
    [NormedAddCommGroup Signal]
    [NormedSpace ℝ Signal]
    (T : CycleTorsionModel Signal)
    (y : Signal) : Type (max uSignal uCycle)
  | exact (proof : T.Resolved y)
  | approximate (tolerance : ℝ) (tolerance_nonnegative : 0 ≤ tolerance)
      (bound : T.energy y ≤ tolerance)

/-- A finite resolution trajectory with a machine-checked energy descent law. -/
structure TorsionResolutionFlow
    {Signal : Type uSignal}
    [NormedAddCommGroup Signal]
    [NormedSpace ℝ Signal]
    (T : CycleTorsionModel Signal) where
  horizon : Nat
  state : Fin (horizon + 1) → Signal
  energy_nonincreasing :
    ∀ k : Fin horizon,
      T.energy (state ⟨k.1 + 1, Nat.succ_lt_succ k.2⟩) ≤
        T.energy (state ⟨k.1, Nat.lt_succ_of_lt k.2⟩)

/-- Stable obstruction produced by a selected cycle with nonzero defect. -/
structure CycleTorsionObstruction
    {Signal : Type uSignal}
    [NormedAddCommGroup Signal]
    [NormedSpace ℝ Signal]
    (T : CycleTorsionModel Signal) where
  cycle : T.CycleId
  state : Signal
  defect_nonzero : T.defect cycle state ≠ 0

end DAF.Geometry
```
