# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteCut.Variant31ac1c90911da28963f6e371f32500cb90bdec4be3dc81d2d6b3f4712ebb6590

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b1c6f645f789b0bfdc61c2251d960af5f290014` · SHA-256 `acbbc8abc09ea3a916ff2078f6e1ae8cbef073c586ad369a97d3a3e15b6e6846`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteReflectiveCut.Variant2d6d613dd752e7a537730a2adb3b628701b83c4cb268b489e35223dc250f3b90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d6d613dd752e7a537730a2adb3b628701b83c4cb268b489e35223dc250f3b90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteReflectiveCut.Variant2d6d613dd752e7a537730a2adb3b628701b83c4cb268b489e35223dc250f3b90","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2d6d613dd752e7a537730a2adb3b628701b83c4cb268b489e35223dc250f3b90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Boundary/FiniteCut.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm
import Mathlib.Data.Fintype.Basic

/-!
# Immutable finite reflective cut
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteReflectiveCut.Variant2d6d613dd752e7a537730a2adb3b628701b83c4cb268b489e35223dc250f3b90

namespace Mathematics.StratifiedBoundary

structure FiniteReflectiveCut
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    (State : Type v) where
  cutId : String
  predecessorCutRef : Option String
  stratum : CanonicalOrdinalTally profile
  stateFinite : Fintype State
  stateDecidableEq : DecidableEq State
  separatedMetricRef : String
  closedAdmissibilityRef : String
  binaryFrontierRef : String
  localRankRegistryRef : String
  authorityRef : String
  immutable : Bool := true
  immutable_exact : immutable = true

end Mathematics.StratifiedBoundary
```
