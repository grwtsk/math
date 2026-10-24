# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourcePeanoWindowAndMassAudit.Variante28af4eb1ce0a2124f951badfeabdc5088eb53f6842f15e4b8099cf7fb35648c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7853e6d857d88a59be011f813cbf876fed279a4` · SHA-256 `e28af4eb1ce0a2124f951badfeabdc5088eb53f6842f15e4b8099cf7fb35648c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePeanoOneSidedMass

set_option linter.hashCommand false
set_option pp.all true
set_option pp.maxSteps 10000000

open FormalResearch.RiemannHypothesis.SourcePeanoPositiveWindow
open FormalResearch.RiemannHypothesis.SourcePeanoOneSidedMass

#check weightedCorrelation_deriv_formula
#print axioms weightedCorrelation_deriv_formula
#print weightedCorrelation_deriv_formula
#check weightedCorrelation_second_deriv_formula
#print axioms weightedCorrelation_second_deriv_formula
#print weightedCorrelation_second_deriv_formula
#check weightedCorrelation_second_deriv_window
#print axioms weightedCorrelation_second_deriv_window
#print weightedCorrelation_second_deriv_window
#check criticalOneSidedMass
#print axioms criticalOneSidedMass
#print criticalOneSidedMass
#check actualOneSidedPairing
#print axioms actualOneSidedPairing
#print actualOneSidedPairing
#check actualOneSidedPairing_integrable
#print axioms actualOneSidedPairing_integrable
#print actualOneSidedPairing_integrable
#check oneSided_window_pointwise
#print axioms oneSided_window_pointwise
#print oneSided_window_pointwise
#check criticalOneSidedMass_window_integrable
#print axioms criticalOneSidedMass_window_integrable
#print criticalOneSidedMass_window_integrable
#check actualOneSidedPairing_dominates_window
#print axioms actualOneSidedPairing_dominates_window
#print actualOneSidedPairing_dominates_window
#check oneSided_spikes_transfer
#print axioms oneSided_spikes_transfer
#print oneSided_spikes_transfer
```
