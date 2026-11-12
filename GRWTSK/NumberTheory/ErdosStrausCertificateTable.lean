/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.NumberTheory.ErdosStraus

/-!
# Exact finite certificates for distinct-denominator Erdős–Straus representations

Source: the user's certificate-checker submission of 2026-11-11; exact target:
Thomas Bloom, Erdős Problem #242, https://www.erdosproblems.com/242.
See `ErdosStrausCertificateTable.provenance.md` for declaration-level provenance.

Evidence: SOURCE CANDIDATE. Elaboration, fresh kernel replay and transitive axiom
checking are NOT_RUN. The arithmetic data have been checked in exact integer and
rational arithmetic, but that computation is not a Lean proof check. No root
aggregate import is added. The existing canonical `Representation` and
`Conjecture` are retained unchanged. No theorem here proves `Conjecture`.

The gap loop is structurally recursive on its exact length. The equation lemma
shows that this is the submitted advancing-cursor algorithm. A selector parameter
allows the same soundness proof to serve the supplied six classes modulo 840 and
the existing canonical reduction modulo 24. Both have explicit finite consumers.
Arithmetic uses unbounded natural numbers; no constant bit-cost or linear kernel
reduction complexity is asserted.
-/

namespace GRWTSK.NumberTheory.DiophantineEquations.ErdosStraus.CertificateTable

/-- The supplied cleared-denominator predicate, retaining strict ordering. -/
def HasErdosStrausNat (n : ℕ) : Prop :=
  ∃ x y z : ℕ, 0 < x ∧ x < y ∧ y < z ∧
    4 * x * y * z = n * (y * z + x * z + x * y)

/-- Exact return to the canonical rational predicate, with a nonzero source denominator. -/
theorem hasErdosStrausNat_iff_representation {n : ℕ} (hn : 0 < n) :
    HasErdosStrausNat n ↔ Representation n := by
  have hnq : (n : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hn)
  constructor
  · rintro ⟨x, y, z, hx, hxy, hyz, heq⟩
    have hy : 0 < y := lt_trans hx hxy
    have hz : 0 < z := lt_trans hy hyz
    have hxq : (x : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hx)
    have hyq : (y : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hy)
    have hzq : (z : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hz)
    have heqQ : (4 : ℚ) * x * y * z =
        (n : ℚ) * ((y : ℚ) * z + (x : ℚ) * z + (x : ℚ) * y) := by
      exact_mod_cast heq
    refine ⟨x, y, z, hx, hxy, hyz, ?_⟩
    field_simp [hnq, hxq, hyq, hzq]
    nlinarith only [heqQ]
  · rintro ⟨x, y, z, hx, hxy, hyz, heq⟩
    have hy : 0 < y := lt_trans hx hxy
    have hz : 0 < z := lt_trans hy hyz
    have hxq : (x : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hx)
    have hyq : (y : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hy)
    have hzq : (z : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hz)
    refine ⟨x, y, z, hx, hxy, hyz, ?_⟩
    have heqQ : (4 : ℚ) * x * y * z =
        (n : ℚ) * ((y : ℚ) * z + (x : ℚ) * z + (x : ℚ) * y) := by
      field_simp [hnq, hxq, hyq, hzq] at heq
      nlinarith only [heq]
    exact_mod_cast heqQ

/-- The six specified residue classes; the name does not assert a coverage theorem. -/
def isHardMod840 (n : ℕ) : Bool :=
  let r := n % 840
  r == 1 || r == 121 || r == 169 || r == 289 || r == 361 || r == 529

/-- Exact arithmetic test; its bit cost depends on the magnitudes of its inputs. -/
def isValidTriple (n x y z : ℕ) : Bool :=
  decide (0 < x ∧ x < y ∧ y < z ∧
    4 * x * y * z = n * (y * z + x * z + x * y))

abbrev Entry := ℕ × ℕ × ℕ × ℕ

/-- Scan exactly `len` successive integers, starting at `lo`. -/
def noSelectedFor (selected : ℕ → Bool) (lo : ℕ) : ℕ → Bool
  | 0 => true
  | len + 1 => !selected lo && noSelectedFor selected (lo + 1) len

