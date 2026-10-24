# Complete source: GRWTSK.NumberTheory.Primes.GoldbachDirectionalMinorBoundary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `090b9b5e9658c4b5042fd4c1cdfba17e967fc855` · SHA-256 `ec02b16745fe1bdcd438970d836227c547719f2408f94f63e626e3fcb4f98973`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Direction and feasibility of the complete signed minor contribution

A two-sided norm margin implies an upper bound as well as positivity. A
one-sided lower bound for the real part of the SAME complete signed minor
integral avoids charging beneficial positive mass. No minor estimate is
supplied here. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachDirectionalMinorBoundary

open scoped BigOperators Real
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary
open GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
open GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy
open GRWTSK.NumberTheory.Primes.GoldbachPrefixArcTransfer
open GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget

noncomputable section

/-- Exact source reconstruction, before taking real parts or norms. -/
theorem goldbachProgressionModel_add_residual_add_minor
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachProgressionArcModelMajorSum Q N +
      goldbachArcModelResidualSum Q N (goldbachProgressionArcModel N) +
      goldbachRationalMinorContribution Q N = (goldbachLogMass N : ℂ) := by
  have h := goldbachRationalArcSum_add_minor_eq_logMass hscale
  rw [goldbachRationalArcSum_eq_model_add_residual Q N
    (goldbachProgressionArcModel N)] at h
  exact h

/-- Sum every supplied frequency-envelope residual bound exactly once. -/
theorem norm_goldbachProgressionResidualSum_le_frequency
    {Q N : ℕ} (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r) :
    ‖goldbachArcModelResidualSum Q N (goldbachProgressionArcModel N)‖ ≤
      goldbachFrequencyMajorErrorBudget Q N B := by
  apply goldbachArcModelResidualSum_norm_le
  intro aq haq
  exact norm_goldbachProgressionArcResidual_le_frequency_budget B hp haq

/-- A strict two-sided norm criterion also forces mass below twice the model.
This necessary upper bound is a feasibility test, not a Goldbach estimate. -/
theorem mass_interval_of_norm_margin
    {G L E T : ℝ} {M R I : ℂ}
    (hsplit : M + R + I = (G : ℂ)) (hmodel : L ≤ M.re)
    (hres : ‖R‖ ≤ E) (hminor : ‖I‖ ≤ T) (hmargin : E + T < L) :
    0 < G ∧ G < 2 * M.re := by
  have heq := congrArg Complex.re hsplit
  simp only [Complex.add_re, Complex.ofReal_re] at heq
  have hR := abs_le.mp ((Complex.abs_re_le_norm R).trans hres)
  have hI := abs_le.mp ((Complex.abs_re_le_norm I).trans hminor)
  constructor <;> linarith [hR.1, hR.2, hI.1, hI.2]

/-- The necessary upper bound is attached to the actual source model and
frequency budget, with the original prefix hypotheses retained. -/
theorem goldbachLogMass_interval_of_frequency_norm_margin
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    (L T : ℝ)
    (hmodel : L ≤ (goldbachProgressionArcModelMajorSum Q N).re)
    (hminor : ‖goldbachRationalMinorContribution Q N‖ ≤ T)
    (hmargin : goldbachFrequencyMajorErrorBudget Q N B + T < L) :
    0 < goldbachLogMass N ∧
      goldbachLogMass N < 2 * (goldbachProgressionArcModelMajorSum Q N).re := by
  exact mass_interval_of_norm_margin
    (goldbachProgressionModel_add_residual_add_minor hscale) hmodel
    (norm_goldbachProgressionResidualSum_le_frequency B hp) hminor hmargin

/-- An independently established mass lower bound can refute this norm
criterion even when the target already has many prime representations. -/
theorem no_frequency_norm_margin_of_large_logMass
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    (L T U : ℝ)
    (hupper : (goldbachProgressionArcModelMajorSum Q N).re ≤ U)
    (hlarge : 2 * U ≤ goldbachLogMass N)
    (hmodel : L ≤ (goldbachProgressionArcModelMajorSum Q N).re)
    (hminor : ‖goldbachRationalMinorContribution Q N‖ ≤ T) :
    ¬ (goldbachFrequencyMajorErrorBudget Q N B + T < L) := by
  intro hmargin
  have h := (goldbachLogMass_interval_of_frequency_norm_margin
    hscale B hp L T hmodel hminor hmargin).2
  linarith

/-- A lower bound for the real part of the full signed minor term suffices.
The error parameters must be supplied independently of the unknown mass. -/
theorem mass_lower_of_signed_minor_lower
    {G L E T : ℝ} {M R I : ℂ}
    (hsplit : M + R + I = (G : ℂ)) (hmodel : L ≤ M.re)
    (hres : ‖R‖ ≤ E) (hminor : -T ≤ I.re) :
    L - E - T ≤ G := by
  have heq := congrArg Complex.re hsplit
  simp only [Complex.add_re, Complex.ofReal_re] at heq
  have hR := (abs_le.mp ((Complex.abs_re_le_norm R).trans hres)).1
  linarith

/-- Conditional directional consumer; the minor set, integrand, phases, and
signed integral are unchanged. Only the sufficient estimate is one-sided. -/
theorem goldbachCount_pos_of_frequency_signed_minor_lower
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) (B : ℕ → ℕ → ℝ)
    (hp : ∀ q, 0 < q → q ≤ Q → ∀ r, r < q → q.Coprime r →
      0 ≤ B q r ∧ ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B q r)
    (L T : ℝ)
    (hmodel : L ≤ (goldbachProgressionArcModelMajorSum Q N).re)
    (hminor : -T ≤ (goldbachRationalMinorContribution Q N).re)
    (hmargin : goldbachFrequencyMajorErrorBudget Q N B + T < L) :
    0 < goldbachCount N := by
  apply (goldbachLogMass_pos_iff_count_pos N).mp
  have h := mass_lower_of_signed_minor_lower
    (goldbachProgressionModel_add_residual_add_minor hscale) hmodel
    (norm_goldbachProgressionResidualSum_le_frequency B hp) hminor
  linarith

/-- Every even target above one cutoff is retained. No finite coverage or
actual directional minor estimate is supplied by this wrapper. -/
theorem goldbachCount_pos_above_of_frequency_signed_minor_supplier
    {N₀ : ℕ} (Q : ℕ → ℕ) (B : ℕ → ℕ → ℕ → ℝ)
    (hp : GoldbachReducedPrefixSupplier N₀ Q B) (L T : ℕ → ℝ)
    (hscale : ∀ N, N₀ ≤ N → 2 < N → Even N → 2 * (Q N) ^ 2 < N + 1)
    (hmodel : ∀ N, N₀ ≤ N → 2 < N → Even N →
      L N ≤ (goldbachProgressionArcModelMajorSum (Q N) N).re)
    (hminor : ∀ N, N₀ ≤ N → 2 < N → Even N →
      -(T N) ≤ (goldbachRationalMinorContribution (Q N) N).re)
    (hmargin : ∀ N, N₀ ≤ N → 2 < N → Even N →
      goldbachFrequencyMajorErrorBudget (Q N) N (B N) + T N < L N) :
    ∀ N, N₀ ≤ N → 2 < N → Even N → 0 < goldbachCount N := by
  intro N hN htwo heven
  exact goldbachCount_pos_of_frequency_signed_minor_lower
    (hscale N hN htwo heven) (B N) (hp N hN htwo heven) (L N) (T N)
    (hmodel N hN htwo heven) (hminor N hN htwo heven) (hmargin N hN htwo heven)

end
end GRWTSK.NumberTheory.Primes.GoldbachDirectionalMinorBoundary
```
