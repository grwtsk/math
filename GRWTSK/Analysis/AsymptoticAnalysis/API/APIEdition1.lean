import Mathlib.Analysis.SpecialFunctions.FrullaniIntegral
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic
open MeasureTheory Set Filter
open scoped Topology
#check Convex.norm_image_sub_le_of_norm_hasDerivWithin_le
#check Integrable.mono'
#check ContinuousOn.aestronglyMeasurable
#check integrable_tsum
#check integrable_tsum_of_summable_integral_norm
#check MeasureTheory.integrable_tsum
#check Real.tendsto_exp_atBot
#check Real.tendsto_exp_neg_atTop_nhds_zero
#check Real.tendsto_exp_neg_atTop
#check HasSum.mul_left
#check HasSum.mul_right
#check hasSum_geometric_of_abs_lt_one
#check hasSum_geometric_of_norm_lt_one
#check integral_tsum_of_summable_integral_norm
