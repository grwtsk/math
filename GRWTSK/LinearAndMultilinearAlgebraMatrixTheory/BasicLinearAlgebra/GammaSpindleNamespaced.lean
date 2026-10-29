-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.ArchimedeanGammaSpindle.Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.ArchimedeanGammaSpindle.Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"e7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Arithmetic/GammaSpindle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Arithmetic.DirichletCharacterProfile
import DAF.Hilbert.Finite
import Mathlib.Analysis.Calculus.Deriv.Star
import Mathlib.Data.Matrix.Reflection
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Ring

/-!
# Archimedean Gamma spindle

This module implements the exact special-function scalar data and its exact
finite, pointwise Hermitian `2 × 2` Dirac matrix.  The separate
`AnalyticGammaSpindleCapability` records the additional maximal-domain facts
needed to promote the pointwise construction to an unbounded operator on
`L²(ℝ; ℂ²)`.  No inhabitant of that capability is asserted here.

Two similarly motivated scalars deliberately have different names:

* `gammaSpindleProfile` is the real digamma phase gradient;
* `boundedGammaSymbol` is a generally complex contraction.

The latter is not claimed to be self-adjoint.
-/


namespace GRWTSK.Analysis.SpecialFunctions.ArchimedeanGammaSpindle.Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a

noncomputable section

namespace DAF.Arithmetic

open Complex
open scoped ComplexConjugate

abbrev PrimitiveCharacter := PrimitiveDirichletCharacter

/-- Positive real conductor scale `q / π`. -/
def conductorScale (chi : PrimitiveCharacter) : ℝ :=
  chi.conductor / Real.pi

theorem conductorScale_pos (chi : PrimitiveCharacter) :
    0 < conductorScale chi := by
  exact div_pos (Nat.cast_pos.mpr chi.conductor_pos) Real.pi_pos

@[simp]
theorem conductorScale_conjugate (chi : PrimitiveCharacter) :
    conductorScale chi.conjugate = conductorScale chi :=
  rfl

/-- Parity embedded in the complex scalars. -/
def parityScalar (chi : PrimitiveCharacter) : ℂ :=
  chi.parity.val

/-- The exact project Gamma factor
`(q / π)^((s+a)/2) Γ((s+a)/2)`.

This includes the conductor power and is therefore not merely Mathlib's
conductor-free `DirichletCharacter.gammaFactor`. -/
def gammaFactor (chi : PrimitiveCharacter) (s : ℂ) : ℂ :=
  (conductorScale chi : ℂ) ^ ((s + parityScalar chi) / 2) *
    Complex.Gamma ((s + parityScalar chi) / 2)

/-- The exact Gamma factor respects complex conjugation. -/
theorem gammaFactor_conj (chi : PrimitiveCharacter) (s : ℂ) :
    gammaFactor chi (conj s) = conj (gammaFactor chi s) := by
  have base_arg : ((conductorScale chi : ℝ) : ℂ).arg ≠ Real.pi := by
    rw [Complex.arg_ofReal_of_nonneg (le_of_lt (conductorScale_pos chi))]
    exact Real.pi_ne_zero.symm
  have argument_conj :
      (conj s + parityScalar chi) / 2 =
        conj ((s + parityScalar chi) / 2) := by
    simp only [starRingEnd_apply]
    rw [star_div₀, star_add]
    norm_num [parityScalar, Complex.star_def]
  unfold gammaFactor
  rw [argument_conj, Complex.cpow_conj _ _ base_arg,
    Complex.Gamma_conj]
  simp [map_mul]

@[simp]
theorem gammaFactor_characterConjugate
    (chi : PrimitiveCharacter) (s : ℂ) :
    gammaFactor chi.conjugate s = gammaFactor chi s :=
  rfl

/-- Critical-line parameter `1/2 + i t`. -/
def criticalLine (t : ℝ) : ℂ :=
  (1 / 2 : ℝ) + Complex.I * t

theorem criticalLine_neg (t : ℝ) :
    criticalLine (-t) = conj (criticalLine t) := by
  apply Complex.ext
  · norm_num [criticalLine, Complex.mul_re]
  · norm_num [criticalLine, Complex.mul_im]

/-- Complex conjugation commutes with the digamma function.  Mathlib defines
digamma as the logarithmic derivative of Gamma, so this follows from the
conjugation law for Gamma and the derivative-of-conjugate theorem. -/
theorem digamma_conj (z : ℂ) :
    Complex.digamma (conj z) = conj (Complex.digamma z) := by
  have gammaFixed :
      (conj ∘ Complex.Gamma ∘ conj) = Complex.Gamma := by
    funext w
    simp [Function.comp_apply, Complex.Gamma_conj]
  have derivativeConj :=
    congrFun (deriv_conj_conj (f := Complex.Gamma)) (conj z)
  rw [gammaFixed] at derivativeConj
  have derivativeIdentity :
      deriv Complex.Gamma (conj z) =
        conj (deriv Complex.Gamma z) := by
    simpa [Function.comp_apply] using derivativeConj
  rw [Complex.digamma_def, logDeriv_apply, logDeriv_apply,
    derivativeIdentity, Complex.Gamma_conj]
  exact (map_div₀ (starRingEnd ℂ) _ _).symm

