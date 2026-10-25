# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN08FiberCanonicity.Variant30fe4e2dcfd1b0fe920c594a365e5b8c8309b508721201fd02e3121f0ecf501a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03e3b223592501359c7f73aba6e44602c1b4f4bd` · SHA-256 `af93df6be9fb715d90b141b35227fdf705ddd30e601b5b2e964459bf4b0118ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen08FiberCanonicity.Variant1c44b381c97e37d44eb750de928032606cb5a6741046452d8220074f53a2a66d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c44b381c97e37d44eb750de928032606cb5a6741046452d8220074f53a2a66d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hen08FiberCanonicity.Variant1c44b381c97e37d44eb750de928032606cb5a6741046452d8220074f53a2a66d","mathematical_subject":"Foundations.Unclassified","original_sha256":"1c44b381c97e37d44eb750de928032606cb5a6741046452d8220074f53a2a66d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/HEN08_FiberCanonicity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Theorems.HEN01_ExactFullyFaithful


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen08FiberCanonicity.Variant1c44b381c97e37d44eb750de928032606cb5a6741046452d8220074f53a2a66d

namespace FCRS.Algebraization.Theorems

/--
Algebraization fibers are nonempty when effectivity holds and, by this
the result says that any two algebraizations are uniquely compatibly isomorphic.
-/
theorem hen08_fiberCanonicity
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile) :
    FibersUniquelyIsomorphic S.functors.HenPullback := by
  have hExact :=
    (hen01_exactFullyFaithful S registry) hProfile
  exact registry.hen08 hExact.full hExact.faithful

end FCRS.Algebraization.Theorems
```
