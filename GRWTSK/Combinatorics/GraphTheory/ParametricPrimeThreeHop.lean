/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean build, axiom audit, independent replay NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeBeaconCardinality
import GRWTSK.Combinatorics.GraphTheory.CompatiblePrimeDimensionEmbedding

/-!
# Dimension-parametric balanced three-hop routing

The actual cube Cell m and its actual syndrome kernel are reused.
A schedule consists of a port permutation, a nonzero offset and two
avoidance properties. The following theorems quantify over every m and
every such schedule; a separate recursive construction supplies them.
All cardinality statements concern actual fibers, not random averages.
-/

set_option autoImplicit false
set_option maxHeartbeats 4000000
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ParametricPrimeThreeHop

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CompatiblePrimeDimensionEmbedding

variable {m n : ℕ}

theorem port_neg_self (s : Port m) : -s = s := by
  funext i
  change -(s i) = s i
  have h : ∀ b : ZMod 2, -b = b := by decide
  exact h (s i)

theorem port_add_self (s : Port m) : s + s = 0 := by
  calc
    s + s = s + -s := congrArg (fun z => s + z) (port_neg_self s).symm
    _ = 0 := add_neg_cancel s

theorem port_card (m : ℕ) : Fintype.card (Port m) = 2 ^ m := by
  simp [Port, Fintype.card_fun]

theorem cell_card (m : ℕ) : Fintype.card (Cell m) = 2 ^ (2 ^ m) := by
  simp [Cell, Fintype.card_fun, port_card]

theorem le_two_pow (m : ℕ) : m ≤ 2 ^ m := by
  induction m with
  | zero => decide
  | succ k ih =>
    rw [pow_succ]
    have hp : 0 < (2 : ℕ) ^ k := by positivity
    omega

theorem beacon_card_product (m : ℕ) :
    Nat.card (Beacon m) * 2 ^ m = 2 ^ (2 ^ m) := by
  classical
  have hindex : (syndromeHom m).ker.index = Nat.card (Port m) := by
    calc
      (syndromeHom m).ker.index = Nat.card (syndromeHom m).range :=
        AddSubgroup.index_ker (syndromeHom m)
      _ = Nat.card (Port m) := by
        simpa [(syndromeHom m).range_eq_top_of_surjective (syndromeHom_surjective m)]
  have hk : Nat.card (Beacon m) * Nat.card (Port m) = Nat.card (Cell m) := by
    rw [← hindex]
    exact (syndromeHom m).ker.card_mul_index
  simpa only [Nat.card_eq_fintype_card, port_card, cell_card] using hk

theorem beacon_card (m : ℕ) : Nat.card (Beacon m) = 2 ^ (2 ^ m - m) := by
  have h := beacon_card_product m
  have he : 2 ^ m - m + m = 2 ^ m := Nat.sub_add_cancel (le_two_pow m)
  have hp : (2 : ℕ) ^ (2 ^ m - m) * 2 ^ m = 2 ^ (2 ^ m) := by
    rw [← pow_add, he]
  exact mul_right_cancel₀ (by positivity : (2 : ℕ) ^ m ≠ 0) (h.trans hp.symm)

/-- One bijection and one offset suffice; the two exclusions enforce
four distinct labels s, p1, p2 and p3. -/
structure Schedule (m : ℕ) where
  first : Port m → Port m
  first_bijective : Function.Bijective first
  offset : Port m
  offset_ne : offset ≠ 0
  avoid : ∀ s, first s ≠ s ∧ first s ≠ s + offset

variable (S : Schedule m)

def second (s : Port m) : Port m := S.first s + S.offset
def third (s : Port m) : Port m := s + S.offset
def firstTarget (s : Port m) : Port m := s + S.first s

theorem second_bijective : Function.Bijective (second S) := by
  constructor
  · intro x y h
    exact S.first_bijective.1 (add_right_cancel h)
  · intro y
    obtain ⟨x, hx⟩ := S.first_bijective.2 (y - S.offset)
    refine ⟨x, ?_⟩
    change S.first x + S.offset = y
    rw [hx, sub_add_cancel]

