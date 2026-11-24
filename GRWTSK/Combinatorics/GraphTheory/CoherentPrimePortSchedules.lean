/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; build, audit and fresh replay NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.ParametricPrimeThreeHop
import GRWTSK.Combinatorics.GraphTheory.BalancedPrimeThreeHop16

/-!
# Coherent schedules with bounded congestion in arbitrary dimensions

Two seeds are supplied: dimension 3, and the exact verified dimension 4
schedule. The latter is retained as a separate rooted tower because
its high-bit toggle does not restrict to the standard 3-bit subspace.
First append an unchanged bit. Thereafter the new high bit shears the
previous high bit; this is a triangular Gray transform, not a fresh
optimization of an old chart. On nonempty first-target fibers the exact
multiplicity is 2 at the seed and 4 at every positive extension depth.
-/

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 10000
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CoherentPrimePortSchedules

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ParametricPrimeThreeHop

variable {m : ℕ}

theorem bit_add_self (b : ZMod 2) : b + b = 0 := by
  have h : ∀ a : ZMod 2, a + a = 0 := by decide
  exact h b

theorem snoc_add (x y : Port m) (a b : ZMod 2) :
    Fin.snoc x a + Fin.snoc y b = Fin.snoc (x + y) (a + b) := by
  funext k
  refine Fin.lastCases ?_ (fun i => ?_) k
  · simp only [Pi.add_apply, Fin.snoc_last]
  · simp only [Pi.add_apply, Fin.snoc_castSucc]

theorem snoc_zero (m : ℕ) : Fin.snoc (0 : Port m) (0 : ZMod 2) = 0 := by
  funext k
  refine Fin.lastCases ?_ (fun i => ?_) k
  · simp
  · simp

theorem snoc_smul (a : ZMod 2) (x : Port m) (b : ZMod 2) :
    a • Fin.snoc x b = Fin.snoc (a • x) (a • b) := by
  funext k
  refine Fin.lastCases ?_ (fun i => ?_) k
  · simp only [Pi.smul_apply, Fin.snoc_last]
  · simp only [Pi.smul_apply, Fin.snoc_castSucc]

def pad (s : Port m) : Port (m + 1) := Fin.snoc s 0

theorem pad_injective : Function.Injective (pad (m := m)) := by
  intro s t h
  exact (Fin.snoc_inj.mp h).1

theorem pad_add (s t : Port m) : pad (s + t) = pad s + pad t := by
  symm
  simpa only [pad, add_zero] using snoc_add s t (0 : ZMod 2) 0

theorem pad_zero : pad (0 : Port m) = 0 := snoc_zero m

theorem pad_neg (s : Port m) : pad (-s) = -pad s := by
  rw [port_neg_self, port_neg_self]

theorem pad_smul (a : ZMod 2) (s : Port m) : pad (a • s) = a • pad s := by
  symm
  simpa only [pad, smul_zero] using snoc_smul a s (0 : ZMod 2)

/-- The seed on three bits has the same two-bit exclusion mechanism. -/
def seed3First (s : Port 3) : Port 3 := ![s 1, s 0 + s 1, s 2 + 1]

def seed3Offset : Port 3 := ![1, 0, 0]

theorem seed3First_bijective : Function.Bijective seed3First := by
  unfold Function.Bijective Function.Injective Function.Surjective
  decide

theorem seed3_avoid :
    ∀ s : Port 3, seed3First s ≠ s ∧ seed3First s ≠ s + seed3Offset := by decide

def seed3 : Schedule 3 where
  first := seed3First
  first_bijective := seed3First_bijective
  offset := seed3Offset
  offset_ne := by decide
  avoid := seed3_avoid

/-- The separate 4-bit seed is literally the earlier verified schedule. -/
def seed4 : Schedule 4 where
  first := GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHop16.firstPort
  first_bijective := GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHop16.firstPort_bijective
  offset := GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHop16.offset
  offset_ne := by decide
  avoid s := ⟨(GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHop16.ports_distinct s).2.2.2.1, (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHop16.ports_distinct s).2.1⟩

