# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetaAudit.Variant269f9010f0953d4ba66460c7f372c0765ba4adae11e3d16f0eaabda79aa98de0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c97f84f7b37d7f08568192c88acfff4d3160dcc` · SHA-256 `7046b2a958e2d9c4253698b2dda4e12061f463cd1d1bac7152774ebdbece2c64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetaFixtures.Variantfb5367f6506f4293c712fb6e8160950f679e81f4b4160aabbc470ee535235f0d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb5367f6506f4293c712fb6e8160950f679e81f4b4160aabbc470ee535235f0d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BetaFixtures.Variantfb5367f6506f4293c712fb6e8160950f679e81f4b4160aabbc470ee535235f0d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fb5367f6506f4293c712fb6e8160950f679e81f4b4160aabbc470ee535235f0d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/artifacts/type-theory/normalization/port-4.33/BetaAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.TypeTheory.PureTypeSystem.BetaFixtures


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetaFixtures.Variantfb5367f6506f4293c712fb6e8160950f679e81f4b4160aabbc470ee535235f0d

#check FormalResearch.TypeTheory.BetaReduction.next_correct
#check FormalResearch.TypeTheory.BetaReduction.accessibleNext_correct
#check FormalResearch.TypeTheory.BetaReduction.longest_trace
#check FormalResearch.TypeTheory.BetaReduction.normalizeFuel_certified
#check FormalResearch.TypeTheory.BetaReduction.normalizeFuel_preserves_typing
#check FormalResearch.TypeTheory.BetaReduction.normalizeFuel_unique
#print axioms FormalResearch.TypeTheory.BetaReduction.next_correct
#print axioms FormalResearch.TypeTheory.BetaReduction.accessible_wellFounded
#print axioms FormalResearch.TypeTheory.BetaReduction.longest_trace
#print axioms FormalResearch.TypeTheory.BetaReduction.normalizeFuel_certified
#print axioms FormalResearch.TypeTheory.BetaReduction.normalizeFuel_preserves_typing
#print axioms FormalResearch.TypeTheory.BetaReduction.normalizeFuel_unique
#print axioms FormalResearch.TypeTheory.BetaReduction.body_redex_typing
#print axioms FormalResearch.TypeTheory.BetaReduction.omega_not_strongly_normalizing
#print axioms FormalResearch.TypeTheory.BetaReduction.omega_fuel_failure
#eval (FormalResearch.TypeTheory.BetaReduction.normalizeFuel 1
  FormalResearch.TypeTheory.BetaReduction.identityRedex).map fun term =>
    decide (term = OAI.PureTypeSystem.Expr.var 0)
#eval (FormalResearch.TypeTheory.BetaReduction.normalizeFuel 3
  FormalResearch.TypeTheory.BetaReduction.omegaTerm).isNone
```
