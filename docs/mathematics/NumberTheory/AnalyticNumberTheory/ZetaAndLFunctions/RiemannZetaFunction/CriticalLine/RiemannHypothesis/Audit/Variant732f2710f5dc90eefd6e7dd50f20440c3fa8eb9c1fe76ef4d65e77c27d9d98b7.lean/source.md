# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variant732f2710f5dc90eefd6e7dd50f20440c3fa8eb9c1fe76ef4d65e77c27d9d98b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a031d17bb9b97550332c381b1d8c6d38f049435` · SHA-256 `732f2710f5dc90eefd6e7dd50f20440c3fa8eb9c1fe76ef4d65e77c27d9d98b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePairedPrimeWork

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourcePairedPrimeWork

#check positiveSlope
#print axioms positiveSlope
#check negativeSlope
#print axioms negativeSlope
#check positiveMass
#print axioms positiveMass
#check negativeMass
#print axioms negativeMass
#check positiveSlopeWork
#print axioms positiveSlopeWork
#check negativeSlopeWork
#print axioms negativeSlopeWork
#check centeredPositiveWork
#print axioms centeredPositiveWork
#check centeredNegativeWork
#print axioms centeredNegativeWork
#check positiveSlope_nonneg
#print axioms positiveSlope_nonneg
#check negativeSlope_nonneg
#print axioms negativeSlope_nonneg
#check slope_difference
#print axioms slope_difference
#check slope_sum
#print axioms slope_sum
#check positiveSlope_continuous
#print axioms positiveSlope_continuous
#check negativeSlope_continuous
#print axioms negativeSlope_continuous
#check positiveSlope_intervalIntegrable
#print axioms positiveSlope_intervalIntegrable
#check negativeSlope_intervalIntegrable
#print axioms negativeSlope_intervalIntegrable
#check actualPrimeError_intervalIntegrable
#print axioms actualPrimeError_intervalIntegrable
#check positiveSlopeWork_intervalIntegrable
#print axioms positiveSlopeWork_intervalIntegrable
#check negativeSlopeWork_intervalIntegrable
#print axioms negativeSlopeWork_intervalIntegrable
#check positiveMass_nonneg
#print axioms positiveMass_nonneg
#check negativeMass_nonneg
#print axioms negativeMass_nonneg
#check mass_difference
#print axioms mass_difference
#check negativeMass_eq_positive_add_one
#print axioms negativeMass_eq_positive_add_one
#check variation_eq_mass_sum
#print axioms variation_eq_mass_sum
#check variation_eq_twice_positive_add_one
#print axioms variation_eq_twice_positive_add_one
#check criticalSignedWork_eq_paired
#print axioms criticalSignedWork_eq_paired
#check criticalSignedWork_minus_main_eq_paired
#print axioms criticalSignedWork_minus_main_eq_paired
#check firstPrimeMoment_eq_paired
#print axioms firstPrimeMoment_eq_paired
#check firstPrimeStorageSurplus_eq_paired
#print axioms firstPrimeStorageSurplus_eq_paired
#check centeredPositiveWork_eq
#print axioms centeredPositiveWork_eq
#check centeredNegativeWork_eq
#print axioms centeredNegativeWork_eq
#check criticalSignedWork_eq_centered_paired
#print axioms criticalSignedWork_eq_centered_paired
#check criticalSignedWork_minus_main_eq_centered_paired
#print axioms criticalSignedWork_minus_main_eq_centered_paired
```
