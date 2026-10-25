# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Status.Variantc463ed4ee188e0ac36b86fa44415c52d5901bf67f309d1a2459f28f871df179e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d0ef93ff004b08856aaeca463c82b2d9dc7a691` · SHA-256 `7445de176c7249451344862f0a788f5b73240186807943059b8454ceb17fe6b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MathematicalStatus.Variantea89cf8213eca4aae9e6e4193928f8d17d637c25e4c0c5a410d444dd652ff0a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea89cf8213eca4aae9e6e4193928f8d17d637c25e4c0c5a410d444dd652ff0a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MathematicalStatus.Variantea89cf8213eca4aae9e6e4193928f8d17d637c25e4c0c5a410d444dd652ff0a3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ea89cf8213eca4aae9e6e4193928f8d17d637c25e4c0c5a410d444dd652ff0a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Taxonomy/Status.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Taxonomy.Role
import Mathlib.Tactic.DeriveFintype

/-! # Mathematical status independent of role and domain. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MathematicalStatus.Variantea89cf8213eca4aae9e6e4193928f8d17d637c25e4c0c5a410d444dd652ff0a3

namespace Mathematics.Taxonomy

inductive MathematicalStatus
  | definition
  | axiom
  | derivedDefinition
  | provedTheorem
  | importedTheorem
  | conditionalTheorem
  | classificationTheorem
  | existenceTheorem
  | uniquenessTheorem
  | equivalenceTheorem
  | bound
  | algorithm
  | verifiedAlgorithm
  | numericalObservation
  | heuristic
  | conjecture
  | openProblem
  | disprovedClaim
  | counterexample
  | historicalFormulation
  deriving DecidableEq, Inhabited, Fintype

def MathematicalStatus.RequiresTheoremAuthority : MathematicalStatus → Prop
  | .provedTheorem | .importedTheorem | .conditionalTheorem
  | .classificationTheorem | .existenceTheorem | .uniquenessTheorem
  | .equivalenceTheorem | .bound => True
  | _ => False

instance (status : MathematicalStatus) :
    Decidable status.RequiresTheoremAuthority := by
  cases status <;>
    simp only [MathematicalStatus.RequiresTheoremAuthority] <;>
    infer_instance

/-- Statuses that denote an admitted proved statement rather than an open claim. -/
def MathematicalStatus.IsProved : MathematicalStatus → Prop
  | .provedTheorem | .importedTheorem | .conditionalTheorem
  | .classificationTheorem | .existenceTheorem | .uniquenessTheorem
  | .equivalenceTheorem | .bound => True
  | _ => False

instance (status : MathematicalStatus) :
    Decidable status.IsProved := by
  cases status <;>
    simp only [MathematicalStatus.IsProved] <;>
    infer_instance

end Mathematics.Taxonomy
```
