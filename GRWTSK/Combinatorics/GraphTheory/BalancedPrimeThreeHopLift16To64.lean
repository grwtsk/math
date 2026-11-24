/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: new Lean build, axiom audit, independent replay NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.BalancedPrimeThreeHop16
import GRWTSK.Combinatorics.GraphTheory.ConcretePrimeAtlasLift16To64

/-!
# Transport balanced three-hop routing into the actual 64D cube

The native 64D stages flip coordinates selected using the original six-bit
syndrome, its four-bit projection, and the existing port injection.
Their agreement with the 16D stages is proved, not used as their definition.
The image chart is exactly the range of the existing address lift.
All counts refer to this chart, never the whole 64D cube. The directory
is a bijection onto the frozen beacons in the chart; it is not an assignment
to all ambient frozen beacons. No replicas, new prime IDs, or analytic
RH/GRH conclusions are introduced.
-/

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 10000
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHopLift16To64

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.HierarchicalPrimeDirectory16
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHop16
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ConcretePrimeAtlasLift16To64
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CompatiblePrimeDimensionEmbedding

/-- Native 64D port schedules; only their restriction to the image chart
has the certified routing contract. -/
def firstPort64 (s : Port 6) : Port 6 := portLift (firstPort (portDrop s))
def secondPort64 (s : Port 6) : Port 6 := portLift (secondPort (portDrop s))
def thirdPort64 (s : Port 6) : Port 6 := portLift (thirdPort (portDrop s))

theorem firstPort64_at_lift (x : Cell 4) :
    firstPort64 (syndrome (addressLift x)) = portLift (firstPort (syndrome x)) := by
  simp only [firstPort64, syndrome_addressLift, portDrop_portLift]

theorem secondPort64_at_lift (x : Cell 4) :
    secondPort64 (syndrome (addressLift x)) = portLift (secondPort (syndrome x)) := by
  simp only [secondPort64, syndrome_addressLift, portDrop_portLift]

theorem thirdPort64_at_lift (x : Cell 4) :
    thirdPort64 (syndrome (addressLift x)) = portLift (thirdPort (syndrome x)) := by
  simp only [thirdPort64, syndrome_addressLift, portDrop_portLift]

/-- All stages use the original syndrome, not the intermediate syndrome. -/
def hopOne64 (z : Cell 6) : Cell 6 := neighbor z (firstPort64 (syndrome z))
def hopTwo64 (z : Cell 6) : Cell 6 := neighbor (hopOne64 z) (secondPort64 (syndrome z))
def routeEnd64 (z : Cell 6) : Cell 6 := neighbor (hopTwo64 z) (thirdPort64 (syndrome z))

theorem hopOne_commutes (x : Cell 4) :
    addressLift (hopOne x) = hopOne64 (addressLift x) := by
  rw [hopOne_step, addressLift_neighbor, hopOne64, firstPort64_at_lift]

theorem hopTwo_commutes (x : Cell 4) :
    addressLift (hopTwo x) = hopTwo64 (addressLift x) := by
  rw [hopTwo_step, addressLift_neighbor, hopOne_commutes, hopTwo64, secondPort64_at_lift]

theorem routeEnd_commutes (x : Cell 4) :
    addressLift (routeEnd x) = routeEnd64 (addressLift x) := by
  rw [routeEnd_step, addressLift_neighbor, hopTwo_commutes, routeEnd64, thirdPort64_at_lift]

/-- The requested commuting square as equality of functions. -/
theorem routing_commuting_square :
    addressLift ∘ routeEnd = routeEnd64 ∘ addressLift := by
  funext x
  exact routeEnd_commutes x

theorem primary_commutes (x : Cell 4) :
    addressLift (guidepost x) = guidepost (addressLift x) :=
  guidepost_commutes_16_to_64 x

