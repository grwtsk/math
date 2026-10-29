-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SectorIntegrability.Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SectorIntegrability.Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf","mathematical_subject":"Analysis.Calculus","original_sha256":"ba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/WeightReflection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePairing
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
# General-radius derivative potentials for the actual signed RH weight

The source is commit `940c9d729bf8e54f0a6fecdb0911d22cfa64abb1`,
`SourcePairing`, transcribing RH-0011 (2)--(3) and RH-0012 (1)--(2).
Every theorem below keeps the original correlation, error, `log 2` endpoint,
normalization and prime-two correction. The supplied `DilationRealization` is
an explicit analytic premise; this module does not construct one.

The new reduction identifies the reflection sectors as derivatives of the
opposite-parity potentials. Its even zeroth moment records, rather than drops,
the prime-two boundary. No parity, positivity or all-scale estimate is inferred.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SectorIntegrability.Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.WeightReflection

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.MathematicalTooling.Reflection

noncomputable section

/-- The source's Stieltjes test potential `g_A`, distinguished from the bump's `F_A`. -/
def potential (r : DilationRealization) (A : Set.Ici (1 : ℝ)) (t : ℝ) : ℝ :=
  Real.exp (-t / 2) * sourceCorrelation r.secondDerivative A t

/-- Reflection-even part of the actual signed arithmetic weight. -/
def evenWeight (r : DilationRealization) (A : Set.Ici (1 : ℝ)) : ℝ → ℝ :=
  evenPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A)

/-- Reflection-odd part of the actual signed arithmetic weight. -/
def oddWeight (r : DilationRealization) (A : Set.Ici (1 : ℝ)) : ℝ → ℝ :=
  oddPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A)

/-- Normalization preserves the supplied test's exact zero extension. -/
theorem normalized_test_zero_outside (r : DilationRealization) (A : Set.Ici (1 : ℝ))
    (x : ℝ) (hx : x ∉ Set.Icc (-(A : ℝ)) A) :
    normalizedTest r.secondDerivative A x = 0 := by
  simp [normalizedTest, r.zero_extension A A.property x hx]

/-- To the right of the upper support endpoint, the two tests overlap at most
at one point. Lebesgue measure zero, not unproved endpoint values, proves vanishing. -/
theorem correlation_zero_to_right (r : DilationRealization) (A : Set.Ici (1 : ℝ))
    (t : ℝ) (ht : 2 * (A : ℝ) ≤ t) :
    sourceCorrelation r.secondDerivative A t = 0 := by
  unfold sourceCorrelation
  apply integral_eq_zero_of_ae
  filter_upwards [volume.ae_ne (A : ℝ)] with x hx
  rcases lt_or_gt_of_ne hx with hlt | hgt
  · have hout : x - t ∉ Set.Icc (-(A : ℝ)) A := by
      intro h
      linarith [h.1]
    simp only [normalized_test_zero_outside r A _ hout, mul_zero, Pi.zero_apply]
  · have hout : x ∉ Set.Icc (-(A : ℝ)) A := by
      intro h
      linarith [h.2]
    simp only [normalized_test_zero_outside r A _ hout, zero_mul, Pi.zero_apply]

/-- The endpoint case follows from the actual support calculation. -/
theorem correlation_upper_endpoint_zero (r : DilationRealization) (A : Set.Ici (1 : ℝ)) :
    sourceCorrelation r.secondDerivative A (2 * A) = 0 :=
  correlation_zero_to_right r A _ le_rfl

/-- The supplied global `C¹` correlation and its zero right-hand restriction
force the actual derivative at the endpoint to vanish. -/
theorem correlation_deriv_upper_endpoint_zero (r : DilationRealization)
    (A : Set.Ici (1 : ℝ)) :
    deriv (sourceCorrelation r.secondDerivative A) (2 * A) = 0 := by
  have hc := ((contDiff_one_iff_deriv.mp (r.correlation_regular A A.property)).1
    (2 * (A : ℝ))).hasDerivAt.hasDerivWithinAt (s := Set.Ici (2 * (A : ℝ)))
  have hz : HasDerivWithinAt (sourceCorrelation r.secondDerivative A) 0
      (Set.Ici (2 * (A : ℝ))) (2 * A) :=
    (hasDerivWithinAt_const (2 * (A : ℝ)) (Set.Ici (2 * (A : ℝ))) (0 : ℝ)).congr
      (fun t ht ↦ correlation_zero_to_right r A t ht)
      (correlation_upper_endpoint_zero r A)
  exact (uniqueDiffWithinAt_Ici (2 * (A : ℝ))).eq_deriv _ hc hz

