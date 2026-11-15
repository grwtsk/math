/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletStageChain
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSourcePrimeCorrelation

/-!
# Persistent negative directions in the original primitive source

For a fixed test supported in [-T,T], new prime powers admitted by a
larger cutoff U have zero whole-line correlations. Reuse the original
twistedPrime_eq_of_le to show the COMPLETE primitive arithmetic value
is unchanged. The test remains genuinely Admissible at U.

A fixed defect Q + kappa*energy also persists. kappa=1 is the
original q=3,j=0 stage defect; this says nothing about the DIFFERENT
j>0 stage coefficients. No sign or RH/GRH theorem is assumed or proved.

Consumer and analytic proof: WeilPrimitiveNegativePersistence.md.
Conductor-one zeta poles require a separate exact source theorem.
Source pins: math main read in hs#2 C0011/T4 (2026-11-14);
Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimitiveNegativePersistence

open DirichletStageChain SourcePrimeCorrelation

/-- The full native primitive arithmetic value is invariant under
enlarging the cutoff around the SAME compactly supported test. -/
theorem primitiveArithmeticValue_eq_of_window_extension
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {T U : ℝ} {g : ℝ → ℂ}
    (hsupport : ∀ t, t ∉ Icc (-T) T → g t = 0)
    (hTU : T ≤ U) :
    primitiveArithmeticValue χ hp hn T g =
      primitiveArithmeticValue χ hp hn U g := by
  unfold primitiveArithmeticValue
  rw [SourcePrimeCorrelation.twistedPrime_eq_of_le χ hsupport hTU]

/-- Enlarging a window retains all original admissibility conditions,
including the entire (untruncated) gamma-integrability hypothesis. -/
theorem admissible_of_window_extension
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T U : ℝ} {f : ℝ → ℝ}
    (hf : Admissible χ T f) (hTU : T ≤ U) :
    Admissible χ U f := by
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  refine ⟨lt_of_lt_of_le hT hTU, hdiff, hcompact, hodd, hLp, ?_, harch⟩
  intro t ht
  apply hsupport t
  intro hin
  exact ht ⟨(neg_le_neg hTU).trans hin.1, hin.2.trans hTU⟩

/-- A strict negative direction for any FIXED coefficient kappa
persists at all larger cutoffs, on the original real admissible test.
In the radius-one q3 stage, take kappa=1; the later stage-j
coefficients are not replaced by kappa. -/
theorem fixed_defect_negative_persists_on_true_admissible
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (κ : ℝ) {T : ℝ} {f : ℝ → ℝ}
    (hf : Admissible χ T f)
    (hneg : primitiveArithmeticValue χ hp hn T (liftReal f) +
      κ * energy (liftReal f) < 0) :
    ∀ U : ℝ, T ≤ U →
      Admissible χ U f ∧
      primitiveArithmeticValue χ hp hn U (liftReal f) +
        κ * energy (liftReal f) < 0 := by
  intro U hTU
  refine ⟨admissible_of_window_extension χ hf hTU, ?_⟩
  rcases hf with ⟨_, _, _, _, _, hsupport, _⟩
  calc
    primitiveArithmeticValue χ hp hn U (liftReal f) +
        κ * energy (liftReal f) =
      primitiveArithmeticValue χ hp hn T (liftReal f) +
        κ * energy (liftReal f) := by
          rw [← primitiveArithmeticValue_eq_of_window_extension
            χ hp hn hsupport hTU]
    _ < 0 := hneg

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimitiveNegativePersistence
