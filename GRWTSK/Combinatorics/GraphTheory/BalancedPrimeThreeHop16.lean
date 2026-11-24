/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean build, kernel replay and axiom audit NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.HierarchicalPrimeDirectory16

/-!
# Balanced single-occupancy three-hop prime references

Math #1844. Keep the original zero-syndrome beacon set and immutable
placement permutation. A second reference is a logical three-edge path,
not a second physical face neighbor or a replica. All routing decisions
use the ORIGINAL syndrome. The explicit affine port schedules give exact
port load, bounded first-stage congestion, a bijective second stage and
uniform terminal load. Finite port certificates use ordinary kernel
decidability, not an external oracle. No analytic or RH claim is made.
-/

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHop16

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CanonicalPrimeBeaconIndex16
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.HierarchicalPrimeDirectory16

/-- The low-bit offset. -/
def offset : Port 4 := ![1, 0, 0, 0]

/-- Affine bijection: primitive three-bit linear block and high-bit toggle. -/
def firstPort (s : Port 4) : Port 4 :=
  ![s 1, s 2, s 0 + s 1, s 3 + 1]

def secondPort (s : Port 4) : Port 4 := firstPort s + offset

def thirdPort (s : Port 4) : Port 4 := s + offset

theorem firstPort_bijective : Function.Bijective firstPort := by
  unfold Function.Bijective Function.Injective Function.Surjective
  decide

theorem secondPort_bijective : Function.Bijective secondPort := by
  unfold Function.Bijective Function.Injective Function.Surjective
  decide

theorem thirdPort_bijective : Function.Bijective thirdPort := by
  unfold Function.Bijective Function.Injective Function.Surjective
  decide

theorem thirdPort_involutive : ∀ s : Port 4, thirdPort (thirdPort s) = s := by
  decide

theorem port_neg_self : ∀ s : Port 4, -s = s := by
  decide

/-- The three ports are distinct and all avoid the primary port. -/
theorem ports_distinct :
    ∀ s : Port 4,
      firstPort s ≠ secondPort s ∧ firstPort s ≠ thirdPort s ∧
      secondPort s ≠ thirdPort s ∧ firstPort s ≠ s ∧
      secondPort s ≠ s ∧ thirdPort s ≠ s := by
  decide

theorem port_sum :
    ∀ s : Port 4, s + (firstPort s + secondPort s + thirdPort s) = 0 := by
  decide

def firstSyndrome (s : Port 4) : Port 4 := s + firstPort s

theorem firstSyndrome_high : ∀ s : Port 4, firstSyndrome s 3 = 1 := by
  decide

theorem secondSyndrome_eq :
    ∀ s : Port 4, s + (firstPort s + secondPort s) = thirdPort s := by
  decide

/-- The two input syndromes for a first-stage target differ only in bit 3. -/
def firstPreimage (t : Port 4) (b : ZMod 2) : Port 4 :=
  ![t 1 + t 2, t 0 + t 1 + t 2, t 0 + t 2, b]

theorem firstPreimage_spec :
    ∀ (t : Port 4) (b : ZMod 2), t 3 = 1 →
      firstSyndrome (firstPreimage t b) = t := by
  decide

theorem firstPreimage_bit :
    ∀ (t : Port 4) (b : ZMod 2), firstPreimage t b 3 = b := by
  decide

theorem firstSyndrome_inverse :
    ∀ s t : Port 4, firstSyndrome s = t →
      firstPreimage t (s 3) = s := by
  decide

/-- Displacements are evaluated from the source syndrome, not recomputed. -/
def shiftOne (s : Port 4) : Cell 4 := impulse (firstPort s)
def shiftTwo (s : Port 4) : Cell 4 := shiftOne s + impulse (secondPort s)
def shiftThree (s : Port 4) : Cell 4 := shiftTwo s + impulse (thirdPort s)

def translate (d : Port 4 → Cell 4) (x : Cell 4) : Cell 4 :=
  x + d (syndrome x)

def hopOne : Cell 4 → Cell 4 := translate shiftOne
def hopTwo : Cell 4 → Cell 4 := translate shiftTwo
def routeEnd : Cell 4 → Cell 4 := translate shiftThree

theorem hopOne_step (x : Cell 4) :
    hopOne x = neighbor x (firstPort (syndrome x)) := rfl

theorem hopTwo_step (x : Cell 4) :
    hopTwo x = neighbor (hopOne x) (secondPort (syndrome x)) := by
  unfold hopTwo hopOne translate shiftTwo neighbor
  abel