/-- Critical-line Gamma value. -/
def criticalGammaFactor (chi : PrimitiveCharacter) (t : ℝ) : ℂ :=
  gammaFactor chi (criticalLine t)

theorem criticalArgument_re_pos (chi : PrimitiveCharacter) (t : ℝ) :
    0 < (((criticalLine t + parityScalar chi) / 2 : ℂ).re) := by
  have positive_real : 0 < ((1 / 2 : ℝ) + chi.parity.val) / 2 := by
    positivity
  convert positive_real using 1
  norm_num [criticalLine, parityScalar, Complex.div_re,
    Complex.mul_re]

/-- The critical-line Gamma factor has no zero: its base is positive and the
Gamma argument lies in the right half-plane. -/
theorem criticalGammaFactor_ne_zero
    (chi : PrimitiveCharacter) (t : ℝ) :
    criticalGammaFactor chi t ≠ 0 := by
  unfold criticalGammaFactor gammaFactor
  apply mul_ne_zero
  · exact Complex.cpow_ne_zero_iff.mpr <| Or.inl <|
      Complex.ofReal_ne_zero.mpr (ne_of_gt (conductorScale_pos chi))
  · exact Complex.Gamma_ne_zero_of_re_pos (criticalArgument_re_pos chi t)

/-- Unit-modulus Gamma rotor.  `gammaFactor_critical_conjugate` below identifies
the numerator with the factor on the reflected critical-line point. -/
def gammaRotor (chi : PrimitiveCharacter) (t : ℝ) : ℂ :=
  star (criticalGammaFactor chi t) / criticalGammaFactor chi t

/-- Scalar unitarity of the Gamma rotor. -/
theorem gammaRotor_unitary (chi : PrimitiveCharacter) (t : ℝ) :
    ‖gammaRotor chi t‖ = 1 := by
  rw [gammaRotor, norm_div, norm_star, div_self]
  exact norm_ne_zero_iff.mpr (criticalGammaFactor_ne_zero chi t)

/-- The rotor numerator is exactly the Gamma factor at the reflected
critical-line point. -/
theorem gammaRotor_eq_reflected_factor
    (chi : PrimitiveCharacter) (t : ℝ) :
    gammaRotor chi t =
      gammaFactor chi (criticalLine (-t)) /
        gammaFactor chi (criticalLine t) := by
  rw [gammaRotor, criticalLine_neg, gammaFactor_conj]
  rfl

/-- The real phase-gradient/radial spindle profile. -/
def gammaSpindleProfile (chi : PrimitiveCharacter) (t : ℝ) : ℝ :=
  (1 / 2 : ℝ) * Real.log (conductorScale chi) +
    (1 / 2 : ℝ) *
      (Complex.digamma ((criticalLine t + parityScalar chi) / 2)).re

/-- The spindle profile is real by construction; no complex projection is
hidden in its operator representation. -/
theorem gammaSpindleProfile_real (chi : PrimitiveCharacter) (t : ℝ) :
    ((gammaSpindleProfile chi t : ℝ) : ℂ).im = 0 := by
  simp

/-- The real radial spindle profile is even in the spectral parameter. -/
theorem gammaSpindleProfile_even (chi : PrimitiveCharacter) (t : ℝ) :
    gammaSpindleProfile chi (-t) = gammaSpindleProfile chi t := by
  have argumentConj :
      (criticalLine (-t) + parityScalar chi) / 2 =
        conj ((criticalLine t + parityScalar chi) / 2) := by
    rw [criticalLine_neg]
    rw [map_div₀]
    have two_star : (starRingEnd ℂ) (2 : ℂ) = 2 :=
      map_ofNat (starRingEnd ℂ) 2
    rw [two_star]
    simp [parityScalar]
  unfold gammaSpindleProfile
  rw [argumentConj, digamma_conj]
  simp

@[simp]
theorem gammaSpindleProfile_characterConjugate
    (chi : PrimitiveCharacter) (t : ℝ) :
    gammaSpindleProfile chi.conjugate t = gammaSpindleProfile chi t :=
  rfl

/-- The second specification's bounded complex Gamma symbol. -/
def boundedGammaSymbol (chi : PrimitiveCharacter) (t : ℝ) : ℂ :=
  criticalGammaFactor chi t /
    ((1 + ‖criticalGammaFactor chi t‖ : ℝ) : ℂ)

