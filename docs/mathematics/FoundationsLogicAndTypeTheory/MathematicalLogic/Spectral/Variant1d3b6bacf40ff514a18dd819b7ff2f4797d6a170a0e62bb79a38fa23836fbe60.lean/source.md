# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Spectral.Variant1d3b6bacf40ff514a18dd819b7ff2f4797d6a170a0e62bb79a38fa23836fbe60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5767952083c65b33269795936fe4e6f629f12c4a` · SHA-256 `1d3b6bacf40ff514a18dd819b7ff2f4797d6a170a0e62bb79a38fa23836fbe60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.FiniteDynamics.Generic
import DAF.Causal.ReversibleCausalState
import Mathlib.Data.ZMod.Basic

/-!
# Exact finite dynamics of reversible observer factors

A `PermutationObserverReducer` is stronger than an ordinary forward reducer:
its local update is supplied as an actual finite permutation.  Surjective
semiconjugacy makes every global identity power a local identity power, so the
local permutation order divides the global order and every reduced point has
period dividing the period of its source.

The stored spectral datum is exact primitive-cycle data plus a finite order;
no numerical roots are approximated.  A phase is derived from the shared
monotone sequence and is not an independent source of truth.  One phase value
does not identify a local state, and one observed trajectory does not recover
the complete cycle decomposition.  Local factors may collapse global cycles
to proper-divisor periods.  This finite cyclic torsion is unrelated to
integral homology torsion and implies no avalanche or cryptographic property.
-/

namespace ObserverSpectral

open ReversibleCausal

universe uS uR uO uL uK

/-- A finite reversible observer-local factor of a global reversible system. -/
structure PermutationObserverReducer
    {State : Type uS}
    {Resolution : Type uR}
    (Global : ReversibleSystem State Resolution)
    (ρ : Resolution) where
  Local : Type uL
  localFintype : Fintype Local
  localDecidableEq : DecidableEq Local
  reduce : State → Local
  reduce_surjective : Function.Surjective reduce
  localStep : Equiv.Perm Local
  localObserve : Local → Global.Observation ρ
  step_commute : ∀ x,
    reduce (Global.step x) = localStep (reduce x)
  observe_commute : ∀ x,
    localObserve (reduce x) = Global.observe ρ x

namespace PermutationObserverReducer

variable {State : Type uS} {Resolution : Type uR}
variable {Global : ReversibleSystem State Resolution}
variable {ρ : Resolution}

instance (R : PermutationObserverReducer Global ρ) : Fintype R.Local :=
  R.localFintype

instance (R : PermutationObserverReducer Global ρ) : DecidableEq R.Local :=
  R.localDecidableEq

/-- Semiconjugacy extends from one step to every iterate. -/
theorem reduce_pow
    (R : PermutationObserverReducer Global ρ)
    (t : Nat)
    (x : State) :
    R.reduce ((Global.step ^ t) x) =
      (R.localStep ^ t) (R.reduce x) := by
  induction t generalizing x with
  | zero => rfl
  | succ t ih =>
      rw [pow_succ, Equiv.Perm.mul_apply,
        ih (Global.step x), R.step_commute,
        pow_succ, Equiv.Perm.mul_apply]

/-- Every identity power of the global update is an identity power locally. -/
theorem localStep_pow_of_globalStep_pow
    (R : PermutationObserverReducer Global ρ)
    {N : Nat}
    (hN : Global.step ^ N = 1) :
    R.localStep ^ N = 1 := by
  ext y
  obtain ⟨x, rfl⟩ := R.reduce_surjective y
  have hglobal : (Global.step ^ N) x = x := by
    simpa using congrArg (fun p : Equiv.Perm State => p x) hN
  rw [← R.reduce_pow]
  simpa using congrArg R.reduce hglobal

/-- The order of the global state permutation. -/
noncomputable def globalOrder
    (Global : ReversibleSystem State Resolution) : Nat :=
  orderOf Global.step

/-- The exact order of the finite local permutation. -/
noncomputable def localOrder
    (R : PermutationObserverReducer Global ρ) : Nat :=
  orderOf R.localStep

/-- A surjective reversible factor has local order dividing global order. -/
theorem localOrder_dvd_globalOrder
    (R : PermutationObserverReducer Global ρ) :
    R.localOrder ∣ globalOrder Global := by
  apply orderOf_dvd_iff_pow_eq_one.mpr
  exact R.localStep_pow_of_globalStep_pow
    (pow_orderOf_eq_one Global.step)

