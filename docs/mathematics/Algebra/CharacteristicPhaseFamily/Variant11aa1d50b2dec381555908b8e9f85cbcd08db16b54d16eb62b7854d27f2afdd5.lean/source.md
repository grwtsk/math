# Complete source: GRWTSK.Algebra.CharacteristicPhaseFamily.Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb6c104e6b5354e79ca906e8466fa9ee2172fcad` · SHA-256 `11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.PhaseCharacteristicRadical
import Mathlib.RingTheory.Polynomial.Resultant.Basic
import Mathlib.RingTheory.Flat.Basic
import Mathlib.Analysis.Complex.Polynomial.Basic
import Mathlib.RingTheory.Polynomial.Quotient

/-!
# A universal characteristic deformation of the actual phase rotation

The parameter ring is `ℂ[C]`. A single monic quadratic defines a finite free
algebra over that ring. Its specialization maps recover each characteristic
fiber, with centered coordinate square `c^2 - 1`. Actual unit phases represent
their fibers through polynomial evaluation at the existing phase rotations.

The repeated fibers occur at both `c = 1` and `c = -1`; their radical is the
centered-coordinate ideal. Distinct-root fibers have zero radical. Statements
about specialization do not assert radical membership in nearby fibers.
No uniform arithmetic estimate, trace positivity, or zero simplicity is assumed.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.CharacteristicPhaseFamily

open Polynomial
open scoped ComplexConjugate Matrix
open PhaseObservationObstruction
open PhaseCharacteristicRadical
open FormalResearch.MathematicalTooling.JacobsonObservation

noncomputable section

/-- The conjugate-root quadratic, written to expose its centered coordinate. -/
def characteristicPolynomial {R : Type*} [CommRing R] (c : R) : R[X] :=
  (X - C c) ^ 2 - C (c ^ 2 - 1)

theorem characteristic_polynomial_expansion {R : Type*} [CommRing R] (c : R) :
    characteristicPolynomial c = X ^ 2 - C (2 * c) * X + 1 := by
  simp only [characteristicPolynomial, map_sub, map_pow, map_mul, map_ofNat, map_one]
  ring