/-- The source weight also vanishes at the upper endpoint, including its derivative term. -/
theorem weight_upper_endpoint_zero (r : DilationRealization) (A : Set.Ici (1 : ℝ)) :
    sourceWeight r.secondDerivative A (2 * A) = 0 := by
  simp [sourceWeight, correlation_upper_endpoint_zero, correlation_deriv_upper_endpoint_zero]

/-- The upper potential endpoint vanishes for the genuine supplied realization. -/
theorem potential_upper_endpoint_zero (r : DilationRealization) (A : Set.Ici (1 : ℝ)) :
    potential r A (2 * A) = 0 := by
  simp [potential, correlation_upper_endpoint_zero]

/-- The exact lower exponential coefficient; it is never replaced by a rounded constant. -/
theorem exp_lower_endpoint : Real.exp (-lowerEndpoint / 2) = (Real.sqrt 2)⁻¹ := by
  rw [neg_div, Real.exp_neg, Real.exp_half, lowerEndpoint, Real.exp_log (by norm_num)]

/-- Exact action of the source endpoint reflection on its exponential weight. -/
theorem reflected_exponential (A : Set.Ici (1 : ℝ)) (t : ℝ) :
    Real.exp (-sourceReflection A t / 2) =
      Real.exp (-(A : ℝ)) * (Real.sqrt 2)⁻¹ * Real.exp (t / 2) := by
  have h : -sourceReflection A t / 2 = -(A : ℝ) + (-lowerEndpoint / 2) + t / 2 := by
    dsimp [sourceReflection, intervalReflection]
    ring
  rw [h, Real.exp_add, Real.exp_add, exp_lower_endpoint]

/-- Differentiation uses the source correlation's declared `C¹` regularity. -/
theorem potential_hasDerivAt (r : DilationRealization) (A : Set.Ici (1 : ℝ)) (t : ℝ) :
    HasDerivAt (potential r A) (sourceWeight r.secondDerivative A t) t := by
  have hc := ((contDiff_one_iff_deriv.mp (r.correlation_regular A A.property)).1 t).hasDerivAt
  have he := (((hasDerivAt_id t).neg).div_const 2).exp
  convert! he.mul hc using 1
  simp only [sourceWeight, Pi.neg_apply, id_eq]
  ring

/-- Reflection has derivative `-1`; it reverses the derivative parity. -/
theorem reflection_hasDerivAt (A : Set.Ici (1 : ℝ)) (t : ℝ) :
    HasDerivAt (sourceReflection A) (-1) t := by
  convert! (hasDerivAt_id t).const_sub (lowerEndpoint + 2 * (A : ℝ)) using 1

/-- The odd potential differentiates to the even weight, including its sign. -/
theorem odd_potential_hasDerivAt (r : DilationRealization) (A : Set.Ici (1 : ℝ)) (t : ℝ) :
    HasDerivAt (oddPart lowerEndpoint (2 * A) (potential r A)) (evenWeight r A t) t := by
  have hcomp := (potential_hasDerivAt r A (sourceReflection A t)).comp t
    (reflection_hasDerivAt A t)
  convert! ((potential_hasDerivAt r A t).sub hcomp).div_const 2 using 1
  simp only [evenWeight, evenPart, sourceReflection]
  ring

/-- The even potential differentiates to the odd weight; neither sector is discarded. -/
theorem even_potential_hasDerivAt (r : DilationRealization) (A : Set.Ici (1 : ℝ)) (t : ℝ) :
    HasDerivAt (evenPart lowerEndpoint (2 * A) (potential r A)) (oddWeight r A t) t := by
  have hcomp := (potential_hasDerivAt r A (sourceReflection A t)).comp t
    (reflection_hasDerivAt A t)
  convert! ((potential_hasDerivAt r A t).add hcomp).div_const 2 using 1
  simp only [oddWeight, oddPart, sourceReflection]
  ring

/-- The source weight is continuous; this supplies its finite-interval integrability. -/
theorem weight_continuous (r : DilationRealization) (A : Set.Ici (1 : ℝ)) :
    Continuous (sourceWeight r.secondDerivative A) := by
  have hc := (r.correlation_regular A A.property).continuous
  have hd := (contDiff_one_iff_deriv.mp (r.correlation_regular A A.property)).2
  exact ((continuous_id.neg.div_const 2).rexp).mul (hd.sub (hc.div_const 2))

