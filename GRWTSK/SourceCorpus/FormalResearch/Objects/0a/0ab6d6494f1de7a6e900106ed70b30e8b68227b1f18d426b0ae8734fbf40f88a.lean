module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVaughanBlocks
import Mathlib.Tactic

/-!
# Exponent-indexed factor blocks in one product shell

The master Vaughan cutoffs remain fixed at scale `N`.  Factor coordinates are
partitioned by the canonical half-open shells

`[2 ^ j, 2 ^ (j + 1))` and `[2 ^ l, 2 ^ (l + 1))`.

The product shell uses the arithmetic convention `(2 ^ q, 2 ^ (q + 1)]`.
With these two different boundary conventions, a pair in product shell `q`
can have `j + l = q - 1`, `q`, **or `q + 1`**.  The third diagonal is forced
by the boundary example `m = 2 ^ j`, `k = 2 ^ l`, `j + l = q + 1`.
Consequently the often quoted two-diagonal assertion is false for these
conventions.  This module records the exact three-diagonal statement and the
safe cardinal bound `3 * (q + 2)`.

All constructions are finite and coefficient-independent.  No estimate or
maximal theorem occurs here.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators
open Surface.Core.ConductorThreeTwistedVaughan
open Surface.Core.ConductorThreeVaughanBlocks

/-- The exponent of the canonical half-open dyadic shell containing a
positive integer. -/
@[expose]
def halfOpenFactorExponent (n : ℕ) : ℕ :=
  Nat.log2 n

@[surface_novel, surface_published]
theorem pow_halfOpenFactorExponent_le {n : ℕ} (_hn : 0 < n) :
    2 ^ halfOpenFactorExponent n ≤ n := by
  rw [halfOpenFactorExponent, Nat.log2_eq_log_two]
  exact Nat.pow_log_le_self 2 (Nat.ne_of_gt _hn)

@[surface_novel, surface_published]
theorem lt_pow_halfOpenFactorExponent_succ {n : ℕ} (_hn : 0 < n) :
    n < 2 ^ (halfOpenFactorExponent n + 1) := by
  rw [halfOpenFactorExponent, Nat.log2_eq_log_two]
  exact Nat.lt_pow_succ_log_self Nat.one_lt_two n

/-- Literal boundary witness showing why the third exponent diagonal cannot
be removed when factor shells are half-open but product shells are
right-closed. -/
@[surface_novel, surface_published]
theorem halfOpen_boundary_pair_uses_q_add_one (q : ℕ) :
    2 ^ q < 2 ^ (q + 1) * 1 ∧
      2 ^ (q + 1) * 1 ≤ 2 ^ (q + 1) ∧
      halfOpenFactorExponent (2 ^ (q + 1)) +
          halfOpenFactorExponent 1 = q + 1 := by
  constructor
  · simpa using Nat.pow_lt_pow_right Nat.one_lt_two (show q < q + 1 by omega)
  constructor
  · simp
  · rw [halfOpenFactorExponent, halfOpenFactorExponent]
    have hone : Nat.log2 1 = 0 := rfl
    simp [hone]

/-- Literal effective Type II factor pairs in product shell `q`.  Both the
fixed master cutoffs and the master product bound are part of the predicate;
no shell-dependent Vaughan cutoff is introduced. -/
@[expose]
def IsEffectiveTypeIIShellPair (N q : ℕ)
    (pair : VaughanScaleIndex N × VaughanScaleIndex N) : Prop :=
  vaughanFourthRootCutoff N < pair.1.1 ∧
    vaughanFourthRootCutoff N < pair.2.1 ∧
    2 ^ q < pair.1.1 * pair.2.1 ∧
    pair.1.1 * pair.2.1 ≤ 2 ^ (q + 1) ∧
    pair.1.1 * pair.2.1 ≤ 2 * N

/-- The finite set of effective factor pairs in product shell `q`. -/
@[expose]
def effectiveTypeIIShellPairs (N q : ℕ) :
    Finset (VaughanScaleIndex N × VaughanScaleIndex N) := by
  classical
  exact Finset.univ.filter (IsEffectiveTypeIIShellPair N q)

@[surface_novel, surface_published]
theorem mem_effectiveTypeIIShellPairs_iff {N q : ℕ}
    {pair : VaughanScaleIndex N × VaughanScaleIndex N} :
    pair ∈ effectiveTypeIIShellPairs N q ↔
      IsEffectiveTypeIIShellPair N q pair := by
  classical
  simp [effectiveTypeIIShellPairs]

