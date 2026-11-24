/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean build, axiom audit, independent replay NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.CoherentPrimePortSchedules
import GRWTSK.Combinatorics.GraphTheory.BalancedPrimeThreeHopLift16To64

/-!
# Successive dimension embeddings for coherent balanced routing

Each additional signature bit doubles the ambient number of ports.
Old addresses are extended by zero on the new coordinates. Native
routes of the recursive schedule restrict to exactly the old routes.
Fiber counts on the embedded chart are transported, not confused with
the larger native cube's counts. The optional directory extension
keeps every old numerical prime and uses distinct fresh primes off-chart.
-/

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 10000
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RecursivePrimeAtlasEmbeddings

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CompatiblePrimeDimensionEmbedding
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ParametricPrimeThreeHop
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CoherentPrimePortSchedules

variable {m n : ℕ}

def padHom (m : ℕ) : Port m →+ Port (m + 1) where
  toFun := pad
  map_zero' := pad_zero
  map_add' := pad_add

/-- The literal zero extension of every cell coordinate. -/
def liftCell (x : Cell m) : Cell (m + 1) :=
  ∑ i : Port m, (x i) • impulse (pad i)

theorem liftCell_add (x y : Cell m) : liftCell (x + y) = liftCell x + liftCell y := by
  unfold liftCell
  simp_rw [Pi.add_apply, add_smul]
  exact Finset.sum_add_distrib

theorem liftCell_impulse (i : Port m) :
    liftCell (impulse i) = impulse (pad i) := by
  classical
  unfold liftCell
  rw [Fintype.sum_eq_single i]
  · simp [impulse, Pi.single_apply]
  · intro j hji
    simp [impulse, Pi.single_eq_of_ne hji]

theorem liftCell_port (x : Cell m) (i : Port m) : liftCell x (pad i) = x i := by
  classical
  unfold liftCell
  simp only [Finset.sum_apply, Pi.smul_apply]
  rw [Fintype.sum_eq_single i]
  · simp [impulse]
  · intro j hji
    have hj : pad j ≠ pad i := pad_injective.ne hji
    have hz : impulse (pad j) (pad i) = 0 := by
      simp [impulse, Pi.single_apply, hj, Ne.symm hj]
    rw [hz, smul_zero]

theorem liftCell_off_port (x : Cell m) (j : Port (m + 1))
    (h : j ∉ Set.range (pad (m := m))) : liftCell x j = 0 := by
  classical
  unfold liftCell
  simp only [Finset.sum_apply, Pi.smul_apply]
  apply Finset.sum_eq_zero
  intro i _
  have hne : pad i ≠ j := fun he => h ⟨i, he⟩
  have hz : impulse (pad i) j = 0 := by
    simp [impulse, Pi.single_apply, hne, Ne.symm hne]
  rw [hz, smul_zero]

theorem liftCell_injective : Function.Injective (liftCell (m := m)) := by
  intro x y h
  funext i
  have hi := congrArg (fun z : Cell (m + 1) => z (pad i)) h
  simpa only [liftCell_port] using hi

theorem syndrome_smul (a : ZMod 2) (x : Cell m) :
    syndrome (a • x) = a • syndrome x := by
  classical
  simp [syndrome, Pi.smul_apply, Finset.smul_sum, smul_smul]

theorem syndrome_liftCell (x : Cell m) : syndrome (liftCell x) = pad (syndrome x) := by
  have hl : syndrome (liftCell x) = ∑ i : Port m, (x i) • pad i := by
    change (syndromeHom (m + 1)) (∑ i : Port m, (x i) • impulse (pad i)) = _
    rw [map_sum]
    apply Finset.sum_congr rfl
    intro i _
    change syndrome ((x i) • impulse (pad i)) = _
    rw [syndrome_smul, syndrome_impulse]
  rw [hl]
  change (∑ i : Port m, (x i) • pad i) = padHom m (∑ i : Port m, (x i) • i)
  rw [map_sum]
  apply Finset.sum_congr rfl
  intro i _
  exact (pad_smul (x i) i).symm

