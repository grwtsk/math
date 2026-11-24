/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; Lean compilation and kernel audit NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.CompatiblePrimeDimensionEmbedding
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeBeaconCardinality

/-!
# A concrete sixteen-to-sixty-four dimensional compatible atlas lift

The port injection appends two *high* zero bits to each original
four-bit coordinate signature. The address injection maps each
original coordinate impulse into that new sixty-four-coordinate
system and extends all source words linearly over ZMod 2.

The proof goal is a genuine instance of the already checked
CompatibleEmbedding 4 6, not merely a record of its hypotheses.
It preserves the original one-bit adjacency and exact primary
guidepost locator. The map is a logical coordinate embedding,
never a promise about physical macOS RAM or SSD placement.
-/

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 10000
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ConcretePrimeAtlasLift16To64

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CompatiblePrimeDimensionEmbedding

/-- Append two zero-valued high-order signature bits. -/
def portLift (i : Port 4) : Port 6 :=
  Fin.snoc (Fin.snoc i 0) 0

/-- Recover the first four signature bits. -/
def portDrop (j : Port 6) : Port 4 :=
  Fin.init (Fin.init j)

theorem portDrop_portLift (i : Port 4) :
    portDrop (portLift i) = i := by
  revert i
  decide

theorem portLift_injective : Function.Injective portLift := by
  intro i j hij
  have h := congrArg portDrop hij
  simpa only [portDrop_portLift] using h

theorem portLift_zero : portLift (0 : Port 4) = 0 := by
  decide

theorem portLift_add (i j : Port 4) :
    portLift (i + j) = portLift i + portLift j := by
  revert i j
  decide

theorem portLift_neg (i : Port 4) :
    portLift (-i) = -portLift i := by
  revert i
  decide

theorem portLift_smul (a : ZMod 2) (i : Port 4) :
    portLift (a • i) = a • portLift i := by
  revert a i
  decide

def portLiftHom : Port 4 →+ Port 6 where
  toFun := portLift
  map_zero' := portLift_zero
  map_add' := portLift_add

/-- Embedding of addresses through the explicit image of each impulse. -/
def addressLift (x : Cell 4) : Cell 6 :=
  ∑ i : Port 4, (x i) • impulse (portLift i)

theorem addressLift_add (x y : Cell 4) :
    addressLift (x + y) = addressLift x + addressLift y := by
  unfold addressLift
  simp_rw [Pi.add_apply, add_smul]
  exact Finset.sum_add_distrib

theorem addressLift_impulse (i : Port 4) :
    addressLift (impulse i) = impulse (portLift i) := by
  classical
  unfold addressLift
  rw [Fintype.sum_eq_single i]
  · simp [impulse, Pi.single_apply]
  · intro j hji
    simp [impulse, Pi.single_eq_of_ne hji]

theorem addressLift_port (x : Cell 4) (i : Port 4) :
    addressLift x (portLift i) = x i := by
  classical
  unfold addressLift
  simp only [Finset.sum_apply, Pi.smul_apply]
  rw [Fintype.sum_eq_single i]
  · simp [impulse, Pi.single_apply]
  · intro j hji
    have hj : portLift j ≠ portLift i := portLift_injective.ne hji
    have hz : impulse (portLift j) (portLift i) = 0 := by
      simp [impulse, Pi.single_apply, hj, Ne.symm hj]
    rw [hz, smul_zero]

theorem addressLift_injective : Function.Injective addressLift := by
  intro x y h
  funext i
  have hi := congrArg (fun f : Cell 6 => f (portLift i)) h
  simpa only [addressLift_port] using hi

theorem syndrome_smul {m : ℕ} (a : ZMod 2) (x : Cell m) :
    syndrome (a • x) = a • syndrome x := by
  classical
  simp [syndrome, Pi.smul_apply, Finset.smul_sum, smul_smul]

theorem syndrome_addressLift (x : Cell 4) :
    syndrome (addressLift x) = portLift (syndrome x) := by
  have hl :
      syndrome (addressLift x) =
        ∑ i : Port 4, (x i) • portLift i := by
    change (syndromeHom 6)
      (∑ i : Port 4, (x i) • impulse (portLift i)) = _
    rw [map_sum]
    apply Finset.sum_congr rfl
    intro i _
    change syndrome ((x i) • impulse (portLift i)) = _
    rw [syndrome_smul, syndrome_impulse]
  rw [hl]
  change (∑ i : Port 4, (x i) • portLift i) =
    portLiftHom (∑ i : Port 4, (x i) • i)
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro i _
  exact (portLift_smul (x i) i).symm

theorem addressLift_neighbor (x : Cell 4) (i : Port 4) :
    addressLift (neighbor x i) =
      neighbor (addressLift x) (portLift i) := by
  change addressLift (x + impulse i) =
    addressLift x + impulse (portLift i)
  rw [addressLift_add, addressLift_impulse]

/-- The exact concrete lift satisfying every pre-existing compatibility law. -/
def sixteenToSixtyFour : CompatibleEmbedding 4 6 where
  address := ⟨addressLift, addressLift_injective⟩
  port := ⟨portLift, portLift_injective⟩
  port_zero := portLift_zero
  port_neg := portLift_neg
  syndrome_commutes := syndrome_addressLift
  neighbor_commutes := addressLift_neighbor

theorem frozen_survives_16_to_64 (x : Cell 4)
    (hx : Frozen 4 x) :
    Frozen 6 (sixteenToSixtyFour.address x) :=
  preserves_frozen sixteenToSixtyFour x hx

theorem guidepost_commutes_16_to_64 (x : Cell 4) :
    sixteenToSixtyFour.address (guidepost x) =
      guidepost (sixteenToSixtyFour.address x) :=
  guidepost_commutes sixteenToSixtyFour x

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ConcretePrimeAtlasLift16To64
