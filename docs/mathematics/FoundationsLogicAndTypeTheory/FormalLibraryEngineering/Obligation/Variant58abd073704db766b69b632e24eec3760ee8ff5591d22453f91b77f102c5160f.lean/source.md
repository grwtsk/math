# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Obligation.Variant58abd073704db766b69b632e24eec3760ee8ff5591d22453f91b77f102c5160f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68a908c36bdec10496ae47a89be268d98a11280f` · SHA-256 `ce1d99bb549cdc0b8906553b8464d11c8004571a5f1eef8ace5ed1cde9ec29a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObligationAuthorityClass.Variantfc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ObligationAuthorityClass.Variantfc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6","mathematical_subject":"Foundations.Unclassified","original_sha256":"fc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Obligation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Identity

/-!
# Indexed resolution obligations

The proposition, source, authority class, exactness, and certificate kind are
version-bound coordinates of one permanently identified obligation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObligationAuthorityClass.Variantfc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6

namespace Mathematics.Resolution

universe u

inductive ObligationAuthorityClass
  | leanTheorem
  | runtimeRefinement
  | transportNaturality
  | snapshotConsistency
  | codec
  | identityPreservation
  | resultConstruction
  deriving DecidableEq, Repr

inductive ExactnessClass
  | exact
  | certifiedApproximation
  deriving DecidableEq, Repr

structure IndexedObligation (Statement : Type u) where
  identity : ObligationIdentity
  statement : Statement
  propositionDigest : String
  dependencyDigest : String
  authorityClass : ObligationAuthorityClass
  exactness : ExactnessClass
  certificateKind : String
  deriving DecidableEq, Repr

end Mathematics.Resolution
```