theorem third_involutive : Function.Involutive (third S) := by
  intro s
  change s + S.offset + S.offset = s
  rw [add_assoc, port_add_self, add_zero]

theorem third_bijective : Function.Bijective (third S) :=
  ⟨(third_involutive S).injective, (third_involutive S).surjective⟩

theorem ports_distinct (s : Port m) :
    S.first s ≠ second S s ∧ S.first s ≠ third S s ∧
    second S s ≠ third S s ∧ S.first s ≠ s ∧
    second S s ≠ s ∧ third S s ≠ s := by
  obtain ⟨h1, h2⟩ := S.avoid s
  refine ⟨?_, h2, ?_, h1, ?_, ?_⟩
  · intro h
    apply S.offset_ne
    exact add_left_cancel (show S.first s + S.offset = S.first s + 0 by
      simpa only [second, add_zero] using h.symm)
  · intro h
    exact h1 (add_right_cancel h)
  · intro h
    apply h2
    have hh := congrArg (fun t : Port m => t + S.offset) h
    change (S.first s + S.offset) + S.offset = s + S.offset at hh
    rwa [add_assoc, port_add_self, add_zero] at hh
  · intro h
    apply S.offset_ne
    exact add_left_cancel (show s + S.offset = s + 0 by
      simpa only [third, add_zero] using h)

theorem firstTarget_ne_zero (s : Port m) : firstTarget S s ≠ 0 := by
  intro h
  apply (S.avoid s).1
  apply add_left_cancel (a := s)
  change s + S.first s = s + s
  rw [port_add_self]
  exact h

theorem secondTarget_eq (s : Port m) :
    s + (S.first s + second S s) = third S s := by
  unfold second third
  rw [← add_assoc (S.first s), port_add_self, zero_add]

theorem port_sum (s : Port m) :
    s + (S.first s + second S s + third S s) = 0 := by
  rw [← add_assoc, secondTarget_eq, port_add_self]

def translate (d : Port m → Cell m) (x : Cell m) : Cell m := x + d (syndrome x)
def shiftOne (s : Port m) : Cell m := impulse (S.first s)
def shiftTwo (s : Port m) : Cell m := shiftOne S s + impulse (second S s)
def shiftThree (s : Port m) : Cell m := shiftTwo S s + impulse (third S s)
def hopOne : Cell m → Cell m := translate (shiftOne S)
def hopTwo : Cell m → Cell m := translate (shiftTwo S)
def routeEnd : Cell m → Cell m := translate (shiftThree S)

theorem hopOne_step (x : Cell m) :
    hopOne S x = neighbor x (S.first (syndrome x)) := rfl

theorem hopTwo_step (x : Cell m) :
    hopTwo S x = neighbor (hopOne S x) (second S (syndrome x)) := by
  unfold hopTwo hopOne translate shiftTwo neighbor
  abel

theorem routeEnd_step (x : Cell m) :
    routeEnd S x = neighbor (hopTwo S x) (third S (syndrome x)) := by
  unfold routeEnd hopTwo translate shiftThree neighbor
  abel

theorem shiftOne_syndrome (s : Port m) :
    s + syndrome (shiftOne S s) = firstTarget S s := by
  simp [shiftOne, firstTarget, syndrome_impulse]

theorem shiftTwo_syndrome (s : Port m) :
    s + syndrome (shiftTwo S s) = third S s := by
  simpa only [shiftTwo, shiftOne, syndrome_add, syndrome_impulse] using secondTarget_eq S s

theorem shiftThree_syndrome (s : Port m) :
    s + syndrome (shiftThree S s) = 0 := by
  simpa only [shiftThree, shiftTwo, shiftOne, syndrome_add, syndrome_impulse] using port_sum S s

theorem hopOne_not_frozen (x : Cell m) : ¬ Frozen m (hopOne S x) := by
  change syndrome (translate (shiftOne S) x) ≠ 0
  rw [translate, syndrome_add, shiftOne_syndrome]
  exact firstTarget_ne_zero S (syndrome x)

theorem routeEnd_frozen (x : Cell m) : Frozen m (routeEnd S x) := by
  change syndrome (translate (shiftThree S) x) = 0
  rw [translate, syndrome_add, shiftThree_syndrome]

