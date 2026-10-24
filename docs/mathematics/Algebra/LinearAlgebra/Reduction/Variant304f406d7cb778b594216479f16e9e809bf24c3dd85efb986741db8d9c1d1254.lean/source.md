# Complete source: GRWTSK.Algebra.LinearAlgebra.Reduction.Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `072fcc40a94bef3129f152b0f3ab6263d92ac1eb` · SHA-256 `304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MatrixCalculus
import Mathlib.Algebra.Field.ZMod

namespace FormalResearch.MutationGame
open scoped BigOperators

/-- Coordinatewise reduction of the integral population. -/
def reduce {n : ℕ} (m : ℕ) (x : Population n) : Fin n → ZMod m :=
  fun j => (x j : ZMod m)

/-- The same loop-excluded formula in the specified residue ring. -/
def mutateResidue {n : ℕ} (m : ℕ) (A : Matrix (Fin n) (Fin n) ℤ) (i : Fin n)
    (x : Fin n → ZMod m) : Fin n → ZMod m :=
  fun j => if j = i then -x i + ∑ k ∈ Finset.univ.erase i, (A i k : ZMod m) * x k
    else x j

theorem reduce_mutate {n : ℕ} (m : ℕ) (A : Matrix (Fin n) (Fin n) ℤ)
    (i : Fin n) (x : Population n) :
    reduce m (mutate A i x) = mutateResidue m A i (reduce m x) := by
  funext j
  by_cases h : j = i <;> simp [reduce, mutate, mutateResidue, h]

/-- A finite residue mutation word in the frozen execution order. -/
def playResidue {n : ℕ} (m : ℕ) (A : Matrix (Fin n) (Fin n) ℤ)
    (w : List (Fin n)) (x : Fin n → ZMod m) : Fin n → ZMod m :=
  w.foldl (fun y i => mutateResidue m A i y) x

/-- Fixed finite words commute with every modulus, including prime powers.
No infinite word, convergence or recovered real sign is asserted. -/
theorem reduce_play {n : ℕ} (m : ℕ) (A : Matrix (Fin n) (Fin n) ℤ)
    (w : List (Fin n)) (x : Population n) :
    reduce m (play A w x) = playResidue m A w (reduce m x) := by
  induction w generalizing x with
  | nil => rfl
  | cons i w ih =>
    change reduce m (play A w (mutate A i x)) =
      playResidue m A w (mutateResidue m A i (reduce m x))
    rw [ih, reduce_mutate]

theorem reduced_mutation_determinant {n : ℕ} (m : ℕ)
    (A : Matrix (Fin n) (Fin n) ℤ) (i : Fin n) :
    ((mutationMatrix A i).map (Int.castRingHom (ZMod m))).det = -1 := by
  change ((Int.castRingHom (ZMod m)).mapMatrix (mutationMatrix A i)).det = -1
  rw [← RingHom.map_det, mutationMatrix_det]
  simp

/-- Integer mutation operators stay invertible even where the reduced form degenerates. -/
theorem reduced_mutation_isUnit {n : ℕ} (m : ℕ)
    (A : Matrix (Fin n) (Fin n) ℤ) (i : Fin n) :
    IsUnit ((mutationMatrix A i).map (Int.castRingHom (ZMod m))) := by
  apply (Matrix.isUnit_iff_isUnit_det _).mpr
  rw [reduced_mutation_determinant]
  exact isUnit_one.neg

end FormalResearch.MutationGame
```
