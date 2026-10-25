# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClauseConvertType.Variant279b4b8b8340173c38ff04ac3c110c119b8353edd663cab316deea137c76823f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2567daa785e71f4968ea8ca8cf7b5d83ac1134c1` · SHA-256 `279b4b8b8340173c38ff04ac3c110c119b8353edd663cab316deea137c76823f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
open Qq Lean

/-!
Type-safe conversion from values of type `Sum α β` to values of type `Sum α (Sum β Empty)`.
-/

def orLevel : (ps : List ((u : Level) × Q(Type u))) → Level
  | [] => .zero
  | ⟨u, _⟩ :: ps => .max u (orLevel ps)

def or1 : (ps : List ((u : Level) × Q(Type u))) → Q(Type $(orLevel ps))
  | [] => q(Empty)
  | [⟨_, p⟩] => q($p)
  | ⟨u, p⟩::ps => q(Sum $p $(or1 ps))

def or2 : (ps : List ((u : Level) × Q(Type u))) → Q(Type $(orLevel ps))
  | [] => q(Empty)
  | ⟨u, p⟩ :: ps => q(Sum $p $(or2 ps))

def orChange : (ps : List ((u : Level) × Q(Type u))) → Q($(or1 ps) → $(or2 ps))
  | [] => q(id)
  | [⟨_, _⟩] => q(Sum.inl)
  | ⟨_, _⟩::(ps1::ps2) =>
    let h := orChange (ps1::ps2)
    q(fun h => match h with
      | Sum.inl l => Sum.inl l
      | Sum.inr r => Sum.inr ($h r))
```
