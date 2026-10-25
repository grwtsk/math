# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.02ScopeSupport.Variantb2b80ef4b6c225666314e124dd9995f6886613d5b225cfd8ab62cd666d176f2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24c5a9b335b3464b56f63632298ea6fa61acf08e` · SHA-256 `815176a33125c596a66d8c8587aeed4b9265091aaeece7b694702e2cfe8a9587`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Artifact.Variante2d78e1176aea272f5551c4bffc7ea4f7164cacfb2aa626632f8670dd3ae3c06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2d78e1176aea272f5551c4bffc7ea4f7164cacfb2aa626632f8670dd3ae3c06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Artifact.Variante2d78e1176aea272f5551c4bffc7ea4f7164cacfb2aa626632f8670dd3ae3c06","mathematical_subject":"Foundations.Unclassified","original_sha256":"e2d78e1176aea272f5551c4bffc7ea4f7164cacfb2aa626632f8670dd3ae3c06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-adversarial-cycle-3/reproductions/02_scope_support.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Adapters.FCRSFullDerivation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Artifact.Variante2d78e1176aea272f5551c4bffc7ea4f7164cacfb2aa626632f8670dd3ae3c06

namespace FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle3ScopeWitness

open FCRS.Transport

def artifact {kind : ArtifactKind} (name : String) : ArtifactRef kind :=
  ⟨"https://example.invalid/cycle-3", name, "1", "sha256:" ++ name⟩

def graph : CoordinateGraph .Materialized Bool Unit where
  version := artifact "scope-graph"
  identityPolicy := .PairFunctional
  source := fun _ => false
  target := fun _ => false

def globalConsequence : GraphConsequence graph where
  consequenceArtifact := artifact "global-consequence"
  schema := artifact "global-schema"
  sensitivity := .Structural
  statement := ∀ coordinate : Bool, coordinate = coordinate

def falselyLocalProposition : GraphConsequenceProposition graph where
  consequence := globalConsequence
  source := false
  target := false

def falseOnlyScope : TransferScope (graphConsequenceTheory graph) where
  artifact := projectionVersion "false-only-graph-scope"
  contains := fun coordinate => coordinate = false

/-- The declared two-point support passes a false-only scope. -/
example : PropositionWithinScope (graphConsequenceTheory graph)
    falseOnlyScope falselyLocalProposition := by
  change false = false ∧ ∀ coordinate, coordinate ∈ [false] → coordinate = false
  simp

/-- The exact semantic proposition still universally quantifies over true. -/
example : (graphConsequenceTheory graph).Holds falselyLocalProposition ↔
    ∀ coordinate : Bool, coordinate = coordinate := Iff.rfl

example : ¬ falseOnlyScope.contains true := by
  change ¬ true = false
  decide

#check falselyLocalProposition

end FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle3ScopeWitness
```