/-- A canonical exponent-indexed factor rectangle which actually meets the
effective Type II support in product shell `q`. -/
structure TypeIIShellFactorBlock (N q : ℕ) where
  leftExponent : ℕ
  rightExponent : ℕ
  exponentRelation :
    leftExponent + rightExponent = q - 1 ∨
      leftExponent + rightExponent = q ∨
      leftExponent + rightExponent = q + 1
  nonempty_effective : ∃ (m k : VaughanScaleIndex N),
    vaughanFourthRootCutoff N < m.1 ∧
      vaughanFourthRootCutoff N < k.1 ∧
      2 ^ leftExponent ≤ m.1 ∧
      m.1 < 2 ^ (leftExponent + 1) ∧
      2 ^ rightExponent ≤ k.1 ∧
      k.1 < 2 ^ (rightExponent + 1) ∧
      2 ^ q < m.1 * k.1 ∧
      m.1 * k.1 ≤ 2 ^ (q + 1) ∧
      m.1 * k.1 ≤ 2 * N

@[ext]
theorem TypeIIShellFactorBlock.ext {N q : ℕ}
    {B C : TypeIIShellFactorBlock N q}
    (hleft : B.leftExponent = C.leftExponent)
    (hright : B.rightExponent = C.rightExponent) :
    B = C := by
  cases B
  cases C
  simp_all

/-- Membership predicate for the fixed-cutoff left half-open factor shell. -/
@[expose]
def TypeIIShellFactorBlock.ContainsLeft {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) (m : VaughanScaleIndex N) : Prop :=
  vaughanFourthRootCutoff N < m.1 ∧
    2 ^ B.leftExponent ≤ m.1 ∧
    m.1 < 2 ^ (B.leftExponent + 1)

/-- Membership predicate for the fixed-cutoff right half-open factor shell. -/
@[expose]
def TypeIIShellFactorBlock.ContainsRight {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) (k : VaughanScaleIndex N) : Prop :=
  vaughanFourthRootCutoff N < k.1 ∧
    2 ^ B.rightExponent ≤ k.1 ∧
    k.1 < 2 ^ (B.rightExponent + 1)