theorem lifted_ports_distinct (x : Cell 4) :
    firstPort64 (syndrome (addressLift x)) ≠ secondPort64 (syndrome (addressLift x)) ∧
    firstPort64 (syndrome (addressLift x)) ≠ thirdPort64 (syndrome (addressLift x)) ∧
    secondPort64 (syndrome (addressLift x)) ≠ thirdPort64 (syndrome (addressLift x)) := by
  rw [firstPort64_at_lift, secondPort64_at_lift, thirdPort64_at_lift]
  obtain ⟨h12, h13, h23, _, _, _⟩ := ports_distinct (syndrome x)
  exact ⟨portLift_injective.ne h12, portLift_injective.ne h13, portLift_injective.ne h23⟩

theorem addressLift_frozen_iff (x : Cell 4) :
    Frozen 6 (addressLift x) ↔ Frozen 4 x := by
  change syndrome (addressLift x) = 0 ↔ syndrome x = 0
  rw [syndrome_addressLift]
  constructor
  · intro h
    apply portLift_injective
    exact h.trans portLift_zero.symm
  · intro h
    exact (congrArg portLift h).trans portLift_zero

theorem routeEnd64_frozen (x : Cell 4) : Frozen 6 (routeEnd64 (addressLift x)) := by
  rw [← routeEnd_commutes]
  exact (addressLift_frozen_iff _).mpr (routeEnd_frozen x)

theorem hopOne64_not_frozen (x : Cell 4) : ¬ Frozen 6 (hopOne64 (addressLift x)) := by
  rw [← hopOne_commutes, addressLift_frozen_iff]
  exact hopOne_not_frozen x

theorem routeEnd64_ne_primary (x : Cell 4) :
    routeEnd64 (addressLift x) ≠ guidepost (addressLift x) := by
  rw [← routeEnd_commutes, ← primary_commutes]
  exact addressLift_injective.ne (routeEnd_ne_guidepost x)

theorem routeEnd64_ne_origin (x : Cell 4) : routeEnd64 (addressLift x) ≠ addressLift x := by
  rw [← routeEnd_commutes]
  exact addressLift_injective.ne (routeEnd_ne_origin x)

/-- Coordinates outside the sixteen lifted ports are identically zero. -/
theorem addressLift_off_port (x : Cell 4) (j : Port 6) (hj : j ∉ Set.range portLift) :
    addressLift x j = 0 := by
  classical
  unfold addressLift
  simp only [Finset.sum_apply, Pi.smul_apply]
  apply Finset.sum_eq_zero
  intro i _
  have hne : portLift i ≠ j := fun h => hj ⟨i, h⟩
  simp [impulse, Pi.single_eq_of_ne hne]

theorem flip_same64 (z : Cell 6) (p : Port 6) : neighbor z p p = z p + 1 := by
  classical
  simp [neighbor, impulse, Pi.single_apply]

theorem flip_other64 (z : Cell 6) (p q : Port 6) (h : q ≠ p) :
    neighbor z p q = z q := by
  classical
  simp [neighbor, impulse, Pi.single_apply, h, Ne.symm h]

/-- The image is an induced hypercube chart: an ambient face between two
embedded cells reflects a source face, and no new port connects them. -/
theorem embedded_face_iff (x y : Cell 4) :
    (∃ q : Port 6, addressLift y = neighbor (addressLift x) q) ↔
    (∃ p : Port 4, y = neighbor x p) := by
  constructor
  · rintro ⟨q, hq⟩
    by_cases hr : q ∈ Set.range portLift
    · obtain ⟨p, rfl⟩ := hr
      exact ⟨p, addressLift_injective (hq.trans (addressLift_neighbor x p).symm)⟩
    · have hc := congrArg (fun z : Cell 6 => z q) hq
      rw [addressLift_off_port y q hr, flip_same64, addressLift_off_port x q hr, zero_add] at hc
      exact False.elim ((zero_ne_one : (0 : ZMod 2) ≠ 1) hc)
  · rintro ⟨p, rfl⟩
    exact ⟨portLift p, addressLift_neighbor x p⟩

def changedPorts64 (x y : Cell 6) : Finset (Port 6) := by
  classical
  exact Finset.univ.filter (fun q => y q ≠ x q)

