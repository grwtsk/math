/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean elaboration, kernel replay, axioms NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeHypercube
import Mathlib.GroupTheory.Index
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.Data.Fintype.EquivFin

/-!
# Exact frozen-beacon count and injective prime-label assignment

The syndrome is a surjective additive homomorphism from the 16-bit
address group to its four-bit port group. Finite cardinality of its
kernel gives *exactly* 4096 frozen guideposts, not a computational
estimate. An arbitrary mathematical equivalence indexes that kernel
by Fin 4096. The nth-prime function supplies pairwise distinct
prime labels. This equivalence is noncomputable and is NOT a stable
runtime serialization order; a canonical enumeration is separate.

All labels are proven prime and distinct. The additional statement
that they fit in [1,65536] is isolated as a separate numeric supplier,
not silently inferred from prime infinitude.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube

/-- The original syndrome packaged as a genuine additive homomorphism. -/
def syndromeHom (m : ℕ) : Cell m →+ Port m where
  toFun := syndrome
  map_zero' := by simp [syndrome]
  map_add' := fun x y => syndrome_add x y

/-- Every syndrome is attained by the impulse at its own coordinate. -/
theorem syndromeHom_surjective (m : ℕ) :
    Function.Surjective (syndromeHom m) := by
  intro i
  refine ⟨impulse i, ?_⟩
  exact syndrome_impulse i

/-- The literal zero-syndrome subgroup, not a newly chosen set. -/
abbrev Beacon (m : ℕ) := ↥(syndromeHom m).ker

/-- The subgroup predicate is the existing frozen predicate. -/
theorem beacon_is_frozen {m : ℕ} (b : Beacon m) :
    Frozen m b.1 := by
  simpa [Frozen, syndromeHom] using b.2

/-- The 16-bit cube has precisely 4096 zero-syndrome beacons. -/
theorem beacon_card_four : Fintype.card (Beacon 4) = 4096 := by
  classical
  have hindex :
      (syndromeHom 4).ker.index = Nat.card (Port 4) := by
    calc
      (syndromeHom 4).ker.index = Nat.card (syndromeHom 4).range :=
        AddSubgroup.index_ker (syndromeHom 4)
      _ = Nat.card (Port 4) := by
        simpa [(syndromeHom 4).range_eq_top_of_surjective
          (syndromeHom_surjective 4)]
  have hkernel :
      Nat.card (Beacon 4) * Nat.card (Port 4) = Nat.card (Cell 4) := by
    calc
      Nat.card (Beacon 4) * Nat.card (Port 4) =
          Nat.card (Beacon 4) * (syndromeHom 4).ker.index := by rw [hindex]
      _ = Nat.card (Cell 4) :=
        (syndromeHom 4).ker.card_mul_index
  have hcount : Fintype.card (Beacon 4) * 16 = 65536 := by
    simpa only [Nat.card_eq_fintype_card, port_card_four, cell_card_four] using hkernel
  omega

/-- A mathematically chosen index for each frozen address.
Not a canonical cross-version encoding. -/
noncomputable def beaconIndex : Beacon 4 ≃ Fin 4096 :=
  Fintype.equivFinOfCardEq beacon_card_four

/-- The actual zero-indexed nth prime; no abstract token is substituted. -/
def indexedPrime (i : Fin 4096) : ℕ :=
  Nat.nth Nat.Prime i.val

theorem indexedPrime_prime (i : Fin 4096) :
    Nat.Prime (indexedPrime i) := by
  simpa only [indexedPrime] using Nat.prime_nth_prime i.val

theorem indexedPrime_injective : Function.Injective indexedPrime := by
  intro i j hij
  apply Fin.ext
  have hcount := congrArg Nat.primeCounting' hij
  simpa only [indexedPrime, Nat.primeCounting'_nth_eq] using hcount

/-- A distinct actual prime associated to each frozen beacon. -/
noncomputable def beaconPrimeLabel (b : Beacon 4) : ℕ :=
  indexedPrime (beaconIndex b)

theorem beaconPrimeLabel_prime (b : Beacon 4) :
    Nat.Prime (beaconPrimeLabel b) :=
  indexedPrime_prime (beaconIndex b)

theorem beaconPrimeLabel_injective :
    Function.Injective beaconPrimeLabel :=
  indexedPrime_injective.comp beaconIndex.injective

/-- The remaining finite prime-supply calculation, deliberately explicit. -/
def PrefixFits16 : Prop :=
  Nat.nth Nat.Prime 4095 ≤ 65536

/-- A proved endpoint bound suffices for every chosen beacon label. -/
theorem beaconPrimeLabel_le_of_prefix (h : PrefixFits16) (b : Beacon 4) :
    beaconPrimeLabel b ≤ 65536 := by
  have hi := (beaconIndex b).isLt
  have hm : (beaconIndex b).val ≤ 4095 := by omega
  change Nat.nth Nat.Prime (beaconIndex b).val ≤ 65536
  exact (Nat.nth_monotone Nat.infinite_setOfPred_prime hm).trans h

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality
