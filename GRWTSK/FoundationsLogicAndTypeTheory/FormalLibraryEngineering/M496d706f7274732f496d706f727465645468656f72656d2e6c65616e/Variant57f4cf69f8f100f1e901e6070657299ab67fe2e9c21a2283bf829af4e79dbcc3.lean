import Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.M496d706f7274732f417574686f726974794c6576656c2e6c65616e


/- source-tree-label: STL1|L|addr=1100100|role=proof_code_atom|slug=imports-importedtheorem|owner=canonical_owner|core=Imports/ImportedTheorem.lean|leaf=M496d706f7274732f496d706f727465645468656f72656d2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Imports

structure ImportedTheorem where
  theoremId : String
  sourceModule : String
  theoremName : String
  importedProp : Prop
  proof : importedProp

end Think.Imports
