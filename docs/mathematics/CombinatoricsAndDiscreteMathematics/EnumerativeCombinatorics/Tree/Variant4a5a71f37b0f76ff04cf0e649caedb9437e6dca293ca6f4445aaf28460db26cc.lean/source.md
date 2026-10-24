# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Tree.Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30bffea601174fa6c711020b6a2d7b06028e615f` · SHA-256 `4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Catalan.Tree

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: catalan.ctree
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan

inductive CTree where
  | leaf : CTree
  | node : CTree → CTree → CTree
deriving DecidableEq, Repr

namespace CTree

def internal : CTree → Nat
  | leaf => 0
  | node l r => internal l + internal r + 1

def leaves : CTree → Nat
  | leaf => 1
  | node l r => leaves l + leaves r

def depth : CTree → Nat
  | leaf => 0
  | node l r => Nat.succ (max (depth l) (depth r))

def mirror : CTree → CTree
  | leaf => leaf
  | node l r => node (mirror r) (mirror l)

@[simp]
theorem leaves_eq_internal_add_one :
    ∀ T : CTree, T.leaves = T.internal + 1 := by
  intro T
  induction T with
  | leaf => rfl
  | node l r ihl ihr =>
      simp [leaves, internal, ihl, ihr]
      omega

@[simp]
theorem mirror_mirror :
    ∀ T : CTree, T.mirror.mirror = T := by
  intro T
  induction T with
  | leaf => rfl
  | node l r ihl ihr =>
      simp [mirror, ihl, ihr]

@[simp]
theorem internal_mirror :
    ∀ T : CTree, T.mirror.internal = T.internal := by
  intro T
  induction T with
  | leaf => rfl
  | node l r ihl ihr =>
      simp [mirror, internal, ihl, ihr]
      omega

@[simp]
theorem leaves_mirror :
    ∀ T : CTree, T.mirror.leaves = T.leaves := by
  intro T
  rw [leaves_eq_internal_add_one, internal_mirror, leaves_eq_internal_add_one]

end CTree
end Catalan
end Folder
```