theorem liftCell_neighbor (x : Cell m) (i : Port m) :
    liftCell (neighbor x i) = neighbor (liftCell x) (pad i) := by
  change liftCell (x + impulse i) = liftCell x + impulse (pad i)
  rw [liftCell_add, liftCell_impulse]

def successiveGeometry (m : ℕ) : CompatibleEmbedding m (m + 1) where
  address := ⟨liftCell, liftCell_injective⟩
  port := ⟨pad, pad_injective⟩
  port_zero := pad_zero
  port_neg := pad_neg
  syndrome_commutes := syndrome_liftCell
  neighbor_commutes := liftCell_neighbor

theorem liftCell_frozen_iff (x : Cell m) : Frozen (m + 1) (liftCell x) ↔ Frozen m x := by
  change syndrome (liftCell x) = 0 ↔ syndrome x = 0
  rw [syndrome_liftCell]
  constructor
  · intro h
    exact pad_injective (h.trans pad_zero.symm)
  · intro h
    exact (congrArg pad h).trans pad_zero

theorem changedPorts_liftCell (x y : Cell m) :
    changedPorts (liftCell x) (liftCell y) = (changedPorts x y).image pad := by
  classical
  ext j
  constructor
  · intro hj
    have hne : liftCell y j ≠ liftCell x j := by
      simpa [changedPorts] using hj
    by_cases hr : j ∈ Set.range (pad (m := m))
    · obtain ⟨i, rfl⟩ := hr
      apply Finset.mem_image.mpr
      refine ⟨i, ?_, rfl⟩
      simpa [changedPorts, liftCell_port] using hne
    · exact False.elim (hne ((liftCell_off_port y j hr).trans
        (liftCell_off_port x j hr).symm))
  · intro hj
    obtain ⟨i, hi, rfl⟩ := Finset.mem_image.mp hj
    have hne : y i ≠ x i := by simpa [changedPorts] using hi
    simpa [changedPorts, liftCell_port] using hne

theorem hamming_liftCell (x y : Cell m) :
    (changedPorts (liftCell x) (liftCell y)).card = (changedPorts x y).card := by
  classical
  rw [changedPorts_liftCell, Finset.card_image_of_injective _ pad_injective]

theorem induced_face (x y : Cell m) :
    (∃ i : Port (m + 1), liftCell y = neighbor (liftCell x) i) ↔
      (∃ j : Port m, y = neighbor x j) := by
  constructor
  · rintro ⟨i, h⟩
    by_cases hi : i ∈ Set.range (pad (m := m))
    · obtain ⟨j, rfl⟩ := hi
      exact ⟨j, liftCell_injective (h.trans (liftCell_neighbor x j).symm)⟩
    · have he := congrArg (fun z : Cell (m + 1) => z i) h
      change liftCell y i = neighbor (liftCell x) i i at he
      rw [liftCell_off_port y i hi, flip_same, liftCell_off_port x i hi, zero_add] at he
      exact False.elim ((zero_ne_one : (0 : ZMod 2) ≠ 1) he)
  · rintro ⟨j, rfl⟩
    exact ⟨pad j, liftCell_neighbor x j⟩

/-- Every pair of successive members of a rooted schedule tower commutes
through the actual zero extension, not just a formal interface. -/
def successiveSchedule {r : ℕ} (S : Schedule r) (k : ℕ) :
    ScheduleEmbedding (family S k) (family S (k + 1)) where
  geometry := successiveGeometry (r + k)
  first_commutes := family_first_commutes S k
  second_commutes := family_second_commutes S k
  third_commutes := family_third_commutes S k

