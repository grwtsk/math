# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.62ae201b98b28fbc7d7623ac2b69a5abe5d78b30f0e17786e0d75e4ad5991ba8Checks.Varianta4368e69f637e287a001b8d30eb6efe2695b4ade0d377bcabe464abdfa05b9b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b8dc537057806c264775917077e6799aa4f2e2b` · SHA-256 `c0fc86600b6011d953562a71cb18cb1134dc32237bbe6b77fbf8a311e9e6d1d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SeparationBounds.Variant62ae201b98b28fbc7d7623ac2b69a5abe5d78b30f0e17786e0d75e4ad5991ba8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"62ae201b98b28fbc7d7623ac2b69a5abe5d78b30f0e17786e0d75e4ad5991ba8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SeparationBounds.Variant62ae201b98b28fbc7d7623ac2b69a5abe5d78b30f0e17786e0d75e4ad5991ba8","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"62ae201b98b28fbc7d7623ac2b69a5abe5d78b30f0e17786e0d75e4ad5991ba8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/62/62ae201b98b28fbc7d7623ac2b69a5abe5d78b30f0e17786e0d75e4ad5991ba8--Checks.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SeparationBounds
import Mathlib.Data.Finset.Max
import Mathlib.Data.Finset.Powerset
import Mathlib.Algebra.Order.BigOperators.Group.Finset

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SeparationBounds.Variant62ae201b98b28fbc7d7623ac2b69a5abe5d78b30f0e17786e0d75e4ad5991ba8

#check Finset.sum_union_le
#check Finset.sum_le_sum_of_subset_of_nonneg
#check WithTop.ne_top_iff_exists
#check WithTop.coe_le_coe
#check WithTop.coe_add
#check Finset.card_union_le
#check LinearOrderedAddCommMonoid
#check IsOrderedAddMonoid
#check Finset.card_eq_zero
#check Finset.image_eq_empty
#check Finset.not_nonempty_iff_eq_empty
#check Finset.mem_powerset
#check Finset.sum_const_nat
```