/-- The bounded Gamma symbol is a contraction. -/
theorem gammaSpindle_norm_le_one (chi : PrimitiveCharacter) (t : ℝ) :
    ‖boundedGammaSymbol chi t‖ ≤ 1 := by
  rw [boundedGammaSymbol, norm_div]
  have denominator_norm :
      ‖((1 + ‖criticalGammaFactor chi t‖ : ℝ) : ℂ)‖ =
        1 + ‖criticalGammaFactor chi t‖ := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg]
    positivity
  rw [denominator_norm]
  exact (div_le_one (by positivity)).mpr (by
    linarith [norm_nonneg (criticalGammaFactor chi t)])

/-- Exact pointwise Gamma-spindle Dirac matrix. -/
def GammaSpindleDirac (chi : PrimitiveCharacter) (t : ℝ) :
    Matrix (Fin 2) (Fin 2) ℂ :=
  !![0, (t : ℂ) - Complex.I * gammaSpindleProfile chi t;
     (t : ℂ) + Complex.I * gammaSpindleProfile chi t, 0]

/-- Pointwise Hermiticity.  This is the finite theorem, distinct from
maximal-domain self-adjointness of the analytic multiplication operator. -/
theorem gammaSpindleDirac_selfAdjoint
    (chi : PrimitiveCharacter) (t : ℝ) :
    (GammaSpindleDirac chi t).IsHermitian := by
  rw [Matrix.IsHermitian]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [GammaSpindleDirac, Matrix.conjTranspose_apply]
  all_goals ring

@[simp]
theorem gammaSpindleDirac_characterConjugate
    (chi : PrimitiveCharacter) (t : ℝ) :
    GammaSpindleDirac chi.conjugate t = GammaSpindleDirac chi t :=
  rfl

/-- Exact square of the pointwise spindle Dirac. -/
theorem gammaSpindleDirac_sq
    (chi : PrimitiveCharacter) (t : ℝ) :
    GammaSpindleDirac chi t * GammaSpindleDirac chi t =
      !![((t ^ 2 + (gammaSpindleProfile chi t) ^ 2 : ℝ) : ℂ), 0;
         0, ((t ^ 2 + (gammaSpindleProfile chi t) ^ 2 : ℝ) : ℂ)] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [GammaSpindleDirac, Matrix.mul_apply, Fin.sum_univ_two]
  all_goals
    calc
      _ = (t : ℂ) ^ 2 - (Complex.I * Complex.I) *
          (gammaSpindleProfile chi t : ℂ) ^ 2 := by ring
      _ = _ := by rw [Complex.I_mul_I]; ring

theorem gammaSpindle_square_nonnegative
    (chi : PrimitiveCharacter) (t : ℝ) :
    0 ≤ t ^ 2 + (gammaSpindleProfile chi t) ^ 2 := by
  positivity

/-- The exact finite Archimedean profile and its two nonconflated scalar
realizations. -/
structure ArchimedeanGammaSpindle (chi : PrimitiveCharacter) where
  profile : ℝ → ℝ
  rotor : ℝ → ℂ
  boundedSymbol : ℝ → ℂ
  profile_eq : profile = gammaSpindleProfile chi
  rotor_eq : rotor = gammaRotor chi
  boundedSymbol_eq : boundedSymbol = boundedGammaSymbol chi
  rotor_unitary : ∀ t, ‖rotor t‖ = 1
  bounded : ∀ t, ‖boundedSymbol t‖ ≤ 1

def canonicalArchimedeanGammaSpindle
    (chi : PrimitiveCharacter) : ArchimedeanGammaSpindle chi where
  profile := gammaSpindleProfile chi
  rotor := gammaRotor chi
  boundedSymbol := boundedGammaSymbol chi
  profile_eq := rfl
  rotor_eq := rfl
  boundedSymbol_eq := rfl
  rotor_unitary := gammaRotor_unitary chi
  bounded := gammaSpindle_norm_le_one chi

/-- Capability boundary for the analytic `L²(ℝ;ℂ²)` multiplication operator.
The pointwise matrix theorems above do not manufacture these domain facts. -/
structure AnalyticGammaSpindleCapability (chi : PrimitiveCharacter) where
  HilbertCarrier : Type
  Domain : Set HilbertCarrier
  dirac : HilbertCarrier → HilbertCarrier
  square : HilbertCarrier → HilbertCarrier
  phaseDelay : HilbertCarrier → HilbertCarrier
  maximalDomainSelfAdjoint : Prop
  maximalDomainSelfAdjoint_certified : maximalDomainSelfAdjoint
  squareLaw : Prop
  squareLaw_certified : squareLaw
  phaseDelayLaw : Prop
  phaseDelayLaw_certified : phaseDelayLaw

end DAF.Arithmetic