/-- Every reduced point has minimal period dividing its source period. -/
theorem minimalPeriod_reduce_dvd
    (R : PermutationObserverReducer Global ρ)
    (x : State) :
    Function.minimalPeriod R.localStep (R.reduce x) ∣
      Function.minimalPeriod Global.step x := by
  let period := Function.minimalPeriod Global.step x
  have hglobal : (Global.step ^ period) x = x := by
    change (Global.step : State → State)^[period] x = x
    exact Function.isPeriodicPt_minimalPeriod Global.step x
  have hlocal : (R.localStep ^ period) (R.reduce x) = R.reduce x := by
    rw [← R.reduce_pow]
    exact congrArg R.reduce hglobal
  apply Function.IsPeriodicPt.minimalPeriod_dvd
  change (R.localStep : R.Local → R.Local)^[period] (R.reduce x) = R.reduce x
  exact hlocal

/-- Exact finite primitive cycles and order for one observer-local factor. -/
structure LocalSpectralDatum
    (R : PermutationObserverReducer Global ρ) where
  cycleData : Nat →₀ Nat
  cycleData_correct :
    cycleData = FiniteDynamics.cycleEulerFactorData R.localStep
  order : Nat
  order_eq : order = orderOf R.localStep

/-- The canonical exact spectral datum computed from the local permutation. -/
noncomputable def exactSpectralDatum
    (R : PermutationObserverReducer Global ρ) :
    LocalSpectralDatum R where
  cycleData := FiniteDynamics.cycleEulerFactorData R.localStep
  cycleData_correct := rfl
  order := R.localOrder
  order_eq := rfl

/-- Local cyclic phase derived solely from the shared sequence number. -/
noncomputable def localPhase
    (R : PermutationObserverReducer Global ρ)
    (sequence : Nat) : ZMod R.localOrder :=
  sequence

@[simp]
theorem localPhase_zero
    (R : PermutationObserverReducer Global ρ) :
    R.localPhase 0 = 0 :=
  by simp [localPhase]

@[simp]
theorem localPhase_succ
    (R : PermutationObserverReducer Global ρ)
    (sequence : Nat) :
    R.localPhase (sequence + 1) = R.localPhase sequence + 1 := by
  simp [localPhase]

@[simp]
theorem localPhase_add
    (R : PermutationObserverReducer Global ρ)
    (first second : Nat) :
    R.localPhase (first + second) =
      R.localPhase first + R.localPhase second := by
  simp [localPhase]

/-- A cached phase is admissible only with a proof tying it to the sequence. -/
structure CachedLocalPhase
    (R : PermutationObserverReducer Global ρ) where
  sequence : Nat
  phase : ZMod R.localOrder
  phase_correct : phase = R.localPhase sequence

/-! ## Coherent factors between local reversible systems -/

/-- A surjective semiconjugacy from a finer local permutation to a coarser one. -/
structure LocalPermutationFactor
    (Fine : PermutationObserverReducer Global ρ)
    {coarseResolution : Resolution}
    (Coarse : PermutationObserverReducer Global coarseResolution) where
  project : Fine.Local → Coarse.Local
  project_surjective : Function.Surjective project
  step_commute : ∀ x,
    project (Fine.localStep x) = Coarse.localStep (project x)

namespace LocalPermutationFactor

variable
    (Fine : PermutationObserverReducer Global ρ)
    {coarseResolution : Resolution}
    (Coarse : PermutationObserverReducer Global coarseResolution)
    (F : LocalPermutationFactor Fine Coarse)

private theorem project_pow (t : Nat) (x : Fine.Local) :
    F.project ((Fine.localStep ^ t) x) =
      (Coarse.localStep ^ t) (F.project x) := by
  induction t generalizing x with
  | zero => rfl
  | succ t ih =>
      rw [pow_succ, Equiv.Perm.mul_apply, ih (Fine.localStep x),
        F.step_commute, pow_succ, Equiv.Perm.mul_apply]

/-- Coarser local order divides finer local order. -/
theorem localOrder_dvd
    (F : LocalPermutationFactor Fine Coarse) :
    Coarse.localOrder ∣ Fine.localOrder := by
  apply orderOf_dvd_iff_pow_eq_one.mpr
  ext coarse
  obtain ⟨fine, rfl⟩ := F.project_surjective coarse
  rw [← F.project_pow]
  simp [localOrder]

/-- The canonical reduction of a fine phase to a coarser phase. -/
noncomputable def phaseProject
    (F : LocalPermutationFactor Fine Coarse) :
    ZMod Fine.localOrder →+* ZMod Coarse.localOrder :=
  ZMod.castHom (F.localOrder_dvd Fine Coarse) (ZMod Coarse.localOrder)

/-- Phase projection commutes with derivation from the shared sequence. -/
@[simp]
theorem phaseProject_localPhase (sequence : Nat) :
    F.phaseProject Fine Coarse (Fine.localPhase sequence) =
      Coarse.localPhase sequence := by
  simp [phaseProject, localPhase]

end LocalPermutationFactor

end PermutationObserverReducer

-- Public stable names.
export PermutationObserverReducer
  (localOrder
   localOrder_dvd_globalOrder
   minimalPeriod_reduce_dvd
   LocalSpectralDatum
   localPhase)

end ObserverSpectral
```
