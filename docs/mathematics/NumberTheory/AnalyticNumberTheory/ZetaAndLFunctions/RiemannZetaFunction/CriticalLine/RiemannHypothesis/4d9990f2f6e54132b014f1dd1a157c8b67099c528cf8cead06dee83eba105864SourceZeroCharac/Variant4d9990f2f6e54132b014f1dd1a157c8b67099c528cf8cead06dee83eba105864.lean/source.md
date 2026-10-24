# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864SourceZeroCharac.Variant4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70b38f84e7a7578eaf3199b8ca09adc193e2bb7a` · SHA-256 `4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.PhaseCharacteristicRadical
import FormalResearch.RiemannHypothesis.PhaseCompensationDescent
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
import Mathlib.Algebra.Algebra.Pi

namespace FormalResearch.RiemannHypothesis.SourceCharacteristicInventory

open Polynomial
open FormalResearch.RiemannHypothesis.PhaseCharacteristicRadical
open FormalResearch.RiemannHypothesis.PhaseObservationObstruction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateHigherPrimePowers PrimePowerPhaseDefect
open FormalResearch.MathematicalTooling.JacobsonObservation

noncomputable section

abbrev LowerPowerLabel (A : ℝ) := ↥(lowerPowerInventory A)
abbrev LowerPowerZeroFiber (A : ℝ) := LowerPowerLabel A → CharacteristicOne

def sourceZeroObservation (A : ℝ) :
    LowerPowerZeroFiber A →ₐ[ℂ] (LowerPowerLabel A → ℂ) :=
  AlgHom.pi fun n ↦ observeOne.comp (Pi.evalAlgHom ℂ (fun _ : LowerPowerLabel A ↦ CharacteristicOne) n)

def lowerPowerInfinitesimalIdeal (A : ℝ) : Ideal (LowerPowerZeroFiber A) :=
  Ideal.pi fun _ ↦ Ring.jacobson CharacteristicOne

theorem source_zero_observation_surjective (A : ℝ) :
    Function.Surjective (sourceZeroObservation A) := by
  intro y
  refine ⟨fun n ↦ AdjoinRoot.of _ (y n), ?_⟩
  funext n
  simp [sourceZeroObservation, observeOne]

theorem source_zero_observation_ker_eq_pi (A : ℝ) :
    RingHom.ker (sourceZeroObservation A).toRingHom = lowerPowerInfinitesimalIdeal A := by
  ext x
  simp only [RingHom.mem_ker, lowerPowerInfinitesimalIdeal, Ideal.mem_pi,
    ← observe_one_ker_eq_jacobson, RingHom.mem_ker]
  change (fun n ↦ observeOne (x n)) = 0 ↔ ∀ n, observeOne (x n) = 0
  exact funext_iff

theorem source_zero_fiber_jacobson (A : ℝ) :
    Ring.jacobson (LowerPowerZeroFiber A) = lowerPowerInfinitesimalIdeal A := by
  apply le_antisymm
  · intro x hx
    change ∀ n, x n ∈ Ring.jacobson CharacteristicOne
    intro n
    let e : LowerPowerZeroFiber A →ₐ[ℂ] ℂ :=
      observeOne.comp (Pi.evalAlgHom ℂ (fun _ : LowerPowerLabel A ↦ CharacteristicOne) n)
    have he : Function.Surjective e := by
      intro z
      obtain ⟨t, ht⟩ := observe_one_surjective z
      exact ⟨fun _ ↦ t, ht⟩
    let : (RingHom.ker e.toRingHom).IsMaximal :=
      RingHom.ker_isMaximal_of_surjective e.toRingHom he
    have hx' := Ring.jacobson_le_of_isMaximal (RingHom.ker e.toRingHom) hx
    rw [← observe_one_ker_eq_jacobson, RingHom.mem_ker]
    exact RingHom.mem_ker.mp hx'
  · intro x hx
    have hs : x ^ 2 = 0 := by
      funext n
      exact observe_one_kernel_square_zero
        ((observe_one_ker_eq_jacobson.symm ▸ hx n))
    rw [← Ideal.jacobson_bot]
    exact Ideal.radical_le_jacobson (mem_nilradical.mpr ⟨2, hs⟩)

theorem characteristic_one_finrank : Module.finrank ℂ CharacteristicOne = 2 := by
  calc
    _ = ((X - C (1 : ℂ)) ^ 2).natDegree :=
      (AdjoinRoot.powerBasis' ((monic_X_sub_C (1 : ℂ)).pow 2)).finrank
    _ = 2 := by rw [natDegree_pow, natDegree_X_sub_C]

theorem source_zero_fiber_finrank (A : ℝ) :
    Module.finrank ℂ (LowerPowerZeroFiber A) = 2 * (lowerPowerInventory A).card := by
  classical
  let : Module.Finite ℂ CharacteristicOne := ((monic_X_sub_C (1 : ℂ)).pow 2).finite_adjoinRoot
  rw [Module.finrank_pi_fintype]
  simp [characteristic_one_finrank, mul_comm]

theorem source_zero_radical_finrank (A : ℝ) :
    Module.finrank ℂ ((Ring.jacobson (LowerPowerZeroFiber A)).restrictScalars ℂ) =
      (lowerPowerInventory A).card := by
  classical
  let : Module.Finite ℂ CharacteristicOne := ((monic_X_sub_C (1 : ℂ)).pow 2).finite_adjoinRoot
  have heq : LinearMap.ker (sourceZeroObservation A).toLinearMap =
      (Ring.jacobson (LowerPowerZeroFiber A)).restrictScalars ℂ := by
    ext x
    rw [LinearMap.mem_ker]
    change sourceZeroObservation A x = 0 ↔ x ∈ Ring.jacobson (LowerPowerZeroFiber A)
    rw [source_zero_fiber_jacobson, ← source_zero_observation_ker_eq_pi, RingHom.mem_ker]
    rfl
  have h := (sourceZeroObservation A).toLinearMap.finrank_range_add_finrank_ker
  rw [LinearMap.range_eq_top.mpr (source_zero_observation_surjective A),
    finrank_top, Module.finrank_pi, heq, source_zero_fiber_finrank] at h
  simpa using Nat.add_left_cancel (show (lowerPowerInventory A).card +
      Module.finrank ℂ ((Ring.jacobson (LowerPowerZeroFiber A)).restrictScalars ℂ) =
      (lowerPowerInventory A).card + (lowerPowerInventory A).card by
    simpa [Fintype.card_coe, two_mul] using h)

end
end FormalResearch.RiemannHypothesis.SourceCharacteristicInventory
```
