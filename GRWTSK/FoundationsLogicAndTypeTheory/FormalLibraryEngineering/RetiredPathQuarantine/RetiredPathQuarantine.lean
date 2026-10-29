
/- source-tree-label: STL1|L|addr=01111010|role=proof_code_atom|slug=validation-retiredpathquarantine|owner=canonical_owner|core=Validation/RetiredPathQuarantine.lean|leaf=M56616c69646174696f6e2f526574697265645061746851756172616e74696e652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Compact

structure RetiredPathQuarantine where
  historicalVocabularyOnly : Bool
  noExternalAuthority : Bool
  compactFacadeRequired : Bool
deriving Repr

def defaultRetiredPathQuarantine : RetiredPathQuarantine :=
  { historicalVocabularyOnly := true
    noExternalAuthority := true
    compactFacadeRequired := true }

theorem retiredPathQuarantine_noExternalAuthority :
    defaultRetiredPathQuarantine.noExternalAuthority = true := by
  rfl

theorem retiredPathQuarantine_facadeRequired :
    defaultRetiredPathQuarantine.compactFacadeRequired = true := by
  rfl

end Think.Compact
