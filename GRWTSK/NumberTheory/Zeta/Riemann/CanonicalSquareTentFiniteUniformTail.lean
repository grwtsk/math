/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source interfaces: grwtsk/math.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite-test uniformity versus an unrestricted Weil positivity claim

This is one bounded connection between the canonical Riemann-zeta
square-tent finite-zero-height comparison and the finite-to-global
obstructions that arise in density/closure and coefficient-positivity
criteria.  The theorem below uses exactly the existing arithmetic source,
actual zero-head residual bound, and fixed-test asymptotic decay.

It proves a *common height cutoff for any FINITE collection of canonical
square-tent tests*.  That cutoff may depend on the collection and epsilon.
It proves no uniform-in-all-tests tail bound, no density of these tests in
a classical Weil test space, and no classical Weil criterion.

The independent moving-spike fixture shows why pointwise vanishing does
not justify one height cutoff for every natural test label.  It is a
logical counterexample, not a claim that the actual zeta tail behaves
like this fixture.

Connections to finite-height zero certificates, Li's universal
coefficient signs, Nyman--Beurling closure, and pair-correlation density
remain *comparisons of logical quantifiers*, not imported equivalences.

SOURCE_DRAFT: Lean elaboration, kernel replay and transitive axiom audit
have not been established for this new module.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFiniteUniformTail

open GRWTSK.Analysis.ErrorBounds
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort

/-- Existing source-derived tail decay yields one cutoff shared by every
member of a specified *finite* set of canonical zeta square-tent tests.
No uniform control over the infinite test space is asserted. -/
theorem finite_test_tail_uniform
    (F : Finset CanonicalSquareTentTest)
    (ε : ℝ) (hε : 0 < ε) :
    ∃ N : ℕ, ∀ n : ℕ, N ≤ n →
      ∀ f : CanonicalSquareTentTest, f ∈ F → lowerDefect n f ≤ ε := by
  classical
  induction F using Finset.induction_on with
  | empty =>
      refine ⟨0, ?_⟩
      intro n hn f hf
      simp at hf
  | @insert a s ha ih =>
      obtain ⟨N, hN⟩ := ih
      obtain ⟨M, hM⟩ := lowerDefect_vanishes a ε hε
      refine ⟨max N M, ?_⟩
      intro n hn f hf
      rcases Finset.mem_insert.mp hf with rfl | hfs
      · have hnonneg : 0 ≤ lowerDefect n a := lowerDefect_nonnegative n a
        have hbound := hM n (le_trans (le_max_right N M) hn)
        simpa only [abs_of_nonneg hnonneg] using hbound
      · exact hN n (le_trans (le_max_left N M) hn) f hfs

/-- A single certified finite-zero-head cutoff simultaneously bounds the
complete signed complex residual, the real diagonal comparison error,
and the negative part of the finite-stage approximant, at all tests
in the same finite family.  Its positivity content is only
approximately nonnegative real diagonals; the target's exact
nonnegative arithmetic Gram is proved in the imported source. -/
theorem finite_test_signed_and_real_comparison
    (F : Finset CanonicalSquareTentTest)
    (ε : ℝ) (hε : 0 < ε) :
    ∃ N : ℕ, ∀ n : ℕ, N ≤ n →
      ∀ f : CanonicalSquareTentTest, f ∈ F →
        ‖finiteSpectralValue n f - (canonicalCorrection f.index : ℂ)‖ ≤ ε ∧
        |zetaTarget f f - finiteApproximant n f f| ≤ ε ∧
        -ε ≤ finiteApproximant n f f := by
  obtain ⟨N, hN⟩ := finite_test_tail_uniform F ε hε
  refine ⟨N, ?_⟩
  intro n hn f hf
  have hbound : lowerDefect n f ≤ ε := hN n hn f hf
  refine ⟨?_, ?_, ?_⟩
  · exact (norm_finiteSpectralValue_sub_target_le n f).trans hbound
  · exact (abs_target_sub_finiteApproximant_le n f).trans hbound
  · exact (neg_le_neg hbound).trans
      (finiteApproximant_diagonal_lower_bound n f)

/-- Pure counterexample observable: an error spike escapes toward larger
test indices as the finite-height cutoff increases.  This is not
the canonical zeta tail. -/
def movingSpike (height testIndex : ℕ) : ℝ :=
  if height < testIndex then 1 else 0

/-- The moving spike vanishes eventually at every FIXED test index. -/
theorem movingSpike_pointwise_vanishes (testIndex : ℕ) :
    VanishesAtInfinity (fun height => movingSpike height testIndex) := by
  intro ε hε
  refine ⟨testIndex, ?_⟩
  intro height hheight
  have hnot : ¬ height < testIndex := by omega
  simpa [movingSpike, hnot] using hε.le

/-- Pointwise eventual zero does not imply one cutoff providing a
half-unit bound simultaneously for every natural test index. -/
theorem movingSpike_no_global_cutoff :
    ¬ ∃ N : ℕ, ∀ height : ℕ, N ≤ height →
      ∀ testIndex : ℕ,
        movingSpike height testIndex ≤ (1 / 2 : ℝ) := by
  rintro ⟨N, hN⟩
  have hbad := hN N (le_refl N) (N + 1)
  have hspike : movingSpike N (N + 1) = (1 : ℝ) := by
    simp [movingSpike]
  rw [hspike] at hbad
  norm_num at hbad

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFiniteUniformTail
