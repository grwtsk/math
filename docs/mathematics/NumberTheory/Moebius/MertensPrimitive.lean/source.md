# Complete source: GRWTSK.NumberTheory.Moebius.MertensPrimitive

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45e06c371d67bcf8c939d20a95fcbc63570546fa` · SHA-256 `fc993b9b1fbd1366f5cd911e0f50af940d42f0777444b2bcad82d00f70ea19f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license.
Source-specific CCC continuation; local conditional candidate, RH remains open. -/
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
# Exact pickup budget propositions and conditional numerical reductions

Human mathematical direction and theorem selection: grwtsk contributors.
Implementation: OpenAI Codex. This research module defines the complete closed
Möbius pickup and its response Gram. No arithmetic growth premise is asserted.
The integral/source adapters remain explicit hypotheses of the budget consumer.
-/

set_option autoImplicit false

noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set
open scoped BigOperators

def moebiusReal (n : ℕ) : ℝ := (ArithmeticFunction.moebius n : ℤ)

def mertensPrefix (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, moebiusReal n

def pickupVelocity (u : ℝ) : ℝ := Real.exp (-u / 2) * mertensPrefix (Real.exp u)

def wholePickup (T : ℝ) : ℝ := ∫ u in (0 : ℝ)..T, pickupVelocity u

def pickupResponse (n : ℕ) (u : ℝ) : ℝ :=
  if Real.log n ≤ u then 2 * ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) else 0

def pickupResponseGram (T : ℝ) (m n : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..T, pickupResponse m u * pickupResponse n u

def pickupEnergy (T : ℝ) : ℝ := ∫ u in (0 : ℝ)..T, wholePickup u ^ 2

def pickupLocalEnergy (T : ℝ) : ℝ :=
  ∫ u in max 0 (T - 1)..T, wholePickup u ^ 2

def pickupDiagonal (T : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    moebiusReal n ^ 2 * pickupResponseGram T n n

def pickupCross (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      if m ≠ n then moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0

def pickupFullGram (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      moebiusReal m * moebiusReal n * pickupResponseGram T m n

def PickupCrossPoly : Prop :=
  ∃ C r : ℝ, 0 ≤ C ∧ 0 ≤ r ∧
    ∀ T : ℝ, 0 ≤ T → pickupCross T ≤ C * (1 + T) ^ r

def PickupEnergyPoly : Prop :=
  ∃ C q : ℝ, 0 ≤ C ∧ 0 ≤ q ∧
    ∀ T : ℝ, 0 ≤ T → pickupEnergy T ≤ C * (1 + T) ^ q

def PickupReturnPoly : Prop :=
  ∃ C s : ℝ, 0 ≤ C ∧ 0 ≤ s ∧ ∀ T : ℝ, 0 ≤ T →
    wholePickup T ^ 2 ≤ C * (1 + T) ^ s * (1 + pickupLocalEnergy T)

def WholePickupPoly : Prop :=
  ∃ C p : ℝ, 0 ≤ C ∧ 0 ≤ p ∧
    ∀ T : ℝ, 0 ≤ T → |wholePickup T| ≤ C * (1 + T) ^ p

/-- Both complete signed orders survive; this is a finite algebraic identity. -/
theorem complete_gram_split {ι : Type*} [DecidableEq ι]
    (S : Finset ι) (c : ι → ℝ) (H : ι → ι → ℝ) :
    (∑ m ∈ S, ∑ n ∈ S, c m * c n * H m n) =
      (∑ m ∈ S, c m ^ 2 * H m m) +
      ∑ m ∈ S, ∑ n ∈ S, if m ≠ n then c m * c n * H m n else 0 := by
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have hd : c m ^ 2 * H m m =
      ∑ n ∈ S, if m = n then c m * c n * H m n else 0 := by
    simp [hm, pow_two]
  rw [hd, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  by_cases h : m = n <;> simp [h]

/-- The actual Möbius response Gram has an exact complete ordered split. -/
theorem pickup_full_gram_split (T : ℝ) :
    pickupFullGram T = pickupDiagonal T + pickupCross T := by
  exact complete_gram_split _ _ _

/-- P00 and P01 are named inputs; neither is hidden in the arithmetic premise. -/
theorem cross_poly_iff_energy_poly
    (hidentity : ∀ T : ℝ, 0 ≤ T →
      pickupEnergy T = pickupDiagonal T + pickupCross T)
    (hdiagonal : ∀ T : ℝ, 0 ≤ T →
      0 ≤ pickupDiagonal T ∧ pickupDiagonal T ≤ 2 * T ^ 2) :
    PickupCrossPoly ↔ PickupEnergyPoly := by
  constructor
  · rintro ⟨C, r, hC, hr, hbound⟩
    refine ⟨C + 2, max r 2, by positivity, le_trans hr (le_max_left _ _), ?_⟩
    intro T hT
    have hbase : 1 ≤ 1 + T := by linarith
    have hpowr := Real.rpow_le_rpow_of_exponent_le hbase (le_max_left r (2 : ℝ))
    have hpow2 := Real.rpow_le_rpow_of_exponent_le hbase (le_max_right r (2 : ℝ))
    have hTsq : T ^ 2 ≤ (1 + T) ^ (2 : ℝ) := by
      rw [Real.rpow_two]
      nlinarith
    rw [hidentity T hT]
    calc
      pickupDiagonal T + pickupCross T ≤ 2 * T ^ 2 + C * (1 + T) ^ r :=
        add_le_add (hdiagonal T hT).2 (hbound T hT)
      _ ≤ 2 * (1 + T) ^ max r 2 + C * (1 + T) ^ max r 2 :=
        add_le_add (mul_le_mul_of_nonneg_left (hTsq.trans hpow2) (by norm_num))
          (mul_le_mul_of_nonneg_left hpowr hC)
      _ = (C + 2) * (1 + T) ^ max r 2 := by ring
  · rintro ⟨C, q, hC, hq, hbound⟩
    refine ⟨C, q, hC, hq, ?_⟩
    intro T hT
    have he := hidentity T hT
    have hd := (hdiagonal T hT).1
    linarith [hbound T hT]

end GRWTSK.RiemannHypothesis.CCC
```
