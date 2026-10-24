-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LowerPowerLabel.Variante76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.LowerPowerLabel.Variante76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/e76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.PhaseCharacteristicRadical
import FormalResearch.RiemannHypothesis.PhaseCompensationDescent
import FormalResearch.RiemannHypothesis.CharacteristicPhaseFamily
import FormalResearch.RiemannHypothesis.PhaseDeformationQuantities
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
import Mathlib.Algebra.Algebra.Pi
import Mathlib.Algebra.DualNumber

/-!
# The simultaneous characteristic fiber of the actual prime-and-square inventory

The product is indexed by the unchanged strict arithmetic inventory, retaining
its prime/square labels and external weights. Its coordinatewise representation
recovers the actual phase rotation at every source label. At zero frequency each
characteristic factor is the genuine phase-one algebra; its radical decomposes
coordinatewise, has square zero, and has one complex dimension per inventory
label. No tensor-product interactions or independent random phases are assumed.

First-order source jets select a coherent direction through these nilpotent
coordinates. The logarithmic tangent coefficient comes from the actual phase
frequency derivative; von Mangoldt weights remain separately identified data.
No uniform arithmetic cancellation estimate is asserted.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LowerPowerLabel.Variante76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349

namespace FormalResearch.RiemannHypothesis.SourceCharacteristicInventory

open Polynomial
open FormalResearch.RiemannHypothesis.PhaseCharacteristicRadical
open FormalResearch.RiemannHypothesis.PhaseObservationObstruction
open FormalResearch.RiemannHypothesis.CharacteristicPhaseFamily
open FormalResearch.RiemannHypothesis.PhaseDeformationQuantities
open FormalResearch.RiemannHypothesis.MultiplicativePhase
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateHigherPrimePowers PrimePowerPhaseDefect
open PrimeSquareEstimate
open FormalResearch.RiemannHypothesis.PhaseCompensationDescent
open FormalResearch.MathematicalTooling.JacobsonObservation

noncomputable section

/-- A retained arithmetic label in the actual strict prime-and-square inventory. -/
abbrev LowerPowerLabel (A : ℝ) := ↥(lowerPowerInventory A)
/-- The simultaneous phase-one algebra, with one characteristic factor per label. -/
abbrev LowerPowerZeroFiber (A : ℝ) := LowerPowerLabel A → CharacteristicOne

/-- Each strict arithmetic label keeps its own characteristic algebra. -/
abbrev LowerPowerCharacteristicFiber (A ξ : ℝ) :=
  ∀ n : LowerPowerLabel A, CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ)

/-- Coordinatewise polynomial evaluation recovers the actual labeled rotations. -/
def sourceRepresentation (A ξ : ℝ) : LowerPowerCharacteristicFiber A ξ →ₐ[ℂ]
    (LowerPowerLabel A → PhaseMatrix) :=
  AlgHom.pi fun n ↦ (representPhase (chi ξ (n : ℕ)) (chi_normSq ξ (n : ℕ))).comp
    (Pi.evalAlgHom ℂ (fun n : LowerPowerLabel A ↦
      CharacteristicFiber ((chi ξ (n : ℕ)).re : ℂ)) n)

/-- The distinguished characteristic root at each actual source label. -/
def sourceRoots (A ξ : ℝ) : LowerPowerCharacteristicFiber A ξ :=
  fun n ↦ AdjoinRoot.root (characteristicPolynomial ((chi ξ (n : ℕ)).re : ℂ))

theorem source_representation_roots (A ξ : ℝ) (n : LowerPowerLabel A) :
    sourceRepresentation A ξ (sourceRoots A ξ) n = phaseRotation (chi ξ (n : ℕ)) :=
  represent_phase_root (chi ξ (n : ℕ)) (chi_normSq ξ (n : ℕ))

private theorem source_zero_parameter (n : ℕ) : ((chi 0 n).re : ℂ) = 1 := by
  simp only [chi, Complex.ofReal_zero, mul_zero, zero_mul, Complex.exp_zero,
    Complex.one_re, Complex.ofReal_one]

