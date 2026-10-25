# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M5472616e73666572732f526573696475654f626c69676174696f6e2e6c65616e.Variantf3775bb4404c34dcd0789d0b73139b34b7acd85bad2a8dd0e65a3dece54d40db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17892c522ccbfc894e87314191a3036d6c52c501` · SHA-256 `1566d42803197ba8e357bb5886c7dcf3a05bd0832b9d572efe1c58c8e00c547f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResidueObligation.Variant1ea23743f25b65c328f51c8746a6e75b10f7f0165995f9bcd057a708067992c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ea23743f25b65c328f51c8746a6e75b10f7f0165995f9bcd057a708067992c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ResidueObligation.Variant1ea23743f25b65c328f51c8746a6e75b10f7f0165995f9bcd057a708067992c3","mathematical_subject":"Foundations.Unclassified","original_sha256":"1ea23743f25b65c328f51c8746a6e75b10f7f0165995f9bcd057a708067992c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit1/Bit0/Bit1/Bit1/Bit0/Bit0/M5472616e73666572732f526573696475654f626c69676174696f6e2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=11101100|role=proof_code_atom|slug=transfers-residueobligation|owner=canonical_owner|core=Transfers/ResidueObligation.lean|leaf=M5472616e73666572732f526573696475654f626c69676174696f6e2e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResidueObligation.Variant1ea23743f25b65c328f51c8746a6e75b10f7f0165995f9bcd057a708067992c3

set_option autoImplicit false

namespace Think.Transfers

structure ResidueObligation (r : FWR.Residue) where
  localClaim : Prop
  target : FWR.Target
  targetMatches : target = r.target
  kind : FWR.ResidueKind
  kindMatches : kind = r.kind
  atomId : String
  atomMatches : atomId = r.atomId
  blocks : String
  blocksMatches : blocks = r.blocks
  clearsBy : String
  clearsByMatches : clearsBy = r.clearsBy

theorem residueObligation_matches_target
    (r : FWR.Residue) (obligation : ResidueObligation r) :
    obligation.target = r.target := by
  exact obligation.targetMatches

theorem residueObligation_matches_kind
    (r : FWR.Residue) (obligation : ResidueObligation r) :
    obligation.kind = r.kind := by
  exact obligation.kindMatches

theorem residueObligation_matches_blocks
    (r : FWR.Residue) (obligation : ResidueObligation r) :
    obligation.blocks = r.blocks := by
  exact obligation.blocksMatches

theorem residueObligation_matches_atom
    (r : FWR.Residue) (obligation : ResidueObligation r) :
    obligation.atomId = r.atomId := by
  exact obligation.atomMatches

theorem residueObligation_matches_clearsBy
    (r : FWR.Residue) (obligation : ResidueObligation r) :
    obligation.clearsBy = r.clearsBy := by
  exact obligation.clearsByMatches

end Think.Transfers
```
