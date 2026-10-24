# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Audit.Variantc99dcede63c5ab42534f5ed93612b53c1fe1edd2d9d1e2928f171e19da85a05c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31730cc0892b79cde57363e8408851a073026f6a` · SHA-256 `ae5e31eb512e51116544f5c385e2b6a68fa7f6b96647a73a68947b25767add72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Polarization.Variant7c2abb5f2153ca8b07349fe794c294b2845117b21e1870fd21b1a5d44ecd839b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c2abb5f2153ca8b07349fe794c294b2845117b21e1870fd21b1a5d44ecd839b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Polarization.Variant7c2abb5f2153ca8b07349fe794c294b2845117b21e1870fd21b1a5d44ecd839b","mathematical_subject":"Analysis.Integration","original_sha256":"7c2abb5f2153ca8b07349fe794c294b2845117b21e1870fd21b1a5d44ecd839b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-generic/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Reflection.Polarization
import FormalResearch.MathematicalTooling.Reflection.Interval
import FormalResearch.MathematicalTooling.Coverage.Finite

namespace GRWTSK.Analysis.RealAnalysis.Integration.Polarization.Variant7c2abb5f2153ca8b07349fe794c294b2845117b21e1870fd21b1a5d44ecd839b

#print axioms FormalResearch.MathematicalTooling.Reflection.real_inner_eq_signed_norm_square
#print axioms FormalResearch.MathematicalTooling.Reflection.nonnegative_sectors_negative_difference
#print axioms FormalResearch.MathematicalTooling.Reflection.signed_difference_has_no_universal_lower_bound
#print axioms FormalResearch.MathematicalTooling.Reflection.intervalReflection
#print axioms FormalResearch.MathematicalTooling.Reflection.interval_reflection_involutive
#print axioms FormalResearch.MathematicalTooling.Reflection.interval_reflection_mem_Icc_iff
#print axioms FormalResearch.MathematicalTooling.Reflection.evenPart
#print axioms FormalResearch.MathematicalTooling.Reflection.oddPart
#print axioms FormalResearch.MathematicalTooling.Reflection.even_add_odd
#print axioms FormalResearch.MathematicalTooling.Reflection.even_part_reflection
#print axioms FormalResearch.MathematicalTooling.Reflection.odd_part_reflection
#print axioms FormalResearch.MathematicalTooling.Reflection.integral_reflection
#print axioms FormalResearch.MathematicalTooling.Reflection.integral_eq_zero_of_reflection_odd
#print axioms FormalResearch.MathematicalTooling.Reflection.integral_even_mul_odd
#print axioms FormalResearch.MathematicalTooling.Reflection.integral_odd_mul_even
#print axioms FormalResearch.MathematicalTooling.Reflection.integral_product_eq_signed_squares
#print axioms FormalResearch.MathematicalTooling.Reflection.integral_product_eq_even_add_odd
#print axioms FormalResearch.MathematicalTooling.Coverage.forall_on_of_finite_cover
#print axioms FormalResearch.MathematicalTooling.Coverage.forall_on_of_finite_cover_and_tail
#print axioms FormalResearch.MathematicalTooling.Coverage.finite_range_does_not_imply_ray
#print axioms FormalResearch.MathematicalTooling.Coverage.endpoints_do_not_cover_interval
```
