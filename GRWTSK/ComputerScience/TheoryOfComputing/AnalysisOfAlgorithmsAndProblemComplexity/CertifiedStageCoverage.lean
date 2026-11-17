/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license as described in the file LICENSE.
-/
import GRWTSK.NumberTheory.SpecificationAndPrimeEnumeration
import Mathlib.Data.Finset.Union
import Mathlib.Order.Interval.Finset.Nat

/-!
# Certified coverage of stage tests

Each window exposes the exact finite set of source stages justified by its
checker. Validity of a test on that set, soundness of the checker, existence
of accepted certificates, and coverage of the source are separate premises.
The universal transfer theorem is exact: if a stage is absent, the predicate
that fails just at that stage passes every certified window.

For natural-number stages, nested windows give a cofinal-prefix criterion.
Fixed-width blocks provide a disjoint schedule of exact stage payloads.
An increasing prime enumeration can label these blocks by rank. Checking
the prime labels themselves as stage values would miss composite stages.
-/

set_option autoImplicit false

namespace GRWTSK.ComputerScience.TheoryOfComputing.CertifiedStageCoverage

variable {Window Stage Certificate : Type*}

/-- Finite sets of exact source stages and a Boolean acceptance check. -/
structure CertificateChecker (Window Stage Certificate : Type*) where
  stages : Window → Finset Stage
  accepts : Window → Certificate → Bool

namespace CertificateChecker

variable (checker : CertificateChecker Window Stage Certificate)

/-- Every test in one window holds. -/
def WindowValid (test : Stage → Prop) (w : Window) : Prop :=
  ∀ s ∈ checker.stages w, test s

/-- An accepted certificate proves validity of its own window. -/
def Sound (test : Stage → Prop) : Prop :=
  ∀ w c, checker.accepts w c = true → checker.WindowValid test w

/-- Every valid window has an accepted certificate. -/
def Complete (test : Stage → Prop) : Prop :=
  ∀ w, checker.WindowValid test w → ∃ c, checker.accepts w c = true

def HasCertificate (w : Window) : Prop :=
  ∃ c, checker.accepts w c = true

def Total : Prop := ∀ w, checker.HasCertificate w

/-- Stage membership in the union of the accepted windows. -/
def Covered (s : Stage) : Prop :=
  ∃ w c, checker.accepts w c = true ∧ s ∈ checker.stages w

/-- The accepted windows cover all required source stages. -/
def Covers (source : Stage → Prop) : Prop :=
  ∀ s, source s → checker.Covered s

variable {checker} {source test : Stage → Prop}

theorem test_of_covered (sound : checker.Sound test) {s : Stage}
    (covered : checker.Covered s) : test s := by
  obtain ⟨w, c, hc, hs⟩ := covered
  exact sound w c hc s hs

theorem test_of_covers (sound : checker.Sound test) (cover : checker.Covers source) :
    ∀ s, source s → test s :=
  fun s hs => test_of_covered sound (cover s hs)

theorem not_covered_of_counterexample (sound : checker.Sound test) {s : Stage}
    (fails : ¬ test s) : ¬ checker.Covered s :=
  fun covered => fails (test_of_covered sound covered)

/-- The source stages are forced by the certified windows for arbitrary stage
predicates exactly when each of those stages belongs to a certified window. -/
theorem covers_iff_forall_test :
    checker.Covers source ↔
      ∀ test : Stage → Prop, checker.Sound test → ∀ s, source s → test s := by
  constructor
  · exact fun cover _ sound => test_of_covers sound cover
  · intro transfer
    exact transfer checker.Covered (fun w c hc s hs => ⟨w, c, hc, hs⟩)

/-- A single uncovered stage gives an explicit hostile test. -/
theorem counterexample_test_of_not_covered {s : Stage} (missing : ¬ checker.Covered s) :
    checker.Sound (fun t => t ≠ s) ∧ ¬ (s ≠ s) := by
  refine ⟨?_, fun notEqual => notEqual rfl⟩
  intro w c hc t ht h
  exact missing ⟨w, c, hc, h ▸ ht⟩

theorem covers_of_total (total : checker.Total)
    (cover : ∀ s, source s → ∃ w, s ∈ checker.stages w) : checker.Covers source := by
  intro s hs
  obtain ⟨w, hw⟩ := cover s hs
  obtain ⟨c, hc⟩ := total w
  exact ⟨w, c, hc, hw⟩

theorem hasCertificate_iff_valid (sound : checker.Sound test)
    (complete : checker.Complete test) (w : Window) :
    checker.HasCertificate w ↔ checker.WindowValid test w := by
  constructor
  · rintro ⟨c, hc⟩
    exact sound w c hc
  · exact complete w

