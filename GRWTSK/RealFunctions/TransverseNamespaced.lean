-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.Reflect.Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.Reflect.Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"d51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/d51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.BraidCoordinates
import FormalResearch.PositiveAtlas.Grassmannian.ToeplitzMinors
import Mathlib.Data.Complex.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-!
# Transverse reflection, squared centering, and phase normalization

These are exact complex/scalar identities. No zero is assumed to be on the
critical line. Nonzero height is required for the negative-axis equivalence.
The braid coordinate and the complex transverse coordinate are not identified.
-/


namespace GRWTSK.Analysis.SpecialFunctions.Reflect.Variantd51072a87c12680e148c8fe4da874598df613db5409a75345008af0a6876e2e4

namespace FormalResearch.PositiveAtlas.Grassmannian.Transverse

noncomputable section

/-- Reflection fixing the vertical line with real part one half. -/
def reflect (s : ℂ) : ℂ := 1 - star s

/-- Quotient coordinate for the holomorphic functional-equation involution. -/
def centeredSquare (s : ℂ) : ℂ := (s - 1 / 2) ^ 2

/-- The real displacement normal to the critical line. -/
def displacement (s : ℂ) : ℝ := s.re - 1 / 2

/-- Reflection is an actual involution on the complex plane. -/
theorem reflect_involutive (s : ℂ) : reflect (reflect s) = s := by
  apply Complex.ext <;> simp [reflect]

/-- The vertical reflection reverses the transverse coordinate. -/
theorem displacement_reflect (s : ℂ) : displacement (reflect s) = -displacement s := by
  simp [displacement, reflect]
  ring

/-- Squared centering identifies the holomorphic functional-equation partners. -/
theorem centeredSquare_one_sub (s : ℂ) : centeredSquare (1 - s) = centeredSquare s := by
  unfold centeredSquare
  ring

/-- Squared centering retains the square of the transverse displacement. -/
theorem centeredSquare_re (s : ℂ) :
    (centeredSquare s).re = displacement s ^ 2 - s.im ^ 2 := by
  simp [centeredSquare, displacement, pow_two, Complex.mul_re]

/-- Off-line displacement is visible in the imaginary part rather than projected away. -/
theorem centeredSquare_im (s : ℂ) :
    (centeredSquare s).im = 2 * displacement s * s.im := by
  simp [centeredSquare, displacement, pow_two, Complex.mul_im]
  ring

/-- At nonzero height, a real squared-center coordinate forces the critical line. -/
theorem centeredSquare_im_zero_iff (s : ℂ) (hi : s.im ≠ 0) :
    (centeredSquare s).im = 0 ↔ s.re = 1 / 2 := by
  rw [centeredSquare_im]
  constructor
  · intro h
    have hd := (mul_eq_zero.mp h).resolve_right hi
    dsimp [displacement] at hd
    linarith
  · intro h
    simp [displacement, h]

/-- The negative-real-axis characterization is exact, with the height hypothesis retained. -/
theorem centeredSquare_negative_axis_iff (s : ℂ) (hi : s.im ≠ 0) :
    ((centeredSquare s).im = 0 ∧ (centeredSquare s).re < 0) ↔ s.re = 1 / 2 := by
  constructor
  · intro h
    exact (centeredSquare_im_zero_iff s hi).mp h.1
  · intro h
    refine ⟨(centeredSquare_im_zero_iff s hi).mpr h, ?_⟩
    rw [centeredSquare_re]
    have hp := sq_pos_of_ne_zero hi
    simp only [displacement, h, sub_self, zero_pow (by decide : 2 ≠ 0), zero_sub]
    linarith

/-- The common reflection law does not assert an arithmetic map between its two coordinates. -/
theorem two_reflection_laws (p : Braid.Weights) (hp : p.Positive) (s : ℂ) :
    Braid.relativeHalf (Braid.mutate p) - 1 / 2 = -(Braid.relativeHalf p - 1 / 2) ∧
      displacement (reflect s) = -displacement s :=
  ⟨Braid.centered_relativeHalf_mutate p hp, displacement_reflect s⟩

/-- The phase-to-turn normalization discussed in the research program. -/
def phaseUnit : ℝ := 1 / (2 * Real.pi)

/-- The normalization is strictly positive, independently of any zeta assertion. -/
theorem phaseUnit_positive : 0 < phaseUnit := by
  unfold phaseUnit
  exact div_pos (by norm_num) (mul_pos (by norm_num) Real.pi_pos)

/-- Substitution by the squared phase unit preserves, but cannot create, PF-infinity. -/
theorem phase_normalization_preserves_pfInfinity (a : ℕ → ℝ) :
    Toeplitz.PFInfinity (Toeplitz.rescale (phaseUnit ^ 2) a) ↔ Toeplitz.PFInfinity a :=
  Toeplitz.pfInfinity_rescale_iff a (phaseUnit ^ 2) (pow_pos phaseUnit_positive _)

end

end FormalResearch.PositiveAtlas.Grassmannian.Transverse
