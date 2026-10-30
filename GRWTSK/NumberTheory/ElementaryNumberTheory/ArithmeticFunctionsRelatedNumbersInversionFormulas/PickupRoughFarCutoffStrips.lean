/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarMaskCommutator

/-!
# Exact boundary strips for the far cutoff commutator

This file resolves the geometric part of the prime-transport obstruction into six
literal support-change regions. For p >= 1 no estimate is used.

Starting from the original far-active region A(m,n), the three dilation channels
have the following exact changes.

* Left dilation m -> p*m loses source points only when p*m leaves the closed N box
  or when the dilated smaller core crosses the strict far gap. It gains points only
  from the lower-cutoff strip m <= L.
* Right dilation n -> p*n loses source points only when p*n leaves the closed N box.
  It gains points only from the gap strip n <= m+H that becomes far after dilation.
* Simultaneous dilation loses source points only when p*m or p*n leaves the closed
  N box. It gains points only from the union of the lower-cutoff and gap strips.

The real indicator differences are exactly +1 on loss strips, -1 on gain strips,
and zero elsewhere. Substituting these identities into cutoffCommutator gives a
source-exact boundary-strip formula. No absolute values, cardinality bounds,
density estimates, entropy arguments, or RH-strength estimates are introduced.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom audit,
and expected-interface checking: NOT_RUN. No acceptance or RH claim.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffStrips

open GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal
open GRWTSK.NumberTheory.Moebius.PickupRoughFarPrimeTransport
open GRWTSK.NumberTheory.Moebius.PickupRoughFarMaskCommutator

def leftLost (N L H p m n : ℕ) : Prop :=
  farActive N L H m n ∧ ¬ farActive N L H (p*m) n

def leftGained (N L H p m n : ℕ) : Prop :=
  farActive N L H (p*m) n ∧ ¬ farActive N L H m n

def rightLost (N L H p m n : ℕ) : Prop :=
  farActive N L H m n ∧ ¬ farActive N L H m (p*n)

def rightGained (N L H p m n : ℕ) : Prop :=
  farActive N L H m (p*n) ∧ ¬ farActive N L H m n

def bothLost (N L H p m n : ℕ) : Prop :=
  farActive N L H m n ∧ ¬ farActive N L H (p*m) (p*n)

def bothGained (N L H p m n : ℕ) : Prop :=
  farActive N L H (p*m) (p*n) ∧ ¬ farActive N L H m n

def signedChange (lost gained : Prop) : ℝ :=
  if lost then 1 else if gained then -1 else 0

theorem leftLost_iff {N L H p m n : ℕ} (hp : 1 ≤ p) :
    leftLost N L H p m n ↔
      farActive N L H m n ∧ (N < p*m ∨ n ≤ p*m+H) := by
  unfold leftLost farActive
  constructor
  · rintro ⟨h, hnot⟩
    rcases h with ⟨hm1, hmN, hn1, hnN, hLm, hgap⟩
    refine ⟨⟨hm1, hmN, hn1, hnN, hLm, hgap⟩, ?_⟩
    by_contra hbad
    push_neg at hbad
    apply hnot
    constructor
    · omega
    constructor
    · exact hbad.1
    constructor
    · exact hn1
    constructor
    · exact hnN
    constructor
    · omega
    · omega
  · rintro ⟨h, hbad⟩
    refine ⟨h, ?_⟩
    intro hmoved
    rcases hmoved with ⟨_, hpmN, _, _, _, hpgap⟩
    rcases hbad with hcut | hgap
    · omega
    · omega

theorem leftGained_iff {N L H p m n : ℕ} (hp : 1 ≤ p) :
    leftGained N L H p m n ↔
      farActive N L H (p*m) n ∧ m ≤ L := by
  unfold leftGained farActive
  constructor
  · rintro ⟨hmoved, hnot⟩
    rcases hmoved with ⟨hpm1, hpmN, hn1, hnN, hLpm, hgap⟩
    refine ⟨⟨hpm1, hpmN, hn1, hnN, hLpm, hgap⟩, ?_⟩
    by_contra hLm
    apply hnot
    constructor
    · omega
    constructor
    · omega
    constructor
    · exact hn1
    constructor
    · exact hnN
    constructor
    · omega
    · omega
  · rintro ⟨hmoved, hmL⟩
    refine ⟨hmoved, ?_⟩
    intro hbase
    exact (Nat.not_lt_of_ge hmL) hbase.2.2.2.2.1

theorem rightLost_iff {N L H p m n : ℕ} (hp : 1 ≤ p) :
    rightLost N L H p m n ↔
      farActive N L H m n ∧ N < p*n := by
  unfold rightLost farActive
  constructor
  · rintro ⟨h, hnot⟩
    rcases h with ⟨hm1, hmN, hn1, hnN, hLm, hgap⟩
    refine ⟨⟨hm1, hmN, hn1, hnN, hLm, hgap⟩, ?_⟩
    by_contra hpn
    apply hnot
    constructor
    · exact hm1
    constructor
    · exact hmN
    constructor
    · omega
    constructor
    · omega
    constructor
    · exact hLm
    · omega
  · rintro ⟨h, hcut⟩
    refine ⟨h, ?_⟩
    intro hmoved
    exact (Nat.not_le_of_gt hcut) hmoved.2.2.2.1

