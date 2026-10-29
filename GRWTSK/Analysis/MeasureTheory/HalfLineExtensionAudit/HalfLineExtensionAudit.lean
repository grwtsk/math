import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.MeasureTheory.Integral.Bochner.Set

/-!
The genuine zero-extension isometry and restriction contraction between the actual
half-line Hilbert space and full-line L2. No convolution or adjoint is assumed.
-/

set_option autoImplicit false
namespace HalfLineExtensionScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
noncomputable section

abbrev FullH := Lp ℂ 2 (volume : Measure ℝ)

def zeroExtensionFunction (f : H) : ℝ → ℂ := (Ioi (0 : ℝ)).indicator f

theorem zeroExtensionFunction_memLp (f : H) :
    MemLp (zeroExtensionFunction f) 2 volume := by
  exact (memLp_indicator_iff_restrict measurableSet_Ioi).mpr (Lp.memLp f)

def zeroExtensionVector (f : H) : FullH :=
  (zeroExtensionFunction_memLp f).toLp (zeroExtensionFunction f)

theorem zeroExtensionVector_ae (f : H) :
    zeroExtensionVector f =ᵐ[volume] zeroExtensionFunction f :=
  (zeroExtensionFunction_memLp f).coeFn_toLp

theorem zeroExtensionVector_norm (f : H) : ‖zeroExtensionVector f‖ = ‖f‖ := by
  rw [zeroExtensionVector, Lp.norm_toLp, zeroExtensionFunction,
    eLpNorm_indicator_eq_eLpNorm_restrict measurableSet_Ioi]
  rfl

