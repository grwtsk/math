# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExactPrint.Variant5895dff60e35b3cec463a0a3a80abecb7b83af0fdc69c275aa5d4f9be45512ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a669bc35cfdfd949155cd4fc32cbb9d0c351f659` · SHA-256 `5895dff60e35b3cec463a0a3a80abecb7b83af0fdc69c275aa5d4f9be45512ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceRegularScaleProfiles

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceRegularScaleProfiles

#print RegularScale
#print regularScale_of_noninteger
#print cutoffs_eventually_eq
#print inventory_coefficients_eventually_eq
#print mangoldtState
#print centeredForwardState
#print reflectedState
#print mangoldtState_eq_mangoldtAt
#print centeredForwardState_eq_centeredForwardAt
#print reflectedState_eq_reflectedMobiusAt
#print mangoldtState_actual
#print centeredForwardState_actual
#print reflectedState_actual
#print mangoldtDerivative
#print centeredForwardDerivative
#print reflectedDerivative
#print mangoldtState_hasDerivAt
#print centeredForwardState_hasDerivAt
#print reflectedState_hasDerivAt
#print mangoldtState_contDiffAt
#print centeredForwardState_contDiffAt
#print reflectedState_contDiffAt
#print mangoldtState_deriv
#print centeredForwardState_deriv
#print reflectedState_deriv
#print sourceInteraction
#print interactionDerivative
#print sourceInteraction_hasDerivAt
#print sourceInteraction_deriv
#print sourceInteraction_contDiffAt
#print sourceInteraction_actual
#print not_regularScale_one
#print reflectedAtomInteraction
#print reflectedAtomDerivative
#print reflectedAtomInteraction_source
#print reflectedAtomInteraction_hasDerivAt
#print centeredDiagonalState
#print centeredDiagonalDerivative
#print centeredDiagonalState_eq_centeredDiagonalAt
#print centeredDiagonalState_actual
#print centeredDiagonalState_hasDerivAt
#print centeredDeletedDiagonal_hasDerivAt
#print centeredDeletedDiagonal_deriv
#print covarianceHalfState
#print covarianceHalfDerivative
#print covarianceHalfState_hasDerivAt
#print covarianceHalfState_actual
#print covarianceOperator_half_hasDerivAt
#print compensatedState
#print compensatedState_actual
#print compensatedState_hasDerivAt_of_mainTerm
#print not_regularScale_of_square_nat
#print not_regularScale_of_upper_nat
#print regularScale_iff_no_cutoff_event
#print reflectedAtomInteraction_contDiffAt
#print centeredDiagonalState_contDiffAt
#print centeredDeletedDiagonal_contDiffAt
#print covarianceHalfState_contDiffAt
#print covarianceOperator_half_contDiffAt
#print compensatedState_eq_signed_readout
#print compensatedState_contDiffAt_of_mainTerm
```