/-- An independent uniform estimate pays for all windows when its sign
implies the source test and the checker is complete for its window tests. -/
theorem total_of_uniform_bound {Bound : Type*} [LE Bound] [Zero Bound]
    (complete : checker.Complete test) (margin : Window → Stage → Bound)
    (estimate : ∀ w s, s ∈ checker.stages w → 0 ≤ margin w s)
    (transfer : ∀ w s, s ∈ checker.stages w → 0 ≤ margin w s → test s) :
    checker.Total :=
  fun w => complete w (fun s hs => transfer w s hs (estimate w s hs))

/-- A constantly rejecting checker is sound for any test. -/
theorem rejecting_sound (stages : Window → Finset Stage) :
    (⟨stages, fun _ (_ : Certificate) => false⟩ :
      CertificateChecker Window Stage Certificate).Sound test := by
  intro w c hc
  simp at hc

theorem rejecting_no_certificate (stages : Window → Finset Stage) (w : Window) :
    ¬ (⟨stages, fun _ (_ : Certificate) => false⟩ :
      CertificateChecker Window Stage Certificate).HasCertificate w := by
  rintro ⟨c, hc⟩
  simp at hc

section NaturalStages

variable {checker : CertificateChecker Window ℕ Certificate}

/-- Every finite family of windows has a stage outside its union. -/
theorem exists_stage_outside_finite_windows (windows : Finset Window) :
    ∃ n, ∀ w ∈ windows, n ∉ checker.stages w := by
  classical
  let checked := windows.biUnion checker.stages
  refine ⟨checked.sup id + 1, ?_⟩
  intro w hw hn
  have hmem : checked.sup id + 1 ∈ checked := Finset.mem_biUnion.mpr ⟨w, hw, hn⟩
  have hle : checked.sup id + 1 ≤ checked.sup id := Finset.le_sup (f := id) hmem
  omega

/-- If the stage payload is confined to prime values, stage 4 is omitted. -/
theorem four_not_covered_of_prime_values
    (primeValues : ∀ w s, s ∈ checker.stages w → Nat.Prime s) :
    ¬ checker.Covered 4 := by
  rintro ⟨w, _, _, hs⟩
  have composite : ¬ Nat.Prime 4 := by decide
  exact composite (primeValues w 4 hs)

/-- Order cofinality suffices to transfer a downward-closed test. -/
theorem all_tests_of_unbounded_covered {test : ℕ → Prop}
    (sound : checker.Sound test)
    (downward : ∀ n m, n ≤ m → test m → test n)
    (unbounded : ∀ n, ∃ m, n ≤ m ∧ checker.Covered m) : ∀ n, test n := by
  intro n
  obtain ⟨m, hle, covered⟩ := unbounded n
  exact downward n m hle (test_of_covered sound covered)

end NaturalStages

section NaturalWindows

variable {checker : CertificateChecker ℕ Stage Certificate}

/-- Induction pays for all certificates when the invariant implies
certificate existence at each index. -/
theorem total_of_invariant (invariant : ℕ → Prop) (base : invariant 0)
    (step : ∀ w, invariant w → invariant (w + 1))
    (certify : ∀ w, invariant w → checker.HasCertificate w) : checker.Total :=
  fun w => certify w (Nat.rec base step w)

/-- Cofinal certificate existence yields totality if certificates transfer
downward along the window order. -/
theorem total_of_cofinal_certificates
    (downward : ∀ w v, w ≤ v → checker.HasCertificate v → checker.HasCertificate w)
    (cofinal : ∀ w, ∃ v, w ≤ v ∧ checker.HasCertificate v) : checker.Total := by
  intro w
  obtain ⟨v, hle, hc⟩ := cofinal w
  exact downward w v hle hc

end NaturalWindows

/-- For nested windows, pointwise coverage is equivalent to coverage of
each full prefix by a single certified window. -/
theorem covers_iff_certified_prefixes {checker : CertificateChecker ℕ ℕ Certificate}
    (nested : Monotone checker.stages) :
    checker.Covers (fun _ => True) ↔
      ∀ bound, ∃ w, checker.HasCertificate w ∧
        Finset.range (bound + 1) ⊆ checker.stages w := by
  constructor
  · intro cover bound
    induction bound with
    | zero =>
      obtain ⟨w, c, hc, hm⟩ := cover 0 True.intro
      refine ⟨w, ⟨c, hc⟩, ?_⟩
      intro s hs
      have hslt := Finset.mem_range.mp hs
      have hs0 : s = 0 := by omega
      simpa [hs0] using hm
    | succ bound ih =>
      obtain ⟨w, hw, hprefix⟩ := ih
      obtain ⟨v, c, hc, hm⟩ := cover (bound + 1) True.intro
      refine ⟨max w v, ?_, ?_⟩
      · rcases le_total w v with hle | hle
        · simpa only [max_eq_right hle] using (show checker.HasCertificate v from ⟨c, hc⟩)
        · simpa only [max_eq_left hle] using hw
      · intro s hs
        have hslt := Finset.mem_range.mp hs
        by_cases hlast : s = bound + 1
        · exact nested (le_max_right w v) (hlast.symm ▸ hm)
        · exact nested (le_max_left w v)
            (hprefix (Finset.mem_range.mpr (by omega)))
  · intro prefixes s _
    obtain ⟨w, ⟨c, hc⟩, hm⟩ := prefixes s
    exact ⟨w, c, hc, hm (Finset.mem_range.mpr (Nat.lt_succ_self s))⟩

