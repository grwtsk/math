/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean, kernel replay and axiom audit NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.CanonicalPrimeBeaconIndex16
import Mathlib.Logic.Equiv.Fin.Basic

/-!
# Canonical square-prime coordinates and translation-invariant Hamming kernel

At every k there is an exact 2^k × 2^k square, not an arbitrary layout.
The 16D beacon source is the genuine 4096-element zero-syndrome
binary additive group. The numerical encoding follows its canonical
prime-beacon order rather than choosing a nonpersistent equivalence.

The Hamming kernel is translation-invariant on the actual beacon group.
An independently derived exact 16-term positive Walsh eigenvalue
formula and its finite arithmetic controls live in the adjacent
source record. That complete spectral identity is NOT YET a Lean theorem.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SquarePrimeFourierAddress

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CanonicalPrimeBeaconIndex16

/-- An arbitrary-scale exact square of 2^k by 2^k finite addresses. -/
def squareEquiv (k : ℕ) :
    Fin (2 ^ (k + k)) ≃ Fin (2 ^ k) × Fin (2 ^ k) :=
  (finCongr (show 2 ^ (k + k) = 2 ^ k * 2 ^ k by rw [pow_add])).trans
    (finProdFinEquiv (m := 2 ^ k) (n := 2 ^ k)).symm

/-- In the base chart, 4096 addresses form a canonical 64×64 square. -/
def square4096 : Fin 4096 ≃ Fin 64 × Fin 64 :=
  (finCongr (show 4096 = 2 ^ (6 + 6) by norm_num)).trans (squareEquiv 6)

theorem squareEquiv_roundtrip (k : ℕ) (i : Fin (2 ^ (k + k))) :
    (squareEquiv k).symm (squareEquiv k i) = i :=
  (squareEquiv k).symm_apply_apply i

theorem squareEquiv_injective (k : ℕ) :
    Function.Injective (squareEquiv k) :=
  (squareEquiv k).injective

theorem square4096_roundtrip (i : Fin 4096) :
    square4096.symm (square4096 i) = i :=
  square4096.symm_apply_apply i

theorem square4096_card :
    Fintype.card (Fin 64 × Fin 64) = 4096 := by
  norm_num

/-- The existing canonical beacon rank supplies the square address. -/
def beaconSquare : Beacon 4 ≃ Fin 64 × Fin 64 :=
  (Equiv.ofBijective canonicalBeaconIndex canonicalBeaconIndex_bijective).trans
    square4096

theorem beaconSquare_roundtrip (b : Beacon 4) :
    beaconSquare.symm (beaconSquare b) = b :=
  beaconSquare.symm_apply_apply b

theorem beaconSquare_injective : Function.Injective beaconSquare :=
  beaconSquare.injective

/-- Hamming weight of an actual sixteen-bit atlas cell. -/
def weight16 (x : Cell 4) : ℕ := by
  classical
  exact ((Finset.univ : Finset (Port 4)).filter (fun i => x i ≠ 0)).card

theorem weight16_le (x : Cell 4) : weight16 x ≤ 16 := by
  classical
  unfold weight16
  have h := Finset.card_filter_le (Finset.univ : Finset (Port 4))
    (fun i => x i ≠ 0)
  simpa only [Finset.card_univ, port_card_four] using h

/-- Hamming distance on the real 4096-element frozen subgroup. -/
def beaconDistance (x y : Beacon 4) : ℕ := weight16 (x.1 - y.1)

theorem beaconDistance_self (x : Beacon 4) :
    beaconDistance x x = 0 := by
  simp [beaconDistance, weight16]

theorem beaconDistance_translate (x y a : Beacon 4) :
    beaconDistance (x + a) (y + a) = beaconDistance x y := by
  change weight16 ((x.1 + a.1) - (y.1 + a.1)) = weight16 (x.1 - y.1)
  congr 1
  abel

/-- Exact integer-scaled spatial kernel at correlation parameter 1/2. -/
def integerHammingKernel (x y : Beacon 4) : ℕ :=
  2 ^ (16 - beaconDistance x y)

theorem integerHammingKernel_translate (x y a : Beacon 4) :
    integerHammingKernel (x + a) (y + a) =
      integerHammingKernel x y := by
  simp only [integerHammingKernel, beaconDistance_translate]

theorem integerHammingKernel_self (x : Beacon 4) :
    integerHammingKernel x x = 65536 := by
  simp [integerHammingKernel, beaconDistance_self]

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SquarePrimeFourierAddress
