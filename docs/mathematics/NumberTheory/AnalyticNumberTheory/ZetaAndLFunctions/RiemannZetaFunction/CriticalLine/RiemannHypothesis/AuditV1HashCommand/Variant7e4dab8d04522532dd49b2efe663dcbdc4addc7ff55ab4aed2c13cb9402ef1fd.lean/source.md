# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AuditV1HashCommand.Variant7e4dab8d04522532dd49b2efe663dcbdc4addc7ff55ab4aed2c13cb9402ef1fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65ca47878fe44b06f67d4d3476d5ee7d3e7c55fa` · SHA-256 `7e4dab8d04522532dd49b2efe663dcbdc4addc7ff55ab4aed2c13cb9402ef1fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceScaleDerivative

set_option linter.style.header false
set_option linter.style.hashCommand false
open FormalResearch.RiemannHypothesis.SourceScaleDerivative

#check normalizationDerivative
#print axioms normalizationDerivative

#check sourceNormalization_hasDerivAt
#print axioms sourceNormalization_hasDerivAt

#check sourceNormalization_deriv
#print axioms sourceNormalization_deriv

#check scaleAmplitude
#print axioms scaleAmplitude

#check scaleAmplitude_eq
#print axioms scaleAmplitude_eq

#check scaleProfile_eq_amplitude
#print axioms scaleProfile_eq_amplitude

#check scaleAmplitude_hasDerivAt
#print axioms scaleAmplitude_hasDerivAt

#check scaleDerivative
#print axioms scaleDerivative

#check scaleDerivative_eq_actual
#print axioms scaleDerivative_eq_actual

#check scaleProfile_hasDerivAt
#print axioms scaleProfile_hasDerivAt

#check normalizedSource_hasDerivAt
#print axioms normalizedSource_hasDerivAt

#check sourceBump_traces_zero_of_le_abs
#print axioms sourceBump_traces_zero_of_le_abs

#check scaleDerivative_zero_of_le_abs
#print axioms scaleDerivative_zero_of_le_abs

#check scaleDerivative_continuousAt_joint
#print axioms scaleDerivative_continuousAt_joint

#check scaleDerivative_continuousOn_joint
#print axioms scaleDerivative_continuousOn_joint

#check scaleDerivative_continuous
#print axioms scaleDerivative_continuous

#check scaleDerivative_hasCompactSupport
#print axioms scaleDerivative_hasCompactSupport

#check scaleDerivative_memLp
#print axioms scaleDerivative_memLp

#check scaleDerivativeL2
#print axioms scaleDerivativeL2

#check scaleDerivativeL2_coe_ae
#print axioms scaleDerivativeL2_coe_ae

#check local_source_derivative_zero
#print axioms local_source_derivative_zero

#check local_scaleDerivative_bound
#print axioms local_scaleDerivative_bound

#check scaleDerivativeState
#print axioms scaleDerivativeState

#check scaleDerivativeState_eq
#print axioms scaleDerivativeState_eq

#check scaleDerivativeState_coe_ae
#print axioms scaleDerivativeState_coe_ae

#check scaleDerivativeState_norm_sub_sq
#print axioms scaleDerivativeState_norm_sub_sq

#check scaleDerivative_differenceIntegral_continuousOn
#print axioms scaleDerivative_differenceIntegral_continuousOn

#check scaleDerivativeState_continuousAt
#print axioms scaleDerivativeState_continuousAt

#check scaleDerivativeState_continuousOn
#print axioms scaleDerivativeState_continuousOn

#check scaleRemainder
#print axioms scaleRemainder

#check scaleRemainder_sq_tendsto
#print axioms scaleRemainder_sq_tendsto

#check local_scaleRemainder_bound
#print axioms local_scaleRemainder_bound

#check local_scaleRemainder_zero
#print axioms local_scaleRemainder_zero

#check scaleRemainderL2
#print axioms scaleRemainderL2

#check scaleRemainderL2_coe_ae
#print axioms scaleRemainderL2_coe_ae

#check scaleRemainderL2_norm_sq
#print axioms scaleRemainderL2_norm_sq

#check scaleRemainder_energy_tendsto
#print axioms scaleRemainder_energy_tendsto

#check originalSourceState_hasDerivAt
#print axioms originalSourceState_hasDerivAt

#check originalSourceState_deriv
#print axioms originalSourceState_deriv

#check originalSourceState_contDiffOn
#print axioms originalSourceState_contDiffOn

#check originalSourceState_contDiffAt
#print axioms originalSourceState_contDiffAt

#check orbitAtom_hasDerivAt
#print axioms orbitAtom_hasDerivAt

#check orbitAtom_contDiffOn
#print axioms orbitAtom_contDiffOn

#check finiteProfile_hasDerivAt
#print axioms finiteProfile_hasDerivAt

#check finiteProfile_contDiffOn
#print axioms finiteProfile_contDiffOn

#check scaleDerivative_one_at_zero
#print axioms scaleDerivative_one_at_zero

#check scaleDerivative_one_at_zero_pos
#print axioms scaleDerivative_one_at_zero_pos

#check spatialSourceDerivative_one_at_zero
#print axioms spatialSourceDerivative_one_at_zero

#check scaleDerivative_one_ne_spatial
#print axioms scaleDerivative_one_ne_spatial

```