theorem flip_same (x : Cell m) (p : Port m) : neighbor x p p = x p + 1 := by
  classical
  simp [neighbor, impulse, Pi.single_apply]

theorem flip_other (x : Cell m) (p q : Port m) (h : q ≠ p) :
    neighbor x p q = x q := by
  classical
  simp [neighbor, impulse, Pi.single_apply, h, Ne.symm h]

theorem bit_flip_ne (a : ZMod 2) : a + 1 ≠ a := by
  intro h
  have h' : a + 1 = a + 0 := by simpa only [add_zero] using h
  exact one_ne_zero (add_left_cancel h')

theorem route_changed_iff (x : Cell m) (q : Port m) :
    routeEnd S x q ≠ x q ↔
      q = S.first (syndrome x) ∨ q = second S (syndrome x) ∨ q = third S (syndrome x) := by
  obtain ⟨h12, h13, h23, _, _, _⟩ := ports_distinct S (syndrome x)
  rw [routeEnd_step, hopTwo_step, hopOne_step]
  by_cases h1 : q = S.first (syndrome x)
  · subst q
    rw [flip_other _ _ _ h13, flip_other _ _ _ h12, flip_same]
    simp [bit_flip_ne]
  by_cases h2 : q = second S (syndrome x)
  · subst q
    rw [flip_other _ _ _ h23, flip_same, flip_other _ _ _ (Ne.symm h12)]
    simp [bit_flip_ne]
  by_cases h3 : q = third S (syndrome x)
  · subst q
    rw [flip_same, flip_other _ _ _ (Ne.symm h23), flip_other _ _ _ (Ne.symm h13)]
    simp [bit_flip_ne]
  rw [flip_other _ _ _ h3, flip_other _ _ _ h2, flip_other _ _ _ h1]
  simp [h1, h2, h3]

def changedPorts (x y : Cell m) : Finset (Port m) := by
  classical
  exact Finset.univ.filter (fun q => y q ≠ x q)

theorem route_changedPorts (x : Cell m) :
    changedPorts x (routeEnd S x) =
      {S.first (syndrome x), second S (syndrome x), third S (syndrome x)} := by
  classical
  ext q
  simp [changedPorts, route_changed_iff]

theorem route_hamming_three (x : Cell m) :
    (changedPorts x (routeEnd S x)).card = 3 := by
  classical
  obtain ⟨h12, h13, h23, _, _, _⟩ := ports_distinct S (syndrome x)
  rw [route_changedPorts]
  simp [Finset.card_insert_of_notMem, h12, h13, h23]

theorem routeEnd_ne_guidepost (x : Cell m) : routeEnd S x ≠ guidepost x := by
  intro h
  obtain ⟨_, _, _, h1, h2, h3⟩ := ports_distinct S (syndrome x)
  have unchanged : routeEnd S x (syndrome x) = x (syndrome x) := by
    by_contra hn
    rcases (route_changed_iff S x (syndrome x)).mp hn with h' | h' | h'
    · exact h1 h'.symm
    · exact h2 h'.symm
    · exact h3 h'.symm
  rw [h, guidepost, port_neg_self, flip_same] at unchanged
  exact bit_flip_ne (x (syndrome x)) unchanged

theorem routeEnd_ne_origin (x : Cell m) : routeEnd S x ≠ x := by
  intro h
  have hc := route_hamming_three S x
  rw [h] at hc
  simp [changedPorts] at hc

theorem routeEnd_not_face (x : Cell m) (i : Port m) :
    routeEnd S x ≠ neighbor x i := by
  intro h
  exact routeEnd_ne_guidepost S x
    (unique_frozen_neighbor x (routeEnd S x) ⟨i, h⟩ (routeEnd_frozen S x))

theorem routeEnd_not_two_hops (x : Cell m) (i j : Port m) :
    routeEnd S x ≠ neighbor (neighbor x i) j := by
  classical
  intro h
  have hs : changedPorts x (routeEnd S x) ⊆ ({i, j} : Finset (Port m)) := by
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
    have hne : routeEnd S x q ≠ x q := by simpa [changedPorts] using hq
    apply hne
    rw [h, flip_other _ _ _ hj, flip_other _ _ _ hi]
  have hc := Finset.card_le_card hs
  rw [route_hamming_three] at hc
  by_cases hij : i = j
  · subst j
    simp at hc
  · simp [Finset.card_insert_of_notMem, hij] at hc

theorem syndrome_sub (x y : Cell m) :
    syndrome (x - y) = syndrome x - syndrome y :=
  (syndromeHom m).map_sub x y

theorem translated_origin_syndrome
    (d : Port m → Cell m) (g : Port m → Port m)
    (hg : ∀ s, s + syndrome (d s) = g s)
    (y : Cell m) (s : {s : Port m // g s = syndrome y}) :
    syndrome (y - d s.1) = s.1 := by
  calc
    syndrome (y - d s.1) = syndrome y - syndrome (d s.1) := syndrome_sub y (d s.1)
    _ = (s.1 + syndrome (d s.1)) - syndrome (d s.1) :=
      congrArg (fun t : Port m => t - syndrome (d s.1))
        (s.2.symm.trans (hg s.1).symm)
    _ = s.1 := by abel

def translationFiberEquiv
    (d : Port m → Cell m) (g : Port m → Port m)
    (hg : ∀ s, s + syndrome (d s) = g s) (y : Cell m) :
    {x : Cell m // translate d x = y} ≃ {s : Port m // g s = syndrome y} where
  toFun x := ⟨syndrome x.1, by
    rw [← hg, ← syndrome_add]
    exact congrArg syndrome x.2⟩
  invFun s := ⟨y - d s.1, by
    change y - d s.1 + d (syndrome (y - d s.1)) = y
    rw [translated_origin_syndrome d g hg y s, sub_add_cancel]⟩
  left_inv x := by
    apply Subtype.ext
    change y - d (syndrome x.1) = x.1
    calc
      y - d (syndrome x.1) = translate d x.1 - d (syndrome x.1) :=
        congrArg (fun z : Cell m => z - d (syndrome x.1)) x.2.symm
      _ = x.1 := by
        unfold translate
        abel
  right_inv s := by
    apply Subtype.ext
    exact translated_origin_syndrome d g hg y s

theorem first_load_exact (y : Cell m) :
    Nat.card {x : Cell m // hopOne S x = y} =
      Nat.card {s : Port m // firstTarget S s = syndrome y} :=
  Nat.card_congr (translationFiberEquiv (shiftOne S) (firstTarget S) (shiftOne_syndrome S) y)

def secondFiberEquiv (t : Port m) :
    {s : Port m // third S s = t} ≃ Unit where
  toFun _ := ()
  invFun _ := ⟨third S t, third_involutive S t⟩
  left_inv s := by
    apply Subtype.ext
    change third S t = s.1
    exact (congrArg (third S) s.2.symm).trans (third_involutive S s.1)
  right_inv u := by cases u; rfl

theorem second_load_one (y : Cell m) :
    Nat.card {x : Cell m // hopTwo S x = y} = 1 := by
  calc
    _ = Nat.card Unit := Nat.card_congr
      ((translationFiberEquiv (shiftTwo S) (third S) (shiftTwo_syndrome S) y).trans
        (secondFiberEquiv S (syndrome y)))
    _ = 1 := by norm_num [Nat.card_eq_fintype_card]

def constantZeroFiberEquiv (t : Port m) (h : t = 0) :
    {s : Port m // (0 : Port m) = t} ≃ Port m where
  toFun s := s.1
  invFun s := ⟨s, h.symm⟩
  left_inv _ := by apply Subtype.ext; rfl
  right_inv _ := rfl

theorem terminal_load (y : Cell m) (h : Frozen m y) :
    Nat.card {x : Cell m // routeEnd S x = y} = 2 ^ m := by
  calc
    _ = Nat.card (Port m) := Nat.card_congr
      ((translationFiberEquiv (shiftThree S) (fun _ => 0) (shiftThree_syndrome S) y).trans
        (constantZeroFiberEquiv (syndrome y) h))
    _ = 2 ^ m := by rw [Nat.card_eq_fintype_card, port_card]

theorem primary_load (y : Cell m) (h : Frozen m y) :
    Nat.card {x : Cell m // guidepost x = y} = 2 ^ m := by
  have hg : ∀ s : Port m, s + syndrome (impulse (-s)) = 0 := by
    intro s
    simp [syndrome_impulse]
  calc
    _ = Nat.card (Port m) := Nat.card_congr
      ((translationFiberEquiv (fun s => impulse (-s)) (fun _ => 0) hg y).trans
        (constantZeroFiberEquiv (syndrome y) h))
    _ = 2 ^ m := by rw [Nat.card_eq_fintype_card, port_card]

def portUseEquiv (p : Port m ≃ Port m) (i : Port m) :
    {x : Cell m // p (syndrome x) = i} ≃ Beacon m where
  toFun x := ⟨x.1 - impulse (p.symm i), by
    change syndrome (x.1 - impulse (p.symm i)) = 0
    have hs : syndrome x.1 = p.symm i := by
      apply p.injective
      rw [x.2, p.apply_symm_apply]
    rw [syndrome_sub, syndrome_impulse, hs, sub_self]⟩
  invFun b := ⟨b.1 + impulse (p.symm i), by
    rw [syndrome_add, syndrome_impulse, beacon_is_frozen b, zero_add, p.apply_symm_apply]⟩
  left_inv x := by
    apply Subtype.ext
    change x.1 - impulse (p.symm i) + impulse (p.symm i) = x.1
    abel
  right_inv b := by
    apply Subtype.ext
    change b.1 + impulse (p.symm i) - impulse (p.symm i) = b.1
    abel

theorem port_load (p : Port m ≃ Port m) (i : Port m) :
    Nat.card {x : Cell m // p (syndrome x) = i} = 2 ^ (2 ^ m - m) :=
  (Nat.card_congr (portUseEquiv p i)).trans (beacon_card m)

theorem each_hop_port_load (i : Port m) :
    Nat.card {x : Cell m // S.first (syndrome x) = i} = 2 ^ (2 ^ m - m) ∧
    Nat.card {x : Cell m // second S (syndrome x) = i} = 2 ^ (2 ^ m - m) ∧
    Nat.card {x : Cell m // third S (syndrome x) = i} = 2 ^ (2 ^ m - m) :=
  ⟨port_load (Equiv.ofBijective S.first S.first_bijective) i,
   port_load (Equiv.ofBijective (second S) (second_bijective S)) i,
   port_load (Equiv.ofBijective (third S) (third_bijective S)) i⟩

def primaryBeacon (x : Cell m) : Beacon m := ⟨guidepost x, guidepost_frozen x⟩
def logicalBeacon (x : Cell m) : Beacon m := ⟨routeEnd S x, routeEnd_frozen S x⟩

/-- A placement is an explicit injection of numerical prime labels;
the theorem does not assume a stable rank from arbitrary enumeration. -/
structure PrimeDirectory (m : ℕ) where
  label : Beacon m → ℕ
  prime : ∀ b, Nat.Prime (label b)
  injective : Function.Injective label

theorem two_prime_references (D : PrimeDirectory m) (x : Cell m) :
    Nat.Prime (D.label (primaryBeacon x)) ∧
    Nat.Prime (D.label (logicalBeacon S x)) ∧
    D.label (primaryBeacon x) ≠ D.label (logicalBeacon S x) := by
  refine ⟨D.prime _, D.prime _, ?_⟩
  intro h
  have hb := D.injective h
  exact routeEnd_ne_guidepost S x (congrArg (fun b : Beacon m => b.1) hb).symm

/-- Actual nth-prime labels exist at every finite dimension. Numerical
cutoffs and inter-epoch retention are separate obligations. -/
def directoryOfIndex (rank : Beacon m ↪ ℕ) : PrimeDirectory m where
  label b := Nat.nth Nat.Prime (rank b)
  prime b := Nat.prime_nth_prime (rank b)
  injective := by
    intro b c h
    apply rank.injective
    have hc := congrArg Nat.primeCounting' h
    simpa only [Nat.primeCounting'_nth_eq] using hc

/-- Compatibility of the native port schedules is an explicit law. -/
structure ScheduleEmbedding {m n : ℕ} (S : Schedule m) (T : Schedule n) where
  geometry : CompatibleEmbedding m n
  first_commutes : ∀ s, geometry.port (S.first s) = T.first (geometry.port s)
  second_commutes : ∀ s, geometry.port (second S s) = second T (geometry.port s)
  third_commutes : ∀ s, geometry.port (third S s) = third T (geometry.port s)

variable {S} {T : Schedule n}

theorem hopOne_commutes (E : ScheduleEmbedding S T) (x : Cell m) :
    E.geometry.address (hopOne S x) = hopOne T (E.geometry.address x) := by
  rw [hopOne_step, hopOne_step, E.geometry.neighbor_commutes,
    E.geometry.syndrome_commutes, E.first_commutes]

theorem hopTwo_commutes (E : ScheduleEmbedding S T) (x : Cell m) :
    E.geometry.address (hopTwo S x) = hopTwo T (E.geometry.address x) := by
  rw [hopTwo_step, hopTwo_step, E.geometry.neighbor_commutes, hopOne_commutes E,
    E.geometry.syndrome_commutes, E.second_commutes]

theorem routeEnd_commutes (E : ScheduleEmbedding S T) (x : Cell m) :
    E.geometry.address (routeEnd S x) = routeEnd T (E.geometry.address x) := by
  rw [routeEnd_step, routeEnd_step, E.geometry.neighbor_commutes, hopTwo_commutes E,
    E.geometry.syndrome_commutes, E.third_commutes]

theorem routing_commuting_square (E : ScheduleEmbedding S T) :
    E.geometry.address ∘ routeEnd S = routeEnd T ∘ E.geometry.address := by
  funext x
  exact routeEnd_commutes E x

def ScheduleEmbedding.then {k : ℕ} {U : Schedule k}
    (E : ScheduleEmbedding S T) (F : ScheduleEmbedding T U) : ScheduleEmbedding S U where
  geometry := E.geometry.then F.geometry
  first_commutes s := by
    change F.geometry.port (E.geometry.port (S.first s)) = _
    rw [E.first_commutes, F.first_commutes]
    rfl
  second_commutes s := by
    change F.geometry.port (E.geometry.port (second S s)) = _
    rw [E.second_commutes, F.second_commutes]
    rfl
  third_commutes s := by
    change F.geometry.port (E.geometry.port (third S s)) = _
    rw [E.third_commutes, F.third_commutes]
    rfl

def beaconLift (E : ScheduleEmbedding S T) (b : Beacon m) : Beacon n :=
  ⟨E.geometry.address b.1, preserves_frozen E.geometry b.1 (beacon_is_frozen b)⟩

theorem beaconLift_injective (E : ScheduleEmbedding S T) :
    Function.Injective (beaconLift E) := by
  intro b c h
  exact Subtype.ext (E.geometry.address.injective (congrArg (fun z : Beacon n => z.1) h))

theorem primaryBeacon_commutes (E : ScheduleEmbedding S T) (x : Cell m) :
    beaconLift E (primaryBeacon x) = primaryBeacon (E.geometry.address x) := by
  apply Subtype.ext
  exact guidepost_commutes E.geometry x

theorem logicalBeacon_commutes (E : ScheduleEmbedding S T) (x : Cell m) :
    beaconLift E (logicalBeacon S x) = logicalBeacon T (E.geometry.address x) := by
  apply Subtype.ext
  exact routeEnd_commutes E x

theorem prime_identity_commutes (E : ScheduleEmbedding S T)
    (D : PrimeDirectory m) (D' : PrimeDirectory n)
    (h : ∀ b, D'.label (beaconLift E b) = D.label b) (x : Cell m) :
    D'.label (primaryBeacon (E.geometry.address x)) = D.label (primaryBeacon x) ∧
    D'.label (logicalBeacon T (E.geometry.address x)) = D.label (logicalBeacon S x) := by
  rw [← primaryBeacon_commutes E x, ← logicalBeacon_commutes E x]
  exact ⟨h _, h _⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ParametricPrimeThreeHop
