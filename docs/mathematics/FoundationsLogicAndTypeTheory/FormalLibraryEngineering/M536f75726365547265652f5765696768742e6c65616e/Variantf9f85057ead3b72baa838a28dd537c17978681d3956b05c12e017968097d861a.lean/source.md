# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M536f75726365547265652f5765696768742e6c65616e.Variantf9f85057ead3b72baa838a28dd537c17978681d3956b05c12e017968097d861a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b698c2ac858d490623a2a31f74ec7a2ba7d2e0fb` · SHA-256 `5ad2c6d1044375f12b605515e126da58299d3794e4f4f20182311986d9587b77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PoleBaseWeight.Variant53ecb1858f7837f7100e5b1bc3dee2dc56fa5fba7dd4dc5c547f800fbfd86db9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53ecb1858f7837f7100e5b1bc3dee2dc56fa5fba7dd4dc5c547f800fbfd86db9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PoleBaseWeight.Variant53ecb1858f7837f7100e5b1bc3dee2dc56fa5fba7dd4dc5c547f800fbfd86db9","mathematical_subject":"Foundations.Unclassified","original_sha256":"53ecb1858f7837f7100e5b1bc3dee2dc56fa5fba7dd4dc5c547f800fbfd86db9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit1/Bit1/Bit0/Bit1/Bit1/M536f75726365547265652f5765696768742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M536f75726365547265652f4e6f64652e6c65616e


/- source-tree-label: STL1|L|addr=1011011|role=proof_code_atom|slug=sourcetree-weight|owner=canonical_owner|core=SourceTree/Weight.lean|leaf=M536f75726365547265652f5765696768742e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PoleBaseWeight.Variant53ecb1858f7837f7100e5b1bc3dee2dc56fa5fba7dd4dc5c547f800fbfd86db9

set_option autoImplicit false

namespace Think.SourceTree

def poleBaseWeight : Pole -> Nat
  | .request => 4
  | .carrier => 4
  | .lowering => 4
  | .trace => 14
  | .compact => 8
  | .classifier => 7
  | .scheduler => 7
  | .cluster => 5
  | .boundary => 8

def poleWeight (p : Pole) : PoleWeight :=
  { pole := p, weight := poleBaseWeight p }

theorem poleBaseWeight_pos (p : Pole) :
    0 < poleBaseWeight p := by
  cases p <;> decide

end Think.SourceTree
```
