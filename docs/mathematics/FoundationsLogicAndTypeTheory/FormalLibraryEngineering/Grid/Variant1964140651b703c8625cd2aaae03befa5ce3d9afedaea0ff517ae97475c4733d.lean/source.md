# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grid.Variant1964140651b703c8625cd2aaae03befa5ce3d9afedaea0ff517ae97475c4733d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f0f950b700c3ef4bff14dc0650913f58330ff1c` · SHA-256 `bed96fc0d637012da4c1b5aa2c0941d0c317cce0fc711dfa0db07dce07049ba2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GridShape.Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GridShape.Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a","mathematical_subject":"Foundations.Unclassified","original_sha256":"9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Carrier/Grid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Carrier.Grid

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: carrier.grid
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GridShape.Variant9cb8f45b85a7123226f3cfc690e5c4caca841fbfcc02f33531aeabebb083480a

namespace Folder
namespace Carrier

structure GridShape where
  rows : Nat
  cols : Nat
deriving DecidableEq

abbrev Cell (s : GridShape) := Fin s.rows × Fin s.cols

def EdgeAdjacent {s : GridShape} (a b : Cell s) : Prop :=
  (a.1 = b.1 ∧
    ((a.2.val + 1 = b.2.val) ∨ (b.2.val + 1 = a.2.val))) ∨
  (a.2 = b.2 ∧
    ((a.1.val + 1 = b.1.val) ∨ (b.1.val + 1 = a.1.val)))

theorem edgeAdjacent_symm {s : GridShape} {a b : Cell s} :
    EdgeAdjacent a b → EdgeAdjacent b a := by
  intro h
  rcases h with ⟨hr, hc⟩ | ⟨hc, hr⟩
  · left
    refine ⟨hr.symm, ?_⟩
    exact hc.symm
  · right
    refine ⟨hc.symm, ?_⟩
    exact hr.symm

theorem edgeAdjacent_irrefl {s : GridShape} (a : Cell s) :
    ¬ EdgeAdjacent a a := by
  intro h
  rcases h with ⟨_, hcol⟩ | ⟨_, hrow⟩
  · rcases hcol with h | h <;> omega
  · rcases hrow with h | h <;> omega

end Carrier
end Folder
```