theorem successive_route {r : ℕ} (S : Schedule r) (k : ℕ) (x : Cell (r + k)) :
    liftCell (routeEnd (family S k) x) =
      routeEnd (family S (k + 1)) (liftCell x) :=
  routeEnd_commutes (successiveSchedule S k) x

theorem successive_hopOne {r : ℕ} (S : Schedule r) (k : ℕ) (x : Cell (r + k)) :
    liftCell (hopOne (family S k) x) = hopOne (family S (k + 1)) (liftCell x) :=
  hopOne_commutes (successiveSchedule S k) x

theorem successive_hopTwo {r : ℕ} (S : Schedule r) (k : ℕ) (x : Cell (r + k)) :
    liftCell (hopTwo (family S k) x) = hopTwo (family S (k + 1)) (liftCell x) :=
  hopTwo_commutes (successiveSchedule S k) x

def ScheduleEmbedding.refl (S : Schedule m) : ScheduleEmbedding S S where
  geometry := CompatibleEmbedding.identity m
  first_commutes := fun _ => rfl
  second_commutes := fun _ => rfl
  third_commutes := fun _ => rfl

/-- An arbitrary number of successive lifts from the root. -/
def rootEmbedding {r : ℕ} (S : Schedule r) : (k : ℕ) → ScheduleEmbedding S (family S k)
  | 0 => ScheduleEmbedding.refl S
  | k + 1 => (rootEmbedding S k).then (successiveSchedule S k)

theorem root_route {r : ℕ} (S : Schedule r) (k : ℕ) :
    (rootEmbedding S k).geometry.address ∘ routeEnd S =
      routeEnd (family S k) ∘ (rootEmbedding S k).geometry.address :=
  routing_commuting_square (rootEmbedding S k)

theorem root_hamming {r : ℕ} (S : Schedule r) (k : ℕ) (x y : Cell r) :
    (changedPorts ((rootEmbedding S k).geometry.address x)
      ((rootEmbedding S k).geometry.address y)).card = (changedPorts x y).card := by
  induction k with
  | zero => rfl
  | succ k ih =>
    change (changedPorts (liftCell ((rootEmbedding S k).geometry.address x))
      (liftCell ((rootEmbedding S k).geometry.address y))).card = _
    rw [hamming_liftCell, ih]

/-- Composed concrete lift is the original 16D-to-64D lift, not a
different permutation of coordinates. -/
theorem root16_port_two (i : Port 4) :
    (rootEmbedding seed4 2).geometry.port i =
      GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ConcretePrimeAtlasLift16To64.portLift i :=
  rfl

theorem root16_address_two (x : Cell 4) :
    (rootEmbedding seed4 2).geometry.address x =
      GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ConcretePrimeAtlasLift16To64.addressLift x := by
  funext j
  classical
  change liftCell (liftCell x) j = _
  by_cases hr : j ∈ Set.range (pad (m := 5))
  · obtain ⟨i, rfl⟩ := hr
    rw [liftCell_port]
    by_cases hi : i ∈ Set.range (pad (m := 4))
    · obtain ⟨p, rfl⟩ := hi
      rw [liftCell_port]
      exact (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ConcretePrimeAtlasLift16To64.addressLift_port x p).symm
    · rw [liftCell_off_port x i hi]
      unfold GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ConcretePrimeAtlasLift16To64.addressLift
      simp only [Finset.sum_apply, Pi.smul_apply]
      symm
      apply Finset.sum_eq_zero
      intro p _
      have hne : pad (pad p) ≠ pad i := fun h => hi ⟨p, pad_injective h⟩
      have hz : impulse (pad (pad p)) (pad i) = 0 := by
        simp [impulse, Pi.single_apply, hne, Ne.symm hne]
      change x p • impulse (pad (pad p)) (pad i) = 0
      rw [hz, smul_zero]
  · rw [liftCell_off_port (liftCell x) j hr]
    unfold GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ConcretePrimeAtlasLift16To64.addressLift
    simp only [Finset.sum_apply, Pi.smul_apply]
    symm
    apply Finset.sum_eq_zero
    intro p _
    have hne : pad (pad p) ≠ j := fun h => hr ⟨pad p, h⟩
    have hz : impulse (pad (pad p)) j = 0 := by
      simp [impulse, Pi.single_apply, hne, Ne.symm hne]
    change x p • impulse (pad (pad p)) j = 0
    rw [hz, smul_zero]

