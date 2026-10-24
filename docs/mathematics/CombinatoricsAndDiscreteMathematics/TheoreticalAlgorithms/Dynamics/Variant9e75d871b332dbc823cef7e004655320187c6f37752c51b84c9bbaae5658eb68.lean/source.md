# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dynamics.Variant9e75d871b332dbc823cef7e004655320187c6f37752c51b84c9bbaae5658eb68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `efdcd9fc5e96ef79d9d9ccb9cb10341d49f0098c` · SHA-256 `9e75d871b332dbc823cef7e004655320187c6f37752c51b84c9bbaae5658eb68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.BooleanNetwork

namespace Boolean.Cube

/-- A finite prefix of a network orbit. -/
def BooleanNetwork.trajectory {n : Nat}
    (N : BooleanNetwork.Network n)
    (x : Hypercube.Point n)
    (horizon : Nat) :
    List (Hypercube.Point n) :=
  (List.range (horizon + 1)).map
    (fun t => BooleanNetwork.iterate N t x)

/-- A state fixed by one network update. -/
def BooleanNetwork.FixedPoint {n : Nat}
    (N : BooleanNetwork.Network n)
    (x : Hypercube.Point n) :
    Prop :=
  N.step x = x

/-- A state returning to itself after a positive period. -/
def BooleanNetwork.PeriodicPoint {n : Nat}
    (N : BooleanNetwork.Network n)
    (x : Hypercube.Point n)
    (period : Nat) :
    Prop :=
  period > 0 ∧ BooleanNetwork.iterate N period x = x

/-- State `x` reaches state `y` after finitely many updates. -/
def BooleanNetwork.EventuallyReaches {n : Nat}
    (N : BooleanNetwork.Network n)
    (x y : Hypercube.Point n) :
    Prop :=
  ∃ t : Nat, BooleanNetwork.iterate N t x = y

/-- Basin membership for a predicate describing target states. -/
def BooleanNetwork.Basin {n : Nat}
    (N : BooleanNetwork.Network n)
    (target : Hypercube.Point n → Prop)
    (x : Hypercube.Point n) :
    Prop :=
  ∃ y : Hypercube.Point n, target y ∧ BooleanNetwork.EventuallyReaches N x y

@[simp] theorem BooleanNetwork.iterate_zero {n : Nat}
    (N : BooleanNetwork.Network n)
    (x : Hypercube.Point n) :
    BooleanNetwork.iterate N 0 x = x := rfl

@[simp] theorem BooleanNetwork.iterate_succ {n : Nat}
    (N : BooleanNetwork.Network n)
    (t : Nat)
    (x : Hypercube.Point n) :
    BooleanNetwork.iterate N (t + 1) x =
      BooleanNetwork.iterate N t (N.step x) := rfl

theorem BooleanNetwork.fixedPoint_iterate {n : Nat}
    (N : BooleanNetwork.Network n)
    (x : Hypercube.Point n)
    (h : BooleanNetwork.FixedPoint N x)
    (t : Nat) :
    BooleanNetwork.iterate N t x = x := by
  induction t with
  | zero => rfl
  | succ t ih =>
      rw [BooleanNetwork.iterate_succ, h]
      exact ih

theorem BooleanNetwork.fixedPoint_periodic {n : Nat}
    (N : BooleanNetwork.Network n)
    (x : Hypercube.Point n)
    (h : BooleanNetwork.FixedPoint N x) :
    BooleanNetwork.PeriodicPoint N x 1 := by
  constructor
  · exact Nat.succ_pos 0
  · simp [BooleanNetwork.FixedPoint] at h
    exact h

end Boolean.Cube
```