theorem rightGained_iff {N L H p m n : ℕ} (hp : 1 ≤ p) :
    rightGained N L H p m n ↔
      farActive N L H m (p*n) ∧ n ≤ m+H := by
  unfold rightGained farActive
  constructor
  · rintro ⟨hmoved, hnot⟩
    rcases hmoved with ⟨hm1, hmN, hpn1, hpnN, hLm, hgap⟩
    refine ⟨⟨hm1, hmN, hpn1, hpnN, hLm, hgap⟩, ?_⟩
    by_contra hfar
    apply hnot
    constructor
    · exact hm1
    constructor
    · exact hmN
    constructor
    · omega
    constructor
    · omega
    constructor
    · exact hLm
    · omega
  · rintro ⟨hmoved, hnear⟩
    refine ⟨hmoved, ?_⟩
    intro hbase
    omega

theorem bothLost_iff {N L H p m n : ℕ} (hp : 1 ≤ p) :
    bothLost N L H p m n ↔
      farActive N L H m n ∧ (N < p*m ∨ N < p*n) := by
  unfold bothLost farActive
  constructor
  · rintro ⟨h, hnot⟩
    rcases h with ⟨hm1, hmN, hn1, hnN, hLm, hgap⟩
    refine ⟨⟨hm1, hmN, hn1, hnN, hLm, hgap⟩, ?_⟩
    by_contra hcuts
    push_neg at hcuts
    apply hnot
    constructor
    · omega
    constructor
    · exact hcuts.1
    constructor
    · omega
    constructor
    · exact hcuts.2
    constructor
    · omega
    · nlinarith
  · rintro ⟨h, hcut⟩
    refine ⟨h, ?_⟩
    intro hmoved
    rcases hcut with hleft | hright
    · exact (Nat.not_le_of_gt hleft) hmoved.2.1
    · exact (Nat.not_le_of_gt hright) hmoved.2.2.2.1

theorem bothGained_iff {N L H p m n : ℕ} (hp : 1 ≤ p) :
    bothGained N L H p m n ↔
      farActive N L H (p*m) (p*n) ∧ (m ≤ L ∨ n ≤ m+H) := by
  unfold bothGained farActive
  constructor
  · rintro ⟨hmoved, hnot⟩
    rcases hmoved with ⟨hpm1, hpmN, hpn1, hpnN, hLpm, hgap⟩
    refine ⟨⟨hpm1, hpmN, hpn1, hpnN, hLpm, hgap⟩, ?_⟩
    by_contra hstable
    push_neg at hstable
    apply hnot
    constructor
    · omega
    constructor
    · omega
    constructor
    · omega
    constructor
    · omega
    constructor
    · exact hstable.1
    · exact hstable.2
  · rintro ⟨hmoved, hgain⟩
    refine ⟨hmoved, ?_⟩
    intro hbase
    rcases hgain with hlow | hnear
    · exact (Nat.not_lt_of_ge hlow) hbase.2.2.2.2.1
    · omega

theorem indicator_sub_left_eq_signedChange
    (N L H p m n : ℕ) :
    farIndicator N L H m n - farIndicator N L H (p*m) n =
      signedChange (leftLost N L H p m n) (leftGained N L H p m n) := by
  unfold farIndicator signedChange leftLost leftGained
  by_cases h : farActive N L H m n <;>
    by_cases hm : farActive N L H (p*m) n <;> simp [h, hm]

theorem indicator_sub_right_eq_signedChange
    (N L H p m n : ℕ) :
    farIndicator N L H m n - farIndicator N L H m (p*n) =
      signedChange (rightLost N L H p m n) (rightGained N L H p m n) := by
  unfold farIndicator signedChange rightLost rightGained
  by_cases h : farActive N L H m n <;>
    by_cases hm : farActive N L H m (p*n) <;> simp [h, hm]

theorem indicator_both_sub_eq_signedChange
    (N L H p m n : ℕ) :
    farIndicator N L H (p*m) (p*n) - farIndicator N L H m n =
      - signedChange (bothLost N L H p m n) (bothGained N L H p m n) := by
  unfold farIndicator signedChange bothLost bothGained
  by_cases h : farActive N L H m n <;>
    by_cases hm : farActive N L H (p*m) (p*n) <;> simp [h, hm]

theorem cutoffCommutator_eq_boundaryStrips
    (P : List ℕ) (N L Z H p : ℕ) (G : ℕ → ℕ → ℝ) (m n : ℕ) :
    cutoffCommutator P N L Z H p G m n =
      (signedChange (leftLost N L H p m n) (leftGained N L H p m n) *
        pairWeight P N Z m n) * G (p*m) n +
      (signedChange (rightLost N L H p m n) (rightGained N L H p m n) *
        pairWeight P N Z m n) * G m (p*n) -
      (signedChange (bothLost N L H p m n) (bothGained N L H p m n) *
        pairWeight P N Z m n) * G (p*m) (p*n) := by
  unfold cutoffCommutator
  rw [indicator_sub_left_eq_signedChange, indicator_sub_right_eq_signedChange,
    indicator_both_sub_eq_signedChange]
  ring

end GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffStrips
