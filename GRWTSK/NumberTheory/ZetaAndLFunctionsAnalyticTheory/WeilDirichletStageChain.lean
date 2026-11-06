/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveDirichletReturn

/-!
# Small-conductor stages to the actual Dirichlet target

The source is exactly `primitiveArithmeticValue`, with its original
character, conductor, gamma parity and signed correlations. We use real
odd tests, included in the complex source carrier, so the intended
conjugate-pair interpretation is not replaced by an arbitrary complex
phase-erased form. The existing conductor frontier handles the complementary
large-conductor branch at every stage. Its cofinal consumer supplies
nonnegativity on each fixed compact support from the remaining stages.

The complete primitive explicit-formula/negative-test bridge is NOT yet a
proved input of this module. `PrimitiveNegativeWitness` records its exact
mathematical proposition: an actual off-line L-function zero must produce
a negative test of this exact arithmetic value with all domain hypotheses.
It is a separately supplied argument, not an axiom, instance, default value,
new GRH predicate, or a claim that the bridge has been formalized here.
The final consumer derives critical-line statements by contradiction and
uses the separately proved native inducing-character reduction.

Consumer: `WeilCertificateRootReturn`. Both the negative-test bridge and
all small-conductor signs remain obligations. Only their composition and
the already available large-conductor/cofinal return are proved here.
Baseline c5648c5a280d1cbdf4f98b594a450aaa5e4969c9.
AI-assisted manual source. Elaboration, kernel replay, transitive axiom
audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open OddRootProjection CharacterWindow SourcePrimeCorrelation LowSchur
open GRWTSK.NumberTheory.Conditional

/-- The actual complex inclusion of a real test; no change of transform or measure. -/
def liftReal (f : ℝ → ℝ) : ℝ → ℂ := fun t => (f t : ℂ)

/-- The target sign is not a field of an admissible test. -/
def Admissible {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (T : ℝ) (f : ℝ → ℝ) : Prop :=
  0 < T ∧ ContDiff ℝ 2 f ∧ HasCompactSupport f ∧ Function.Odd f ∧
    MemLp (liftReal f) 2 volume ∧
    (∀ t, t ∉ Icc (-T) T → liftReal f t = 0) ∧
    IntegrableOn (gammaCorrectionDensity (gammaParity χ) (liftReal f)) (Ioi 0)

def PrimitiveStageLower {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (j : ℕ) : Prop :=
  ∀ f : ℝ → ℝ, Admissible χ ((j : ℝ) + 1) f →
    -((1 / 2 : ℝ) ^ j) * energy (liftReal f) ≤
      primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal f)

/-- The large-conductor cases are not demanded again from the finite supplier. -/
def SmallConductorStages {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) : Prop :=
  ∀ j : ℕ, χ.conductor < conductorFrontier (j + 1) → PrimitiveStageLower χ hp hn j

theorem primitive_nonneg_of_small_stages {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (hsmall : SmallConductorStages χ hp hn)
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) :
    0 ≤ primitiveArithmeticValue χ hp hn T (liftReal f) := by
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  apply primitiveArithmeticValue_nonneg_of_cofinal_small_conductor_bounds χ hp hn
    hLp hsupport harch
  intro j hj hconductor
  apply hsmall j hconductor f
  refine ⟨by positivity, hdiff, hcompact, hodd, hLp, ?_, harch⟩
  intro t hout
  apply hsupport t
  intro hin
  exact hout ⟨(neg_le_neg hj).trans hin.1, hin.2.trans hj⟩

/-- Precisely the remaining analytic primitive-root return, not silently supplied. -/
def PrimitiveNegativeWitness : Prop :=
  ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (s : ℂ),
    0 < s.re → s.re < 1 → s.re ≠ 1 / 2 → χ.LFunction s = 0 →
      ∃ (T : ℝ) (f : ℝ → ℝ), Admissible χ T f ∧
        primitiveArithmeticValue χ hp hn T (liftReal f) < 0

theorem primitive_criticalLine (hreturn : PrimitiveNegativeWitness)
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hsmall : SmallConductorStages χ hp hn) :
    DirichletCriticalLine χ := by
  intro s hpos hstrip hz
  by_contra hoff
  obtain ⟨T, f, hf, hneg⟩ := hreturn q χ hp hn s hpos hstrip hoff hz
  exact (not_lt_of_ge (primitive_nonneg_of_small_stages χ hp hn hsmall hf)) hneg

/-- The conclusion is the existing definition, with every positive modulus retained. -/
theorem dirichletGRH_of_source_chains (hRH : _root_.RiemannHypothesis)
    (hreturn : PrimitiveNegativeWitness)
    (hsmall : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
      (hp : χ.IsPrimitive) (hn : χ ≠ 1), SmallConductorStages χ hp hn) :
    DirichletGRH := by
  apply PrimitiveDirichletReturn.dirichletGRH_of_rh_and_primitive_nonprincipal hRH
  intro q hq χ hp hn
  exact primitive_criticalLine hreturn χ hp hn (hsmall q χ hp hn)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
