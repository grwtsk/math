import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.M536f75726365547265652f5072696d65566572622e6c65616e

/- source-tree-label: STL1|L|addr=11111111|role=proof_code_atom|slug=sourcetree-verbword|owner=canonical_owner|core=SourceTree/VerbWord.lean|leaf=M536f75726365547265652f56657262576f72642e6c65616e.lean -/

set_option autoImplicit false

def verbShadow : List PrimeVerb → Nat | [] => 1 | v :: rest => primeVerbLabel v * verbShadow rest

theorem verb_shadow_append (a b : List PrimeVerb) : verbShadow (a ++ b) = verbShadow a * verbShadow b := by
  induction a with
  | nil => simp [verbShadow]
  | cons v rest ih => simp [verbShadow, ih, Nat.mul_assoc]
