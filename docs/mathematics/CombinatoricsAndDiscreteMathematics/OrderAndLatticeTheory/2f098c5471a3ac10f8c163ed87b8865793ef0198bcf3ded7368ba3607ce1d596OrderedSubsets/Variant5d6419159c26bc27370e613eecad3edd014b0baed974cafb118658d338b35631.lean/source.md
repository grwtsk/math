# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.2f098c5471a3ac10f8c163ed87b8865793ef0198bcf3ded7368ba3607ce1d596OrderedSubsets.Variant5d6419159c26bc27370e613eecad3edd014b0baed974cafb118658d338b35631

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0af2fcc4bcc70115519f35de7216e78898a1655` · SHA-256 `7242be2f9d1c892e18f75aa73858e2b178d9464bce74231e673952b507803c1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PowersetCard.Variant2f098c5471a3ac10f8c163ed87b8865793ef0198bcf3ded7368ba3607ce1d596","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f098c5471a3ac10f8c163ed87b8865793ef0198bcf3ded7368ba3607ce1d596","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.PowersetCard.Variant2f098c5471a3ac10f8c163ed87b8865793ef0198bcf3ded7368ba3607ce1d596","mathematical_subject":"Algebra.OrderTheory","original_sha256":"2f098c5471a3ac10f8c163ed87b8865793ef0198bcf3ded7368ba3607ce1d596","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/2f/2f098c5471a3ac10f8c163ed87b8865793ef0198bcf3ded7368ba3607ce1d596--ordered-subsets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Order.Hom.PowersetCard

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PowersetCard.Variant2f098c5471a3ac10f8c163ed87b8865793ef0198bcf3ded7368ba3607ce1d596

set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @Set.powersetCard
#check @Set.powersetCard.ofFinEmbEquiv
#check @Set.powersetCard.ofFinEmbEquiv_symm_apply
#check @Set.powersetCard.mem_range_ofFinEmbEquiv_symm_iff_mem
```