theorem changedPorts64_lift (x y : Cell 4) :
    changedPorts64 (addressLift x) (addressLift y) = (changedPorts x y).image portLift := by
  classical
  ext j
  constructor
  · intro hj
    have hne : addressLift y j ≠ addressLift x j := by
      simpa [changedPorts64] using hj
    by_cases hr : j ∈ Set.range portLift
    · obtain ⟨i, rfl⟩ := hr
      apply Finset.mem_image.mpr
      refine ⟨i, ?_, rfl⟩
      simpa [changedPorts, addressLift_port] using hne
    · exact False.elim (hne ((addressLift_off_port y j hr).trans
        (addressLift_off_port x j hr).symm))
  · intro hj
    obtain ⟨i, hi, rfl⟩ := Finset.mem_image.mp hj
    have hne : y i ≠ x i := by simpa [changedPorts] using hi
    simpa [changedPorts64, addressLift_port] using hne

/-- The lift is an isometry for the ambient Hamming metric, not merely
an injective graph homomorphism. -/
theorem hamming_preserved (x y : Cell 4) :
    (changedPorts64 (addressLift x) (addressLift y)).card = (changedPorts x y).card := by
  classical
  rw [changedPorts64_lift, Finset.card_image_of_injective _ portLift_injective]

theorem route_hamming_three64 (x : Cell 4) :
    (changedPorts64 (addressLift x) (routeEnd64 (addressLift x))).card = 3 := by
  rw [← routeEnd_commutes, hamming_preserved, route_hamming_three]

theorem routeEnd64_not_face (x : Cell 4) (i : Port 6) :
    routeEnd64 (addressLift x) ≠ neighbor (addressLift x) i := by
  intro h
  exact routeEnd64_ne_primary x
    (unique_frozen_neighbor (addressLift x) (routeEnd64 (addressLift x))
      ⟨i, h⟩ (routeEnd64_frozen x))

/-- No two-hop ambient shortcut exists, even through cells off the chart. -/
theorem routeEnd64_not_two_hops (x : Cell 4) (i j : Port 6) :
    routeEnd64 (addressLift x) ≠ neighbor (neighbor (addressLift x) i) j := by
  classical
  intro h
  have hs : changedPorts64 (addressLift x) (routeEnd64 (addressLift x)) ⊆
      ({i, j} : Finset (Port 6)) := by
    intro q hq
    by_contra hn
    have hi : q ≠ i := by
      intro he
      subst q
      exact hn (by simp)
    have hj : q ≠ j := by
      intro he
      subst q
      exact hn (by simp)
    have hne : routeEnd64 (addressLift x) q ≠ addressLift x q := by
      simpa [changedPorts64] using hq
    apply hne
    rw [h, flip_other64 _ _ _ hj, flip_other64 _ _ _ hi]
  have hc := Finset.card_le_card hs
  rw [route_hamming_three64] at hc
  by_cases hij : i = j
  · subst j
    simp at hc
  · simp [Finset.card_insert_of_notMem, hij] at hc

