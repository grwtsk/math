# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProjectiveSystem.Variantf7f435545fd1c088093e46472834e1328b57caf2df622d5e9cfa62cb5829e032

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a67927ff11076cee1c88505091a91c628416458f` · SHA-256 `ac0a5896e92b7d90e721a7734ee849786b071317f3dd3a789a01bfd5ef4c0f0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FinitePrefixProjectiveSystem.Variantac3653e2663687fcaf1394173e8e4ea259541cc661eacc794ee38f5e6f03cbfc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac3653e2663687fcaf1394173e8e4ea259541cc661eacc794ee38f5e6f03cbfc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.FinitePrefixProjectiveSystem.Variantac3653e2663687fcaf1394173e8e4ea259541cc661eacc794ee38f5e6f03cbfc","mathematical_subject":"Logic.Foundations","original_sha256":"ac3653e2663687fcaf1394173e8e4ea259541cc661eacc794ee38f5e6f03cbfc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Boundary/ProjectiveSystem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Finite-prefix projective system

The runtime may expose bounded prefixes.  The compatible witness is direct
project evidence; surjective maps alone are not silently used to choose an
infinite point.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FinitePrefixProjectiveSystem.Variantac3653e2663687fcaf1394173e8e4ea259541cc661eacc794ee38f5e6f03cbfc

namespace Mathematics.StratifiedBoundary

structure FinitePrefixProjectiveSystem (State : Type u) where
  project : Nat → Nat → State → State
  identity :
    ∀ stage state,
      project stage stage state = state
  composition :
    ∀ {later middle earlier state},
      earlier ≤ middle →
      middle ≤ later →
      project later earlier state =
        project middle earlier (project later middle state)
  surjective :
    ∀ {later earlier},
      earlier ≤ later →
        Function.Surjective (project later earlier)
  compatibleWitness : Nat → State
  witnessCompatible :
    ∀ {later earlier},
      earlier ≤ later →
      project later earlier (compatibleWitness later) =
        compatibleWitness earlier
  finitePrefixOnly : Bool := true
  finitePrefixOnly_exact : finitePrefixOnly = true

end Mathematics.StratifiedBoundary
```