/-- Scan the half-open interval `[lo, hi)`; an empty interval is accepted. -/
def noSelectedInGap (selected : ℕ → Bool) (lo hi : ℕ) : Bool :=
  noSelectedFor selected lo (hi - lo)

/-- The structural implementation has the same advancing-cursor equation. -/
theorem noSelectedInGap_eq (selected : ℕ → Bool) (lo hi : ℕ) :
    noSelectedInGap selected lo hi =
      if lo < hi then
        !selected lo && noSelectedInGap selected (lo + 1) hi
      else true := by
  unfold noSelectedInGap
  by_cases h : lo < hi
  · rw [if_pos h]
    have hlen : hi - lo = (hi - (lo + 1)) + 1 := by omega
    rw [hlen, noSelectedFor]
  · rw [if_neg h]
    have hlen : hi - lo = 0 := by omega
    simp [hlen, noSelectedFor]

abbrev noHardInGap := noSelectedInGap isHardMod840

/-- Strictly increasing keys and exact witnesses, with gap and tail coverage. -/
def verifySelectedAux (selected : ℕ → Bool) (N cur : ℕ) : List Entry → Bool
  | [] => noSelectedInGap selected (cur + 1) (N + 1)
  | (n, x, y, z) :: rest =>
    if cur < n ∧ n ≤ N then
      noSelectedInGap selected (cur + 1) n &&
        isValidTriple n x y z && verifySelectedAux selected N n rest
    else false

def verifySelectedTable (selected : ℕ → Bool) (N : ℕ) (table : List Entry) : Bool :=
  verifySelectedAux selected N 1 table

abbrev verifyCertAux := verifySelectedAux isHardMod840
abbrev verifyCertTable := verifySelectedTable isHardMod840

lemma noSelectedFor_sound {selected : ℕ → Bool} {len lo m : ℕ}
    (h : noSelectedFor selected lo len = true)
    (hlo : lo ≤ m) (hhi : m < lo + len) : selected m = false := by
  induction len generalizing lo with
  | zero => omega
  | succ len ih =>
    change (!selected lo && noSelectedFor selected (lo + 1) len) = true at h
    obtain ⟨hnow, hrest⟩ := Bool.and_eq_true.mp h
    by_cases hm : m = lo
    · subst m
      simpa using hnow
    · exact ih hrest (by omega) (by omega)

lemma noSelectedInGap_sound {selected : ℕ → Bool} {lo hi m : ℕ}
    (h : noSelectedInGap selected lo hi = true)
    (hlo : lo ≤ m) (hhi : m < hi) : selected m = false := by
  apply noSelectedFor_sound h hlo
  omega

lemma noHardInGap_sound {lo hi m : ℕ} (h : noHardInGap lo hi = true)
    (hlo : lo ≤ m) (hhi : m < hi) : isHardMod840 m = false :=
  noSelectedInGap_sound h hlo hhi

lemma isValidTriple_sound {n x y z : ℕ} (h : isValidTriple n x y z = true) :
    HasErdosStrausNat n := by
  unfold isValidTriple at h
  exact ⟨x, y, z, of_decide_eq_true h⟩

lemma verifySelectedAux_sound {selected : ℕ → Bool} {N cur p : ℕ}
    {table : List Entry} (h_ver : verifySelectedAux selected N cur table = true)
    (hp_gt : cur < p) (hp_le : p ≤ N) (hp_selected : selected p = true) :
    HasErdosStrausNat p := by
  induction table generalizing cur with
  | nil =>
    change noSelectedInGap selected (cur + 1) (N + 1) = true at h_ver
    have hfalse := noSelectedInGap_sound h_ver (by omega : cur + 1 ≤ p)
      (by omega : p < N + 1)
    simp [hp_selected] at hfalse
  | cons entry rest ih =>
    rcases entry with ⟨n, x, y, z⟩
    change (if cur < n ∧ n ≤ N then
      noSelectedInGap selected (cur + 1) n && isValidTriple n x y z &&
        verifySelectedAux selected N n rest else false) = true at h_ver
    split at h_ver
    · have hs : (noSelectedInGap selected (cur + 1) n = true ∧
          isValidTriple n x y z = true) ∧
          verifySelectedAux selected N n rest = true := by
        simpa only [Bool.and_eq_true] using h_ver
      rcases hs with ⟨⟨hgap, htriple⟩, hrest⟩
      by_cases hpn : p < n
      · have hfalse := noSelectedInGap_sound hgap (by omega : cur + 1 ≤ p) hpn
        simp [hp_selected] at hfalse
      · by_cases hpeq : p = n
        · subst p
          exact isValidTriple_sound htriple
        · exact ih hrest (by omega)
    · cases h_ver