/-- Generic chart fibers: a commuting embedding preserves all source
multiplicities, even if native ambient traffic has different counts. -/
abbrev ChartCell (e : CompatibleEmbedding m n) :=
  {z : Cell n // z ∈ Set.range e.address}

def chartEquiv (e : CompatibleEmbedding m n) : Cell m ≃ ChartCell e :=
  Equiv.ofInjective e.address e.address.injective

theorem chart_card (e : CompatibleEmbedding m n) :
    Nat.card (ChartCell e) = 2 ^ (2 ^ m) := by
  calc
    _ = Nat.card (Cell m) := Nat.card_congr (chartEquiv e).symm
    _ = 2 ^ (2 ^ m) := by rw [Nat.card_eq_fintype_card, cell_card]

def chartFiberEquiv {A B : Type} (e : CompatibleEmbedding m n) (j : A ↪ B)
    (f : Cell m → A) (F : Cell n → B)
    (h : ∀ x, j (f x) = F (e.address x)) (y : A) :
    {x : Cell m // f x = y} ≃ {z : ChartCell e // F z.1 = j y} where
  toFun x := ⟨chartEquiv e x.1, (h x.1).symm.trans (congrArg j x.2)⟩
  invFun z := ⟨(chartEquiv e).symm z.1, by
    apply j.injective
    calc
      j (f ((chartEquiv e).symm z.1)) = F (e.address ((chartEquiv e).symm z.1)) := h _
      _ = F z.1.1 := congrArg F
        (congrArg (fun w : ChartCell e => w.1) ((chartEquiv e).apply_symm_apply z.1))
      _ = j y := z.2⟩
  left_inv x := Subtype.ext ((chartEquiv e).symm_apply_apply x.1)
  right_inv z := Subtype.ext ((chartEquiv e).apply_symm_apply z.1)

theorem chart_fiber_count {A B : Type} (e : CompatibleEmbedding m n) (j : A ↪ B)
    (f : Cell m → A) (F : Cell n → B)
    (h : ∀ x, j (f x) = F (e.address x)) (y : A) :
    Nat.card {z : ChartCell e // F z.1 = j y} = Nat.card {x : Cell m // f x = y} :=
  Nat.card_congr (chartFiberEquiv e j f F h y).symm

theorem chart_stage_closed (e : CompatibleEmbedding m n)
    (f : Cell m → Cell m) (F : Cell n → Cell n)
    (h : ∀ x, e.address (f x) = F (e.address x)) (z : ChartCell e) :
    F z.1 ∈ Set.range e.address := by
  obtain ⟨x, hx⟩ := z.2
  exact ⟨f x, (h x).trans (congrArg F hx)⟩

variable {S : Schedule m} {T : Schedule n}

theorem all_chart_stages_closed (E : ScheduleEmbedding S T) (z : ChartCell E.geometry) :
    hopOne T z.1 ∈ Set.range E.geometry.address ∧
    hopTwo T z.1 ∈ Set.range E.geometry.address ∧
    routeEnd T z.1 ∈ Set.range E.geometry.address ∧
    guidepost z.1 ∈ Set.range E.geometry.address :=
  ⟨chart_stage_closed E.geometry (hopOne S) (hopOne T) (hopOne_commutes E) z,
   chart_stage_closed E.geometry (hopTwo S) (hopTwo T) (hopTwo_commutes E) z,
   chart_stage_closed E.geometry (routeEnd S) (routeEnd T) (routeEnd_commutes E) z,
   chart_stage_closed E.geometry guidepost guidepost (guidepost_commutes E.geometry) z⟩

theorem chart_first_load (E : ScheduleEmbedding S T) (y : Cell m) :
    Nat.card {z : ChartCell E.geometry // hopOne T z.1 = E.geometry.address y} =
      Nat.card {x : Cell m // hopOne S x = y} :=
  chart_fiber_count E.geometry E.geometry.address (hopOne S) (hopOne T) (hopOne_commutes E) y

theorem chart_second_load (E : ScheduleEmbedding S T) (y : Cell m) :
    Nat.card {z : ChartCell E.geometry // hopTwo T z.1 = E.geometry.address y} = 1 :=
  (chart_fiber_count E.geometry E.geometry.address (hopTwo S) (hopTwo T) (hopTwo_commutes E) y).trans
    (second_load_one S y)

theorem chart_terminal_load (E : ScheduleEmbedding S T) (y : Cell m) (h : Frozen m y) :
    Nat.card {z : ChartCell E.geometry // routeEnd T z.1 = E.geometry.address y} = 2 ^ m :=
  (chart_fiber_count E.geometry E.geometry.address (routeEnd S) (routeEnd T) (routeEnd_commutes E) y).trans
    (terminal_load S y h)

theorem chart_primary_load (E : ScheduleEmbedding S T) (y : Cell m) (h : Frozen m y) :
    Nat.card {z : ChartCell E.geometry // guidepost z.1 = E.geometry.address y} = 2 ^ m :=
  (chart_fiber_count E.geometry E.geometry.address guidepost guidepost (guidepost_commutes E.geometry) y).trans
    (primary_load y h)

theorem chart_port_loads (E : ScheduleEmbedding S T) (i : Port m) :
    Nat.card {z : ChartCell E.geometry // T.first (syndrome z.1) = E.geometry.port i} =
      2 ^ (2 ^ m - m) ∧
    Nat.card {z : ChartCell E.geometry // second T (syndrome z.1) = E.geometry.port i} =
      2 ^ (2 ^ m - m) ∧
    Nat.card {z : ChartCell E.geometry // third T (syndrome z.1) = E.geometry.port i} =
      2 ^ (2 ^ m - m) := by
  obtain ⟨h1, h2, h3⟩ := each_hop_port_load S i
  exact ⟨(chart_fiber_count E.geometry E.geometry.port
      (fun x => S.first (syndrome x)) (fun z => T.first (syndrome z)) (fun x => by
        rw [E.geometry.syndrome_commutes, E.first_commutes]) i).trans h1,
    (chart_fiber_count E.geometry E.geometry.port
      (fun x => second S (syndrome x)) (fun z => second T (syndrome z)) (fun x => by
        rw [E.geometry.syndrome_commutes, E.second_commutes]) i).trans h2,
    (chart_fiber_count E.geometry E.geometry.port
      (fun x => third S (syndrome x)) (fun z => third T (syndrome z)) (fun x => by
        rw [E.geometry.syndrome_commutes, E.third_commutes]) i).trans h3⟩

/-- Finite old labels admit a common numerical upper bound. -/
def oldBound (D : PrimeDirectory m) : ℕ := Finset.univ.sup D.label

theorem old_label_le_bound (D : PrimeDirectory m) (b : Beacon m) :
    D.label b ≤ oldBound D := by
  unfold oldBound
  exact Finset.le_sup (f := D.label) (Finset.mem_univ b)

/-- Fresh primes use an injective rank on the larger beacon space and
start above every old numerical prime. No density assumption is needed. -/
def freshPrime (D : PrimeDirectory m) (rank : Beacon n ↪ ℕ) (b : Beacon n) : ℕ :=
  Nat.nth Nat.Prime (oldBound D + rank b + 1)

theorem freshPrime_prime (D : PrimeDirectory m) (rank : Beacon n ↪ ℕ) (b : Beacon n) :
    Nat.Prime (freshPrime D rank b) :=
  Nat.prime_nth_prime _

theorem freshPrime_gt_bound (D : PrimeDirectory m) (rank : Beacon n ↪ ℕ) (b : Beacon n) :
    oldBound D < freshPrime D rank b := by
  have h := Nat.add_two_le_nth_prime (oldBound D + rank b + 1)
  unfold freshPrime
  omega

theorem freshPrime_injective (D : PrimeDirectory m) (rank : Beacon n ↪ ℕ) :
    Function.Injective (freshPrime D rank) := by
  intro b c h
  have hh := congrArg Nat.primeCounting' h
  simp only [freshPrime, Nat.primeCounting'_nth_eq] at hh
  apply rank.injective
  omega

/-- Extend an existing placement without moving or relabeling any old
beacon; rank is used only for previously unlabeled native beacons. -/
def extendLabel (E : ScheduleEmbedding S T) (D : PrimeDirectory m)
    (rank : Beacon n ↪ ℕ) (b : Beacon n) : ℕ := by
  classical
  exact if h : ∃ a : Beacon m, beaconLift E a = b then D.label (Classical.choose h)
    else freshPrime D rank b

theorem extendLabel_retains (E : ScheduleEmbedding S T) (D : PrimeDirectory m)
    (rank : Beacon n ↪ ℕ) (a : Beacon m) :
    extendLabel E D rank (beaconLift E a) = D.label a := by
  classical
  unfold extendLabel
  have h : ∃ c : Beacon m, beaconLift E c = beaconLift E a := ⟨a, rfl⟩
  rw [dif_pos h]
  exact congrArg D.label (beaconLift_injective E (Classical.choose_spec h))

theorem extendLabel_prime (E : ScheduleEmbedding S T) (D : PrimeDirectory m)
    (rank : Beacon n ↪ ℕ) (b : Beacon n) :
    Nat.Prime (extendLabel E D rank b) := by
  classical
  unfold extendLabel
  split_ifs with h
  · exact D.prime _
  · exact freshPrime_prime D rank b

theorem extendLabel_injective (E : ScheduleEmbedding S T) (D : PrimeDirectory m)
    (rank : Beacon n ↪ ℕ) : Function.Injective (extendLabel E D rank) := by
  classical
  intro b c h
  unfold extendLabel at h
  by_cases hb : ∃ a : Beacon m, beaconLift E a = b
  · by_cases hc : ∃ a : Beacon m, beaconLift E a = c
    · rw [dif_pos hb, dif_pos hc] at h
      exact (Classical.choose_spec hb).symm.trans
        ((congrArg (beaconLift E) (D.injective h)).trans (Classical.choose_spec hc))
    · rw [dif_pos hb, dif_neg hc] at h
      have hl := old_label_le_bound D (Classical.choose hb)
      have hg := freshPrime_gt_bound D rank c
      omega
  · by_cases hc : ∃ a : Beacon m, beaconLift E a = c
    · rw [dif_neg hb, dif_pos hc] at h
      have hl := old_label_le_bound D (Classical.choose hc)
      have hg := freshPrime_gt_bound D rank b
      omega
    · rw [dif_neg hb, dif_neg hc] at h
      exact freshPrime_injective D rank h

def extendDirectory (E : ScheduleEmbedding S T) (D : PrimeDirectory m)
    (rank : Beacon n ↪ ℕ) : PrimeDirectory n where
  label := extendLabel E D rank
  prime := extendLabel_prime E D rank
  injective := extendLabel_injective E D rank

theorem extendDirectory_references (E : ScheduleEmbedding S T) (D : PrimeDirectory m)
    (rank : Beacon n ↪ ℕ) (x : Cell m) :
    (extendDirectory E D rank).label (primaryBeacon (E.geometry.address x)) =
      D.label (primaryBeacon x) ∧
    (extendDirectory E D rank).label (logicalBeacon T (E.geometry.address x)) =
      D.label (logicalBeacon S x) :=
  prime_identity_commutes E D (extendDirectory E D rank) (extendLabel_retains E D rank) x

/-- An index exists in every finite native beacon space. It is a choice
of enumeration, not a canonical persisted runtime address. -/
def finiteRank (m : ℕ) : Beacon m ↪ ℕ := by
  classical
  exact (Fintype.equivFin (Beacon m)).toEmbedding.trans ⟨Fin.val, Fin.val_injective⟩

/-- Recursive numerical prime supply: all prior labels persist. New
labels are fresh and distinct; no fixed finite numerical cutoff is claimed. -/
def towerDirectory {r : ℕ} (S : Schedule r) (D : PrimeDirectory r) :
    (k : ℕ) → PrimeDirectory (r + k)
  | 0 => D
  | k + 1 => extendDirectory (successiveSchedule S k) (towerDirectory S D k)
      (finiteRank (r + k + 1))

theorem tower_step_retains {r : ℕ} (S : Schedule r) (D : PrimeDirectory r) (k : ℕ)
    (b : Beacon (r + k)) :
    (towerDirectory S D (k + 1)).label (beaconLift (successiveSchedule S k) b) =
      (towerDirectory S D k).label b :=
  extendLabel_retains (successiveSchedule S k) (towerDirectory S D k) _ b

theorem tower_root_retains {r : ℕ} (S : Schedule r) (D : PrimeDirectory r) (k : ℕ)
    (b : Beacon r) :
    (towerDirectory S D k).label (beaconLift (rootEmbedding S k) b) = D.label b := by
  induction k with
  | zero =>
    have hb : beaconLift (rootEmbedding S 0) b = b := Subtype.ext rfl
    exact congrArg D.label hb
  | succ k ih =>
    have hb : beaconLift (rootEmbedding S (k + 1)) b =
        beaconLift (successiveSchedule S k) (beaconLift (rootEmbedding S k) b) :=
      Subtype.ext rfl
    rw [hb, tower_step_retains, ih]

theorem tower_root_references {r : ℕ} (S : Schedule r) (D : PrimeDirectory r) (k : ℕ)
    (x : Cell r) :
    (towerDirectory S D k).label (primaryBeacon ((rootEmbedding S k).geometry.address x)) =
      D.label (primaryBeacon x) ∧
    (towerDirectory S D k).label (logicalBeacon (family S k)
      ((rootEmbedding S k).geometry.address x)) = D.label (logicalBeacon S x) :=
  prime_identity_commutes (rootEmbedding S k) D (towerDirectory S D k)
    (tower_root_retains S D k) x

/-- The 4-bit seed route is definitionally the original verified 16D route. -/
theorem seed4_route_agrees :
    routeEnd seed4 =
      GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHop16.routeEnd :=
  rfl

/-- The native 64D member of the 4-bit-root tower restricts to the earlier
verified embedded route. Off-chart the new native schedule is different. -/
theorem native64_agrees_on_original_chart (x : Cell 4) :
    routeEnd (verified16Tower 2)
      (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ConcretePrimeAtlasLift16To64.addressLift x) =
      GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHopLift16To64.routeEnd64
        (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ConcretePrimeAtlasLift16To64.addressLift x) := by
  have hc := routeEnd_commutes (rootEmbedding seed4 2) x
  change (rootEmbedding seed4 2).geometry.address (routeEnd seed4 x) =
    routeEnd (verified16Tower 2) ((rootEmbedding seed4 2).geometry.address x) at hc
  rw [root16_address_two, root16_address_two, seed4_route_agrees] at hc
  exact hc.symm.trans
    (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHopLift16To64.routeEnd_commutes x)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RecursivePrimeAtlasEmbeddings
