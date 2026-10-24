# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MobiusNormalizationAPI.Variant0c6b76d07103de10e341fc6aed3d092722795b634eb1d0b44e51f016c663d508

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f9a4083fd300ee19dd5c39e0a46edf886aadc2e` · SHA-256 `0c6b76d07103de10e341fc6aed3d092722795b634eb1d0b44e51f016c663d508`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments
import FormalResearch.RiemannHypothesis.SourceComparison.MertensBoundary
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.LSeries.SumCoeff

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000

#check @ArithmeticFunction.LSeriesSummable_moebius_iff
#print axioms ArithmeticFunction.LSeriesSummable_moebius_iff
#check @ArithmeticFunction.LSeries_zeta_mul_Lseries_moebius
#print axioms ArithmeticFunction.LSeries_zeta_mul_Lseries_moebius
#check @ArithmeticFunction.LSeries_zeta_eq_riemannZeta
#print axioms ArithmeticFunction.LSeries_zeta_eq_riemannZeta
#check @riemannZeta_residue_one
#print axioms riemannZeta_residue_one
#check @LSeries_eq_mul_integral
#print axioms LSeries_eq_mul_integral
#check @ZetaInvBnd
#print axioms ZetaInvBnd
#check @ZetaZeroFree
#print axioms ZetaZeroFree
#check @ZetaNoZerosInBox
#print axioms ZetaNoZerosInBox
#check @MediumPNT
#print axioms MediumPNT
#check @FormalResearch.RiemannHypothesis.SourceComparison.MertensTransport.sum_moebius_mul_eq
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.MertensTransport.sum_moebius_mul_eq
#check @FormalResearch.RiemannHypothesis.SourceComparison.MertensBoundary.mertensSum_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.MertensBoundary.mertensSum_abs_le
#check @FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_moment_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_moment_integrable
```
