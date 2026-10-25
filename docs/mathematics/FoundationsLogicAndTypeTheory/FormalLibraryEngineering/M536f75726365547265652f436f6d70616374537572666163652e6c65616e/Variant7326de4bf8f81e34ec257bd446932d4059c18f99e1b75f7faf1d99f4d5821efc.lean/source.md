# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M536f75726365547265652f436f6d70616374537572666163652e6c65616e.Variant7326de4bf8f81e34ec257bd446932d4059c18f99e1b75f7faf1d99f4d5821efc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49b87c62882c518f0cb28e2c289a8db9ab24338c` · SHA-256 `9a581d01de8026340c5d8071237b765e050d5a2221d166ebaa1383cbfc432b47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceTreeSurface.Variantb01349c2acabd14c602d96cee5bfae067422b471a6471690c39b80432711eead","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b01349c2acabd14c602d96cee5bfae067422b471a6471690c39b80432711eead","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceTreeSurface.Variantb01349c2acabd14c602d96cee5bfae067422b471a6471690c39b80432711eead","mathematical_subject":"Foundations.Unclassified","original_sha256":"b01349c2acabd14c602d96cee5bfae067422b471a6471690c39b80432711eead","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit1/Bit1/Bit1/Bit0/Bit0/M536f75726365547265652f436f6d70616374537572666163652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

/- source-tree-label: STL1|L|addr=1011100|role=proof_code_atom|slug=sourcetree-compactsurface|owner=canonical_owner|core=SourceTree/CompactSurface.lean|leaf=M536f75726365547265652f436f6d70616374537572666163652e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceTreeSurface.Variantb01349c2acabd14c602d96cee5bfae067422b471a6471690c39b80432711eead

set_option autoImplicit false

namespace Think.Compact

inductive SourceTreeSurface where
  | node
  | weight
  | placement
  | poleAssignment
  | coverage
  | noDup
  | importClosure
deriving DecidableEq, Repr

def SourceTreeSurface.compactModule :
    SourceTreeSurface → String
  | SourceTreeSurface.node => "Think.SourceTree.CompactSurface"
  | SourceTreeSurface.weight => "Think.SourceTree.CompactSurface"
  | SourceTreeSurface.placement => "Think.SourceTree.CompactSurface"
  | SourceTreeSurface.poleAssignment => "Think.SourceTree.CompactSurface"
  | SourceTreeSurface.coverage => "Think.SourceTree.CompactSurface"
  | SourceTreeSurface.noDup => "Think.SourceTree.CompactSurface"
  | SourceTreeSurface.importClosure => "Think.SourceTree.CompactSurface"

theorem sourceTreeSurfaces_contract
    (s : SourceTreeSurface) :
    ∃ m : String, s.compactModule = m := by
  exact ⟨s.compactModule, rfl⟩

end Think.Compact
```
