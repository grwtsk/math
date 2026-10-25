import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=11101100|role=proof_code_atom|slug=transfers-residueobligation|owner=canonical_owner|core=Transfers/ResidueObligation.lean|leaf=M5472616e73666572732f526573696475654f626c69676174696f6e2e6c65616e.lean -/

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
