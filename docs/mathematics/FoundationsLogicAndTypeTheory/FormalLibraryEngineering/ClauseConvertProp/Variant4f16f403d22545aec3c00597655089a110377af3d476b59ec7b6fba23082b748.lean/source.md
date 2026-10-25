# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClauseConvertProp.Variant4f16f403d22545aec3c00597655089a110377af3d476b59ec7b6fba23082b748

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c887ca429f544c4028010ca7315def25ab87df8d` · SHA-256 `4f16f403d22545aec3c00597655089a110377af3d476b59ec7b6fba23082b748`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
open Qq

/-!
Type-safe conversion from proofs of `a ∨ b` to proofs of `a ∨ b ∨ false`.
-/

def or1 : List Q(Prop) → Q(Prop)
  | [] => q(False)
  | [p] => q($p)
  | p::ps => q($p ∨ $(or1 ps))

def or2 : List Q(Prop) → Q(Prop)
  | [] => q(False)
  | p::ps => q($p ∨ $(or2 ps))

def orChange : (ps : List Q(Prop)) → Q($(or1 ps) → $(or2 ps))
  | [] => q(id)
  | [p] => q(Or.inl)
  | p::(ps1::ps2) => q(by
      intro h
      cases h with
        | inl h => exact Or.inl h
        | inr h => exact Or.inr ($(orChange (ps1::ps2)) h))
```