theorem routeEnd_step (x : Cell 4) :
    routeEnd x = neighbor (hopTwo x) (thirdPort (syndrome x)) := by
  unfold routeEnd hopTwo translate shiftThree neighbor
  abel

theorem shiftOne_syndrome (s : Port 4) :
    s + syndrome (shiftOne s) = firstSyndrome s := by
  simp [shiftOne, firstSyndrome, syndrome_impulse]

theorem shiftTwo_syndrome (s : Port 4) :
    s + syndrome (shiftTwo s) = thirdPort s := by
  simpa only [shiftTwo, shiftOne, syndrome_add, syndrome_impulse]
    using secondSyndrome_eq s

theorem shiftThree_syndrome (s : Port 4) :
    s + syndrome (shiftThree s) = 0 := by
  simpa only [shiftThree, shiftTwo, shiftOne, syndrome_add, syndrome_impulse]
    using port_sum s

theorem hopOne_syndrome (x : Cell 4) :
    syndrome (hopOne x) = firstSyndrome (syndrome x) := by
  rw [hopOne, translate, syndrome_add, shiftOne_syndrome]

theorem hopTwo_syndrome (x : Cell 4) :
    syndrome (hopTwo x) = thirdPort (syndrome x) := by
  rw [hopTwo, translate, syndrome_add, shiftTwo_syndrome]

theorem routeEnd_frozen (x : Cell 4) : Frozen 4 (routeEnd x) := by
  change syndrome (translate shiftThree x) = 0
  rw [translate, syndrome_add, shiftThree_syndrome]

theorem hopOne_not_frozen (x : Cell 4) : ¬ Frozen 4 (hopOne x) := by
  intro h
  change syndrome (hopOne x) = 0 at h
  have hb := congrFun h (3 : Fin 4)
  rw [hopOne_syndrome, firstSyndrome_high] at hb
  exact (one_ne_zero : (1 : ZMod 2) ≠ 0) hb

/-- Coordinate-level proof, independent of the full cell enumeration. -/
theorem flip_same (x : Cell 4) (p : Port 4) :
    neighbor x p p = x p + 1 := by
  classical
  simp [neighbor, impulse, Pi.single_apply]

theorem flip_other (x : Cell 4) (p q : Port 4) (h : q ≠ p) :
    neighbor x p q = x q := by
  classical
  simp [neighbor, impulse, Pi.single_apply, h, Ne.symm h]