end CertificateChecker

/-- Window of the prescribed width at its natural-number rank. -/
def stageBlock (width rank : ℕ) : Finset ℕ :=
  Finset.Ico (width * rank) (width * (rank + 1))

/-- Euclidean division computes the unique block containing a stage. -/
theorem mem_stageBlock_iff {width rank stage : ℕ} (positive : 0 < width) :
    stage ∈ stageBlock width rank ↔ stage / width = rank := by
  rw [stageBlock, Finset.mem_Ico]
  constructor
  · rintro ⟨hstart, hend⟩
    have hlo : rank ≤ stage / width := by
      rw [Nat.le_div_iff_mul_le positive, Nat.mul_comm]
      exact hstart
    have hhi : stage / width < rank + 1 := by
      rw [Nat.div_lt_iff_lt_mul positive, Nat.mul_comm]
      exact hend
    omega
  · intro h
    refine ⟨?_, ?_⟩
    · simpa only [h, Nat.mul_comm] using Nat.div_mul_le_self stage width
    · simpa only [h] using Nat.lt_mul_div_succ stage positive

open GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.SequentialPrimeSpecification

/-- A checker whose windows each contain a single prime stage. -/
noncomputable def primeValueChecker : CertificateChecker ℕ ℕ Unit where
  stages rank := {canonicalPrimeEnumeration.value rank}
  accepts _ _ := true

theorem primeValueChecker_covered_iff (stage : ℕ) :
    primeValueChecker.Covered stage ↔ Nat.Prime stage := by
  constructor
  · rintro ⟨rank, _, _, hs⟩
    have eq : stage = canonicalPrimeEnumeration.value rank := Finset.mem_singleton.mp hs
    exact eq.symm ▸ canonicalPrimeEnumeration.prime rank
  · intro prime
    refine ⟨Nat.count Nat.Prime stage, (), rfl, ?_⟩
    change stage ∈ ({canonicalPrimeEnumeration.value (Nat.count Nat.Prime stage)} : Finset ℕ)
    rw [Finset.mem_singleton, canonicalPrimeEnumeration_value, Nat.nth_count prime]

/-- Every prime stage has a certificate and their values are unbounded.
The checker is sound for the test that fails precisely at stage 4. -/
theorem prime_value_control :
    primeValueChecker.Total ∧
      (∀ n, ∃ m, n ≤ m ∧ primeValueChecker.Covered m) ∧
      primeValueChecker.Sound (· ≠ 4) ∧ ¬ primeValueChecker.Covered 4 := by
  have rank_le_value (rank : ℕ) : rank ≤ canonicalPrimeEnumeration.value rank := by
    induction rank with
    | zero => exact Nat.zero_le _
    | succ rank ih =>
      exact Nat.lt_of_le_of_lt ih
        (canonicalPrimeEnumeration.strictlyIncreasing (Nat.lt_succ_self rank))
  have missing : ¬ primeValueChecker.Covered 4 :=
    fun covered => (by decide : ¬ Nat.Prime 4) ((primeValueChecker_covered_iff 4).mp covered)
  refine ⟨fun _ => ⟨(), rfl⟩, ?_, (CertificateChecker.counterexample_test_of_not_covered
    missing).1, missing⟩
  intro n
  exact ⟨_, rank_le_value n, n, (), rfl, Finset.mem_singleton_self _⟩

/-- Rank equivalence using the repository's canonical prime enumeration. -/
noncomputable def primeRankEquiv : ℕ ≃ Set.range canonicalPrimeEnumeration.value :=
  Equiv.ofInjective _ canonicalPrimeEnumeration.strictlyIncreasing.injective

/-- A prime label can carry stages by inverse rank instead of using its
numeric value as a stage test. -/
noncomputable def primeAddressStageBlock (width : ℕ)
    (address : Set.range canonicalPrimeEnumeration.value) : Finset ℕ :=
  stageBlock width (primeRankEquiv.symm address)

theorem existsUnique_primeAddressStageBlock {width : ℕ} (positive : 0 < width)
    (stage : ℕ) :
    ∃! address, stage ∈ primeAddressStageBlock width address := by
  refine ⟨primeRankEquiv (stage / width), ?_, ?_⟩
  · simp [primeAddressStageBlock, mem_stageBlock_iff positive]
  · intro address membership
    apply primeRankEquiv.symm.injective
    rw [Equiv.symm_apply_apply]
    exact ((mem_stageBlock_iff positive).mp membership).symm

end GRWTSK.ComputerScience.TheoryOfComputing.CertifiedStageCoverage
