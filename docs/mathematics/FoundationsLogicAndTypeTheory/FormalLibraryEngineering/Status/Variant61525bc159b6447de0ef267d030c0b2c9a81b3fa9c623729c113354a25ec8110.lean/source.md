# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Status.Variant61525bc159b6447de0ef267d030c0b2c9a81b3fa9c623729c113354a25ec8110

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `430c364eefda1299d2ab8366945404e72dc46432` · SHA-256 `994e2f06bc77689431294754e13ea345227610abdfc04607b5f28186229b8a11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MathematicalStatus.Variant55fbf51df4f218701769930b2c508d90c921debaef66f35ba80778de888bf354","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"55fbf51df4f218701769930b2c508d90c921debaef66f35ba80778de888bf354","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MathematicalStatus.Variant55fbf51df4f218701769930b2c508d90c921debaef66f35ba80778de888bf354","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"55fbf51df4f218701769930b2c508d90c921debaef66f35ba80778de888bf354","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Taxonomy/Status.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Taxonomy.Role
import Mathlib.Tactic.DeriveFintype

/-! # Mathematical status independent of role and domain. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MathematicalStatus.Variant55fbf51df4f218701769930b2c508d90c921debaef66f35ba80778de888bf354

namespace MathDiscovery.Taxonomy

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

end MathDiscovery.Taxonomy
```