theorem bit_flip_ne (a : ZMod 2) : a + 1 ≠ a := by
  intro h
  have h' : a + 1 = a + 0 := by simpa only [add_zero] using h
  exact one_ne_zero (add_left_cancel h')

theorem route_changed_iff (x : Cell 4) (q : Port 4) :
    routeEnd x q ≠ x q ↔
      q = firstPort (syndrome x) ∨ q = secondPort (syndrome x) ∨
      q = thirdPort (syndrome x) := by
  obtain ⟨h12, h13, h23, _, _, _⟩ := ports_distinct (syndrome x)
  rw [routeEnd_step, hopTwo_step, hopOne_step]
  by_cases h1 : q = firstPort (syndrome x)
  · subst q
    rw [flip_other _ _ _ h13, flip_other _ _ _ h12, flip_same]
    simp [bit_flip_ne]
  by_cases h2 : q = secondPort (syndrome x)
  · subst q
    rw [flip_other _ _ _ h23, flip_same, flip_other _ _ _ (Ne.symm h12)]
    simp [bit_flip_ne]
  by_cases h3 : q = thirdPort (syndrome x)
  · subst q
    rw [flip_same, flip_other _ _ _ (Ne.symm h23),
      flip_other _ _ _ (Ne.symm h13)]
    simp [bit_flip_ne]
  rw [flip_other _ _ _ h3, flip_other _ _ _ h2, flip_other _ _ _ h1]
  simp [h1, h2, h3]

def changedPorts (x y : Cell 4) : Finset (Port 4) := by
  classical
  exact Finset.univ.filter (fun q => y q ≠ x q)

theorem route_changedPorts (x : Cell 4) :
    changedPorts x (routeEnd x) =
      {firstPort (syndrome x), secondPort (syndrome x), thirdPort (syndrome x)} := by
  classical
  ext q
  simp [changedPorts, route_changed_iff]

theorem route_hamming_three (x : Cell 4) :
    (changedPorts x (routeEnd x)).card = 3 := by
  classical
  obtain ⟨h12, h13, h23, _, _, _⟩ := ports_distinct (syndrome x)
  rw [route_changedPorts]
  simp [Finset.card_insert_of_notMem, h12, h13, h23]

theorem routeEnd_ne_guidepost (x : Cell 4) : routeEnd x ≠ guidepost x := by
  intro h
  obtain ⟨_, _, _, h1, h2, h3⟩ := ports_distinct (syndrome x)
  have unchanged : routeEnd x (syndrome x) = x (syndrome x) := by
    by_contra hn
    rcases (route_changed_iff x (syndrome x)).mp hn with h' | h' | h'
    · exact h1 h'.symm
    · exact h2 h'.symm
    · exact h3 h'.symm
  rw [h, guidepost, port_neg_self, flip_same] at unchanged
  exact bit_flip_ne (x (syndrome x)) unchanged

theorem routeEnd_ne_origin (x : Cell 4) : routeEnd x ≠ x := by
  intro h
  have hc := route_hamming_three x
  rw [h] at hc
  simp [changedPorts] at hc

theorem routeEnd_not_face (x : Cell 4) (i : Port 4) :
    routeEnd x ≠ neighbor x i := by
  intro h
  exact routeEnd_ne_guidepost x
    (unique_frozen_neighbor x (routeEnd x) ⟨i, h⟩ (routeEnd_frozen x))

theorem routeEnd_not_two_hops (x : Cell 4) (i j : Port 4) :
    routeEnd x ≠ neighbor (neighbor x i) j := by
  classical
  intro h
  have hs : changedPorts x (routeEnd x) ⊆ ({i, j} : Finset (Port 4)) := by
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
    have hne : routeEnd x q ≠ x q := by simpa [changedPorts] using hq
    apply hne
    rw [h, flip_other _ _ _ hj, flip_other _ _ _ hi]
  have hc := Finset.card_le_card hs
  rw [route_hamming_three] at hc
  by_cases hij : i = j
  · subst j
    simp at hc
  · simp [Finset.card_insert_of_notMem, hij] at hc

/-- Generic fiber reduction: a translation determined by the input syndrome
has one source cell per input syndrome compatible with the target syndrome. -/
theorem syndrome_sub (x y : Cell 4) :
    syndrome (x - y) = syndrome x - syndrome y :=
  (syndromeHom 4).map_sub x y

theorem translated_origin_syndrome
    (d : Port 4 → Cell 4) (g : Port 4 → Port 4)
    (hg : ∀ s, s + syndrome (d s) = g s)
    (y : Cell 4) (s : {s : Port 4 // g s = syndrome y}) :
    syndrome (y - d s.1) = s.1 := by
  rw [syndrome_sub, ← s.2, ← hg]
  abel

def translationFiberEquiv
    (d : Port 4 → Cell 4) (g : Port 4 → Port 4)
    (hg : ∀ s, s + syndrome (d s) = g s) (y : Cell 4) :
    {x : Cell 4 // translate d x = y} ≃ {s : Port 4 // g s = syndrome y} where
  toFun x := ⟨syndrome x.1, by
    rw [← hg, ← syndrome_add]
    exact congrArg syndrome x.2⟩
  invFun s := ⟨y - d s.1, by
    change y - d s.1 + d (syndrome (y - d s.1)) = y
    rw [translated_origin_syndrome d g hg y s, sub_add_cancel]⟩
  left_inv x := by
    apply Subtype.ext
    change y - d (syndrome x.1) = x.1
    rw [← x.2]
    unfold translate
    abel
  right_inv s := by
    apply Subtype.ext
    exact translated_origin_syndrome d g hg y s

/-- First-stage fiber over a high-bit-one target has exactly two elements. -/
def firstFiberEquiv (t : Port 4) (h : t 3 = 1) :
    {s : Port 4 // firstSyndrome s = t} ≃ ZMod 2 where
  toFun s := s.1 3
  invFun b := ⟨firstPreimage t b, firstPreimage_spec t b h⟩
  left_inv s := by
    apply Subtype.ext
    exact firstSyndrome_inverse s.1 t s.2
  right_inv b := firstPreimage_bit t b

theorem first_load_high (y : Cell 4) (h : syndrome y 3 = 1) :
    Nat.card {x : Cell 4 // hopOne x = y} = 2 := by
  calc
    _ = Nat.card (ZMod 2) := Nat.card_congr
      ((translationFiberEquiv shiftOne firstSyndrome shiftOne_syndrome y).trans
        (firstFiberEquiv (syndrome y) h))
    _ = 2 := by norm_num [Nat.card_eq_fintype_card]

theorem first_no_arrival_low (y : Cell 4) (h : syndrome y 3 = 0) :
    ∀ x : Cell 4, hopOne x ≠ y := by
  intro x hx
  have hb := congrFun (congrArg syndrome hx) (3 : Fin 4)
  rw [hopOne_syndrome, firstSyndrome_high, h] at hb
  exact (one_ne_zero : (1 : ZMod 2) ≠ 0) hb

theorem first_load_low (y : Cell 4) (h : syndrome y 3 = 0) :
    Nat.card {x : Cell 4 // hopOne x = y} = 0 := by
  letI : IsEmpty {x : Cell 4 // hopOne x = y} :=
    ⟨fun x => first_no_arrival_low y h x.1 x.2⟩
  simp

theorem bit_zero_or_one : ∀ b : ZMod 2, b = 0 ∨ b = 1 := by
  decide

theorem first_load_at_most_two (y : Cell 4) :
    Nat.card {x : Cell 4 // hopOne x = y} ≤ 2 := by
  rcases bit_zero_or_one (syndrome y 3) with h | h
  · rw [first_load_low y h]
    omega
  · rw [first_load_high y h]

/-- No everywhere non-frozen first stage can have congestion at most one:
injectivity on the finite cell space forces surjectivity onto zero. -/
theorem no_injective_stage_avoiding_frozen (f : Cell 4 → Cell 4)
    (h : ∀ x, ¬ Frozen 4 (f x)) : ¬ Function.Injective f := by
  intro hi
  have hb : Function.Bijective f :=
    (Fintype.bijective_iff_injective_and_card _).mpr ⟨hi, rfl⟩
  obtain ⟨x, hx⟩ := hb.2 (0 : Cell 4)
  apply h x
  rw [hx]
  simp [Frozen, syndrome]

/-- Every target syndrome has exactly one second-stage input syndrome. -/
def secondFiberEquiv (t : Port 4) :
    {s : Port 4 // thirdPort s = t} ≃ Unit where
  toFun _ := ()
  invFun _ := ⟨thirdPort t, thirdPort_involutive t⟩
  left_inv s := by
    apply Subtype.ext
    change thirdPort t = s.1
    rw [← s.2, thirdPort_involutive]
  right_inv u := by cases u; rfl

theorem second_load_one (y : Cell 4) :
    Nat.card {x : Cell 4 // hopTwo x = y} = 1 := by
  calc
    _ = Nat.card Unit := Nat.card_congr
      ((translationFiberEquiv shiftTwo thirdPort shiftTwo_syndrome y).trans
        (secondFiberEquiv (syndrome y)))
    _ = 1 := by norm_num [Nat.card_eq_fintype_card]

def constantZeroFiberEquiv (t : Port 4) (h : t = 0) :
    {s : Port 4 // (0 : Port 4) = t} ≃ Port 4 where
  toFun s := s.1
  invFun s := ⟨s, h.symm⟩
  left_inv s := by apply Subtype.ext; rfl
  right_inv _ := rfl

theorem terminal_load_sixteen (y : Cell 4) (h : Frozen 4 y) :
    Nat.card {x : Cell 4 // routeEnd x = y} = 16 := by
  calc
    _ = Nat.card (Port 4) := Nat.card_congr
      ((translationFiberEquiv shiftThree (fun _ => 0) shiftThree_syndrome y).trans
        (constantZeroFiberEquiv (syndrome y) h))
    _ = 16 := by rw [Nat.card_eq_fintype_card, port_card_four]

theorem primary_load_sixteen (y : Cell 4) (h : Frozen 4 y) :
    Nat.card {x : Cell 4 // guidepost x = y} = 16 := by
  have hg : ∀ s : Port 4, s + syndrome (impulse (-s)) = 0 := by
    intro s
    simp [syndrome_impulse]
  calc
    _ = Nat.card (Port 4) := Nat.card_congr
      ((translationFiberEquiv (fun s => impulse (-s)) (fun _ => 0) hg y).trans
        (constantZeroFiberEquiv (syndrome y) h))
    _ = 16 := by rw [Nat.card_eq_fintype_card, port_card_four]

/-- Each port schedule permutation has exactly one input syndrome per port;
translation identifies that syndrome's cell fiber with the actual kernel. -/
def portUseEquiv (p : Port 4 ≃ Port 4) (i : Port 4) :
    {x : Cell 4 // p (syndrome x) = i} ≃ Beacon 4 where
  toFun x := ⟨x.1 - impulse (p.symm i), by
    change syndrome (x.1 - impulse (p.symm i)) = 0
    have hs : syndrome x.1 = p.symm i := by
      apply p.injective
      rw [x.2, p.apply_symm_apply]
    rw [syndrome_sub, syndrome_impulse, hs, sub_self]⟩
  invFun b := ⟨b.1 + impulse (p.symm i), by
    rw [syndrome_add, syndrome_impulse, beacon_is_frozen b, zero_add,
      p.apply_symm_apply]⟩
  left_inv x := by
    apply Subtype.ext
    change x.1 - impulse (p.symm i) + impulse (p.symm i) = x.1
    abel
  right_inv b := by
    apply Subtype.ext
    change b.1 + impulse (p.symm i) - impulse (p.symm i) = b.1
    abel

theorem port_load (p : Port 4 ≃ Port 4) (i : Port 4) :
    Nat.card {x : Cell 4 // p (syndrome x) = i} = 4096 := by
  calc
    _ = Nat.card (Beacon 4) := Nat.card_congr (portUseEquiv p i)
    _ = 4096 := by rw [Nat.card_eq_fintype_card, beacon_card_four]

theorem each_hop_port_load (i : Port 4) :
    Nat.card {x : Cell 4 // firstPort (syndrome x) = i} = 4096 ∧
    Nat.card {x : Cell 4 // secondPort (syndrome x) = i} = 4096 ∧
    Nat.card {x : Cell 4 // thirdPort (syndrome x) = i} = 4096 :=
  ⟨port_load (Equiv.ofBijective firstPort firstPort_bijective) i,
   port_load (Equiv.ofBijective secondPort secondPort_bijective) i,
   port_load (Equiv.ofBijective thirdPort thirdPort_bijective) i⟩

/-- Different types distinguish an actual face reference from a routed one. -/
structure FaceReference (x : Cell 4) where
  beacon : Beacon 4
  adjacent : ∃ i : Port 4, beacon.1 = neighbor x i

structure RoutedReference (x : Cell 4) where
  beacon : Beacon 4
  endpoint : beacon.1 = routeEnd x

def physicalReference (x : Cell 4) : FaceReference x :=
  ⟨⟨guidepost x, guidepost_frozen x⟩, guidepost_is_neighbor x⟩

def logicalReference (x : Cell 4) : RoutedReference x :=
  ⟨⟨routeEnd x, routeEnd_frozen x⟩, rfl⟩

/-- Read the existing epoch's inverse placement; never reassign a prime. -/
def physicalIndex (P : PlacedAtlas) (x : Cell 4) : Fin 4096 :=
  indexAtBeacon P (physicalReference x).beacon

def logicalIndex (P : PlacedAtlas) (x : Cell 4) : Fin 4096 :=
  indexAtBeacon P (logicalReference x).beacon

theorem distinct_reference_indices (P : PlacedAtlas) (x : Cell 4) :
    physicalIndex P x ≠ logicalIndex P x := by
  intro h
  have hb := P.position.symm.injective h
  have hv := congrArg Subtype.val hb
  exact routeEnd_ne_guidepost x hv.symm

theorem two_actual_prime_references (P : PlacedAtlas) (x : Cell 4) :
    Nat.Prime (primeNumber (physicalIndex P x)) ∧
    Nat.Prime (primeNumber (logicalIndex P x)) ∧
    primeNumber (physicalIndex P x) ≠ primeNumber (logicalIndex P x) :=
  ⟨primeNumber_prime _, primeNumber_prime _,
    indexedPrime_injective.ne (distinct_reference_indices P x)⟩

/-- Both locators target existing primary positions (replica=false). -/
theorem physical_locator (P : PlacedAtlas) (x : Cell 4) :
    (locate P (physicalIndex P x) false).localCell = addressCode (guidepost x) := by
  change addressCode (P.position (P.position.symm (physicalReference x).beacon)).1 =
    addressCode (guidepost x)
  rw [P.position.apply_symm_apply]
  rfl

theorem logical_locator (P : PlacedAtlas) (x : Cell 4) :
    (locate P (logicalIndex P x) false).localCell = addressCode (routeEnd x) := by
  change addressCode (P.position (P.position.symm (logicalReference x).beacon)).1 =
    addressCode (routeEnd x)
  rw [P.position.apply_symm_apply]
  rfl

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHop16
