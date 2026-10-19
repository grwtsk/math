import Surface.Core.DirichletGRH.MathlibLFunctionAdapters
import Surface.Core.DirichletGRH.FunctionalEquation
import Surface.Core.ConductorThreeCompletedL
import Mathlib.Analysis.Calculus.ContDiff.Convolution
import Mathlib.Analysis.Fourier.FourierTransform
import Mathlib.Analysis.MellinTransform

/-!
# Primitive-Weil API probes

Compile-time probes for the pinned mathlib and Surface normalizations used by
`PrimitiveWeilPositivity_DESIGN.md`.  This file introduces no declaration and
asserts no positivity, explicit-formula, RH, or GRH theorem.
-/

#check DirichletCharacter.gammaFactor
#check DirichletCharacter.completedLFunction
#check DirichletCharacter.LFunction_eq_completed_div_gammaFactor
#check DirichletCharacter.IsPrimitive.completedLFunction_one_sub
#check DirichletCharacter.rootNumber
#check Surface.Core.DirichletGRH.canonicalCompletedLFunction
#check Surface.Core.DirichletGRH.poleRemovedLFunction
#check Surface.Core.DirichletGRH.LFunction_zero_reflect
#check Surface.Core.DirichletGRH.primitive_LFunction_reflects_zero

#check Complex.Gammaℝ_ne_zero_of_re_pos
#check mellin
#check VectorFourier.fourierIntegral
#check Real.fourierChar

#check MeasureTheory.convolution
#check ContinuousLinearMap.mul
#check MeasureTheory.convolution_def
#check MeasureTheory.support_convolution_subset
#check HasCompactSupport.convolution
#check HasCompactSupport.of_support_subset_isCompact
#check HasCompactSupport.contDiff_convolution_right
#check MeasureTheory.integral_add_right_eq_self
#check MeasureTheory.integral_neg_eq_self

#check MeromorphicOn.divisor
#check Surface.Core.ConductorThreeCompletedL.conductorThreeXiDivisor
