# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variant38ddfea8b0873cfde47e51939e6c1593cefb2d6d7e09d89ac14d8d42c6bb3b49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bf8fa33748adcdf1c87659b0310c41297a35eda` · SHA-256 `38ddfea8b0873cfde47e51939e6c1593cefb2d6d7e09d89ac14d8d42c6bb3b49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Prototype

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourcePhaseMassFTC

#check @criticalPrimeTest_sub_one_eq_phase_prefix
#print axioms criticalPrimeTest_sub_one_eq_phase_prefix

#check @positive_phase_prefix_le_mass
#print axioms positive_phase_prefix_le_mass

#check @positiveMass_ge_criticalPrimeTest_sub_one
#print axioms positiveMass_ge_criticalPrimeTest_sub_one

#check @criticalPrimeTest_early_point_ge
#print axioms criticalPrimeTest_early_point_ge

#check @positiveMass_ge_early_exponential
#print axioms positiveMass_ge_early_exponential

#check @negativeMass_ge_early_exponential
#print axioms negativeMass_ge_early_exponential

#check @criticalPrimeTest_variation_ge_early_exponential
#print axioms criticalPrimeTest_variation_ge_early_exponential

#check @pairedTailTest_variation_ge_early_exponential
#print axioms pairedTailTest_variation_ge_early_exponential

#check @positiveMass_ge_linear
#print axioms positiveMass_ge_linear

#check @positiveMass_not_eventually_bounded
#print axioms positiveMass_not_eventually_bounded

```
