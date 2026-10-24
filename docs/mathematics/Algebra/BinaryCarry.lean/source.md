# Complete source: GRWTSK.Algebra.BinaryCarry

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c17d116861d36c4ae20624c803c06819686c8ecd` · SHA-256 `b158ca48b1f3c7f2d9ef597e8b3aeaed4e8ef6fc4e6143912052c1d76a87aef9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
Research direction: grwtsk contributors.
Authored formalization of the supplied mathematical argument, with ChatGPT assistance.
Mathlib and inherited results retain their authorship and licenses.
Status: proof source prepared; a successful pinned Lean kernel replay is required.
This file neither assumes nor proves the unresolved all-depth arithmetic bound.
-/

namespace GRWTSK.Algebra.BinaryCarry

/-- Incoming carry is arbitrary; the Hankel specialization fixes it to one. -/
def carry (i j h : ℕ) : ℕ → ℕ
  | 0 => h
  | n+1 => ((i/2^n)%2+(j/2^n)%2+carry i j h n)/2

def bit (i j h n : ℕ) : ℕ :=
  ((i/2^n)%2+(j/2^n)%2+carry i j h n)%2

def prefix (i j h : ℕ) : ℕ → ℕ
  | 0 => 0
  | n+1 => prefix i j h n+2^n*bit i j h n

/-- The scalar carry recurrence has a unique quotient/remainder at every bit. -/
theorem local_identity (i j h n : ℕ) :
    (i/2^n)%2+(j/2^n)%2+carry i j h n =
      bit i j h n+2*carry i j h (n+1) := by
  dsimp [bit, carry]
  omega

theorem bit_lt_two (i j h n : ℕ) : bit i j h n < 2 := Nat.mod_lt _ (by decide)

theorem carry_le_one (i j h : ℕ) (hh : h ≤ 1) : ∀ n, carry i j h n ≤ 1 := by
  intro n
  induction n with
  | zero => exact hh
  | succ n ih =>
      have hi := Nat.mod_lt (i/2^n) (by decide : 0 < 2)
      have hj := Nat.mod_lt (j/2^n) (by decide : 0 < 2)
      simp only [carry]
      omega

/-- Arithmetic digit split, including a potentially nonzero terminal carry. -/
theorem input_digit_split (i n : ℕ) :
    i%2^(n+1) = i%2^n + 2^n*((i/2^n)%2) := by
  have hp : 0 < 2^n := pow_pos (by decide) n
  have hdiv := Nat.mod_add_div i (2^n)
  have hq := Nat.mod_add_div (i/2^n) 2
  have hmod := Nat.mod_lt i hp
  have hbit := Nat.mod_lt (i/2^n) (by decide : 0 < 2)
  have he : i = (i%2^n+2^n*((i/2^n)%2))+(2^(n+1))*((i/2^n)/2) := by
    rw [pow_succ]
    have hm := congrArg (fun z : ℕ => 2^n*z) hq
    nlinarith
  have hr : i%2^n+2^n*((i/2^n)%2) < 2^(n+1) := by
    have hb : (i/2^n)%2=0 ∨ (i/2^n)%2=1 := by omega
    rcases hb with hb | hb
    · simp only [hb, mul_zero, add_zero, pow_succ]
      omega
    · simp only [hb, mul_one, pow_succ]
      omega
  calc
    i%2^(n+1) =
        ((i%2^n+2^n*((i/2^n)%2))+2^(n+1)*((i/2^n)/2))%2^(n+1) :=
      congrArg (fun z : ℕ => z%2^(n+1)) he
    _ = (i%2^n+2^n*((i/2^n)%2))%2^(n+1) := by simp [Nat.add_mod]
    _ = i%2^n+2^n*((i/2^n)%2) := Nat.mod_eq_of_lt hr

/-- Complete bit invariant. This proves the index law at every length, not a sample list. -/
theorem prefix_identity (i j h n : ℕ) :
    i%2^n+j%2^n+h = prefix i j h n+2^n*carry i j h n := by
  induction n with
  | zero => simp [prefix, carry]
  | succ n ih =>
      rw [input_digit_split, input_digit_split, prefix, pow_succ]
      have hc := local_identity i j h n
      have hm := congrArg (fun z : ℕ => 2^n*z) hc
      nlinarith

/-- The target is c_(i+j+1), with the final carry included. -/
theorem hankel_index (i j n : ℕ) (hi : i < 2^n) (hj : j < 2^n) :
    i+j+1 = prefix i j 1 n+2^n*carry i j 1 n := by
  simpa only [Nat.mod_eq_of_lt hi, Nat.mod_eq_of_lt hj] using prefix_identity i j 1 n

/-- A function of the coefficient label is reconstructed without changing the source. -/
theorem coefficient_return {K : Type*} (c : ℕ → K) (i j n : ℕ)
    (hi : i < 2^n) (hj : j < 2^n) :
    c (i+j+1)=c (prefix i j 1 n+2^n*carry i j 1 n) := by
  rw [hankel_index i j n hi hj]

end GRWTSK.Algebra.BinaryCarry
```
