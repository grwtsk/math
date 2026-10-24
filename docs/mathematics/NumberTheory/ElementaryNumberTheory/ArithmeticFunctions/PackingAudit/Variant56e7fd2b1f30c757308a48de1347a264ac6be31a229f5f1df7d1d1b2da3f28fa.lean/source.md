# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PackingAudit.Variant56e7fd2b1f30c757308a48de1347a264ac6be31a229f5f1df7d1d1b2da3f28fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cedac56cb45bd790b8dfd85ac379f9250600e1c4` · SHA-256 `56e7fd2b1f30c757308a48de1347a264ac6be31a229f5f1df7d1d1b2da3f28fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SUCAS.DivisibilityPacking
#print axioms FormalResearch.SUCAS.DivisibilityPacking.primeSupport
#print axioms FormalResearch.SUCAS.DivisibilityPacking.mem_primeSupport
#print axioms FormalResearch.SUCAS.DivisibilityPacking.Modulus
#print axioms FormalResearch.SUCAS.DivisibilityPacking.modulus_pos
#print axioms FormalResearch.SUCAS.DivisibilityPacking.modulus_neZero
#print axioms FormalResearch.SUCAS.DivisibilityPacking.prime_neZero
#print axioms FormalResearch.SUCAS.DivisibilityPacking.forbiddenResidues
#print axioms FormalResearch.SUCAS.DivisibilityPacking.localForbiddenCount
#print axioms FormalResearch.SUCAS.DivisibilityPacking.localForbiddenCount_le
#print axioms FormalResearch.SUCAS.DivisibilityPacking.localReduction
#print axioms FormalResearch.SUCAS.DivisibilityPacking.RawAdmissible
#print axioms FormalResearch.SUCAS.DivisibilityPacking.RawPacking
#print axioms FormalResearch.SUCAS.DivisibilityPacking.rawPacking_fintype
#print axioms FormalResearch.SUCAS.DivisibilityPacking.primeSupport_pairwise
#print axioms FormalResearch.SUCAS.DivisibilityPacking.residueEquiv
#print axioms FormalResearch.SUCAS.DivisibilityPacking.residueEquiv_apply
#print axioms FormalResearch.SUCAS.DivisibilityPacking.rawPackingEquiv
#print axioms FormalResearch.SUCAS.DivisibilityPacking.rawPacking_card
#print axioms FormalResearch.SUCAS.DivisibilityPacking.rawDensity
#print axioms FormalResearch.SUCAS.DivisibilityPacking.rawPacking_density
#print axioms FormalResearch.SUCAS.DivisibilityPacking.IntegerSurvivor
#print axioms FormalResearch.SUCAS.DivisibilityPacking.integerSurvivor_mono
#print axioms FormalResearch.SUCAS.DivisibilityPacking.integerSurvivor_iff_rawAdmissible
#print axioms FormalResearch.SUCAS.DivisibilityPacking.integerSurvivor_iff_product
#print axioms FormalResearch.SUCAS.DivisibilityPacking.primeSupport_mono
#print axioms FormalResearch.SUCAS.DivisibilityPacking.modulus_dvd_of_le
#print axioms FormalResearch.SUCAS.DivisibilityPacking.reduction
#print axioms FormalResearch.SUCAS.DivisibilityPacking.localReduction_reduction
#print axioms FormalResearch.SUCAS.DivisibilityPacking.rawAdmissible_reduce_iff
#print axioms FormalResearch.SUCAS.DivisibilityPacking.rawAdmissible_of_finer
#print axioms FormalResearch.SUCAS.DivisibilityPacking.singleton_forbidden_count
#print axioms FormalResearch.SUCAS.DivisibilityPacking.singleton_density
#print axioms FormalResearch.SUCAS.DivisibilityPacking.totient_prime_product
#print axioms FormalResearch.SUCAS.DivisibilityPacking.singleton_card_totient
#print axioms FormalResearch.SUCAS.DivisibilityPacking.singleton_density_totient
#print axioms FormalResearch.SUCAS.DivisibilityPacking.twin_forbidden_two
#print axioms FormalResearch.SUCAS.DivisibilityPacking.twin_forbidden_large
#print axioms FormalResearch.SUCAS.DivisibilityPacking.twin_density
#print axioms FormalResearch.SUCAS.DivisibilityPacking.composite_raw_survivor
#print axioms FormalResearch.SUCAS.DivisibilityPacking.visible_prime_raw_excluded
#print axioms FormalResearch.SUCAS.DivisibilityPacking.translated_prime_raw_excluded
#print axioms FormalResearch.SUCAS.DivisibilityPacking.empty_support_card
#print axioms FormalResearch.SUCAS.DivisibilityPacking.twin_five_card

#print FormalResearch.SUCAS.DivisibilityPacking.rawPacking_card
#print FormalResearch.SUCAS.DivisibilityPacking.rawPacking_density
#print FormalResearch.SUCAS.DivisibilityPacking.rawAdmissible_reduce_iff
#print FormalResearch.SUCAS.DivisibilityPacking.twin_density
```
