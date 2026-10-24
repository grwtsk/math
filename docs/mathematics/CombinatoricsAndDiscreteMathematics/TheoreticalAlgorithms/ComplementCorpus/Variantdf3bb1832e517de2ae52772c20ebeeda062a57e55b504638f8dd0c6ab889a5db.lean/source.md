# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplementCorpus.Variantdf3bb1832e517de2ae52772c20ebeeda062a57e55b504638f8dd0c6ab889a5db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a91c660178f136fae1a62a657ca3c63d2b0f0317` · SHA-256 `f7ab9c87c8cee14ff6b5ab75e226a31e0ea44ae21cf3c1d5db28a78fc91433d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremLink.Variant4bdf9d2a60c40853831c0f8b426ab2c9b8a80509d4d88db24947d0b56251cd6f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bdf9d2a60c40853831c0f8b426ab2c9b8a80509d4d88db24947d0b56251cd6f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TheoremLink.Variant4bdf9d2a60c40853831c0f8b426ab2c9b8a80509d4d88db24947d0b56251cd6f","mathematical_subject":"Computation.DataStructures","original_sha256":"4bdf9d2a60c40853831c0f8b426ab2c9b8a80509d4d88db24947d0b56251cd6f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/ComplementCorpus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Boolean.Complement
import Mathematics.Boolean.Corpus

/-!
# Boolean complement corpus links

Complement uniqueness, involution, and De Morgan duality are reconstructed as
theorems rather than stored as duplicated structure fields.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremLink.Variant4bdf9d2a60c40853831c0f8b426ab2c9b8a80509d4d88db24947d0b56251cd6f

namespace Mathematics.Boolean.ComplementCorpus

open Mathematics
open Mathematics.Discovery

private def theoremLink
    (ordinal : Nat)
    (sourceName : String)
    (sourceName_nonempty : sourceName ≠ "")
    (sourceDigest : Digest)
    (sourceDigest_valid : sourceDigest.Valid)
    (target : String)
    (target_nonempty : target ≠ "") :
    CorpusSubsumptionLink :=
  Corpus.lawsModule.subsumption
    { value := "ideas:boolean-laws:complement:" ++ toString ordinal }
    (by simp [StableId.Valid])
    ordinal
    sourceName
    sourceName_nonempty
    .theorem
    sourceDigest
    sourceDigest_valid
    target
    target_nonempty
    .theoremReconstruction
    "Derive the retained complement law from canonical Boolean structure."

def complementUnique := theoremLink
  14 "compl_unique" (by decide)
  { value := "3286cda296146237161e50178d550a2a33544c1ca42c62f9c57a3d99bfac4cb4" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.complement_unique" (by decide)

def complementInvolutive := theoremLink
  15 "compl_involutive" (by decide)
  { value := "6bd1eb4902fc6151102559aa686063789930b90e50b0e9f0884d19343c1779d5" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.complement_involutive" (by decide)

def complementJoinEqMeet := theoremLink
  16 "compl_join_eq_meet_compl" (by decide)
  { value := "4d04d5362dd0294fcba2d06b626b44f0acd80b86e8908fc6814edaa23de68226" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.complement_join_eq_meet" (by decide)

def complementMeetEqJoin := theoremLink
  17 "compl_meet_eq_join_compl" (by decide)
  { value := "7fee32b4d455cf2873a8810a0e8c11feee2103b8521ac6909ec9752386a85dd0" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Boolean.complement_meet_eq_join" (by decide)

def links : List CorpusSubsumptionLink := [
  complementUnique,
  complementInvolutive,
  complementJoinEqMeet,
  complementMeetEqJoin
]

@[simp] theorem links_length : links.length = 4 := by decide

end Mathematics.Boolean.ComplementCorpus
```