/-- The even weight is continuous on the exact finite interval and beyond. -/
theorem even_weight_continuous (r : DilationRealization) (A : Set.Ici (1 : ℝ)) :
    Continuous (evenWeight r A) := by
  have hr : Continuous (intervalReflection lowerEndpoint (2 * (A : ℝ))) :=
    continuous_const.sub continuous_id
  exact ((weight_continuous r A).add ((weight_continuous r A).comp hr)).div_const 2

/-- The odd weight is continuous; no extra unproved integrability premise is needed here. -/
theorem odd_weight_continuous (r : DilationRealization) (A : Set.Ici (1 : ℝ)) :
    Continuous (oddWeight r A) := by
  have hr : Continuous (intervalReflection lowerEndpoint (2 * (A : ℝ))) :=
    continuous_const.sub continuous_id
  exact ((weight_continuous r A).sub ((weight_continuous r A).comp hr)).div_const 2

/-- The even weight has the lower-endpoint moment, rather than a zero moment. -/
theorem even_weight_zeroth_moment (r : DilationRealization) (A : Set.Ici (1 : ℝ)) :
    (∫ t in lowerEndpoint..2 * A, evenWeight r A t) = -potential r A lowerEndpoint := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ ↦ odd_potential_hasDerivAt r A t)
    ((even_weight_continuous r A).intervalIntegrable _ _)]
  simp only [oddPart, intervalReflection, add_sub_cancel_left, add_sub_cancel_right,
    potential_upper_endpoint_zero]
  ring

/-- The odd weight's zeroth moment is zero, without claiming either signed pairing is positive. -/
theorem odd_weight_zeroth_moment (r : DilationRealization) (A : Set.Ici (1 : ℝ)) :
    (∫ t in lowerEndpoint..2 * A, oddWeight r A t) = 0 := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ ↦ even_potential_hasDerivAt r A t)
    ((odd_weight_continuous r A).intervalIntegrable _ _)]
  simp only [evenPart, intervalReflection, add_sub_cancel_left, add_sub_cancel_right,
    potential_upper_endpoint_zero]
  ring

/-- The prime-two correction is exactly four times the even weight moment.
This identity accounts for the atom; it does not permit deleting it. -/
theorem prime_two_boundary_eq_four_even_moment (r : DilationRealization)
    (A : Set.Ici (1 : ℝ)) :
    primeTwoBoundary r.secondDerivative A =
      4 * (∫ t in lowerEndpoint..2 * A, evenWeight r A t) := by
  rw [even_weight_zeroth_moment]
  have hs : (Real.sqrt (2 : ℝ)) ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  have hn : Real.sqrt (2 : ℝ) ≠ 0 := ne_of_gt (Real.sqrt_pos.2 (by norm_num))
  dsimp [primeTwoBoundary, potential]
  rw [exp_lower_endpoint]
  field_simp
  rw [hs]
  ring

/-- Vanishing of the even moment requires exactly the endpoint-correlation
vanishing that the source's prime-two correction already requires. -/
theorem even_moment_zero_iff_endpoint_zero (r : DilationRealization)
    (A : Set.Ici (1 : ℝ)) :
    (∫ t in lowerEndpoint..2 * A, evenWeight r A t) = 0 ↔
      sourceCorrelation r.secondDerivative A lowerEndpoint = 0 := by
  rw [even_weight_zeroth_moment]
  simp [potential, Real.exp_ne_zero]

/-- Explicit integrability assumptions for all four exact error/weight sector products.
The object supplies no realization witness or signed lower-bound theorem. -/
structure SectorIntegrability (r : DilationRealization) (A : Set.Ici (1 : ℝ)) : Prop where
  /-- The retained even/even product is integrable. -/
  even_even : IntervalIntegrable (fun t ↦
    evenPart lowerEndpoint (2 * A) errorProfile t * evenWeight r A t)
    volume lowerEndpoint (2 * A)
  /-- Integrability justifies the even/odd cross-term calculation. -/
  even_odd : IntervalIntegrable (fun t ↦
    evenPart lowerEndpoint (2 * A) errorProfile t * oddWeight r A t)
    volume lowerEndpoint (2 * A)
  /-- Integrability justifies the odd/even cross-term calculation. -/
  odd_even : IntervalIntegrable (fun t ↦
    oddPart lowerEndpoint (2 * A) errorProfile t * evenWeight r A t)
    volume lowerEndpoint (2 * A)
  /-- The retained odd/odd product is integrable. -/
  odd_odd : IntervalIntegrable (fun t ↦
    oddPart lowerEndpoint (2 * A) errorProfile t * oddWeight r A t)
    volume lowerEndpoint (2 * A)

