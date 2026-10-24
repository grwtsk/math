# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444bSourceInventoryA.Variant87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afa45b04b04e3faa05c9b00283102a4962962526` · SHA-256 `87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCharacteristicInventory

namespace FormalResearch.RiemannHypothesis.SourceCharacteristicInventory

open Polynomial
open FormalResearch.RiemannHypothesis.PhaseCharacteristicRadical
open FormalResearch.RiemannHypothesis.PhaseObservationObstruction
open FormalResearch.RiemannHypothesis.CharacteristicPhaseFamily
open FormalResearch.RiemannHypothesis.MultiplicativePhase
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateHigherPrimePowers PrimePowerPhaseDefect

noncomputable section

private theorem jacobson_map_algEquiv {R S : Type*} [CommRing R] [CommRing S]
    [Algebra ℂ R] [Algebra ℂ S] (e : R ≃ₐ[ℂ] S) :
    Ideal.map e.toRingHom (Ring.jacobson R) = Ring.jacobson S := by
  rw [← Ideal.jacobson_bot, Ideal.map_jacobson_of_bijective e.bijective,
    Ideal.map_bot, Ideal.jacobson_bot]

private theorem jacobson_comap_algEquiv {R S : Type*} [CommRing R] [CommRing S]
    [Algebra ℂ R] [Algebra ℂ S] (e : R ≃ₐ[ℂ] S) :
    Ideal.comap e.toRingHom (Ring.jacobson S) = Ring.jacobson R := by
  rw [← Ideal.jacobson_bot, Ideal.comap_jacobson_of_surjective e.surjective,
    ← RingHom.ker_eq_comap_bot,
    (RingHom.injective_iff_ker_eq_bot e.toRingHom).mp e.injective, Ideal.jacobson_bot]

private theorem jacobson_linear_map_algEquiv {R S : Type*} [CommRing R] [CommRing S]
    [Algebra ℂ R] [Algebra ℂ S] (e : R ≃ₐ[ℂ] S) :
    Submodule.map e.toLinearMap ((Ring.jacobson R).restrictScalars ℂ) =
      (Ring.jacobson S).restrictScalars ℂ := by
  ext z
  constructor
  · rintro ⟨x, hx, rfl⟩
    change e x ∈ Ring.jacobson S
    rw [← jacobson_comap_algEquiv e] at hx
    exact hx
  · intro hz
    refine ⟨e.symm z, ?_, by simp⟩
    change e.symm z ∈ Ring.jacobson R
    rw [← jacobson_comap_algEquiv e, Ideal.mem_comap]
    simpa using hz

/-- The full labeled characteristic product retains exactly the coordinate radicals. -/
theorem source_characteristic_fiber_jacobson (A ξ : ℝ) :
    Ring.jacobson (LowerPowerCharacteristicFiber A ξ) =
      Ideal.pi fun n : LowerPowerLabel A ↦
        Ring.jacobson (CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ)) := by
  apply le_antisymm
  · intro x hx
    change ∀ n : LowerPowerLabel A,
      x n ∈ Ring.jacobson (CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ))
    intro n
    exact Ring.le_comap_jacobson
      (Pi.evalRingHom (fun n : LowerPowerLabel A ↦
        CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ)) n) hx
  · intro x hx
    have hs : x ^ 2 = 0 := by
      funext n
      by_cases hc : ((chi ξ (n : ℕ)).re : ℂ) ^ 2 = 1
      · apply repeated_kernel_square_zero _ hc
        rw [repeated_kernel_eq_jacobson]
        exact hx n
      · have hn : x n = 0 := by
          have hm := hx n
          change x n ∈ Ring.jacobson (CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ)) at hm
          rw [jacobson_eq_bot_of_parameter_sq_ne_one _ hc, Ideal.mem_bot] at hm
          exact hm
        simp [hn]
    rw [← Ideal.jacobson_bot]
    exact Ideal.radical_le_jacobson (mem_nilradical.mpr ⟨2, hs⟩)

/-- Actual matrix evaluation removes exactly these coordinatewise characteristic radicals. -/
theorem source_representation_ker_eq_jacobson (A ξ : ℝ) :
    RingHom.ker (sourceRepresentation A ξ).toRingHom =
      Ring.jacobson (LowerPowerCharacteristicFiber A ξ) := by
  ext x
  rw [RingHom.mem_ker, source_characteristic_fiber_jacobson, Ideal.mem_pi]
  change (fun n : LowerPowerLabel A ↦
    representPhase (chi ξ (n : ℕ)) (chi_normSq ξ (n : ℕ)) (x n)) = 0 ↔
      ∀ n : LowerPowerLabel A,
        x n ∈ Ring.jacobson (CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ))
  constructor
  · intro h n
    rw [← represent_phase_ker_eq_jacobson (chi ξ (n : ℕ)) (chi_normSq ξ (n : ℕ))]
    exact RingHom.mem_ker.mpr (congrFun h n)
  · intro h
    funext n
    have hn : x n ∈ RingHom.ker
        (representPhase (chi ξ (n : ℕ)) (chi_normSq ξ (n : ℕ))).toRingHom := by
      rw [represent_phase_ker_eq_jacobson]
      exact h n
    exact RingHom.mem_ker.mp hn

/-- The all-phase product remains two dimensional per arithmetic label. -/
theorem source_characteristic_fiber_finrank (A ξ : ℝ) :
    Module.finrank ℂ (LowerPowerCharacteristicFiber A ξ) =
      2 * (lowerPowerInventory A).card := by
  classical
  let : ∀ n : LowerPowerLabel A,
      Module.Finite ℂ (CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ)) :=
    fun _ ↦ characteristic_fiber_finite _
  rw [Module.finrank_pi_fintype]
  simp [characteristic_fiber_finrank, mul_comm]

/-- The canonical simultaneous phase-one equivalence transports the native radical. -/
theorem source_zero_equiv_map_jacobson (A : ℝ) :
    Ideal.map (sourceZeroEquiv A).toRingHom
      (Ring.jacobson (LowerPowerCharacteristicFiber A 0)) =
      Ring.jacobson (LowerPowerZeroFiber A) := by
  exact jacobson_map_algEquiv (sourceZeroEquiv A)

theorem source_zero_equiv_comap_jacobson (A : ℝ) :
    Ideal.comap (sourceZeroEquiv A).toRingHom (Ring.jacobson (LowerPowerZeroFiber A)) =
      Ring.jacobson (LowerPowerCharacteristicFiber A 0) := by
  exact jacobson_comap_algEquiv (sourceZeroEquiv A)

theorem source_characteristic_radical_square_zero (A ξ : ℝ)
    {x : LowerPowerCharacteristicFiber A ξ}
    (hx : x ∈ Ring.jacobson (LowerPowerCharacteristicFiber A ξ)) : x ^ 2 = 0 := by
  rw [source_characteristic_fiber_jacobson] at hx
  funext n
  by_cases hc : ((chi ξ (n : ℕ)).re : ℂ) ^ 2 = 1
  · apply repeated_kernel_square_zero _ hc
    rw [repeated_kernel_eq_jacobson]
    exact hx n
  · have hn : x n = 0 := by
      have hm := hx n
      change x n ∈ Ring.jacobson (CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ)) at hm
      rw [jacobson_eq_bot_of_parameter_sq_ne_one _ hc, Ideal.mem_bot] at hm
      exact hm
    simp [hn]

/-- The radical ideal, rather than only its individual elements, has square zero. -/
theorem source_characteristic_radical_mul_eq_zero (A ξ : ℝ)
    {x y : LowerPowerCharacteristicFiber A ξ}
    (hx : x ∈ Ring.jacobson (LowerPowerCharacteristicFiber A ξ))
    (hy : y ∈ Ring.jacobson (LowerPowerCharacteristicFiber A ξ)) : x * y = 0 := by
  have hsum := source_characteristic_radical_square_zero A ξ
    ((Ring.jacobson _).add_mem hx hy)
  have hx2 := source_characteristic_radical_square_zero A ξ hx
  have hy2 := source_characteristic_radical_square_zero A ξ hy
  have htwo : x * y + x * y = 0 := by linear_combination hsum - hx2 - hy2
  have hsmul : (2 : ℂ) • (x * y) = 0 := by simpa [two_smul] using htwo
  exact (smul_eq_zero.mp hsmul).resolve_left (by norm_num)

theorem source_characteristic_radical_ideal_square_zero (A ξ : ℝ) :
    Ring.jacobson (LowerPowerCharacteristicFiber A ξ) ^ 2 = ⊥ := by
  rw [pow_two (Ring.jacobson (LowerPowerCharacteristicFiber A ξ))]
  apply bot_unique
  apply Ideal.mul_le.mpr
  intro x hx y hy
  rw [Ideal.mem_bot]
  exact source_characteristic_radical_mul_eq_zero A ξ hx hy

theorem source_zero_radical_mul_eq_zero (A : ℝ) {x y : LowerPowerZeroFiber A}
    (hx : x ∈ Ring.jacobson (LowerPowerZeroFiber A))
    (hy : y ∈ Ring.jacobson (LowerPowerZeroFiber A)) : x * y = 0 := by
  have hx' : (sourceZeroEquiv A).symm x ∈ Ring.jacobson
      (LowerPowerCharacteristicFiber A 0) := by
    rw [← source_zero_equiv_comap_jacobson, Ideal.mem_comap]
    simpa using hx
  have hy' : (sourceZeroEquiv A).symm y ∈ Ring.jacobson
      (LowerPowerCharacteristicFiber A 0) := by
    rw [← source_zero_equiv_comap_jacobson, Ideal.mem_comap]
    simpa using hy
  simpa using congrArg (sourceZeroEquiv A) (source_characteristic_radical_mul_eq_zero A 0 hx' hy')

theorem source_zero_radical_ideal_square_zero (A : ℝ) :
    Ring.jacobson (LowerPowerZeroFiber A) ^ 2 = ⊥ := by
  rw [pow_two (Ring.jacobson (LowerPowerZeroFiber A))]
  apply bot_unique
  apply Ideal.mul_le.mpr
  intro x hx y hy
  rw [Ideal.mem_bot]
  exact source_zero_radical_mul_eq_zero A hx hy

theorem source_zero_equiv_linear_map_jacobson (A : ℝ) :
    Submodule.map (sourceZeroEquiv A).toLinearMap
      ((Ring.jacobson (LowerPowerCharacteristicFiber A 0)).restrictScalars ℂ) =
      (Ring.jacobson (LowerPowerZeroFiber A)).restrictScalars ℂ := by
  exact jacobson_linear_map_algEquiv (sourceZeroEquiv A)

/-- At actual zero frequency the radical has precisely one dimension per source label. -/
theorem source_characteristic_zero_radical_finrank (A : ℝ) :
    Module.finrank ℂ ((Ring.jacobson (LowerPowerCharacteristicFiber A 0)).restrictScalars ℂ) =
      (lowerPowerInventory A).card := by
  rw [← (sourceZeroEquiv A).toLinearEquiv.finrank_map_eq,
    source_zero_equiv_linear_map_jacobson, source_zero_radical_finrank]

end
end FormalResearch.RiemannHypothesis.SourceCharacteristicInventory
```
