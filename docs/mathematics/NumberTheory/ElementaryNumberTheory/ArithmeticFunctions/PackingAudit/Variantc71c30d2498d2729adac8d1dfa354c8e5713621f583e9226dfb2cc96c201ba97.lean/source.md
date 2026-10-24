# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PackingAudit.Variantc71c30d2498d2729adac8d1dfa354c8e5713621f583e9226dfb2cc96c201ba97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `757fa7cede2becb367fec928760f00c1838a0aef` · SHA-256 `18acdeb54fe51f2ffd546fbf0679a9b76c089ef80b5e31952f279604e0190479`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DivisibilityPacking.Variant56e7fd2b1f30c757308a48de1347a264ac6be31a229f5f1df7d1d1b2da3f28fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"56e7fd2b1f30c757308a48de1347a264ac6be31a229f5f1df7d1d1b2da3f28fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.DivisibilityPacking.Variant56e7fd2b1f30c757308a48de1347a264ac6be31a229f5f1df7d1d1b2da3f28fa","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"56e7fd2b1f30c757308a48de1347a264ac6be31a229f5f1df7d1d1b2da3f28fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/packing-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SUCAS.DivisibilityPacking

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DivisibilityPacking.Variant56e7fd2b1f30c757308a48de1347a264ac6be31a229f5f1df7d1d1b2da3f28fa

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
