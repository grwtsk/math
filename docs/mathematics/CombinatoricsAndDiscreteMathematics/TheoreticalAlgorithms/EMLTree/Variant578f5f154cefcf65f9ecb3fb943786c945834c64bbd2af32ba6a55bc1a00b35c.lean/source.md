# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EMLTree.Variant578f5f154cefcf65f9ecb3fb943786c945834c64bbd2af32ba6a55bc1a00b35c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d034a534b19ae1b019c17ff23b99a1dcd3569828` · SHA-256 `578f5f154cefcf65f9ecb3fb943786c945834c64bbd2af32ba6a55bc1a00b35c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Core

namespace Surface.Legacy

inductive EMLTree (k : Nat) where
  | one : EMLTree k
  | var : Fin k -> EMLTree k
  | eml : EMLTree k -> EMLTree k -> EMLTree k
deriving DecidableEq, Repr

namespace EMLTree

def size : EMLTree k -> Nat
  | .one => 1
  | .var _ => 1
  | .eml a b => 1 + size a + size b

def depth : EMLTree k -> Nat
  | t => size t

def vars : EMLTree k -> List (Fin k)
  | .one => []
  | .var i => [i]
  | .eml a b => vars a ++ vars b

theorem size_pos (t : EMLTree k) : 0 < t.size := by
  induction t with
  | one => exact Nat.succ_pos 0
  | var _ => exact Nat.succ_pos 0
  | eml a b _ _ =>
      show 0 < 1 + a.size + b.size
      simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
        Nat.succ_pos (a.size + b.size)

theorem depth_le_size (t : EMLTree k) : t.depth ≤ t.size := by
  simp [depth]

theorem vars_subset_univ (t : EMLTree k) :
    ∀ v, v ∈ t.vars -> v ∈ List.finRange k := by
  intro v _
  exact List.mem_finRange v

end EMLTree

structure EMLAlgebra where
  Carrier : Type
  one : Carrier
  eml : Carrier -> Carrier -> Carrier

def EMLTree.eval (A : EMLAlgebra) (env : Fin k -> A.Carrier) :
    EMLTree k -> A.Carrier
  | .one => A.one
  | .var i => env i
  | .eml a b => A.eml (a.eval A env) (b.eval A env)

end Surface.Legacy
```
