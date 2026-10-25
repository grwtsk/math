# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kind.Variant10d23f595b9a37ca0b7f5b4935246aa8cae576878bd8bc57be3f9edb4db8ad18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2934309b415bddd30b29d47766fdfab5f78dc1df` · SHA-256 `310c9b1780a0bd1fe1ddd3807394ba929081ad2122ec088172cea4558f1a17b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kind.Variant912bb741f712bdec710cf630c51adea931c45587f020a93d9064480ccc4852dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"912bb741f712bdec710cf630c51adea931c45587f020a93d9064480ccc4852dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Kind.Variant912bb741f712bdec710cf630c51adea931c45587f020a93d9064480ccc4852dd","mathematical_subject":"Foundations.Unclassified","original_sha256":"912bb741f712bdec710cf630c51adea931c45587f020a93d9064480ccc4852dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/ProofStrategy/Kind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Core.Id

/-! # Governed proof-strategy vocabulary -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kind.Variant912bb741f712bdec710cf630c51adea931c45587f020a93d9064480ccc4852dd

namespace MathDiscovery.ProofStrategy

open MathDiscovery

inductive Kind
  | directConstruction
  | introduction
  | application
  | caseAnalysis
  | structuralInduction
  | wellFoundedInduction
  | contradiction
  | exFalso
  | rewriting
  | congruence
  | extensionality
  | witnessConstruction
  | uniqueness
  | quotientInduction
  | finiteEnumeration
  | normalization
  | decisionProcedure
  | reflection
  | orderReasoning
  | algebraicCalculation
  | classicalChoice
  | dependencyDelegation
  deriving DecidableEq, Inhabited

def Kind.id : Kind → ProofStrategyId
  | .directConstruction => ⟨"proof-strategy:direct-construction"⟩
  | .introduction => ⟨"proof-strategy:introduction"⟩
  | .application => ⟨"proof-strategy:application"⟩
  | .caseAnalysis => ⟨"proof-strategy:case-analysis"⟩
  | .structuralInduction => ⟨"proof-strategy:structural-induction"⟩
  | .wellFoundedInduction => ⟨"proof-strategy:well-founded-induction"⟩
  | .contradiction => ⟨"proof-strategy:contradiction"⟩
  | .exFalso => ⟨"proof-strategy:ex-falso"⟩
  | .rewriting => ⟨"proof-strategy:rewriting"⟩
  | .congruence => ⟨"proof-strategy:congruence"⟩
  | .extensionality => ⟨"proof-strategy:extensionality"⟩
  | .witnessConstruction => ⟨"proof-strategy:witness-construction"⟩
  | .uniqueness => ⟨"proof-strategy:uniqueness"⟩
  | .quotientInduction => ⟨"proof-strategy:quotient-induction"⟩
  | .finiteEnumeration => ⟨"proof-strategy:finite-enumeration"⟩
  | .normalization => ⟨"proof-strategy:normalization"⟩
  | .decisionProcedure => ⟨"proof-strategy:decision-procedure"⟩
  | .reflection => ⟨"proof-strategy:reflection"⟩
  | .orderReasoning => ⟨"proof-strategy:order-reasoning"⟩
  | .algebraicCalculation => ⟨"proof-strategy:algebraic-calculation"⟩
  | .classicalChoice => ⟨"proof-strategy:classical-choice"⟩
  | .dependencyDelegation => ⟨"proof-strategy:dependency-delegation"⟩

end MathDiscovery.ProofStrategy
```