/-- The chart is the actual range of the existing zero-extension embedding. -/
abbrev ChartCell := {z : Cell 6 // z ∈ Set.range addressLift}

def addressDrop (z : Cell 6) : Cell 4 := fun i => z (portLift i)

theorem addressDrop_lift (x : Cell 4) : addressDrop (addressLift x) = x := by
  funext i
  exact addressLift_port x i

theorem addressLift_drop_of_range (z : Cell 6) (h : z ∈ Set.range addressLift) :
    addressLift (addressDrop z) = z := by
  obtain ⟨x, rfl⟩ := h
  rw [addressDrop_lift]

def chartEquiv : Cell 4 ≃ ChartCell where
  toFun x := ⟨addressLift x, ⟨x, rfl⟩⟩
  invFun z := addressDrop z.1
  left_inv := addressDrop_lift
  right_inv z := Subtype.ext (addressLift_drop_of_range z.1 z.2)

theorem chart_card : Nat.card ChartCell = 65536 := by
  calc
    _ = Nat.card (Cell 4) := Nat.card_congr chartEquiv.symm
    _ = 65536 := by rw [Nat.card_eq_fintype_card, cell_card_four]

theorem stage_maps_chart (f : Cell 4 → Cell 4) (F : Cell 6 → Cell 6)
    (h : ∀ x, addressLift (f x) = F (addressLift x)) (z : ChartCell) :
    F z.1 ∈ Set.range addressLift := by
  obtain ⟨x, hx⟩ := z.2
  exact ⟨f x, (h x).trans (congrArg F hx)⟩

theorem all_stages_stay_in_chart (z : ChartCell) :
    hopOne64 z.1 ∈ Set.range addressLift ∧ hopTwo64 z.1 ∈ Set.range addressLift ∧
    routeEnd64 z.1 ∈ Set.range addressLift ∧ guidepost z.1 ∈ Set.range addressLift :=
  ⟨stage_maps_chart hopOne hopOne64 hopOne_commutes z,
   stage_maps_chart hopTwo hopTwo64 hopTwo_commutes z,
   stage_maps_chart routeEnd routeEnd64 routeEnd_commutes z,
   stage_maps_chart guidepost guidepost primary_commutes z⟩

/-- Transport an exact source fiber to a fiber of a native ambient map
restricted to chart cells. The target injection may be the cell injection
or the port injection. No ambient cells are included in the count. -/
def fiberTransport {A B : Type} (e : A ↪ B)
    (f : Cell 4 → A) (F : Cell 6 → B)
    (h : ∀ x, e (f x) = F (addressLift x)) (y : A) :
    {x : Cell 4 // f x = y} ≃ {z : ChartCell // F z.1 = e y} where
  toFun x := ⟨chartEquiv x.1, (h x.1).symm.trans (congrArg e x.2)⟩
  invFun z := ⟨chartEquiv.symm z.1, by
    apply e.injective
    calc
      e (f (chartEquiv.symm z.1)) = F (addressLift (chartEquiv.symm z.1)) := h _
      _ = F z.1.1 := congrArg F
        (congrArg (fun w : ChartCell => w.1) (chartEquiv.apply_symm_apply z.1))
      _ = e y := z.2⟩
  left_inv x := by
    apply Subtype.ext
    exact chartEquiv.symm_apply_apply x.1
  right_inv z := by
    apply Subtype.ext
    exact chartEquiv.apply_symm_apply z.1

theorem fiber_count_preserved {A B : Type} (e : A ↪ B)
    (f : Cell 4 → A) (F : Cell 6 → B)
    (h : ∀ x, e (f x) = F (addressLift x)) (y : A) :
    Nat.card {z : ChartCell // F z.1 = e y} = Nat.card {x : Cell 4 // f x = y} :=
  Nat.card_congr (fiberTransport e f F h y).symm

theorem first_load64_high (y : Cell 4) (h : syndrome y 3 = 1) :
    Nat.card {z : ChartCell // hopOne64 z.1 = addressLift y} = 2 :=
  (fiber_count_preserved sixteenToSixtyFour.address hopOne hopOne64 hopOne_commutes y).trans
    (first_load_high y h)

theorem first_load64_low (y : Cell 4) (h : syndrome y 3 = 0) :
    Nat.card {z : ChartCell // hopOne64 z.1 = addressLift y} = 0 :=
  (fiber_count_preserved sixteenToSixtyFour.address hopOne hopOne64 hopOne_commutes y).trans
    (first_load_low y h)

theorem first_load64_at_most_two (y : Cell 4) :
    Nat.card {z : ChartCell // hopOne64 z.1 = addressLift y} ≤ 2 := by
  rw [fiber_count_preserved sixteenToSixtyFour.address hopOne hopOne64 hopOne_commutes y]
  exact first_load_at_most_two y

theorem second_load64_one (y : Cell 4) :
    Nat.card {z : ChartCell // hopTwo64 z.1 = addressLift y} = 1 :=
  (fiber_count_preserved sixteenToSixtyFour.address hopTwo hopTwo64 hopTwo_commutes y).trans
    (second_load_one y)

theorem terminal_load64_sixteen (y : Cell 4) (h : Frozen 4 y) :
    Nat.card {z : ChartCell // routeEnd64 z.1 = addressLift y} = 16 :=
  (fiber_count_preserved sixteenToSixtyFour.address routeEnd routeEnd64 routeEnd_commutes y).trans
    (terminal_load_sixteen y h)

theorem primary_load64_sixteen (y : Cell 4) (h : Frozen 4 y) :
    Nat.card {z : ChartCell // guidepost z.1 = addressLift y} = 16 :=
  (fiber_count_preserved sixteenToSixtyFour.address guidepost guidepost primary_commutes y).trans
    (primary_load_sixteen y h)

theorem each_hop_port_load64 (i : Port 4) :
    Nat.card {z : ChartCell // firstPort64 (syndrome z.1) = portLift i} = 4096 ∧
    Nat.card {z : ChartCell // secondPort64 (syndrome z.1) = portLift i} = 4096 ∧
    Nat.card {z : ChartCell // thirdPort64 (syndrome z.1) = portLift i} = 4096 := by
  obtain ⟨h1, h2, h3⟩ := each_hop_port_load i
  exact ⟨(fiber_count_preserved sixteenToSixtyFour.port
      (fun x => firstPort (syndrome x)) (fun z => firstPort64 (syndrome z))
      (fun x => (firstPort64_at_lift x).symm) i).trans h1,
    (fiber_count_preserved sixteenToSixtyFour.port
      (fun x => secondPort (syndrome x)) (fun z => secondPort64 (syndrome z))
      (fun x => (secondPort64_at_lift x).symm) i).trans h2,
    (fiber_count_preserved sixteenToSixtyFour.port
      (fun x => thirdPort (syndrome x)) (fun z => thirdPort64 (syndrome z))
      (fun x => (thirdPort64_at_lift x).symm) i).trans h3⟩

theorem outside_port_no_use (j : Port 6) (h : j ∉ Set.range portLift) (z : Cell 6) :
    firstPort64 (syndrome z) ≠ j ∧ secondPort64 (syndrome z) ≠ j ∧
    thirdPort64 (syndrome z) ≠ j :=
  ⟨fun he => h ⟨firstPort (portDrop (syndrome z)), he⟩,
   fun he => h ⟨secondPort (portDrop (syndrome z)), he⟩,
   fun he => h ⟨thirdPort (portDrop (syndrome z)), he⟩⟩

/-- Only the frozen beacons of the embedded chart are assigned old primes. -/
abbrev EmbeddedBeacon := {z : Cell 6 // Frozen 6 z ∧ z ∈ Set.range addressLift}

def embeddedBeaconEquiv : Beacon 4 ≃ EmbeddedBeacon where
  toFun b := ⟨addressLift b.1, ⟨(addressLift_frozen_iff b.1).mpr (beacon_is_frozen b),
      ⟨b.1, rfl⟩⟩⟩
  invFun b := ⟨addressDrop b.1, by
    change Frozen 4 (addressDrop b.1)
    apply (addressLift_frozen_iff (addressDrop b.1)).mp
    rw [addressLift_drop_of_range b.1 b.2.2]
    exact b.2.1⟩
  left_inv b := Subtype.ext (addressDrop_lift b.1)
  right_inv b := Subtype.ext (addressLift_drop_of_range b.1 b.2.2)

theorem embedded_beacon_card : Nat.card EmbeddedBeacon = 4096 := by
  calc
    _ = Nat.card (Beacon 4) := Nat.card_congr embeddedBeaconEquiv.symm
    _ = 4096 := by rw [Nat.card_eq_fintype_card, beacon_card_four]

/-- The same epoch's inverse dictionary, composed with the beacon equivalence. -/
def liftedPlacement (P : PlacedAtlas) : Fin 4096 ≃ EmbeddedBeacon :=
  P.position.trans embeddedBeaconEquiv

def index64 (P : PlacedAtlas) (b : EmbeddedBeacon) : Fin 4096 := (liftedPlacement P).symm b

theorem lifted_position (P : PlacedAtlas) (i : Fin 4096) :
    (liftedPlacement P i).1 = addressLift (P.position i).1 := rfl

theorem index64_retains (P : PlacedAtlas) (b : Beacon 4) :
    index64 P (embeddedBeaconEquiv b) = indexAtBeacon P b := by
  change P.position.symm (embeddedBeaconEquiv.symm (embeddedBeaconEquiv b)) = P.position.symm b
  exact congrArg P.position.symm (embeddedBeaconEquiv.symm_apply_apply b)

def primaryBeacon64 (z : ChartCell) : EmbeddedBeacon :=
  ⟨guidepost z.1, ⟨guidepost_frozen z.1,
    stage_maps_chart guidepost guidepost primary_commutes z⟩⟩

def logicalBeacon64 (z : ChartCell) : EmbeddedBeacon :=
  ⟨routeEnd64 z.1, ⟨by
    obtain ⟨x, hx⟩ := z.2
    have hf : routeEnd64 (addressLift x) = routeEnd64 z.1 := congrArg routeEnd64 hx
    exact hf ▸ routeEnd64_frozen x,
    stage_maps_chart routeEnd routeEnd64 routeEnd_commutes z⟩⟩

theorem primaryBeacon64_commutes (x : Cell 4) :
    embeddedBeaconEquiv (physicalReference x).beacon = primaryBeacon64 (chartEquiv x) := by
  apply Subtype.ext
  exact primary_commutes x

theorem logicalBeacon64_commutes (x : Cell 4) :
    embeddedBeaconEquiv (logicalReference x).beacon = logicalBeacon64 (chartEquiv x) := by
  apply Subtype.ext
  exact routeEnd_commutes x

def physicalIndex64 (P : PlacedAtlas) (z : ChartCell) : Fin 4096 :=
  index64 P (primaryBeacon64 z)

def logicalIndex64 (P : PlacedAtlas) (z : ChartCell) : Fin 4096 :=
  index64 P (logicalBeacon64 z)

theorem physicalIndex64_commutes (P : PlacedAtlas) (x : Cell 4) :
    physicalIndex64 P (chartEquiv x) = physicalIndex P x := by
  calc
    _ = index64 P (embeddedBeaconEquiv (physicalReference x).beacon) :=
      congrArg (index64 P) (primaryBeacon64_commutes x).symm
    _ = physicalIndex P x := index64_retains P (physicalReference x).beacon

theorem logicalIndex64_commutes (P : PlacedAtlas) (x : Cell 4) :
    logicalIndex64 P (chartEquiv x) = logicalIndex P x := by
  calc
    _ = index64 P (embeddedBeaconEquiv (logicalReference x).beacon) :=
      congrArg (index64 P) (logicalBeacon64_commutes x).symm
    _ = logicalIndex P x := index64_retains P (logicalReference x).beacon

theorem two_actual_prime_references64 (P : PlacedAtlas) (z : ChartCell) :
    Nat.Prime (primeNumber (physicalIndex64 P z)) ∧
    Nat.Prime (primeNumber (logicalIndex64 P z)) ∧
    primeNumber (physicalIndex64 P z) ≠ primeNumber (logicalIndex64 P z) := by
  obtain ⟨x, rfl⟩ := chartEquiv.surjective z
  rw [physicalIndex64_commutes, logicalIndex64_commutes]
  exact two_actual_prime_references P x

theorem physical_locator64 (P : PlacedAtlas) (z : ChartCell) :
    (liftedPlacement P (physicalIndex64 P z)).1 = guidepost z.1 := by
  exact congrArg (fun b : EmbeddedBeacon => b.1)
    ((liftedPlacement P).apply_symm_apply (primaryBeacon64 z))

theorem logical_locator64 (P : PlacedAtlas) (z : ChartCell) :
    (liftedPlacement P (logicalIndex64 P z)).1 = routeEnd64 z.1 := by
  exact congrArg (fun b : EmbeddedBeacon => b.1)
    ((liftedPlacement P).apply_symm_apply (logicalBeacon64 z))

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHopLift16To64