/-- Count fibers at actual image points; all other fibers are empty. -/
abbrev FiberAt (S : Schedule m) (s : Port m) :=
  {x : Port m // firstTarget S x = firstTarget S s}

def seed3Preimage (t : Port 3) (b : ZMod 2) : Port 3 :=
  ![t 1, t 0 + t 1, b]

theorem seed3Preimage_spec : ∀ (s : Port 3) (b : ZMod 2),
    firstTarget seed3 (seed3Preimage (firstTarget seed3 s) b) = firstTarget seed3 s := by
  decide

theorem seed3Preimage_bit : ∀ (s : Port 3) (b : ZMod 2),
    seed3Preimage (firstTarget seed3 s) b 2 = b := by decide

theorem seed3Preimage_inverse : ∀ (s x : Port 3),
    firstTarget seed3 x = firstTarget seed3 s →
      seed3Preimage (firstTarget seed3 s) (x 2) = x := by decide

def seed3FiberEquiv (s : Port 3) : FiberAt seed3 s ≃ ZMod 2 where
  toFun x := x.1 2
  invFun b := ⟨seed3Preimage (firstTarget seed3 s) b, seed3Preimage_spec s b⟩
  left_inv x := Subtype.ext (seed3Preimage_inverse s x.1 x.2)
  right_inv b := seed3Preimage_bit s b

theorem seed3_fiber_two (s : Port 3) : Nat.card (FiberAt seed3 s) = 2 := by
  calc
    _ = Nat.card (ZMod 2) := Nat.card_congr (seed3FiberEquiv s)
    _ = 2 := by norm_num [Nat.card_eq_fintype_card]

theorem seed4_fiber_two (s : Port 4) : Nat.card (FiberAt seed4 s) = 2 := by
  calc
    _ = Nat.card (ZMod 2) :=
      Nat.card_congr (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHop16.firstFiberEquiv (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHop16.firstSyndrome s) (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BalancedPrimeThreeHop16.firstSyndrome_high s))
    _ = 2 := by norm_num [Nat.card_eq_fintype_card]

/-- The added input bit is retained, with an optional shear into the old
coordinates. This construction restricts to the original permutation. -/
def extendFirst (S : Schedule m) (v : Port m) (s : Port (m + 1)) : Port (m + 1) :=
  Fin.snoc (S.first (Fin.init s) + (s (Fin.last m)) • v) (s (Fin.last m))

theorem extendFirst_bijective (S : Schedule m) (v : Port m) :
    Function.Bijective (extendFirst S v) := by
  constructor
  · intro x y h
    change Fin.snoc (S.first (Fin.init x) + x (Fin.last m) • v) (x (Fin.last m)) =
      Fin.snoc (S.first (Fin.init y) + y (Fin.last m) • v) (y (Fin.last m)) at h
    have hh := Fin.snoc_inj.mp h
    have hxy : Fin.init x = Fin.init y := by
      apply S.first_bijective.1
      apply add_right_cancel (b := (y (Fin.last m)) • v)
      simpa only [hh.2] using hh.1
    calc
      x = Fin.snoc (Fin.init x) (x (Fin.last m)) := (Fin.snoc_init_self).symm
      _ = Fin.snoc (Fin.init y) (y (Fin.last m)) := congrArg₂ (fun (z : Port m) (b : ZMod 2) => Fin.snoc z b) hxy hh.2
      _ = y := Fin.snoc_init_self
  · intro y
    obtain ⟨x, hx⟩ := S.first_bijective.2 (Fin.init y - (y (Fin.last m)) • v)
    refine ⟨Fin.snoc x (y (Fin.last m)), ?_⟩
    simp only [extendFirst, Fin.init_snoc, Fin.snoc_last, hx, sub_add_cancel, Fin.snoc_init_self]

/-- The construction requires only that the optional shear retains
the two old port exclusions. -/
def extend (S : Schedule m) (v : Port m)
    (safe : ∀ (s : Port m) (b : ZMod 2),
      S.first s + b • v ≠ s ∧ S.first s + b • v ≠ s + S.offset) :
    Schedule (m + 1) where
  first := extendFirst S v
  first_bijective := extendFirst_bijective S v
  offset := pad S.offset
  offset_ne := by
    intro h
    exact S.offset_ne (pad_injective (h.trans pad_zero.symm))
  avoid s := by
    obtain ⟨h1, h2⟩ := safe (Fin.init s) (s (Fin.last m))
    constructor
    · intro h
      exact h1 (by
        have hi := congrArg (fun z : Port (m + 1) => Fin.init z) h
        simpa only [extendFirst, Fin.init_snoc] using hi)
    · intro h
      exact h2 (by
        have hi := congrArg (fun z : Port (m + 1) => Fin.init z) h
        change Fin.init (extendFirst S v s) = Fin.init s + Fin.init (pad S.offset) at hi
        simpa only [extendFirst, pad, Fin.init_snoc] using hi)

theorem extend_first_commutes (S : Schedule m) (v : Port m)
    (safe : ∀ (s : Port m) (b : ZMod 2),
      S.first s + b • v ≠ s ∧ S.first s + b • v ≠ s + S.offset) (s : Port m) :
    pad (S.first s) = (extend S v safe).first (pad s) := by
  simp only [extend, extendFirst, pad, Fin.init_snoc, Fin.snoc_last, zero_smul, add_zero]

theorem extend_target (S : Schedule m) (v : Port m)
    (safe : ∀ (s : Port m) (b : ZMod 2),
      S.first s + b • v ≠ s ∧ S.first s + b • v ≠ s + S.offset)
    (s : Port (m + 1)) :
    firstTarget (extend S v safe) s =
      Fin.snoc (firstTarget S (Fin.init s) + (s (Fin.last m)) • v) 0 := by
  change s + extendFirst S v s = _
  calc
    _ = Fin.snoc (Fin.init s) (s (Fin.last m)) +
        Fin.snoc (S.first (Fin.init s) + (s (Fin.last m)) • v) (s (Fin.last m)) :=
      congrArg (fun z : Port (m + 1) => z + extendFirst S v s) Fin.snoc_init_self.symm
    _ = _ := by rw [snoc_add, bit_add_self, firstTarget, add_assoc]

/-- Both the image of the first-target map and the offset have zero
highest bit after every extension. -/
structure LastZeroSchedule (m : ℕ) where
  schedule : Schedule (m + 1)
  target_last : ∀ s, firstTarget schedule s (Fin.last m) = 0
  offset_last : schedule.offset (Fin.last m) = 0

def extendLastZero (S : Schedule m) (v : Port m)
    (safe : ∀ (s : Port m) (b : ZMod 2),
      S.first s + b • v ≠ s ∧ S.first s + b • v ≠ s + S.offset) :
    LastZeroSchedule m where
  schedule := extend S v safe
  target_last s := by rw [extend_target, Fin.snoc_last]
  offset_last := by simp [extend, pad]

theorem zero_safe (S : Schedule m) : ∀ (s : Port m) (b : ZMod 2),
    S.first s + b • (0 : Port m) ≠ s ∧
      S.first s + b • (0 : Port m) ≠ s + S.offset := by
  intro s b
  simpa only [smul_zero, add_zero] using S.avoid s

def extendZero (S : Schedule m) : LastZeroSchedule m :=
  extendLastZero S 0 (zero_safe S)

theorem zero_target_eq_iff (S : Schedule m) (x y : Port (m + 1)) :
    firstTarget (extendZero S).schedule x = firstTarget (extendZero S).schedule y ↔
      firstTarget S (Fin.init x) = firstTarget S (Fin.init y) := by
  change firstTarget (extend S 0 (zero_safe S)) x = firstTarget (extend S 0 (zero_safe S)) y ↔ _
  simp only [extend_target, smul_zero, add_zero, Fin.snoc_inj, and_true]

def zeroFiberEquiv (S : Schedule m) (s : Port (m + 1)) :
    FiberAt (extendZero S).schedule s ≃ FiberAt S (Fin.init s) × ZMod 2 where
  toFun x := (⟨Fin.init x.1, (zero_target_eq_iff S x.1 s).mp x.2⟩, x.1 (Fin.last m))
  invFun p := ⟨Fin.snoc p.1.1 p.2, (zero_target_eq_iff S _ s).mpr (by
    simpa only [Fin.init_snoc] using p.1.2)⟩
  left_inv x := Subtype.ext Fin.snoc_init_self
  right_inv p := by
    apply Prod.ext
    · apply Subtype.ext
      exact Fin.init_snoc
    · exact Fin.snoc_last

theorem zero_fiber_double (S : Schedule m) (s : Port (m + 1)) :
    Nat.card (FiberAt (extendZero S).schedule s) = Nat.card (FiberAt S (Fin.init s)) * 2 := by
  rw [Nat.card_congr (zeroFiberEquiv S s), Nat.card_prod]
  norm_num [Nat.card_eq_fintype_card]

/-- Shear into the previous highest coordinate, which is now guaranteed
to vanish in the first-target map and in the offset. -/
def lastMarker (m : ℕ) : Port (m + 1) := Fin.snoc 0 1

theorem lastMarker_last (m : ℕ) : lastMarker m (Fin.last m) = 1 := by
  simp [lastMarker]

theorem first_last_eq (S : LastZeroSchedule m) (s : Port (m + 1)) :
    S.schedule.first s (Fin.last m) = s (Fin.last m) := by
  have h := S.target_last s
  change s (Fin.last m) + S.schedule.first s (Fin.last m) = 0 at h
  exact add_left_cancel (h.trans (bit_add_self (s (Fin.last m))).symm)

theorem shear_safe (S : LastZeroSchedule m) : ∀ (s : Port (m + 1)) (b : ZMod 2),
    S.schedule.first s + b • lastMarker m ≠ s ∧
      S.schedule.first s + b • lastMarker m ≠ s + S.schedule.offset := by
  intro s b
  obtain ⟨h1, h2⟩ := S.schedule.avoid s
  constructor
  · intro h
    have hb := congrArg (fun z : Port (m + 1) => z (Fin.last m)) h
    change S.schedule.first s (Fin.last m) + b • lastMarker m (Fin.last m) =
      s (Fin.last m) at hb
    rw [first_last_eq, lastMarker_last, smul_eq_mul, mul_one] at hb
    have hz : b = 0 := add_left_cancel (show s (Fin.last m) + b = s (Fin.last m) + 0 by
      simpa only [add_zero] using hb)
    exact h1 (by simpa only [hz, zero_smul, add_zero] using h)
  · intro h
    have hb := congrArg (fun z : Port (m + 1) => z (Fin.last m)) h
    change S.schedule.first s (Fin.last m) + b • lastMarker m (Fin.last m) =
      s (Fin.last m) + S.schedule.offset (Fin.last m) at hb
    rw [first_last_eq, lastMarker_last, smul_eq_mul, mul_one, S.offset_last] at hb
    have hz : b = 0 := add_left_cancel hb
    exact h2 (by simpa only [hz, zero_smul, add_zero] using h)

def extendShear (S : LastZeroSchedule m) : LastZeroSchedule (m + 1) :=
  extendLastZero S.schedule (lastMarker m) (shear_safe S)

theorem shear_target_eq_iff (S : LastZeroSchedule m) (x y : Port (m + 2)) :
    firstTarget (extendShear S).schedule x = firstTarget (extendShear S).schedule y ↔
      firstTarget S.schedule (Fin.init x) = firstTarget S.schedule (Fin.init y) ∧
      x (Fin.last (m + 1)) = y (Fin.last (m + 1)) := by
  change firstTarget (extend S.schedule (lastMarker m) (shear_safe S)) x =
    firstTarget (extend S.schedule (lastMarker m) (shear_safe S)) y ↔ _
  rw [extend_target, extend_target, Fin.snoc_inj]
  simp only [and_true]
  constructor
  · intro h
    have hb := congrArg (fun z : Port (m + 1) => z (Fin.last m)) h
    change firstTarget S.schedule (Fin.init x) (Fin.last m) +
        x (Fin.last (m + 1)) • lastMarker m (Fin.last m) =
      firstTarget S.schedule (Fin.init y) (Fin.last m) +
        y (Fin.last (m + 1)) • lastMarker m (Fin.last m) at hb
    rw [S.target_last, S.target_last, lastMarker_last, smul_eq_mul, smul_eq_mul,
      mul_one, mul_one, zero_add, zero_add] at hb
    refine ⟨?_, hb⟩
    rw [hb] at h
    exact add_right_cancel h
  · rintro ⟨h1, h2⟩
    rw [h1, h2]

def shearFiberEquiv (S : LastZeroSchedule m) (s : Port (m + 2)) :
    FiberAt (extendShear S).schedule s ≃ FiberAt S.schedule (Fin.init s) where
  toFun x := ⟨Fin.init x.1, ((shear_target_eq_iff S x.1 s).mp x.2).1⟩
  invFun x := ⟨Fin.snoc x.1 (s (Fin.last (m + 1))),
    (shear_target_eq_iff S _ s).mpr ⟨by simpa only [Fin.init_snoc] using x.2,
      Fin.snoc_last⟩⟩
  left_inv x := by
    apply Subtype.ext
    change Fin.snoc (Fin.init x.1) (s (Fin.last (m + 1))) = x.1
    calc
      _ = Fin.snoc (Fin.init x.1) (x.1 (Fin.last (m + 1))) :=
        congrArg (Fin.snoc (Fin.init x.1)) ((shear_target_eq_iff S x.1 s).mp x.2).2.symm
      _ = x.1 := Fin.snoc_init_self
  right_inv x := Subtype.ext Fin.init_snoc

theorem shear_fiber_preserved (S : LastZeroSchedule m) (s : Port (m + 2)) :
    Nat.card (FiberAt (extendShear S).schedule s) = Nat.card (FiberAt S.schedule (Fin.init s)) :=
  Nat.card_congr (shearFiberEquiv S s)

/-- Recursively extend by one bit, without changing any older schedule. -/
def grown {r : ℕ} (S : Schedule r) : (k : ℕ) → LastZeroSchedule (r + k)
  | 0 => extendZero S
  | k + 1 => extendShear (grown S k)

def family {r : ℕ} (S : Schedule r) : (k : ℕ) → Schedule (r + k)
  | 0 => S
  | k + 1 => (grown S k).schedule

theorem grown_fiber_four {r : ℕ} (S : Schedule r)
    (h : ∀ s, Nat.card (FiberAt S s) = 2) (k : ℕ) :
    ∀ s : Port (r + k + 1), Nat.card (FiberAt (grown S k).schedule s) = 4 := by
  induction k with
  | zero =>
    intro s
    change Nat.card (FiberAt (extendZero S).schedule s) = 4
    rw [zero_fiber_double, h]
  | succ k ih =>
    intro s
    change Nat.card (FiberAt (extendShear (grown S k)).schedule s) = 4
    rw [shear_fiber_preserved, ih]

theorem family_fiber_exact {r : ℕ} (S : Schedule r)
    (h : ∀ s, Nat.card (FiberAt S s) = 2) (k : ℕ) (s : Port (r + k)) :
    Nat.card (FiberAt (family S k) s) = if k = 0 then 2 else 4 := by
  cases k with
  | zero => exact h s
  | succ k => simpa only [Nat.succ_ne_zero, if_false] using grown_fiber_four S h k s

theorem family_first_commutes {r : ℕ} (S : Schedule r) (k : ℕ) (s : Port (r + k)) :
    pad ((family S k).first s) = (family S (k + 1)).first (pad s) := by
  cases k with
  | zero => exact extend_first_commutes S 0 (zero_safe S) s
  | succ k => exact extend_first_commutes (grown S k).schedule (lastMarker (r + k))
      (shear_safe (grown S k)) s

theorem family_offset_commutes {r : ℕ} (S : Schedule r) (k : ℕ) :
    pad (family S k).offset = (family S (k + 1)).offset := by
  cases k <;> rfl

theorem family_second_commutes {r : ℕ} (S : Schedule r) (k : ℕ) (s : Port (r + k)) :
    pad (second (family S k) s) = second (family S (k + 1)) (pad s) := by
  unfold second
  rw [pad_add, family_first_commutes, family_offset_commutes]

theorem family_third_commutes {r : ℕ} (S : Schedule r) (k : ℕ) (s : Port (r + k)) :
    pad (third (family S k) s) = third (family S (k + 1)) (pad s) := by
  unfold third
  rw [pad_add, family_offset_commutes]

/-- Extend the cardinality theorem from occupied first-target fibers to all
native cells, with zero assigned to the empty fibers. -/
theorem family_first_load_exact {r : ℕ} (S : Schedule r)
    (h : ∀ s, Nat.card (FiberAt S s) = 2) (k : ℕ) (y : Cell (r + k)) :
    Nat.card {x : Cell (r + k) // hopOne (family S k) x = y} =
      if ∃ s : Port (r + k), firstTarget (family S k) s = syndrome y then
        (if k = 0 then 2 else 4) else 0 := by
  classical
  rw [first_load_exact]
  split_ifs with hy
  · obtain ⟨s, hs⟩ := hy
    have he : {t : Port (r + k) // firstTarget (family S k) t = syndrome y} ≃
        FiberAt (family S k) s :=
      Equiv.subtypeEquivRight (fun t => ⟨fun ht => ht.trans hs.symm, fun ht => ht.trans hs⟩)
    exact (Nat.card_congr he).trans (family_fiber_exact S h k s)
  · letI : IsEmpty {t : Port (r + k) // firstTarget (family S k) t = syndrome y} :=
      ⟨fun t => hy ⟨t.1, t.2⟩⟩
    simp

theorem family_first_load_attained {r : ℕ} (S : Schedule r)
    (h : ∀ s, Nat.card (FiberAt S s) = 2) (k : ℕ) :
    ∃ y : Cell (r + k),
      Nat.card {x : Cell (r + k) // hopOne (family S k) x = y} =
        if k = 0 then 2 else 4 := by
  classical
  let t := firstTarget (family S k) (0 : Port (r + k))
  refine ⟨impulse t, ?_⟩
  rw [family_first_load_exact S h, syndrome_impulse]
  have he : ∃ s : Port (r + k), firstTarget (family S k) s = t := ⟨0, rfl⟩
  rw [if_pos he]

/-- A concrete native schedule for every m ≥ 3, plus a separate tower
rooted at the verified 16D schedule. -/
def allDimensions (k : ℕ) : Schedule (3 + k) := family seed3 k

def verified16Tower (k : ℕ) : Schedule (4 + k) := family seed4 k

theorem allDimensions_fiber (k : ℕ) (s : Port (3 + k)) :
    Nat.card (FiberAt (allDimensions k) s) = if k = 0 then 2 else 4 :=
  family_fiber_exact seed3 seed3_fiber_two k s

theorem verified16Tower_fiber (k : ℕ) (s : Port (4 + k)) :
    Nat.card (FiberAt (verified16Tower k) s) = if k = 0 then 2 else 4 :=
  family_fiber_exact seed4 seed4_fiber_two k s

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CoherentPrimePortSchedules