/-- Zero frequency is the simultaneous special fiber, not a relabeling of its indices. -/
def sourceZeroEquiv (A : ℝ) : LowerPowerCharacteristicFiber A 0 ≃ₐ[ℂ]
    LowerPowerZeroFiber A :=
  AlgEquiv.piCongrRight fun n ↦
    (show CharacteristicFiber ((chi 0 (n : ℕ)).re : ℂ) ≃ₐ[ℂ] CharacteristicOne by
      rw [source_zero_parameter]
      exact fiberOneEquiv)

/-- Coordinatewise evaluation at the common phase-one eigenvalue. -/
def sourceZeroObservation (A : ℝ) :
    LowerPowerZeroFiber A →ₐ[ℂ] (LowerPowerLabel A → ℂ) :=
  AlgHom.pi fun n ↦ observeOne.comp
    (Pi.evalAlgHom ℂ (fun _ : LowerPowerLabel A ↦ CharacteristicOne) n)

/-- The coordinatewise genuine Jacobson ideals of the simultaneous special fiber. -/
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

/-- A first-order root displacement, valid because its dual-number component squares to zero. -/
def tangentAtOne (v : ℂ) : CharacteristicOne →ₐ[ℂ] DualNumber ℂ :=
  AdjoinRoot.liftAlgHom _ (Algebra.ofId ℂ (DualNumber ℂ))
    (1 + algebraMap ℂ (DualNumber ℂ) v * DualNumber.eps) (by
      simp [mul_pow])

theorem tangent_at_one_root (v : ℂ) :
    tangentAtOne v (AdjoinRoot.root ((X - C (1 : ℂ)) ^ 2)) =
      1 + algebraMap ℂ (DualNumber ℂ) v * DualNumber.eps := by
  simp [tangentAtOne]

theorem tangent_at_one_infinitesimal (v : ℂ) :
    tangentAtOne v infinitesimalOne = algebraMap ℂ (DualNumber ℂ) v * DualNumber.eps := by
  simp [tangentAtOne, infinitesimalOne]

/-- The actual logarithmic phase derivative supplies this dual-number coefficient. -/
def sourcePhaseJet (n : ℕ) : CharacteristicOne →ₐ[ℂ] DualNumber ℂ :=
  tangentAtOne (deriv (fun ξ : ℝ ↦ chi ξ n) 0)

theorem source_phase_jet_infinitesimal (n : ℕ) :
    sourcePhaseJet n infinitesimalOne =
      TrivSqZeroExt.inr (Complex.I * (Real.log n : ℂ)) := by
  rw [sourcePhaseJet, tangent_at_one_infinitesimal, deriv_chi_zero]
  ext <;> simp [TrivSqZeroExt.algebraMap_eq_inl]

theorem tangent_at_one_observation (v : ℂ) (z : CharacteristicOne) :
    (tangentAtOne v z).fst = observeOne z := by
  obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective z
  induction p using Polynomial.induction_on' with
  | add p q hp hq => simp only [map_add, TrivSqZeroExt.fst_add, hp, hq]
  | monomial k a =>
    simp [tangentAtOne, observeOne, Polynomial.eval₂_monomial,
      TrivSqZeroExt.algebraMap_eq_inl]

theorem source_phase_jet_root (n : ℕ) :
    sourcePhaseJet n (AdjoinRoot.root ((X - C (1 : ℂ)) ^ 2)) =
      1 + TrivSqZeroExt.inr (Complex.I * (Real.log n : ℂ)) := by
  rw [sourcePhaseJet, tangent_at_one_root, deriv_chi_zero]
  congr 1
  ext <;> simp [TrivSqZeroExt.algebraMap_eq_inl]

/-- One source-derived vector in the product radical, selected by the common frequency. -/
def sourceTangent (A : ℝ) : LowerPowerZeroFiber A :=
  fun n ↦ algebraMap ℂ CharacteristicOne
    (Complex.I * (Real.log (n : ℕ) : ℂ)) * infinitesimalOne