theorem zeroExtensionVector_add (f g : H) :
    zeroExtensionVector (f + g) = zeroExtensionVector f + zeroExtensionVector g := by
  apply Lp.ext
  have hfg := (ae_restrict_iff' measurableSet_Ioi).mp (Lp.coeFn_add f g)
  filter_upwards [zeroExtensionVector_ae (f + g),
    Lp.coeFn_add (zeroExtensionVector f) (zeroExtensionVector g),
    zeroExtensionVector_ae f, zeroExtensionVector_ae g, hfg] with x hsum hout hf hg hfgx
  rw [hsum, hout, Pi.add_apply, hf, hg]
  by_cases hx : x ∈ Ioi (0 : ℝ)
  · simpa only [zeroExtensionFunction, indicator_of_mem hx, Pi.add_apply] using hfgx hx
  · simp only [zeroExtensionFunction, indicator_of_notMem hx, add_zero]

theorem zeroExtensionVector_smul (c : ℂ) (f : H) :
    zeroExtensionVector (c • f) = c • zeroExtensionVector f := by
  apply Lp.ext
  have hcf := (ae_restrict_iff' measurableSet_Ioi).mp (Lp.coeFn_smul c f)
  filter_upwards [zeroExtensionVector_ae (c • f),
    Lp.coeFn_smul c (zeroExtensionVector f), zeroExtensionVector_ae f, hcf]
      with x hsum hout hf hcfx
  rw [hsum, hout, Pi.smul_apply, hf]
  by_cases hx : x ∈ Ioi (0 : ℝ)
  · simpa only [zeroExtensionFunction, indicator_of_mem hx, Pi.smul_apply] using hcfx hx
  · simp only [zeroExtensionFunction, indicator_of_notMem hx, smul_zero]

/-- Zero extension is a complex-linear isometry of the actual AE quotient spaces. -/
def zeroExtension : H →ₗᵢ[ℂ] FullH where
  toFun := zeroExtensionVector
  map_add' := zeroExtensionVector_add
  map_smul' := zeroExtensionVector_smul
  norm_map' := zeroExtensionVector_norm

theorem zeroExtension_ae (f : H) :
    zeroExtension f =ᵐ[volume] (Ioi (0 : ℝ)).indicator f :=
  zeroExtensionVector_ae f

theorem zeroExtension_norm (f : H) : ‖zeroExtension f‖ = ‖f‖ :=
  zeroExtension.norm_map f

theorem zeroExtension_ae_halfLine (f : H) :
    zeroExtension f =ᵐ[halfLineMeasure] f := by
  change zeroExtension f =ᵐ[volume.restrict (Ioi (0 : ℝ))] f
  exact Filter.EventuallyEq.trans (ae_restrict_of_ae (zeroExtension_ae f))
    (indicator_ae_eq_restrict measurableSet_Ioi)

theorem zeroExtension_ae_nonpositive (f : H) :
    zeroExtension f =ᵐ[volume.restrict (Iic (0 : ℝ))] (fun _ => 0) := by
  filter_upwards [ae_restrict_of_ae (zeroExtension_ae f), ae_restrict_mem measurableSet_Iic]
    with x hx hnonpos
  rw [hx, indicator_of_notMem]
  change ¬0 < x
  exact not_lt.mpr (show x ≤ 0 from hnonpos)

/-- Restriction is Mathlib's genuine Lp restriction continuous linear map. -/
def restriction : FullH →L[ℂ] H := LpToLpRestrictCLM ℝ ℂ ℂ volume 2 (Ioi 0)

theorem restriction_ae (f : FullH) : restriction f =ᵐ[halfLineMeasure] f :=
  LpToLpRestrictCLM_coeFn ℂ (Ioi 0) f

theorem restriction_norm_le (f : FullH) : ‖restriction f‖ ≤ ‖f‖ :=
  norm_Lp_toLp_restrict_le (Ioi 0) f

theorem restriction_opNorm_le : ‖restriction‖ ≤ 1 := by
  refine ContinuousLinearMap.opNorm_le_bound restriction (by norm_num) ?_
  intro f
  simpa only [one_mul] using restriction_norm_le f

theorem restriction_zeroExtension (f : H) : restriction (zeroExtension f) = f := by
  exact Lp.ext ((restriction_ae (zeroExtension f)).trans (zeroExtension_ae_halfLine f))

theorem restriction_comp_zeroExtension :
    restriction.comp zeroExtension.toContinuousLinearMap = ContinuousLinearMap.id ℂ H := by
  apply ContinuousLinearMap.ext
  intro f
  exact restriction_zeroExtension f

end
end HalfLineExtensionScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000

#check @HalfLineExtensionScratch.FullH
#print HalfLineExtensionScratch.FullH
#print axioms HalfLineExtensionScratch.FullH

#check @HalfLineExtensionScratch.zeroExtensionFunction
#print HalfLineExtensionScratch.zeroExtensionFunction
#print axioms HalfLineExtensionScratch.zeroExtensionFunction

#check @HalfLineExtensionScratch.zeroExtensionFunction_memLp
#print HalfLineExtensionScratch.zeroExtensionFunction_memLp
#print axioms HalfLineExtensionScratch.zeroExtensionFunction_memLp

#check @HalfLineExtensionScratch.zeroExtensionVector
#print HalfLineExtensionScratch.zeroExtensionVector
#print axioms HalfLineExtensionScratch.zeroExtensionVector

#check @HalfLineExtensionScratch.zeroExtensionVector_ae
#print HalfLineExtensionScratch.zeroExtensionVector_ae
#print axioms HalfLineExtensionScratch.zeroExtensionVector_ae

#check @HalfLineExtensionScratch.zeroExtensionVector_norm
#print HalfLineExtensionScratch.zeroExtensionVector_norm
#print axioms HalfLineExtensionScratch.zeroExtensionVector_norm

#check @HalfLineExtensionScratch.zeroExtensionVector_add
#print HalfLineExtensionScratch.zeroExtensionVector_add
#print axioms HalfLineExtensionScratch.zeroExtensionVector_add

#check @HalfLineExtensionScratch.zeroExtensionVector_smul
#print HalfLineExtensionScratch.zeroExtensionVector_smul
#print axioms HalfLineExtensionScratch.zeroExtensionVector_smul

#check @HalfLineExtensionScratch.zeroExtension
#print HalfLineExtensionScratch.zeroExtension
#print axioms HalfLineExtensionScratch.zeroExtension

#check @HalfLineExtensionScratch.zeroExtension_ae
#print HalfLineExtensionScratch.zeroExtension_ae
#print axioms HalfLineExtensionScratch.zeroExtension_ae

#check @HalfLineExtensionScratch.zeroExtension_norm
#print HalfLineExtensionScratch.zeroExtension_norm
#print axioms HalfLineExtensionScratch.zeroExtension_norm

#check @HalfLineExtensionScratch.zeroExtension_ae_halfLine
#print HalfLineExtensionScratch.zeroExtension_ae_halfLine
#print axioms HalfLineExtensionScratch.zeroExtension_ae_halfLine

#check @HalfLineExtensionScratch.zeroExtension_ae_nonpositive
#print HalfLineExtensionScratch.zeroExtension_ae_nonpositive
#print axioms HalfLineExtensionScratch.zeroExtension_ae_nonpositive

#check @HalfLineExtensionScratch.restriction
#print HalfLineExtensionScratch.restriction
#print axioms HalfLineExtensionScratch.restriction

#check @HalfLineExtensionScratch.restriction_ae
#print HalfLineExtensionScratch.restriction_ae
#print axioms HalfLineExtensionScratch.restriction_ae

#check @HalfLineExtensionScratch.restriction_norm_le
#print HalfLineExtensionScratch.restriction_norm_le
#print axioms HalfLineExtensionScratch.restriction_norm_le

#check @HalfLineExtensionScratch.restriction_opNorm_le
#print HalfLineExtensionScratch.restriction_opNorm_le
#print axioms HalfLineExtensionScratch.restriction_opNorm_le

#check @HalfLineExtensionScratch.restriction_zeroExtension
#print HalfLineExtensionScratch.restriction_zeroExtension
#print axioms HalfLineExtensionScratch.restriction_zeroExtension

#check @HalfLineExtensionScratch.restriction_comp_zeroExtension
#print HalfLineExtensionScratch.restriction_comp_zeroExtension
#print axioms HalfLineExtensionScratch.restriction_comp_zeroExtension
