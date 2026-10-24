# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M536f75726365547265652f56657262576f72642e6c65616e.Variant7a1800501468bab3a96a17664bb8d7b8c449ac3a0acd067d2095a5efc87aaa41

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c59c99c70ff9cc5461d51c9475fec3076bb173b` · SHA-256 `7a1800501468bab3a96a17664bb8d7b8c449ac3a0acd067d2095a5efc87aaa41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.M536f75726365547265652f5072696d65566572622e6c65616e

/- source-tree-label: STL1|L|addr=11111111|role=proof_code_atom|slug=sourcetree-verbword|owner=canonical_owner|core=SourceTree/VerbWord.lean|leaf=M536f75726365547265652f56657262576f72642e6c65616e.lean -/

set_option autoImplicit false

def verbShadow : List PrimeVerb → Nat | [] => 1 | v :: rest => primeVerbLabel v * verbShadow rest

theorem verb_shadow_append (a b : List PrimeVerb) : verbShadow (a ++ b) = verbShadow a * verbShadow b := by
  induction a with
  | nil => simp [verbShadow]
  | cons v rest ih => simp [verbShadow, ih, Nat.mul_assoc]
```
