# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.AcceptedMerge.Variantc7a2fbf81e78a0f3d575c2e4b4cc4562c5b30da153aca377e6ddcd0975f10236

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `797847b90d137cb2b743ef3ea42d47382109ea10` · SHA-256 `526a79b9877fb21472823ddb4678873bb988b3f30efb294a7d5d1efa0bb8cb9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.AcceptedArtifact.Variant6a4e1eeaa67875ce858608c608fe561f85c5b2159c09c497ffe3100f8e6942f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a4e1eeaa67875ce858608c608fe561f85c5b2159c09c497ffe3100f8e6942f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.AcceptedArtifact.Variant6a4e1eeaa67875ce858608c608fe561f85c5b2159c09c497ffe3100f8e6942f5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6a4e1eeaa67875ce858608c608fe561f85c5b2159c09c497ffe3100f8e6942f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Operational/AcceptedMerge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic

/-!
# Whole-family accepted merge

Compatibility is checked on the complete family union.  Pairwise checks are
not substituted for this condition.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.AcceptedArtifact.Variant6a4e1eeaa67875ce858608c608fe561f85c5b2159c09c497ffe3100f8e6942f5

namespace Mathematics.Operational

universe u v

structure AcceptedArtifact
    (ArtifactId : Type u)
    (Fact : Type v)
    [DecidableEq Fact] where
  artifactId : ArtifactId
  facts : Finset Fact

def familyFacts
    {ArtifactId : Type u}
    {Fact : Type v}
    [DecidableEq Fact]
    (family : List (AcceptedArtifact ArtifactId Fact)) :
    Finset Fact :=
  family.foldl (fun result artifact => result ∪ artifact.facts) ∅

structure FamilyCompatibilityCertificate
    {ArtifactId : Type u}
    {Fact : Type v}
    [DecidableEq Fact]
    (Consistent : Finset Fact → Prop)
    (family : List (AcceptedArtifact ArtifactId Fact)) : Prop where
  joint : Consistent (familyFacts family)

def canonicalAcceptedMerge
    {ArtifactId : Type u}
    {Fact : Type v}
    [DecidableEq Fact]
    (family : List (AcceptedArtifact ArtifactId Fact)) :
    Finset Fact :=
  familyFacts family

end Mathematics.Operational
```