lemma verifyCertAux_sound {N cur p : ℕ} {table : List Entry}
    (h_ver : verifyCertAux N cur table = true) (hp_gt : cur < p)
    (hp_le : p ≤ N) (hp_hard : isHardMod840 p = true) : HasErdosStrausNat p :=
  verifySelectedAux_sound h_ver hp_gt hp_le hp_hard

theorem verifySelectedTable_sound {selected : ℕ → Bool} {N p : ℕ}
    {table : List Entry} (h : verifySelectedTable selected N table = true)
    (hp2 : 2 ≤ p) (hpN : p ≤ N) (hsel : selected p = true) : HasErdosStrausNat p :=
  verifySelectedAux_sound h (by omega) hpN hsel

/-- The submitted finite theorem, without any claim of unbounded existence. -/
theorem hasErdosStrausNat_of_certTable {N p : ℕ} {table : List Entry}
    (h_cert : verifyCertTable N table = true) (hp2 : 2 ≤ p) (hpN : p ≤ N)
    (h_res : p % 840 = 1 ∨ p % 840 = 121 ∨ p % 840 = 169 ∨
      p % 840 = 289 ∨ p % 840 = 361 ∨ p % 840 = 529) : HasErdosStrausNat p := by
  have hp_hard : isHardMod840 p = true := by
    rcases h_res with h | h | h | h | h | h <;> simp [isHardMod840, h]
  exact verifySelectedTable_sound h_cert hp2 hpN hp_hard

/-- The original invalid data, retained only for rejection regression tests. -/
def suppliedTable1000 : List Entry :=
  [ (121, 31, 1251, 4691251)
  , (169, 43, 1817, 13191420)
  , (289, 73, 5275, 111329000)
  , (361, 91, 8213, 269796950)
  , (529, 133, 17590, 1237705200)
  , (841, 211, 44363, 7870922250)
  , (961, 241, 57901, 13410164100)
  ]

/-- Corrected data for all seven selected integers in `[2,1000]`. -/
def certTable1000 : List Entry :=
  [ (121, 31, 1254, 427614)
  , (169, 44, 1066, 304876)
  , (289, 73, 7038, 8734158)
  , (361, 92, 4750, 4151500)
  , (529, 133, 23460, 71764140)
  , (841, 211, 59160, 362000040)
  , (961, 242, 33232, 124653232)
  ]

set_option maxRecDepth 8192 in
set_option maxHeartbeats 2000000 in
lemma suppliedTable1000_rejected : verifyCertTable 1000 suppliedTable1000 = false := by
  decide

lemma suppliedTable1000_all_entries_invalid :
    suppliedTable1000.all (fun (n, x, y, z) => !isValidTriple n x y z) = true := by
  decide

set_option maxRecDepth 8192 in
set_option maxHeartbeats 2000000 in
lemma cert_1000_valid : verifyCertTable 1000 certTable1000 = true := by
  decide

/-- The canonical arithmetic consumer for the seven selected integers. -/
theorem representation_hard_le_1000 {n : ℕ} (hn : 2 ≤ n) (hN : n ≤ 1000)
    (hsel : isHardMod840 n = true) : Representation n :=
  (hasErdosStrausNat_iff_representation (by omega)).mp
    (verifySelectedTable_sound cert_1000_valid hn hN hsel)

/-- The selector required by the already-maintained modulo-24 reduction. -/
def isResidueOneMod24 (n : ℕ) : Bool := n % 24 == 1

