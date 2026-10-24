# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimitiveWeilApi.Varianteb33c0e18e0239b66829f5f4e4456f7587821cf8aba50e519024716559bc1b17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cc9d92d411a0fdfd3a7c6e75d3dd3bc512677e3` · SHA-256 `eb33c0e18e0239b66829f5f4e4456f7587821cf8aba50e519024716559bc1b17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Core.DirichletGRH.MathlibLFunctionAdapters
import Surface.Core.DirichletGRH.FunctionalEquation
import Surface.Core.ConductorThreeCompletedL
import Surface.Core.ComplexAnalysis.LogDerivativeResidue
import Mathlib.Analysis.Calculus.ContDiff.Convolution
import Mathlib.Analysis.Fourier.FourierTransform
import Mathlib.Analysis.MellinTransform
import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier

/-!
# Primitive-Weil API probes

Compile-time probes for the pinned mathlib and Surface normalizations used by
`PrimitiveWeilPositivity_DESIGN.md`.  This file introduces no declaration and
asserts no positivity, explicit-formula, RH, or GRH theorem.
-/

#check DirichletCharacter.gammaFactor
#check DirichletCharacter.completedLFunction
#check DirichletCharacter.completedLFunction_modOne_eq
#check DirichletCharacter.LFunction_modOne_eq
#check DirichletCharacter.LFunction_eq_completed_div_gammaFactor
#check DirichletCharacter.IsPrimitive.completedLFunction_one_sub
#check DirichletCharacter.rootNumber
#check Surface.Core.DirichletGRH.canonicalCompletedLFunction
#check Surface.Core.DirichletGRH.poleRemovedLFunction
#check Surface.Core.DirichletGRH.LFunction_zero_reflect
#check Surface.Core.DirichletGRH.primitive_LFunction_reflects_zero

#check Complex.Gammaℝ_ne_zero_of_re_pos
#check completedRiemannZeta₀
#check differentiable_completedZeta₀
#check completedRiemannZeta₀_one_sub
#check completedRiemannZeta_eq
#check RiemannHypothesis
#check ArithmeticFunction.vonMangoldt
#check mellin
#check VectorFourier.fourierIntegral
#check Real.fourierChar
#check HasCompactSupport.toSchwartzMap
#check SchwartzMap.decay
#check SchwartzMap.fourier_coe
#check Real.fourier_eq'

#check MeasureTheory.convolution
#check ContinuousLinearMap.mul
#check MeasureTheory.convolution_def
#check MeasureTheory.support_convolution_subset
#check HasCompactSupport.convolution
#check HasCompactSupport.of_support_subset_isCompact
#check HasCompactSupport.contDiff_convolution_right
#check ContDiff.neg
#check MeasureTheory.integral_add_right_eq_self
#check MeasureTheory.integral_neg_eq_self
#check RCLike.conj_mul
#check RCLike.conj_conj

#check MeromorphicOn.divisor
#check MeromorphicOn.divisor_apply
#check MeromorphicOn.divisor_support_finite_of_subset
#check AnalyticAt.analyticOrderAt_eq_natCast
#check AnalyticAt.tendsto_mul_logDeriv_simple_zero
#check meromorphicOrderAt_eq_int_iff
#check Complex.integral_boundary_rect_eq_zero_of_differentiableOn
#check Complex.integral_boundary_rect_eq_zero_of_continuousOn_of_differentiableOn
#check DirichletCharacter.LFunction_ne_zero_of_one_le_re
#check Surface.Core.ConductorThreeCompletedL.conductorThreeXiDivisor
```
