/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Compilation, axiom audit, fresh replay NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.ReplicatedPrimeAdjacency16
import GRWTSK.Combinatorics.GraphTheory.ConcretePrimeAtlasLift16To64
import GRWTSK.Combinatorics.GraphTheory.DualSyndromeDimensionContinuation

/-!
# Continuation of both replica layers through the concrete 16D -> 64D lift

The existing lift preserves the 16 original ports and the primary
syndrome. The following compares the exact *secondary* syndrome,
both chosen face neighbors, and the paired prime-replica edge with
the original 64D constructions. An injective base-beacon map retains
all 4096 old prime identities.

This does not claim the 4096 old identities cover the entire 64D
space. New 64D cells have new primary beacons; complete labeling
requires more prime identities or explicit additional replicas.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeReplicaLift16To64

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ReplicatedPrimeAdjacency16
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ConcretePrimeAtlasLift16To64
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DualSyndromeDimensionContinuation

/-- The secondary 4-bit syndrome embeds as the exact 6-bit target. -/
theorem secondary_syndrome_lifts :
    portLift secondarySyndrome = target64 := by
  funext i
  fin_cases i <;> simp [portLift, secondarySyndrome, target64]

/-- The unique neighbor in any 4-bit syndrome layer maps to the
unique neighbor of the corresponding 64D syndrome layer. -/
theorem targetNeighbor_commutes (t : Port 4) (x : Cell 4) :
    addressLift (layerNeighbor t x) =
      targetNeighbor (portLift t) (addressLift x) := by
  have hport :
      portLift (t - syndrome x) =
        portLift t - portLift (syndrome x) :=
    portLiftHom.map_sub t (syndrome x)
  calc
    addressLift (layerNeighbor t x) =
        neighbor (addressLift x) (portLift (t - syndrome x)) :=
      addressLift_neighbor x (t - syndrome x)
    _ = targetNeighbor (portLift t) (addressLift x) := by
      simp only [targetNeighbor, syndrome_addressLift, hport]

theorem primaryNeighbor_commutes (x : Cell 4) :
    addressLift (layerNeighbor 0 x) =
      targetNeighbor 0 (addressLift x) := by
  simpa only [portLift_zero] using targetNeighbor_commutes 0 x

theorem secondaryNeighbor_commutes (x : Cell 4) :
    addressLift (layerNeighbor secondarySyndrome x) =
      targetNeighbor target64 (addressLift x) := by
  simpa only [secondary_syndrome_lifts] using
    targetNeighbor_commutes secondarySyndrome x

/-- The actual secondary prime replica stays one embedded face step
from the original 64D primary beacon. -/
theorem replicaPosition_commutes (b : Beacon 4) :
    addressLift (replicaPosition b) =
      neighbor (addressLift b.1) target64 := by
  change addressLift (neighbor b.1 secondarySyndrome) =
    neighbor (addressLift b.1) target64
  rw [addressLift_neighbor, secondary_syndrome_lifts]

/-- Every pre-existing primary beacon survives as a 64D primary beacon. -/
def liftBeacon (b : Beacon 4) : Beacon 6 :=
  ⟨addressLift b.1, by
    change syndrome (addressLift b.1) = 0
    rw [syndrome_addressLift]
    have hb : syndrome b.1 = 0 := beacon_is_frozen b
    rw [hb, portLift_zero]⟩

theorem liftBeacon_injective : Function.Injective liftBeacon := by
  intro b c h
  have hval := congrArg Subtype.val h
  exact Subtype.ext (addressLift_injective hval)

/-- The 16D two-reference pair is still different after embedding. -/
theorem twoNeighbor_lift_remains_distinct (x : Cell 4) :
    addressLift (layerNeighbor 0 x) ≠
      addressLift (layerNeighbor secondarySyndrome x) :=
  addressLift_injective.ne (two_distinct_face_neighbors x)

/-- Any extension of the numerical prime directory must prove that
old labels survive and that the enlarged dictionary is injective.
This is an explicit interface, NOT a theorem supplying that directory. -/
structure PrimeLabelExtension
    (sourceLabel : Beacon 4 → ℕ) where
  extendedLabel : Beacon 6 → ℕ
  injective : Function.Injective extendedLabel
  retains : ∀ b : Beacon 4,
    extendedLabel (liftBeacon b) = sourceLabel b

theorem primeLabel_retained {sourceLabel : Beacon 4 → ℕ}
    (E : PrimeLabelExtension sourceLabel) (b : Beacon 4) :
    E.extendedLabel (liftBeacon b) = sourceLabel b :=
  E.retains b

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeReplicaLift16To64