theorem source_tangent_mem_jacobson (A : ℝ) :
    sourceTangent A ∈ Ring.jacobson (LowerPowerZeroFiber A) := by
  rw [source_zero_fiber_jacobson]
  intro n
  exact (Ring.jacobson CharacteristicOne).mul_mem_left _ infinitesimal_one_mem_jacobson

theorem source_tangent_observation (A : ℝ) : sourceZeroObservation A (sourceTangent A) = 0 := by
  funext n
  change observeOne (sourceTangent A n) = 0
  simp [sourceTangent, observe_one_infinitesimal]

theorem source_tangent_coordinate_jet (A : ℝ) (n : LowerPowerLabel A) :
    tangentAtOne 1 (sourceTangent A n) =
      sourcePhaseJet (n : ℕ) infinitesimalOne := by
  rw [sourceTangent, map_mul, AlgHom.commutes, tangent_at_one_infinitesimal,
    sourcePhaseJet, tangent_at_one_infinitesimal, deriv_chi_zero]
  simp

/-- The actual prime-and-square packet observes the labeled product representation. -/
def sourceSignedFunctional (A ξ : ℝ) (z : LowerPowerCharacteristicFiber A ξ) : ℝ :=
  ∑ n : LowerPowerLabel A,
    signedTracePacket (primeWeight (n : ℕ)) (sourceRepresentation A ξ z n)

theorem source_signed_functional_roots (A ξ : ℝ) :
    sourceSignedFunctional A ξ (sourceRoots A ξ) = lowerSignedTracePacket A ξ := by
  classical
  unfold sourceSignedFunctional lowerSignedTracePacket
  simp_rw [source_representation_roots]
  exact (lowerPowerInventory A).sum_coe_sort
    (fun n ↦ signedTracePacket (primeWeight n) (phaseRotation (chi ξ n)))

theorem source_signed_functional_zero_boundary (A : ℝ) :
    sourceSignedFunctional A 0 (sourceRoots A 0) = -2 * lowerPowerWeight A := by
  rw [source_signed_functional_roots, lower_signed_trace_packet_zero_frequency]

/-- Curvature retains the exact lower-power labels and external von Mangoldt weights. -/
def lowerDefectDerivative (A ξ : ℝ) : ℝ :=
  ∑ n ∈ lowerPowerInventory A, primeWeight n * singleDefectDerivative ξ n

theorem has_deriv_at_lower_power_phase_defect (A ξ : ℝ) :
    HasDerivAt (lowerPowerPhaseDefect A) (lowerDefectDerivative A ξ) ξ :=
  HasDerivAt.fun_sum (fun n _ ↦
    (has_deriv_at_single_defect n ξ).const_mul (primeWeight n))

theorem second_deriv_lower_power_phase_defect_zero (A : ℝ) :
    deriv (deriv (lowerPowerPhaseDefect A)) 0 =
      ∑ n ∈ lowerPowerInventory A, 2 * primeWeight n * Real.log n ^ 2 := by
  have heq : deriv (lowerPowerPhaseDefect A) = lowerDefectDerivative A :=
    funext (fun ξ ↦ (has_deriv_at_lower_power_phase_defect A ξ).deriv)
  rw [heq]
  have h := HasDerivAt.fun_sum (fun n (_ : n ∈ lowerPowerInventory A) ↦
    (has_deriv_at_single_defect_derivative_zero n).const_mul (primeWeight n))
  change deriv (fun ξ ↦ ∑ n ∈ lowerPowerInventory A,
    primeWeight n * singleDefectDerivative ξ n) 0 = _
  rw [h.deriv]
  apply Finset.sum_congr rfl
  intro n _
  ring


private theorem jacobson_map_alg_equiv {R S : Type*} [CommRing R] [CommRing S]
    [Algebra ℂ R] [Algebra ℂ S] (e : R ≃ₐ[ℂ] S) :
    Ideal.map e.toRingHom (Ring.jacobson R) = Ring.jacobson S := by
  rw [← Ideal.jacobson_bot, Ideal.map_jacobson_of_bijective e.bijective,
    Ideal.map_bot, Ideal.jacobson_bot]

private theorem jacobson_comap_alg_equiv {R S : Type*} [CommRing R] [CommRing S]
    [Algebra ℂ R] [Algebra ℂ S] (e : R ≃ₐ[ℂ] S) :
    Ideal.comap e.toRingHom (Ring.jacobson S) = Ring.jacobson R := by
  rw [← Ideal.jacobson_bot, Ideal.comap_jacobson_of_surjective e.surjective,
    ← RingHom.ker_eq_comap_bot,
    (RingHom.injective_iff_ker_eq_bot e.toRingHom).mp e.injective, Ideal.jacobson_bot]

private theorem jacobson_linear_map_alg_equiv {R S : Type*} [CommRing R] [CommRing S]
    [Algebra ℂ R] [Algebra ℂ S] (e : R ≃ₐ[ℂ] S) :
    Submodule.map e.toLinearMap ((Ring.jacobson R).restrictScalars ℂ) =
      (Ring.jacobson S).restrictScalars ℂ := by
  ext z
  constructor
  · rintro ⟨x, hx, rfl⟩
    change e x ∈ Ring.jacobson S
    rw [← jacobson_comap_alg_equiv e] at hx
    exact hx
  · intro hz
    refine ⟨e.symm z, ?_, by simp⟩
    change e.symm z ∈ Ring.jacobson R
    rw [← jacobson_comap_alg_equiv e, Ideal.mem_comap]
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
  exact jacobson_map_alg_equiv (sourceZeroEquiv A)

theorem source_zero_equiv_comap_jacobson (A : ℝ) :
    Ideal.comap (sourceZeroEquiv A).toRingHom (Ring.jacobson (LowerPowerZeroFiber A)) =
      Ring.jacobson (LowerPowerCharacteristicFiber A 0) := by
  exact jacobson_comap_alg_equiv (sourceZeroEquiv A)

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
  exact jacobson_linear_map_alg_equiv (sourceZeroEquiv A)

/-- At actual zero frequency the radical has precisely one dimension per source label. -/
theorem source_characteristic_zero_radical_finrank (A : ℝ) :
    Module.finrank ℂ ((Ring.jacobson (LowerPowerCharacteristicFiber A 0)).restrictScalars ℂ) =
      (lowerPowerInventory A).card := by
  rw [← (sourceZeroEquiv A).toLinearEquiv.finrank_map_eq,
    source_zero_equiv_linear_map_jacobson, source_zero_radical_finrank]

theorem source_characteristic_zero_jacobson (A : ℝ) :
    Ring.jacobson (LowerPowerCharacteristicFiber A 0) =
      Ideal.comap (sourceZeroEquiv A).toRingHom (lowerPowerInfinitesimalIdeal A) := by
  rw [← source_zero_fiber_jacobson, source_zero_equiv_comap_jacobson]

/-- The exact source trace is constant on the genuine characteristic radical cosets. -/
theorem source_signed_functional_coset_invariant (A ξ : ℝ) :
    CosetInvariant ((Ring.jacobson (LowerPowerCharacteristicFiber A ξ)).restrictScalars ℂ)
      (sourceSignedFunctional A ξ) := by
  intro x j hj
  have hj' : j ∈ Ring.jacobson (LowerPowerCharacteristicFiber A ξ) := hj
  rw [← source_representation_ker_eq_jacobson, RingHom.mem_ker] at hj'
  change sourceRepresentation A ξ j = 0 at hj'
  unfold sourceSignedFunctional
  rw [map_add, hj', add_zero]

/-- Descent removes invisible directions but preserves the observed arithmetic budget. -/
theorem source_signed_functional_quotient_factor (A ξ : ℝ) :
    ∃ Qbar : LowerPowerCharacteristicFiber A ξ ⧸
        (Ring.jacobson (LowerPowerCharacteristicFiber A ξ)).restrictScalars ℂ → ℝ,
      sourceSignedFunctional A ξ =
        Qbar ∘ ((Ring.jacobson (LowerPowerCharacteristicFiber A ξ)).restrictScalars ℂ).mkQ :=
  (coset_invariant_iff_quotient_factor _ _).mp (source_signed_functional_coset_invariant A ξ)


end
end FormalResearch.RiemannHypothesis.SourceCharacteristicInventory