/-- Exact integration of the anchored even sector. The constant `+2` comes
from `E(2⁻) = -2`; it is not an arbitrary centering or an optimization parameter. -/
theorem centered_even_integral (r : DilationRealization) (A : Set.Ici (1 : ℝ))
    (hsector : SectorIntegrability r A) :
    (∫ t in lowerEndpoint..2 * A,
      (evenPart lowerEndpoint (2 * A) errorProfile t + 2) * evenWeight r A t) =
      (∫ t in lowerEndpoint..2 * A,
        evenPart lowerEndpoint (2 * A) errorProfile t * evenWeight r A t) +
      2 * (∫ t in lowerEndpoint..2 * A, evenWeight r A t) := by
  calc
    _ = ∫ t in lowerEndpoint..2 * A,
        evenPart lowerEndpoint (2 * A) errorProfile t * evenWeight r A t +
          2 * evenWeight r A t := by
      apply intervalIntegral.integral_congr
      intro t _
      ring
    _ = _ := by
      rw [intervalIntegral.integral_add hsector.even_even
        (((even_weight_continuous r A).intervalIntegrable _ _).const_mul 2),
        intervalIntegral.integral_const_mul]

/-- A new general-radius reduction for the original signed pairing. Both sectors
remain present, and the prime-two boundary is exactly the `+2` even-sector shift.
This identity alone does not bound either term or their sum. -/
theorem centered_signed_pairing_with_boundary (r : DilationRealization)
    (A : Set.Ici (1 : ℝ)) (hsector : SectorIntegrability r A) :
    primeTwoBoundary r.secondDerivative A + 2 * signedPairing r.secondDerivative A =
      2 * (∫ t in lowerEndpoint..2 * A,
        (evenPart lowerEndpoint (2 * A) errorProfile t + 2) * evenWeight r A t) +
      2 * (∫ t in lowerEndpoint..2 * A,
        oddPart lowerEndpoint (2 * A) errorProfile t * oddWeight r A t) := by
  have hsplit := signed_pairing_reflection_decomposition r A
    hsector.even_even hsector.even_odd hsector.odd_even hsector.odd_odd
  rw [centered_even_integral r A hsector, prime_two_boundary_eq_four_even_moment, hsplit]
  dsimp [evenWeight, oddWeight]
  ring

/-- The exactly centered two-sector expression, including the subtraction that
recovers the original signed pairing rather than a different boundedness target. -/
def centeredSignedValue (r : DilationRealization) (A : Set.Ici (1 : ℝ)) : ℝ :=
  (∫ t in lowerEndpoint..2 * A,
    (evenPart lowerEndpoint (2 * A) errorProfile t + 2) * evenWeight r A t) +
  (∫ t in lowerEndpoint..2 * A,
    oddPart lowerEndpoint (2 * A) errorProfile t * oddWeight r A t) -
  primeTwoBoundary r.secondDerivative A / 2

/-- The reduction preserves the original signed arithmetic quantity exactly. -/
theorem signed_pairing_eq_centered_value (r : DilationRealization) (A : Set.Ici (1 : ℝ))
    (hsector : SectorIntegrability r A) :
    signedPairing r.secondDerivative A = centeredSignedValue r A := by
  have h := centered_signed_pairing_with_boundary r A hsector
  unfold centeredSignedValue
  linarith

/-- The precise remaining all-radius signed-estimate obligation. No witness for
this proposition is constructed; the two signed sectors and prime-two term remain. -/
def CenteredSignedEstimate (r : DilationRealization) : Prop :=
  ∃ B : ℝ, 0 ≤ B ∧ ∀ A : Set.Ici (1 : ℝ), -B ≤ centeredSignedValue r A

/-- With the explicit sector-integrability obligations discharged, the new
estimate is equivalent to the unchanged source target, not a weaker surrogate. -/
theorem centered_estimate_iff_source_bound (r : DilationRealization)
    (hsector : ∀ A : Set.Ici (1 : ℝ), SectorIntegrability r A) :
    CenteredSignedEstimate r ↔ UniformSignedLowerBound r := by
  constructor
  · rintro ⟨B, hB, h⟩
    refine ⟨B, hB, fun A hA ↦ ?_⟩
    simpa only [← signed_pairing_eq_centered_value r ⟨A, hA⟩ (hsector ⟨A, hA⟩)] using
      h ⟨A, hA⟩
  · rintro ⟨B, hB, h⟩
    refine ⟨B, hB, fun A ↦ ?_⟩
    rw [← signed_pairing_eq_centered_value r A (hsector A)]
    exact h A A.property

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.WeightReflection
