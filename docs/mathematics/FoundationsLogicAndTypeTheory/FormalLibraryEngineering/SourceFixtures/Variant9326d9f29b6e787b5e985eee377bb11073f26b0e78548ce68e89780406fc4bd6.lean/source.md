# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceFixtures.Variant9326d9f29b6e787b5e985eee377bb11073f26b0e78548ce68e89780406fc4bd6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d61997148213d96f515bf2f7658092f092789ac3` · SHA-256 `74e9d7c565f5683fee36ee28dcafe890a2448b0dcd64eb643ec7a6fe618a24cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoverProblem.Variantf7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.CoverProblem.Variantf7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"f7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/f7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Semantics.Atlas.ProofGrammar
import FormalResearch.MathematicalTooling.Semantics.Atlas.Bridge
import FormalResearch.MathematicalTooling.Coverage.Finite
import FormalResearch.MathematicalTooling.SymbolCounts.Reordering

/-!
# Reuse across symbol-count combinatorics and finite-domain coverage

These fixtures consume existing maintained mathematical declarations from two
different subjects. They do not move the originals or manufacture declarations
from source metadata. The generic grammar and bridge APIs depend on neither
subject; dependency runs from this fixture into both existing subjects.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoverProblem.Variantf7ed5ee2f753a2a045281ea1daecec80d24f11817a64ae9ca050190acc4f752c

namespace FormalResearch.MathematicalTooling.Semantics.Atlas.SourceFixtures

/-- Explicit parameters for the existing finite-cover-and-tail theorem. -/
structure CoverProblem (α ι : Type*) where
  /-- Domain on which the assembled conclusion is required. -/
  domain : Set α
  /-- Additional region requiring a separate tail proof. -/
  tail : Set α
  /-- Family of regions supporting the local proofs. -/
  cells : ι → Set α
  /-- Finite inventory of cells available to the coverage argument. -/
  indices : Finset ι
  /-- Pointwise property established by the local and tail proofs. -/
  property : α → Prop

/-- Reuse the accepted coverage theorem as an actual parameterized proof grammar. -/
def finiteCoverAndTailGrammar {α ι : Type*} : ProofGrammar (CoverProblem α ι) where
  hypotheses p :=
    (∀ x ∈ p.domain, (∃ i ∈ p.indices, x ∈ p.cells i) ∨ x ∈ p.tail) ∧
    (∀ i ∈ p.indices, ∀ x ∈ p.cells i, p.property x) ∧
    (∀ x ∈ p.tail, p.property x)
  conclusion p := ∀ x ∈ p.domain, p.property x
  prove p hypotheses := Coverage.forall_on_of_finite_cover_and_tail
    p.domain p.tail p.cells p.indices p.property hypotheses.1 hypotheses.2.1 hypotheses.2.2

/-- The existing symbol-count classification supplies the actual invertible witness. -/
noncomputable def symbolCountBridge :
    InvertibleBridge (.object (SymbolCounts.ReorderingClass Bool))
      (.object (SymbolCounts.CountProfile Bool)) :=
  .equivalence (SymbolCounts.countProfileEquiv Bool)

/-- Both subjects instantiate the same source-neutral atlas interfaces. -/
theorem independent_subjects_supply_formal_carriers {α ι : Type*} :
    Nonempty (InvertibleBridge (.object (SymbolCounts.ReorderingClass Bool))
      (.object (SymbolCounts.CountProfile Bool))) ∧
    ∀ p : CoverProblem α ι,
      finiteCoverAndTailGrammar.hypotheses p → finiteCoverAndTailGrammar.conclusion p :=
  ⟨⟨symbolCountBridge⟩, finiteCoverAndTailGrammar.prove⟩

end FormalResearch.MathematicalTooling.Semantics.Atlas.SourceFixtures
```