/-- All 41 integers `n > 2` with `n ≤ 1000` and `n ≡ 1 (mod 24)`. -/
def residue24Table1000 : List Entry :=
  [ (25, 7, 60, 2100)
  , (49, 14, 99, 9702)
  , (73, 20, 210, 30660)
  , (97, 25, 810, 392850)
  , (121, 31, 1254, 427614)
  , (145, 37, 1790, 1920670)
  , (169, 44, 1066, 304876)
  , (193, 50, 1380, 1331700)
  , (217, 55, 3980, 9500260)
  , (241, 62, 2139, 1030998)
  , (265, 67, 5920, 21021920)
  , (289, 73, 7038, 8734158)
  , (313, 80, 3580, 4482160)
  , (337, 85, 9550, 54711950)
  , (361, 92, 4750, 4151500)
  , (385, 97, 12450, 92989050)
  , (409, 104, 6084, 4976712)
  , (433, 110, 6805, 64824430)
  , (457, 115, 17520, 184152720)
  , (481, 121, 19404, 102666564)
  , (505, 127, 21380, 274241260)
  , (529, 133, 23460, 71764140)
  , (553, 140, 11061, 122334660)
  , (577, 145, 27890, 466683370)
  , (601, 152, 13053, 62758824)
  , (625, 157, 32710, 641933750)
  , (649, 163, 35266, 339153122)
  , (673, 170, 16345, 374006290)
  , (697, 175, 40660, 991900700)
  , (721, 182, 18747, 351431262)
  , (745, 187, 46440, 1293957720)
  , (769, 194, 21340, 16410460)
  , (793, 200, 22659, 276439800)
  , (817, 205, 55830, 1870137510)
  , (841, 211, 59160, 362000040)
  , (865, 217, 62570, 2348940370)
  , (889, 224, 28449, 809317152)
  , (913, 229, 69696, 1324711872)
  , (937, 235, 73400, 3232462600)
  , (961, 242, 33232, 124653232)
  , (985, 247, 81100, 3946244900)
  ]

set_option maxRecDepth 8192 in
set_option maxHeartbeats 2000000 in
lemma residue24_1000_valid :
    verifySelectedTable isResidueOneMod24 1000 residue24Table1000 = true := by
  decide

/-- A bounded consumer of the existing elementary families, retaining the bound. -/
theorem representation_of_bounded_residue24 {N : ℕ}
    (h : ∀ n : ℕ, 2 < n → n ≤ N → n % 24 = 1 → Representation n) :
    ∀ n : ℕ, 2 < n → n ≤ N → Representation n := by
  intro n hn hN
  by_cases he : n % 2 = 0
  · exact representation_of_even n hn he
  by_cases h4 : n % 4 = 3
  · exact representation_of_mod_four_eq_three n h4
  by_cases h8 : n % 8 = 5
  · have hn' : n = 8 * (n / 8) + 5 := by omega
    rw [hn']
    exact representation_eight_mul_add_five (n / 8)
  by_cases h32 : n % 3 = 2
  · have hn' : n = 3 * (n / 3) + 2 := by omega
    rw [hn']
    exact representation_three_mul_add_two (n / 3) (by omega)
  by_cases h30 : n % 3 = 0
  · have hn' : n = (n / 3) * 3 := by omega
    rw [hn']
    exact representation_mul 3 (n / 3) (by omega) (representation_four_mul_add_three 0)
  · exact h n hn hN (by omega)

/-- Finite Problem #242 result. The explicit upper bound is essential. -/
theorem representation_le_1000 (n : ℕ) (hn : 2 < n) (hN : n ≤ 1000) :
    Representation n := by
  refine representation_of_bounded_residue24 (N := 1000) ?_ n hn hN
  intro m hm hmN hm24
  have hsel : isResidueOneMod24 m = true := by simp [isResidueOneMod24, hm24]
  exact (hasErdosStrausNat_iff_representation (by omega)).mp
    (verifySelectedTable_sound residue24_1000_valid (by omega) hmN hsel)

end GRWTSK.NumberTheory.DiophantineEquations.ErdosStraus.CertificateTable