theorem characteristic_polynomial_monic {R : Type*} [CommRing R] [Nontrivial R] (c : R) :
    (characteristicPolynomial c).Monic := by
  apply ((monic_X_sub_C c).pow 2).sub_of_left
  exact degree_C_le.trans_lt (by
    rw [degree_pow' (by simp [(monic_X_sub_C c).leadingCoeff]), degree_X_sub_C]
    norm_num)

theorem characteristic_polynomial_degree {R : Type*} [CommRing R] [Nontrivial R] (c : R) :
    (characteristicPolynomial c).degree = 2 := by
  have hlt : (C (c ^ 2 - 1) : R[X]).degree < ((X - C c) ^ 2).degree :=
    degree_C_le.trans_lt (by
      rw [degree_pow' (by simp [(monic_X_sub_C c).leadingCoeff]), degree_X_sub_C]
      norm_num)
  rw [characteristicPolynomial, degree_sub_eq_left_of_degree_lt hlt,
    degree_pow' (by simp [(monic_X_sub_C c).leadingCoeff]),
    degree_X_sub_C]
  norm_num

theorem characteristic_polynomial_map {R S : Type*} [CommRing R] [CommRing S]
    (f : R →+* S) (c : R) :
    (characteristicPolynomial c).map f = characteristicPolynomial (f c) := by
  simp [characteristicPolynomial]

/-- A general characteristic fiber over a complex parameter. -/
abbrev CharacteristicFiber (c : ℂ) := AdjoinRoot (characteristicPolynomial c)

/-- The centered generator of a fiber. -/
def centeredGenerator (c : ℂ) : CharacteristicFiber c :=
  AdjoinRoot.root (characteristicPolynomial c) - algebraMap ℂ _ c

theorem centered_generator_sq (c : ℂ) :
    centeredGenerator c ^ 2 = algebraMap ℂ (CharacteristicFiber c) (c ^ 2 - 1) := by
  have h := AdjoinRoot.eval₂_root (characteristicPolynomial c)
  rw [characteristicPolynomial, eval₂_sub, eval₂_pow, eval₂_sub, eval₂_X, eval₂_C,
    eval₂_C] at h
  exact sub_eq_zero.mp h

theorem centered_generator_ne_zero (c : ℂ) : centeredGenerator c ≠ 0 := by
  have heq : centeredGenerator c = AdjoinRoot.mk (characteristicPolynomial c) (X - C c) :=
    by simp [centeredGenerator]
  rw [heq]
  apply AdjoinRoot.mk_ne_zero_of_degree_lt (characteristic_polynomial_monic c)
  · exact (monic_X_sub_C c).ne_zero
  · rw [degree_X_sub_C, characteristic_polynomial_degree]
    norm_num

/-- The one-parameter base ring; its polynomial variable is the phase real part. -/
abbrev ParameterRing := ℂ[X]

/-- One universal algebra over `ℂ[C]`, rather than unrelated fiber constructions. -/
abbrev UniversalFamily := AdjoinRoot (characteristicPolynomial (X : ParameterRing))

/-- The universal parameter viewed inside the universal algebra. -/
def universalParameter : UniversalFamily := algebraMap ParameterRing UniversalFamily X

/-- The universal centered coordinate. -/
def universalCentered : UniversalFamily :=
  AdjoinRoot.root (characteristicPolynomial (X : ParameterRing)) - universalParameter

theorem universal_centered_sq :
    universalCentered ^ 2 =
      algebraMap ParameterRing UniversalFamily ((X : ParameterRing) ^ 2 - 1) := by
  have h := AdjoinRoot.eval₂_root (characteristicPolynomial (X : ParameterRing))
  rw [characteristicPolynomial, eval₂_sub, eval₂_pow, eval₂_sub, eval₂_X, eval₂_C,
    eval₂_C] at h
  exact sub_eq_zero.mp h

theorem universal_family_free : Module.Free ParameterRing UniversalFamily :=
  (characteristic_polynomial_monic (X : ParameterRing)).free_adjoinRoot

theorem universal_family_finite : Module.Finite ParameterRing UniversalFamily :=
  (characteristic_polynomial_monic (X : ParameterRing)).finite_adjoinRoot

theorem universal_family_flat : Module.Flat ParameterRing UniversalFamily := by
  let : Module.Free ParameterRing UniversalFamily := universal_family_free
  infer_instance

/-- Native coefficient evaluation specializes the universal algebra to a fiber. -/
def specialize (c : ℂ) : UniversalFamily →ₐ[ℂ] CharacteristicFiber c :=
  AdjoinRoot.mapAlgHom (aeval c) _ _ (by
    rw [characteristic_polynomial_map]
    simp)

@[simp]
theorem specialize_root (c : ℂ) :
    specialize c (AdjoinRoot.root (characteristicPolynomial (X : ParameterRing))) =
      AdjoinRoot.root (characteristicPolynomial c) := by
  simp [specialize]

theorem specialize_parameter (c : ℂ) :
    specialize c universalParameter = algebraMap ℂ (CharacteristicFiber c) c := by
  unfold specialize universalParameter
  rw [AdjoinRoot.coe_mapAlgHom, AdjoinRoot.algebraMap_eq, AdjoinRoot.map_of]
  simp

theorem specialize_centered (c : ℂ) : specialize c universalCentered = centeredGenerator c := by
  rw [universalCentered, map_sub, specialize_root, specialize_parameter, centeredGenerator]

theorem specialize_surjective (c : ℂ) : Function.Surjective (specialize c) := by
  rw [← AlgHom.range_eq_top]
  apply top_unique
  rw [← AdjoinRoot.adjoinRoot_eq_top (f := characteristicPolynomial c)]
  apply Algebra.adjoin_le
  rintro _ (rfl : _ = AdjoinRoot.root _)
  exact ⟨AdjoinRoot.root _, specialize_root c⟩

/-- The discriminant, including its sign before specialization to a real phase. -/
def characteristicDiscriminant (c : ℂ) : ℂ := 4 * (c ^ 2 - 1)

theorem characteristic_discriminant_eq_native (c : ℂ) :
    characteristicDiscriminant c = Polynomial.discr (characteristicPolynomial c) := by
  rw [Polynomial.discr_of_degree_eq_two (characteristic_polynomial_degree c),
    characteristic_polynomial_expansion]
  simp [characteristicDiscriminant, coeff_sub, coeff_add, coeff_X_pow, coeff_one]
  ring

theorem characteristic_discriminant_eq_zero_iff (c : ℂ) :
    characteristicDiscriminant c = 0 ↔ c ^ 2 = 1 := by
  simp [characteristicDiscriminant, sub_eq_zero]

/-- The actual unit-phase rotation has precisely the specialized family polynomial. -/
theorem phase_rotation_charpoly_eq_fiber (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    (phaseRotation χ).charpoly = characteristicPolynomial (χ.re : ℂ) := by
  have hs : χ + conj χ = 2 * (χ.re : ℂ) := by
    apply Complex.ext <;> simp
    ring
  have hm : χ * conj χ = 1 := by simp [Complex.mul_conj, hχ]
  rw [phase_rotation_charpoly, characteristic_polynomial_expansion]
  calc
    (X - C χ) * (X - C (conj χ)) =
        X ^ 2 - C (χ + conj χ) * X + C (χ * conj χ) := by simp; ring
    _ = X ^ 2 - C (2 * (χ.re : ℂ)) * X + 1 := by rw [hs, hm]; simp

/-- The exact centered relation in the actual unit-phase fiber. -/
theorem centered_generator_sq_unit_phase (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    centeredGenerator (χ.re : ℂ) ^ 2 =
      algebraMap ℂ (CharacteristicFiber (χ.re : ℂ)) (-((χ.im : ℂ) ^ 2)) := by
  rw [centered_generator_sq]
  congr 1
  have hnorm : χ.re ^ 2 + χ.im ^ 2 = 1 := by
    simpa [Complex.normSq_apply, pow_two] using hχ
  apply Complex.ext <;> simp [← Complex.ofReal_pow]
  nlinarith

theorem characteristic_discriminant_unit_phase (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    characteristicDiscriminant (χ.re : ℂ) = -4 * (χ.im : ℂ) ^ 2 := by
  have hnorm : χ.re ^ 2 + χ.im ^ 2 = 1 := by
    simpa [Complex.normSq_apply, pow_two] using hχ
  apply Complex.ext <;> simp [characteristicDiscriminant, ← Complex.ofReal_pow]
  nlinarith

/-- The representation is actual matrix polynomial evaluation, using Cayley-Hamilton. -/
def representPhase (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    CharacteristicFiber (χ.re : ℂ) →ₐ[ℂ] PhaseMatrix :=
  Ideal.Quotient.liftₐ _ (aeval (phaseRotation χ)) fun p hp ↦ by
    obtain ⟨q, rfl⟩ := Ideal.mem_span_singleton.mp hp
    rw [map_mul, ← phase_rotation_charpoly_eq_fiber χ hχ,
      Matrix.aeval_self_charpoly, zero_mul]

theorem represent_phase_apply_mk (χ : ℂ) (hχ : Complex.normSq χ = 1) (p : ℂ[X]) :
    representPhase χ hχ (AdjoinRoot.mk (characteristicPolynomial (χ.re : ℂ)) p) =
      aeval (phaseRotation χ) p := rfl

theorem represent_phase_root (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    representPhase χ hχ (AdjoinRoot.root (characteristicPolynomial (χ.re : ℂ))) =
      phaseRotation χ := by
  simpa using represent_phase_apply_mk χ hχ X

theorem centered_generator_eq_mk (c : ℂ) :
    centeredGenerator c = AdjoinRoot.mk (characteristicPolynomial c) (X - C c) := by
  simp [centeredGenerator]

/-- Scalar observation at any root of the specialized polynomial. -/
def observeRoot (c r : ℂ) (hr : (characteristicPolynomial c).eval r = 0) :
    CharacteristicFiber c →ₐ[ℂ] ℂ :=
  AdjoinRoot.liftAlgHom _ (Algebra.ofId ℂ ℂ) r (by simpa using hr)

theorem observe_root_surjective (c r : ℂ) (hr : (characteristicPolynomial c).eval r = 0) :
    Function.Surjective (observeRoot c r hr) := by
  intro z
  exact ⟨AdjoinRoot.of _ z, by simp [observeRoot]⟩

theorem characteristic_polynomial_repeated {c : ℂ} (hc : c ^ 2 = 1) :
    characteristicPolynomial c = (X - C c) ^ 2 := by
  simp [characteristicPolynomial, hc]

/-- The coalesced-root observation is defined at both repeated fibers. -/
def observeRepeated (c : ℂ) (hc : c ^ 2 = 1) : CharacteristicFiber c →ₐ[ℂ] ℂ :=
  observeRoot c c (by simp [characteristic_polynomial_repeated hc])

theorem repeated_kernel_square_zero (c : ℂ) (hc : c ^ 2 = 1)
    {x : CharacteristicFiber c} (hx : x ∈ RingHom.ker (observeRepeated c hc).toRingHom) :
    x ^ 2 = 0 := by
  obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective x
  have hp : p.eval c = 0 := by
    simpa [observeRepeated, observeRoot] using RingHom.mem_ker.mp hx
  obtain ⟨q, hq⟩ := dvd_iff_isRoot.mpr hp
  rw [hq, map_mul, mul_pow, ← map_pow, ← characteristic_polynomial_repeated hc,
    AdjoinRoot.mk_self, zero_mul]

theorem repeated_kernel_eq_jacobson (c : ℂ) (hc : c ^ 2 = 1) :
    RingHom.ker (observeRepeated c hc).toRingHom = Ring.jacobson (CharacteristicFiber c) := by
  apply le_antisymm
  · intro x hx
    rw [← Ideal.jacobson_bot]
    exact Ideal.radical_le_jacobson
      (mem_nilradical.mpr ⟨2, repeated_kernel_square_zero c hc hx⟩)
  · let : (RingHom.ker (observeRepeated c hc).toRingHom).IsMaximal :=
      RingHom.ker_isMaximal_of_surjective _ (observe_root_surjective c c _)
    exact Ring.jacobson_le_of_isMaximal _

/-- The full repeated-fiber radical is the principal centered-coordinate ideal. -/
theorem repeated_jacobson_eq_span (c : ℂ) (hc : c ^ 2 = 1) :
    Ring.jacobson (CharacteristicFiber c) = Ideal.span {centeredGenerator c} := by
  rw [← repeated_kernel_eq_jacobson c hc]
  apply le_antisymm
  · intro x hx
    obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective x
    have hp : p.eval c = 0 := by
      simpa [observeRepeated, observeRoot] using RingHom.mem_ker.mp hx
    obtain ⟨q, hq⟩ := dvd_iff_isRoot.mpr hp
    apply Ideal.mem_span_singleton.mpr
    exact ⟨AdjoinRoot.mk _ q, by rw [hq, map_mul, centered_generator_eq_mk]⟩
  · apply Ideal.span_le.mpr
    rintro _ (rfl : _ = centeredGenerator c)
    change observeRepeated c hc (centeredGenerator c) = 0
    rw [centered_generator_eq_mk]
    simp [observeRepeated, observeRoot]

theorem repeated_centered_square_zero (c : ℂ) (hc : c ^ 2 = 1) :
    centeredGenerator c ^ 2 = 0 := by
  rw [centered_generator_sq, hc, sub_self, map_zero]

theorem repeated_jacobson_ne_bot (c : ℂ) (hc : c ^ 2 = 1) :
    Ring.jacobson (CharacteristicFiber c) ≠ ⊥ := by
  intro h
  have hm : centeredGenerator c ∈ Ring.jacobson (CharacteristicFiber c) := by
    rw [repeated_jacobson_eq_span c hc]
    exact Ideal.subset_span (Set.mem_singleton _)
  rw [h, Ideal.mem_bot] at hm
  exact centered_generator_ne_zero c hm

/-- Two distinct scalar evaluations jointly detect every element of a fiber. -/
theorem jacobson_eq_bot_of_distinct_roots (c a b : ℂ)
    (hp : characteristicPolynomial c = (X - C a) * (X - C b)) (hab : a ≠ b) :
    Ring.jacobson (CharacteristicFiber c) = ⊥ := by
  have ha : (characteristicPolynomial c).eval a = 0 := by simp [hp]
  have hb : (characteristicPolynomial c).eval b = 0 := by simp [hp]
  have hka : Ring.jacobson (CharacteristicFiber c) ≤
      RingHom.ker (observeRoot c a ha).toRingHom := by
    let : (RingHom.ker (observeRoot c a ha).toRingHom).IsMaximal :=
      RingHom.ker_isMaximal_of_surjective _ (observe_root_surjective c a ha)
    exact Ring.jacobson_le_of_isMaximal _
  have hkb : Ring.jacobson (CharacteristicFiber c) ≤
      RingHom.ker (observeRoot c b hb).toRingHom := by
    let : (RingHom.ker (observeRoot c b hb).toRingHom).IsMaximal :=
      RingHom.ker_isMaximal_of_surjective _ (observe_root_surjective c b hb)
    exact Ring.jacobson_le_of_isMaximal _
  apply bot_unique
  intro x hx
  obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective x
  have hpa : p.eval a = 0 := by
    simpa [observeRoot] using RingHom.mem_ker.mp (hka hx)
  have hpb : p.eval b = 0 := by
    simpa [observeRoot] using RingHom.mem_ker.mp (hkb hx)
  rw [Ideal.mem_bot, AdjoinRoot.mk_eq_zero, hp]
  exact (isCoprime_X_sub_C_of_isUnit_sub (sub_ne_zero.mpr hab).isUnit).mul_dvd
    (dvd_iff_isRoot.mpr hpa) (dvd_iff_isRoot.mpr hpb)

/-- Every nondegenerate complex fiber has zero native Jacobson radical. -/
theorem jacobson_eq_bot_of_parameter_sq_ne_one (c : ℂ) (hc : c ^ 2 ≠ 1) :
    Ring.jacobson (CharacteristicFiber c) = ⊥ := by
  obtain ⟨s, hs⟩ := IsAlgClosed.exists_pow_nat_eq (c ^ 2 - 1) (n := 2) (by norm_num)
  have hpoly : characteristicPolynomial c = (X - C (c + s)) * (X - C (c - s)) := by
    rw [characteristicPolynomial, ← hs]
    simp only [map_add, map_sub, map_pow]
    ring
  apply jacobson_eq_bot_of_distinct_roots c (c + s) (c - s) hpoly
  intro heq
  have hsz : s = 0 := by linear_combination (1 / 2 : ℂ) * heq
  apply hc
  rw [hsz, zero_pow (by norm_num)] at hs
  exact (sub_eq_zero.mp hs.symm)

/-- Radical appearance occurs exactly at the two repeated fibers. -/
theorem jacobson_ne_bot_iff (c : ℂ) :
    Ring.jacobson (CharacteristicFiber c) ≠ ⊥ ↔ c ^ 2 = 1 := by
  constructor
  · intro h
    by_contra hc
    exact h (jacobson_eq_bot_of_parameter_sq_ne_one c hc)
  · exact repeated_jacobson_ne_bot c

/-- The base ideal selecting one parameter value. -/
abbrev parameterIdeal (c : ℂ) : Ideal ParameterRing := Ideal.span {X - C c}

/-- The same parameter ideal inside the universal algebra. -/
abbrev specializationIdeal (c : ℂ) : Ideal UniversalFamily :=
  Ideal.map (AdjoinRoot.of (characteristicPolynomial (X : ParameterRing))) (parameterIdeal c)

theorem specialization_ideal_eq_span (c : ℂ) :
    specializationIdeal c =
      Ideal.span {universalParameter - algebraMap ℂ UniversalFamily c} := by
  simp only [specializationIdeal, parameterIdeal, Ideal.map_span, Set.image_singleton,
    map_sub, universalParameter, AdjoinRoot.algebraMap_eq]
  rfl

theorem specialization_mapped_polynomial (c : ℂ) :
    ((characteristicPolynomial (X : ParameterRing)).map (Ideal.Quotient.mk (parameterIdeal c))).map
      (quotientSpanXSubCAlgEquiv c : _ →+* ℂ) = characteristicPolynomial c := by
  rw [Polynomial.map_map]
  have he : (↑(quotientSpanXSubCAlgEquiv c) : _ →+* ℂ).comp
      (Ideal.Quotient.mk (parameterIdeal c)) = (aeval c).toRingHom := by
    ext <;> simp
  rw [he, characteristic_polynomial_map]
  simp

set_option backward.isDefEq.respectTransparency.types false in
/-- Specialization is the actual quotient by the selected universal parameter. -/
def specializationEquiv (c : ℂ) :
    (UniversalFamily ⧸ specializationIdeal c) ≃ₐ[ℂ] CharacteristicFiber c :=
  ((AdjoinRoot.quotEquivQuotMap (characteristicPolynomial (X : ParameterRing))
      (parameterIdeal c)).restrictScalars ℂ).trans
    (AdjoinRoot.mapAlgEquiv (quotientSpanXSubCAlgEquiv c)
      ((characteristicPolynomial (X : ParameterRing)).map (Ideal.Quotient.mk (parameterIdeal c)))
      (characteristicPolynomial c) (by rw [specialization_mapped_polynomial]))

set_option backward.isDefEq.respectTransparency.types false in
theorem specialization_equiv_apply_mk (c : ℂ) (z : UniversalFamily) :
    specializationEquiv c (Ideal.Quotient.mk (specializationIdeal c) z) = specialize c z := by
  obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective z
  change AdjoinRoot.map (quotientSpanXSubCAlgEquiv c : _ →+* ℂ) _ _
    (by rw [specialization_mapped_polynomial])
    ((AdjoinRoot.quotEquivQuotMap (characteristicPolynomial (X : ParameterRing))
      (parameterIdeal c)) (Ideal.Quotient.mk (specializationIdeal c)
        (AdjoinRoot.mk (characteristicPolynomial (X : ParameterRing)) p))) = _
  rw [AdjoinRoot.quotEquivQuotMap_apply_mk]
  simp only [specialize, AdjoinRoot.coe_mapAlgHom]
  change AdjoinRoot.map _ _ _ _ (AdjoinRoot.mk _ (p.map _)) =
    AdjoinRoot.map _ _ _ _ (AdjoinRoot.mk _ p)
  simp only [AdjoinRoot.map, AdjoinRoot.lift_mk, eval₂_map]
  congr 1

theorem specialize_ker_eq_specialization_ideal (c : ℂ) :
    RingHom.ker (specialize c).toRingHom = specializationIdeal c := by
  ext z
  rw [RingHom.mem_ker]
  change specialize c z = 0 ↔ z ∈ specializationIdeal c
  rw [← specialization_equiv_apply_mk]
  rw [← map_zero (specializationEquiv c), (specializationEquiv c).injective.eq_iff]
  exact Ideal.Quotient.eq_zero_iff_mem

/-- The phase-one fiber is canonically the already established characteristic quotient. -/
def fiberOneEquiv : CharacteristicFiber 1 ≃ₐ[ℂ] CharacteristicOne :=
  AdjoinRoot.algEquivOfAssociated ℂ _ _ (by simp [characteristicPolynomial])

/-- Algebraic root coalescence includes both signs. -/
theorem characteristic_discriminant_eq_zero_iff_sign (c : ℂ) :
    characteristicDiscriminant c = 0 ↔ c = 1 ∨ c = -1 := by
  rw [characteristic_discriminant_eq_zero_iff, sq_eq_one_iff]

theorem characteristic_discriminant_unit_phase_eq_zero_iff (χ : ℂ)
    (hχ : Complex.normSq χ = 1) :
    characteristicDiscriminant (χ.re : ℂ) = 0 ↔ χ.im = 0 := by
  rw [characteristic_discriminant_unit_phase χ hχ]
  simp

theorem characteristic_discriminant_unit_phase_eq_zero_iff_sign (χ : ℂ)
    (hχ : Complex.normSq χ = 1) :
    characteristicDiscriminant (χ.re : ℂ) = 0 ↔ χ = 1 ∨ χ = -1 := by
  rw [characteristic_discriminant_unit_phase_eq_zero_iff χ hχ]
  constructor
  · intro hi
    have hr : χ.re ^ 2 = 1 := by
      simpa [Complex.normSq_apply, hi, pow_two] using hχ
    rcases sq_eq_one_iff.mp hr with h | h
    · exact Or.inl (Complex.ext (by simpa using h) (by simpa using hi))
    · exact Or.inr (Complex.ext (by simpa using h) (by simpa using hi))
  · rintro (rfl | rfl) <;> simp

/-- The discriminant and the actual unit-phase angular defect have different zero loci. -/
theorem characteristic_discriminant_eq_defect_product (χ : ℂ)
    (hχ : Complex.normSq χ = 1) :
    characteristicDiscriminant (χ.re : ℂ) =
      (Complex.normSq (1 - χ) : ℂ) * ((Complex.normSq (1 - χ) : ℂ) - 4) := by
  have hd : Complex.normSq (1 - χ) = 2 - 2 * χ.re := by
    rw [Complex.normSq_sub, hχ]
    simp
    ring
  rw [hd]
  simp only [characteristicDiscriminant, Complex.ofReal_sub, Complex.ofReal_mul,
    Complex.ofReal_ofNat]
  ring

/-- Restricting to the phase-one half of the unit circle removes the phase-minus-one branch. -/
theorem characteristic_discriminant_eq_zero_iff_defect_eq_zero_on_positive_branch
    (χ : ℂ) (hχ : Complex.normSq χ = 1) (hre : 0 ≤ χ.re) :
    characteristicDiscriminant (χ.re : ℂ) = 0 ↔ Complex.normSq (1 - χ) = 0 := by
  rw [characteristic_discriminant_unit_phase_eq_zero_iff_sign χ hχ,
    Complex.normSq_eq_zero, sub_eq_zero]
  constructor
  · rintro (rfl | rfl)
    · rfl
    · norm_num at hre
  · intro h
    exact Or.inl h.symm

/-- A formal counterexample to identifying every repeated-root fiber with defect zero. -/
theorem phase_minus_one_discriminant_defect :
    characteristicDiscriminant ((-1 : ℂ).re : ℂ) = 0 ∧
      Complex.normSq (1 - (-1 : ℂ)) = 4 := by
  norm_num [characteristicDiscriminant, Complex.normSq_apply]

theorem aeval_phase_rotation_diagonal (χ : ℂ) (p : ℂ[X]) :
    aeval (phaseRotation χ) p = Matrix.diagonal ![p.eval χ, p.eval (conj χ)] := by
  rw [phase_rotation_eq_diagonal]
  change aeval ((Matrix.diagonalAlgHom ℂ (n := Fin 2) (α := ℂ)) ![χ, conj χ]) p = _
  rw [aeval_algHom_apply]
  change Matrix.diagonal (aeval ![χ, conj χ] p) = _
  apply congrArg Matrix.diagonal
  funext i
  fin_cases i <;> simp

/-- A real repeated phase is scalar matrix evaluation of its coalesced-root observation. -/
theorem represent_phase_eq_scalar_observe_repeated (χ : ℂ)
    (hχ : Complex.normSq χ = 1) (hi : χ.im = 0)
    (hc : (χ.re : ℂ) ^ 2 = 1) :
    representPhase χ hχ = (Algebra.ofId ℂ PhaseMatrix).comp (observeRepeated (χ.re : ℂ) hc) := by
  apply AdjoinRoot.algHom_ext
  rw [represent_phase_root, AlgHom.comp_apply]
  simp only [observeRepeated, observeRoot, AdjoinRoot.liftAlgHom_root, Algebra.ofId_apply]
  rw [phase_rotation_eq_diagonal, Matrix.algebraMap_eq_diagonal]
  congr 1
  funext i
  fin_cases i <;> apply Complex.ext <;> simp [hi]

/-- In every actual unit phase, characteristic evaluation has exactly the classified radical
as its kernel. This assertion concerns the characteristic domain, not the full matrix ring. -/
theorem represent_phase_ker_eq_jacobson (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    RingHom.ker (representPhase χ hχ).toRingHom =
      Ring.jacobson (CharacteristicFiber (χ.re : ℂ)) := by
  by_cases hi : χ.im = 0
  · have hc : (χ.re : ℂ) ^ 2 = 1 := by
      have hr : χ.re ^ 2 = 1 := by simpa [Complex.normSq_apply, hi, pow_two] using hχ
      exact_mod_cast hr
    rw [represent_phase_eq_scalar_observe_repeated χ hχ hi hc]
    change RingHom.ker ((algebraMap ℂ PhaseMatrix).comp
      (observeRepeated (χ.re : ℂ) hc).toRingHom) = _
    rw [RingHom.ker_comp_of_injective _ (FaithfulSMul.algebraMap_injective ℂ PhaseMatrix)]
    exact repeated_kernel_eq_jacobson _ hc
  · have hc : (χ.re : ℂ) ^ 2 ≠ 1 := by
      intro hc
      have hd := (characteristic_discriminant_eq_zero_iff (χ.re : ℂ)).mpr hc
      exact hi ((characteristic_discriminant_unit_phase_eq_zero_iff χ hχ).mp hd)
    rw [jacobson_eq_bot_of_parameter_sq_ne_one _ hc]
    apply bot_unique
    intro z hz
    obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective z
    have hp : aeval (phaseRotation χ) p = 0 := by
      change representPhase χ hχ (AdjoinRoot.mk _ p) = 0 at hz
      rwa [represent_phase_apply_mk] at hz
    rw [aeval_phase_rotation_diagonal] at hp
    have hpa : p.eval χ = 0 := by
      simpa using congrArg (fun M : PhaseMatrix ↦ M 0 0) hp
    have hpb : p.eval (conj χ) = 0 := by
      simpa using congrArg (fun M : PhaseMatrix ↦ M 1 1) hp
    have hne : χ ≠ conj χ := by
      intro h
      have him := congrArg Complex.im h
      simp only [Complex.conj_im] at him
      exact hi (by linarith)
    rw [Ideal.mem_bot, AdjoinRoot.mk_eq_zero, ← phase_rotation_charpoly_eq_fiber χ hχ,
      phase_rotation_charpoly]
    exact (isCoprime_X_sub_C_of_isUnit_sub (sub_ne_zero.mpr hne).isUnit).mul_dvd
      (dvd_iff_isRoot.mpr hpa) (dvd_iff_isRoot.mpr hpb)

theorem characteristic_fiber_finite (c : ℂ) : Module.Finite ℂ (CharacteristicFiber c) :=
  (characteristic_polynomial_monic c).finite_adjoinRoot

theorem characteristic_fiber_finrank (c : ℂ) : Module.finrank ℂ (CharacteristicFiber c) = 2 := by
  rw [(AdjoinRoot.powerBasis' (characteristic_polynomial_monic c)).finrank]
  change (characteristicPolynomial c).natDegree = 2
  exact natDegree_eq_of_degree_eq_some (characteristic_polynomial_degree c)

theorem jacobson_eq_bot_iff (c : ℂ) :
    Ring.jacobson (CharacteristicFiber c) = ⊥ ↔ c ^ 2 ≠ 1 := by
  simpa only [not_not] using not_congr (jacobson_ne_bot_iff c)

theorem represent_phase_injective_iff (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    Function.Injective (representPhase χ hχ) ↔ χ.im ≠ 0 := by
  rw [show Function.Injective (representPhase χ hχ) ↔
    Function.Injective (representPhase χ hχ).toRingHom from Iff.rfl,
    RingHom.injective_iff_ker_eq_bot, represent_phase_ker_eq_jacobson, jacobson_eq_bot_iff]
  exact not_congr ((characteristic_discriminant_eq_zero_iff _).symm.trans
    (characteristic_discriminant_unit_phase_eq_zero_iff χ hχ))

/-- The characteristic representation contains rotations but cannot realize the original
reference reflection, at any unit phase. -/
theorem reference_reflection_not_in_fiber_representation (χ : ℂ)
    (hχ : Complex.normSq χ = 1) : phaseReflection 1 ∉ AlgHom.range (representPhase χ hχ) := by
  rintro ⟨z, hz⟩
  obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective z
  change representPhase χ hχ (AdjoinRoot.mk _ p) = phaseReflection 1 at hz
  rw [represent_phase_apply_mk, aeval_phase_rotation_diagonal] at hz
  have h01 := congrArg (fun M : PhaseMatrix ↦ M 0 1) hz
  simp [phaseReflection] at h01

theorem reference_left_action_not_preserved_in_fiber (χ : ℂ)
    (hχ : Complex.normSq χ = 1) :
    ¬ ∃ L : CharacteristicFiber (χ.re : ℂ) →ₗ[ℂ] CharacteristicFiber (χ.re : ℂ),
      ∀ z, representPhase χ hχ (L z) = phaseReflection 1 * representPhase χ hχ z := by
  rintro ⟨L, hL⟩
  apply reference_reflection_not_in_fiber_representation χ hχ
  exact ⟨L 1, by simpa using hL 1⟩

theorem characteristic_fiber_nilradical_eq_jacobson (c : ℂ) :
    nilradical (CharacteristicFiber c) = Ring.jacobson (CharacteristicFiber c) := by
  apply le_antisymm
  · rw [← Ideal.jacobson_bot]
    exact Ideal.radical_le_jacobson
  · by_cases hc : c ^ 2 = 1
    · intro z hz
      rw [← repeated_kernel_eq_jacobson c hc] at hz
      exact mem_nilradical.mpr ⟨2, repeated_kernel_square_zero c hc hz⟩
    · rw [jacobson_eq_bot_of_parameter_sq_ne_one c hc]
      exact bot_le

/-- The universal finite free family has reduced fibers exactly off the repeated-root locus. -/
theorem characteristic_fiber_isReduced_iff (c : ℂ) :
    IsReduced (CharacteristicFiber c) ↔ c ^ 2 ≠ 1 := by
  rw [← nilradical_eq_bot_iff, characteristic_fiber_nilradical_eq_jacobson, jacobson_eq_bot_iff]

theorem represent_phase_linear_ker_eq_jacobson (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    LinearMap.ker (representPhase χ hχ).toLinearMap =
      (Ring.jacobson (CharacteristicFiber (χ.re : ℂ))).restrictScalars ℂ := by
  ext z
  rw [LinearMap.mem_ker]
  change representPhase χ hχ z = 0 ↔ z ∈ Ring.jacobson (CharacteristicFiber (χ.re : ℂ))
  rw [← represent_phase_ker_eq_jacobson χ hχ, RingHom.mem_ker]
  rfl

/-- The actual characteristic observations have affine radical fibers, at every unit phase. -/
theorem represent_phase_fiber_eq_affine_coset (χ : ℂ) (hχ : Complex.normSq χ = 1)
    (a z : CharacteristicFiber (χ.re : ℂ)) :
    representPhase χ hχ z = representPhase χ hχ a ↔
      ∃ j ∈ Ring.jacobson (CharacteristicFiber (χ.re : ℂ)), z = a + j :=
  ring_radical_observation_fiber (representPhase χ hχ).toLinearMap
    (represent_phase_linear_ker_eq_jacobson χ hχ) a z

end
end FormalResearch.RiemannHypothesis.CharacteristicPhaseFamily
```
