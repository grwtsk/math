/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean elaboration, kernel and axiom checks NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeBeaconCardinality
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Data.Finset.Sort

/-!
# Canonical 16-bit address encoding and increasing beacon index

Unlike an arbitrary Fintype.equivFinOfCardEq, these equivalences
encode bits by explicit little-endian finite-digit arithmetic. The
4096 frozen addresses are sorted by their actual 16-bit numeric code.
The resulting beacon index is deterministic at the mathematical
definition level and gives stable mapping to the already defined
zero-indexed nth-prime labels.

This module does not change the 16D adjacency or prime membership
predicates. Arithmetic cutoffs are supplied independently.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CanonicalPrimeBeaconIndex16

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality

/-- Explicit value-preserving binary equivalence, 0 ↔ 0 and 1 ↔ 1. -/
def bitEquiv : ZMod 2 ≃ Fin 2 where
  toFun z := ⟨z.val, ZMod.val_lt z⟩
  invFun z := (z.val : ZMod 2)
  left_inv z := ZMod.natCast_zmod_val z
  right_inv z := by
    apply Fin.ext
    exact ZMod.val_cast_of_lt z.isLt

/-- A port is the little-endian integer represented by its four bits. -/
def portCode : Port 4 ≃ Fin 16 :=
  (Equiv.piCongrRight (fun _ : Fin 4 => bitEquiv)).trans
    (finFunctionFinEquiv (m := 2) (n := 4))

/-- A cell is the little-endian integer represented by its sixteen
port-ordered Boolean coordinates. -/
def addressCode : Cell 4 ≃ Fin 65536 :=
  (Equiv.piCongrRight (fun _ : Port 4 => bitEquiv)).trans
    ((Equiv.arrowCongr portCode (Equiv.refl (Fin 2))).trans
      (finFunctionFinEquiv (m := 2) (n := 16)))

/-- The original frozen-beacon subtype has an exact 16-bit code. -/
def encodedBeacon (b : Beacon 4) : Fin 65536 :=
  addressCode b.1

theorem encodedBeacon_injective : Function.Injective encodedBeacon :=
  addressCode.injective.comp Subtype.coe_injective

/-- A sorted finite set of the 4096 *existing* frozen addresses. -/
def beaconCodes : Finset (Fin 65536) :=
  (Finset.univ : Finset (Beacon 4)).image encodedBeacon

theorem beaconCodes_card : beaconCodes.card = 4096 := by
  classical
  unfold beaconCodes
  rw [Finset.card_image_of_injective _ encodedBeacon_injective]
  exact beacon_card_four

theorem encodedBeacon_mem (b : Beacon 4) :
    encodedBeacon b ∈ beaconCodes := by
  classical
  exact Finset.mem_image.mpr ⟨b, Finset.mem_univ b, rfl⟩

/-- Unique, increasing numeric rank among the existing frozen addresses.
The order is fixed by the explicit bit arithmetic, not an arbitrary choice. -/
def canonicalBeaconIndex (b : Beacon 4) : Fin 4096 :=
  (beaconCodes.orderIsoOfFin beaconCodes_card).symm
    ⟨encodedBeacon b, encodedBeacon_mem b⟩

set_option maxHeartbeats 2000000 in
theorem canonicalBeaconIndex_injective :
    Function.Injective canonicalBeaconIndex := by
  intro b c h
  -- Give elaboration the exact finite-set subtype and projection types.
  -- Do not ask whnf to discover them by reducing the sorted beacon set.
  have h' : (⟨encodedBeacon b, encodedBeacon_mem b⟩ : ↥beaconCodes) =
      ⟨encodedBeacon c, encodedBeacon_mem c⟩ :=
    (beaconCodes.orderIsoOfFin beaconCodes_card).symm.injective h
  have hc : encodedBeacon b = encodedBeacon c :=
    congrArg (fun z : ↥beaconCodes => (z : Fin 65536)) h'
  exact encodedBeacon_injective hc

theorem canonicalBeaconIndex_bijective :
    Function.Bijective canonicalBeaconIndex := by
  apply (Fintype.bijective_iff_injective_and_card _).mpr
  refine ⟨canonicalBeaconIndex_injective, ?_⟩
  simpa using beacon_card_four

/-- Stable prime label: the genuine nth prime selected by canonical rank. -/
def canonicalPrimeLabel (b : Beacon 4) : ℕ :=
  indexedPrime (canonicalBeaconIndex b)

theorem canonicalPrimeLabel_prime (b : Beacon 4) :
    Nat.Prime (canonicalPrimeLabel b) :=
  indexedPrime_prime (canonicalBeaconIndex b)

theorem canonicalPrimeLabel_injective :
    Function.Injective canonicalPrimeLabel :=
  indexedPrime_injective.comp canonicalBeaconIndex_injective

theorem canonicalPrimeLabel_le_of_prefix
    (h : PrefixFits16) (b : Beacon 4) :
    canonicalPrimeLabel b ≤ 65536 := by
  have hi : (canonicalBeaconIndex b).val ≤ 4095 := by
    have := (canonicalBeaconIndex b).isLt
    omega
  change Nat.nth Nat.Prime (canonicalBeaconIndex b).val ≤ 65536
  exact (Nat.nth_monotone Nat.infinite_setOfPred_prime hi).trans h

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CanonicalPrimeBeaconIndex16