/-- The fixed-cutoff left factor shell `[2^j,2^(j+1))`. -/
abbrev TypeIIShellFactorBlock.Left {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :=
  {m : VaughanScaleIndex N // B.ContainsLeft m}

/-- The fixed-cutoff right factor shell `[2^l,2^(l+1))`. -/
abbrev TypeIIShellFactorBlock.Right {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :=
  {k : VaughanScaleIndex N // B.ContainsRight k}

noncomputable instance TypeIIShellFactorBlock.leftFintype {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : Fintype B.Left :=
  Fintype.ofFinite B.Left

noncomputable instance TypeIIShellFactorBlock.rightFintype {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : Fintype B.Right :=
  Fintype.ofFinite B.Right

/-- Exponents of an effective pair lie on one of the three exact diagonals.
The `q+1` case is a genuine boundary phenomenon, not proof slack. -/
@[surface_novel, surface_published]
theorem effectiveShellPair_exponentRelation {N q : ℕ}
    {m k : VaughanScaleIndex N}
    (hpair : IsEffectiveTypeIIShellPair N q (m, k)) :
    halfOpenFactorExponent m.1 + halfOpenFactorExponent k.1 = q - 1 ∨
      halfOpenFactorExponent m.1 + halfOpenFactorExponent k.1 = q ∨
      halfOpenFactorExponent m.1 + halfOpenFactorExponent k.1 = q + 1 := by
  let j := halfOpenFactorExponent m.1
  let l := halfOpenFactorExponent k.1
  have hmpos : 0 < m.1 :=
    (show 0 < 2 by decide).trans
      ((two_le_vaughanFourthRootCutoff N).trans_lt hpair.1)
  have hkpos : 0 < k.1 :=
    (show 0 < 2 by decide).trans
      ((two_le_vaughanFourthRootCutoff N).trans_lt hpair.2.1)
  have hmLower : 2 ^ j ≤ m.1 := pow_halfOpenFactorExponent_le hmpos
  have hkLower : 2 ^ l ≤ k.1 := pow_halfOpenFactorExponent_le hkpos
  have hmUpper : m.1 < 2 ^ (j + 1) := lt_pow_halfOpenFactorExponent_succ hmpos
  have hkUpper : k.1 < 2 ^ (l + 1) := lt_pow_halfOpenFactorExponent_succ hkpos
  have hshellLower : 2 ^ q < m.1 * k.1 := hpair.2.2.1
  have hshellUpper : m.1 * k.1 ≤ 2 ^ (q + 1) := hpair.2.2.2.1
  have hsumLower : q - 1 ≤ j + l := by
    by_contra hnot
    have hsum : j + l ≤ q - 2 := by omega
    have hpow : 2 ^ ((j + 1) + (l + 1)) ≤ 2 ^ q := by
      apply Nat.pow_le_pow_right (by decide)
      omega
    have hprod : m.1 * k.1 < 2 ^ ((j + 1) + (l + 1)) := by
      rw [pow_add]
      exact mul_lt_mul hmUpper hkUpper.le hkpos (by positivity)
    omega
  have hsumUpper : j + l ≤ q + 1 := by
    by_contra hnot
    have hsum : q + 2 ≤ j + l := by omega
    have hpow : 2 ^ (q + 2) ≤ 2 ^ (j + l) := by
      exact Nat.pow_le_pow_right (by decide) hsum
    have hprod : 2 ^ (j + l) ≤ m.1 * k.1 := by
      rw [pow_add]
      exact Nat.mul_le_mul hmLower hkLower
    have hstrict : 2 ^ (q + 1) < 2 ^ (q + 2) :=
      Nat.pow_lt_pow_right Nat.one_lt_two (by omega)
    omega
  change j + l = q - 1 ∨ j + l = q ∨ j + l = q + 1
  omega

/-- The canonical shell block assigned to an effective factor pair. -/
@[expose]
def shellFactorBlockOfPair {N q : ℕ}
    (pair : {p : VaughanScaleIndex N × VaughanScaleIndex N //
      IsEffectiveTypeIIShellPair N q p}) :
    TypeIIShellFactorBlock N q where
  leftExponent := halfOpenFactorExponent pair.1.1.1
  rightExponent := halfOpenFactorExponent pair.1.2.1
  exponentRelation := effectiveShellPair_exponentRelation pair.2
  nonempty_effective := by
    have hmpos : 0 < pair.1.1.1 := by
      have hm := pair.2.1
      omega
    have hkpos : 0 < pair.1.2.1 := by
      have hk := pair.2.2.1
      omega
    refine ⟨pair.1.1, pair.1.2, pair.2.1, pair.2.2.1, ?_, ?_, ?_, ?_,
      pair.2.2.2.1, pair.2.2.2.2.1, pair.2.2.2.2.2⟩
    · exact pow_halfOpenFactorExponent_le hmpos
    · exact lt_pow_halfOpenFactorExponent_succ hmpos
    · exact pow_halfOpenFactorExponent_le hkpos
    · exact lt_pow_halfOpenFactorExponent_succ hkpos

/-- The finite nonduplicative collection of exponent blocks meeting the
effective Type II support in product shell `q`. -/
@[expose]
def relevantShellBlocks (N q : ℕ) :
    Finset (TypeIIShellFactorBlock N q) := by
  classical
  exact Finset.univ.image shellFactorBlockOfPair

@[surface_novel, surface_published]
theorem shellFactorBlockOfPair_mem_relevant {N q : ℕ}
    (pair : {p : VaughanScaleIndex N × VaughanScaleIndex N //
      IsEffectiveTypeIIShellPair N q p}) :
    shellFactorBlockOfPair pair ∈ relevantShellBlocks N q := by
  classical
  apply Finset.mem_image.mpr
  exact ⟨pair, Finset.mem_univ _, rfl⟩

@[surface_novel, surface_published]
theorem shellFactorBlockOfPair_left_mem {N q : ℕ}
    (pair : {p : VaughanScaleIndex N × VaughanScaleIndex N //
      IsEffectiveTypeIIShellPair N q p}) :
    (shellFactorBlockOfPair pair).ContainsLeft pair.1.1 := by
  have hmpos : 0 < pair.1.1.1 := by
    have hm := pair.2.1
    omega
  exact ⟨pair.2.1, pow_halfOpenFactorExponent_le hmpos,
    lt_pow_halfOpenFactorExponent_succ hmpos⟩

@[surface_novel, surface_published]
theorem shellFactorBlockOfPair_right_mem {N q : ℕ}
    (pair : {p : VaughanScaleIndex N × VaughanScaleIndex N //
      IsEffectiveTypeIIShellPair N q p}) :
    (shellFactorBlockOfPair pair).ContainsRight pair.1.2 := by
  have hkpos : 0 < pair.1.2.1 := by
    have hk := pair.2.2.1
    omega
  exact ⟨pair.2.2.1, pow_halfOpenFactorExponent_le hkpos,
    lt_pow_halfOpenFactorExponent_succ hkpos⟩

/-- Every effective shell pair has a relevant canonical exponent block. -/
@[surface_novel, surface_published]
theorem productShell_pair_has_relevant_exponents {N q : ℕ}
    {m k : VaughanScaleIndex N}
    (hpair : IsEffectiveTypeIIShellPair N q (m, k)) :
    ∃ B ∈ relevantShellBlocks N q,
      B.ContainsLeft m ∧ B.ContainsRight k := by
  let pair : {p : VaughanScaleIndex N × VaughanScaleIndex N //
      IsEffectiveTypeIIShellPair N q p} := ⟨(m, k), hpair⟩
  exact ⟨shellFactorBlockOfPair pair,
    shellFactorBlockOfPair_mem_relevant pair,
    shellFactorBlockOfPair_left_mem pair,
    shellFactorBlockOfPair_right_mem pair⟩

/-- Half-open factor shells have unique exponents. -/
@[surface_novel, surface_published]
theorem halfOpenFactorExponent_eq_of_mem {n j : ℕ} (_hn : 0 < n)
    (hmem : 2 ^ j ≤ n ∧ n < 2 ^ (j + 1)) :
    halfOpenFactorExponent n = j := by
  unfold halfOpenFactorExponent
  rw [Nat.log2_eq_log_two,
    Nat.log_eq_of_pow_le_of_lt_pow hmem.1 hmem.2]

/-- One effective factor pair cannot belong to two distinct relevant shell
blocks.  This is the exact pairwise-disjointness/unique-assignment theorem. -/
@[surface_novel, surface_published]
theorem relevantShellBlocks_unique_assignment {N q : ℕ}
    {B C : TypeIIShellFactorBlock N q}
    {m : VaughanScaleIndex N} {k : VaughanScaleIndex N}
    (hmB : B.ContainsLeft m) (hkB : B.ContainsRight k)
    (hmC : C.ContainsLeft m) (hkC : C.ContainsRight k) :
    B = C := by
  apply TypeIIShellFactorBlock.ext
  · have hmpos : 0 < m.1 := by
      have hpow : 0 < 2 ^ B.leftExponent := by positivity
      exact hpow.trans_le hmB.2.1
    have hB := halfOpenFactorExponent_eq_of_mem hmpos
        ⟨hmB.2.1, hmB.2.2⟩
    have hC := halfOpenFactorExponent_eq_of_mem hmpos
        ⟨hmC.2.1, hmC.2.2⟩
    exact hB.symm.trans hC
  · have hkpos : 0 < k.1 := by
      have hpow : 0 < 2 ^ B.rightExponent := by positivity
      exact hpow.trans_le hkB.2.1
    have hB := halfOpenFactorExponent_eq_of_mem hkpos
        ⟨hkB.2.1, hkB.2.2⟩
    have hC := halfOpenFactorExponent_eq_of_mem hkpos
        ⟨hkC.2.1, hkC.2.2⟩
    exact hB.symm.trans hC

/-- Effective factor pairs carried by one exponent-indexed shell block. -/
@[expose]
def shellFactorBlockPairs {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    Finset (VaughanScaleIndex N × VaughanScaleIndex N) := by
  classical
  exact (effectiveTypeIIShellPairs N q).filter
    (fun pair ↦ B.ContainsLeft pair.1 ∧ B.ContainsRight pair.2)

@[surface_novel, surface_published]
theorem mem_shellFactorBlockPairs_iff {N q : ℕ}
    {B : TypeIIShellFactorBlock N q}
    {pair : VaughanScaleIndex N × VaughanScaleIndex N} :
    pair ∈ shellFactorBlockPairs B ↔
      IsEffectiveTypeIIShellPair N q pair ∧
        B.ContainsLeft pair.1 ∧ B.ContainsRight pair.2 := by
  classical
  simp [shellFactorBlockPairs, mem_effectiveTypeIIShellPairs_iff]

/-- Distinct exponent blocks carry disjoint effective pair fibers. -/
@[surface_novel, surface_published]
theorem relevantShellBlocks_pairwiseDisjoint {N q : ℕ}
    {B C : TypeIIShellFactorBlock N q} (hne : B ≠ C) :
    Disjoint (shellFactorBlockPairs B) (shellFactorBlockPairs C) := by
  classical
  rw [Finset.disjoint_left]
  intro pair hB hC
  have hBm := (mem_shellFactorBlockPairs_iff.mp hB).2
  have hCm := (mem_shellFactorBlockPairs_iff.mp hC).2
  exact hne (relevantShellBlocks_unique_assignment
    hBm.1 hBm.2 hCm.1 hCm.2)

/-- The effective product-shell pair set is exactly the disjoint union of
its canonical exponent blocks. -/
@[surface_novel, surface_published]
theorem productShell_eq_disjointUnion_factorBlocks (N q : ℕ) :
    (relevantShellBlocks N q).biUnion shellFactorBlockPairs =
      effectiveTypeIIShellPairs N q := by
  classical
  ext pair
  constructor
  · intro hpair
    obtain ⟨B, _hB, hpB⟩ := Finset.mem_biUnion.mp hpair
    exact mem_effectiveTypeIIShellPairs_iff.mpr
      (mem_shellFactorBlockPairs_iff.mp hpB).1
  · intro hpair
    have heffective := (mem_effectiveTypeIIShellPairs_iff.mp hpair)
    obtain ⟨B, hB, hm, hk⟩ :=
      productShell_pair_has_relevant_exponents heffective
    apply Finset.mem_biUnion.mpr
    exact ⟨B, hB,
      mem_shellFactorBlockPairs_iff.mpr ⟨heffective, hm, hk⟩⟩

/-- Exponent pairs on the three exact product-shell diagonals. -/
@[expose]
def relevantShellExponentPairs (q : ℕ) : Finset (ℕ × ℕ) :=
  Finset.antidiagonal (q - 1) ∪
    Finset.antidiagonal q ∪
    Finset.antidiagonal (q + 1)

@[surface_novel, surface_published]
theorem exponentPair_mem_relevant {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    (B.leftExponent, B.rightExponent) ∈ relevantShellExponentPairs q := by
  simp only [relevantShellExponentPairs, Finset.mem_union,
    Finset.mem_antidiagonal]
  rcases B.exponentRelation with h | h | h
  · exact Or.inl (Or.inl h)
  · exact Or.inl (Or.inr h)
  · exact Or.inr h

@[surface_novel, surface_published]
theorem card_relevantShellExponentPairs_le (q : ℕ) :
    (relevantShellExponentPairs q).card ≤ 3 * (q + 2) := by
  unfold relevantShellExponentPairs
  calc
    ((Finset.antidiagonal (q - 1) ∪ Finset.antidiagonal q) ∪
        Finset.antidiagonal (q + 1)).card ≤
      (Finset.antidiagonal (q - 1)).card +
        (Finset.antidiagonal q).card +
        (Finset.antidiagonal (q + 1)).card := by
          exact (Finset.card_union_le _ _).trans
            (Nat.add_le_add_right (Finset.card_union_le _ _) _)
    _ = (q - 1 + 1) + (q + 1) + (q + 1 + 1) := by simp
    _ ≤ 3 * (q + 2) := by omega

/-- There are at most three diagonals of length at most `q+2`. -/
@[surface_novel, surface_published]
theorem card_relevantShellBlocks_le (N q : ℕ) :
    (relevantShellBlocks N q).card ≤ 3 * (q + 2) := by
  classical
  let exponentPair : TypeIIShellFactorBlock N q → ℕ × ℕ :=
    fun B ↦ (B.leftExponent, B.rightExponent)
  have hinjective : Function.Injective exponentPair := by
    intro B C h
    exact TypeIIShellFactorBlock.ext (Prod.ext_iff.mp h).1
      (Prod.ext_iff.mp h).2
  have hcard :
      ((relevantShellBlocks N q).image exponentPair).card =
        (relevantShellBlocks N q).card :=
    Finset.card_image_of_injective _ hinjective
  rw [← hcard]
  exact (Finset.card_le_card (by
    intro pair hpair
    obtain ⟨B, hB, rfl⟩ := Finset.mem_image.mp hpair
    exact exponentPair_mem_relevant B)).trans
      (card_relevantShellExponentPairs_le q)

/-- The left conductor-three Vaughan coefficient on a canonical shell block. -/
@[expose]
def shellBlockLeftCoefficient {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : B.Left → ℂ :=
  fun m ↦ conductorThreeVaughanLeft N m.1

/-- The right conductor-three Vaughan coefficient on a canonical shell block. -/
@[expose]
def shellBlockRightCoefficient {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) : B.Right → ℂ :=
  fun k ↦ conductorThreeVaughanRight N k.1

end

end Surface.Core.TypeII

end
