# Complete source: GRWTSK.Algebra.GroupTheory.PrincipalFiniteCover.Variant63e655f67b5924c45c9f633babe281a66697a19014485bf504ff3c4d500478c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99dde0bb3d1ad4287429f80eb4e393fa046f4ed5` · SHA-256 `c9a72db5837cbbbd88c683744f318050ed5adfa880b991f313ce9043bc64aa9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.PrincipalFiniteCoverRealization.Variantaa04b5bb957664b0b6006703bf23d0f4b535f255b0a81cacd9a3258a671890a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa04b5bb957664b0b6006703bf23d0f4b535f255b0a81cacd9a3258a671890a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.PrincipalFiniteCoverRealization.Variantaa04b5bb957664b0b6006703bf23d0f4b535f255b0a81cacd9a3258a671890a8","mathematical_subject":"Algebra.Groups","original_sha256":"aa04b5bb957664b0b6006703bf23d0f4b535f255b0a81cacd9a3258a671890a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/PrincipalFiniteCover.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.LocalSystem

/-!
# Principal finite abelian cover realizations

`H¹(K; A)` classifies principal covers for a fixed finite discrete abelian
group `A`.  It does not classify arbitrary finite covers.  Connectedness is a
separate surjectivity condition on monodromy.
-/


namespace GRWTSK.Algebra.GroupTheory.PrincipalFiniteCoverRealization.Variantaa04b5bb957664b0b6006703bf23d0f4b535f255b0a81cacd9a3258a671890a8

namespace Mathematics.Homology

universe u v w

/-- One certified realization of a principal finite abelian cover class. -/
structure PrincipalFiniteCoverRealization
    (Loop : Type u) [Group Loop]
    (DeckGroup : Type v)
    [AddCommGroup DeckGroup] [Fintype DeckGroup]
    (H1Class : Type w)
    (Cover : Type*) where
  cohomologyClass : H1Class
  cover : Cover
  monodromy : Loop →* Multiplicative DeckGroup
  connected : Prop
  connected_iff_monodromy_surjective :
    connected ↔ Function.Surjective monodromy
  realizesClass : Prop
  realizationProof : realizesClass
  classDigest : Digest
  realizationCertificate : ObjectAddress

end Mathematics.Homology
```
