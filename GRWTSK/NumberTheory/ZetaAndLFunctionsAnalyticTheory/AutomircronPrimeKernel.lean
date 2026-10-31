/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeFiberFiniteTestTransport
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensPrimitive
import Mathlib

/-!
# AutomircronKernel: dependent prime frames and actual causal Gram defects

Local attribution: grwtsk contributors.

The name AutomircronKernel is a proposed research interface, not an existing
Mathlib/GRWTSK theory. The input is a family of fully dependent types indexed
by the *existing* PrimeIndex. It never identifies a prime fiber with its
numerical prime label. A frame may permute states within a fixed prime fiber.

The signed Gram uses the unchanged integer Möbius coefficients and the
unchanged pickupResponseGram at each original numerical source index.
A frame carries its SOURCE defect; without source preservation, no
symmetry is asserted. If the numerical source index is faithful, every
source-preserving frame is the identity. This is an exact no-go for obtaining
nontrivial arithmetic cancellation from mere index-preserving relabeling.

A complete prime-factor typing of all n >= 2, including multiplicities, and
a special n=1 source atom require an independent source inventory theorem.
The structure below neither supplies that theorem nor inserts a prime sieve.

Lean compilation, expected-type check, kernel replay, transitive axiom audit:
NOT_RUN. No RH premise or numerical smallness is claimed.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.AutomircronPrimeKernel

open GRWTSK.NumberTheory.Zeta.Riemann.PrimeFiberFiniteTestTransport
open GRWTSK.RiemannHypothesis.CCC

universe u

/-- Prime-indexed *dependent* states; no equality between unrelated fibers. -/
structure AutomircronKernel (Fiber : PrimeIndex → Type u) where
  sourceIndex : (Sigma Fiber) → ℕ
  primeFrame : ∀ p : PrimeIndex, Fiber p ≃ Fiber p

/-- Act only inside the specified prime's own dependent state type. -/
def AutomircronKernel.move {Fiber : PrimeIndex → Type u}
    (A : AutomircronKernel Fiber) (x : Sigma Fiber) : Sigma Fiber :=
  ⟨x.1, A.primeFrame x.1 x.2⟩

/-- The original integer source label survives exactly if THIS condition holds. -/
def AutomircronKernel.SourcePreserving {Fiber : PrimeIndex → Type u}
    (A : AutomircronKernel Fiber) : Prop :=
  ∀ x : Sigma Fiber, A.sourceIndex (A.move x) = A.sourceIndex x

/-- Prime-factor support and complete nontrivial labels must be supplied
by an actual typed prime inventory. n=1 is deliberately outside this
prime-divisibility inventory. Injectivity is not implicit. -/
def AutomircronKernel.CompletePrimeSupport {Fiber : PrimeIndex → Type u}
    (A : AutomircronKernel Fiber) : Prop :=
  (∀ x : Sigma Fiber, x.1.val ∣ A.sourceIndex x) ∧
  (∀ n : ℕ, 2 ≤ n → ∃ x : Sigma Fiber, A.sourceIndex x = n)

/-- The SOURCE causal signed Gram, not an interchangeable surrogate kernel. -/
def AutomircronKernel.signedGram {Fiber : PrimeIndex → Type u}
    (A : AutomircronKernel Fiber) (T : ℝ)
    (x y : Sigma Fiber) : ℝ :=
  moebiusReal (A.sourceIndex x) *
    moebiusReal (A.sourceIndex y) *
      pickupResponseGram T (A.sourceIndex x) (A.sourceIndex y)

/-- Full signed failure of the proposed automorphism to intertwine the source. -/
def AutomircronKernel.gramDefect {Fiber : PrimeIndex → Type u}
    (A : AutomircronKernel Fiber) (T : ℝ)
    (x y : Sigma Fiber) : ℝ :=
  A.signedGram T (A.move x) (A.move y) - A.signedGram T x y

/-- The actual source Gram is the moved Gram minus the FULL signed defect. -/
theorem AutomircronKernel.signedGram_exact_return
    {Fiber : PrimeIndex → Type u} (A : AutomircronKernel Fiber)
    (T : ℝ) (x y : Sigma Fiber) :
    A.signedGram T (A.move x) (A.move y) =
      A.signedGram T x y + A.gramDefect T x y := by
  unfold AutomircronKernel.gramDefect
  ring

/-- When the literal indices are preserved, the original causal kernel,
Möbius signs and both ordered pair directions are also preserved. -/
theorem AutomircronKernel.gramDefect_zero_of_sourcePreserving
    {Fiber : PrimeIndex → Type u} (A : AutomircronKernel Fiber)
    (h : A.SourcePreserving) (T : ℝ) (x y : Sigma Fiber) :
    A.gramDefect T x y = 0 := by
  simp [AutomircronKernel.gramDefect, AutomircronKernel.signedGram,
    h x, h y]

/-- A faithful numerical source has no nonidentity index-preserving frame. -/
theorem AutomircronKernel.move_eq_self_of_sourceInjective
    {Fiber : PrimeIndex → Type u} (A : AutomircronKernel Fiber)
    (h : A.SourcePreserving)
    (hinj : Function.Injective A.sourceIndex) (x : Sigma Fiber) :
    A.move x = x :=
  hinj (h x)

/-- Any genuinely nontrivial source-preserving frame needs at least two
prime-typed states carrying the same actual integer source index. Such
collision by itself supplies no cancellation theorem. -/
theorem AutomircronKernel.nontrivial_sourceFrame_requires_collision
    {Fiber : PrimeIndex → Type u} (A : AutomircronKernel Fiber)
    (h : A.SourcePreserving)
    (hnontrivial : ∃ x : Sigma Fiber, A.move x ≠ x) :
    ¬ Function.Injective A.sourceIndex := by
  intro hinj
  rcases hnontrivial with ⟨x, hx⟩
  exact hx (A.move_eq_self_of_sourceInjective h hinj x)

end GRWTSK.NumberTheory.AutomircronPrimeKernel