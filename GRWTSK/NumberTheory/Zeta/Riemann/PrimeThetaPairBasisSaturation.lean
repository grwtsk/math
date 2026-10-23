/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaSeparableKernelFactorization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Pair-basis saturation of finite prime kernels

Finite separability is not, by itself, a structural restriction.  Every real
kernel on a finite source set has a canonical delta-pair expansion with one
factor for each ordered source pair.

This module proves exact reconstruction and exact preservation of the finite
`l1` mass.  Consequently a separable display supplies no compression, source
identity, uniform estimate, or descended residual unless additional rank,
normalization, coefficient, or source constraints are proved.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PAIR_BASIS_SATURATION_DEFINED /
FINITE_SEPARABILITY_ALONE_NO_GAIN / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

section FinitePairBasis

variable {α : Type*} [DecidableEq α]

/-- Left delta feature for the canonical ordered-pair basis. -/
def pairBasisLeftDelta (i p : α) : ℝ :=
  if i = p then 1 else 0

/-- Right delta feature for the canonical ordered-pair basis. -/
def pairBasisRightDelta (j q : α) : ℝ :=
  if j = q then 1 else 0

/-- Canonical separable expansion of an arbitrary finite kernel. -/
def pairBasisExpansion
    (s : Finset α) (kernel : α → α → ℝ)
    (p q : α) : ℝ :=
  ∑ i ∈ s, ∑ j ∈ s,
    kernel i j * pairBasisLeftDelta i p * pairBasisRightDelta j q

/-- On the selected finite set, the delta-pair expansion reconstructs the
kernel exactly. -/
theorem pairBasisExpansion_eq
    (s : Finset α) (kernel : α → α → ℝ)
    {p q : α} (hp : p ∈ s) (hq : q ∈ s) :
    pairBasisExpansion s kernel p q = kernel p q := by
  unfold pairBasisExpansion
  calc
    (∑ i ∈ s, ∑ j ∈ s,
        kernel i j * pairBasisLeftDelta i p *
          pairBasisRightDelta j q)
        = ∑ i ∈ s, if i = p then kernel p q else 0 := by
          apply Finset.sum_congr rfl
          intro i hi
          by_cases hip : i = p
          · subst i
            simp [pairBasisLeftDelta, pairBasisRightDelta, hq]
          · simp [pairBasisLeftDelta, pairBasisRightDelta, hip]
    _ = kernel p q := by
      simp [hp]

/-- Absolute contribution of the canonical pair basis at one target pair. -/
def pairBasisAbsoluteExpansionAt
    (s : Finset α) (kernel : α → α → ℝ)
    (p q : α) : ℝ :=
  ∑ i ∈ s, ∑ j ∈ s,
    |kernel i j * pairBasisLeftDelta i p * pairBasisRightDelta j q|

/-- The absolute pair-basis contribution at `(p,q)` is exactly the original
absolute kernel coefficient. -/
theorem pairBasisAbsoluteExpansionAt_eq
    (s : Finset α) (kernel : α → α → ℝ)
    {p q : α} (hp : p ∈ s) (hq : q ∈ s) :
    pairBasisAbsoluteExpansionAt s kernel p q = |kernel p q| := by
  unfold pairBasisAbsoluteExpansionAt
  calc
    (∑ i ∈ s, ∑ j ∈ s,
        |kernel i j * pairBasisLeftDelta i p *
          pairBasisRightDelta j q|)
        = ∑ i ∈ s, if i = p then |kernel p q| else 0 := by
          apply Finset.sum_congr rfl
          intro i hi
          by_cases hip : i = p
          · subst i
            simp [pairBasisLeftDelta, pairBasisRightDelta, hq]
          · simp [pairBasisLeftDelta, pairBasisRightDelta, hip]
    _ = |kernel p q| := by
      simp [hp]

/-- Complete absolute mass of the canonical pair-basis expansion. -/
def pairBasisAbsoluteMass
    (s : Finset α) (kernel : α → α → ℝ) : ℝ :=
  ∑ p ∈ s, ∑ q ∈ s,
    pairBasisAbsoluteExpansionAt s kernel p q

/-- Original finite `l1` mass of a kernel. -/
def finiteKernelL1Mass
    (s : Finset α) (kernel : α → α → ℝ) : ℝ :=
  ∑ p ∈ s, ∑ q ∈ s, |kernel p q|

/-- Pair-basis separation preserves the finite `l1` mass exactly; it does not
manufacture an improved absolute estimate. -/
theorem pairBasisAbsoluteMass_eq_finiteKernelL1Mass
    (s : Finset α) (kernel : α → α → ℝ) :
    pairBasisAbsoluteMass s kernel = finiteKernelL1Mass s kernel := by
  unfold pairBasisAbsoluteMass finiteKernelL1Mass
  apply Finset.sum_congr rfl
  intro p hp
  apply Finset.sum_congr rfl
  intro q hq
  exact pairBasisAbsoluteExpansionAt_eq s kernel hp hq

/-- Ordered source pairs form the canonical factor index. -/
def pairBasisFactorIndex (s : Finset α) : Finset (α × α) :=
  s.product s

/-- The canonical universal expansion uses exactly `|s|^2` ordered factors. -/
@[simp]
theorem pairBasisFactorIndex_card (s : Finset α) :
    (pairBasisFactorIndex s).card = s.card * s.card := by
  simp [pairBasisFactorIndex]

end FinitePairBasis

/-- Pair-basis expansion of the actual signed kernel at one target point. -/
def primeKernelPairBasisExpansion
    {X : ℕ} (stage : PrimeThetaQuadraticKernelStage X)
    (v : ℝ) (p q : ℕ) : ℝ :=
  pairBasisExpansion (thetaPrimeWindow X) (stage.kernel v) p q

/-- Every raw finite prime kernel is separable on its actual source window. -/
theorem primeKernelPairBasisExpansion_eq
    {X : ℕ} (stage : PrimeThetaQuadraticKernelStage X)
    (v : ℝ) {p q : ℕ}
    (hp : p ∈ thetaPrimeWindow X)
    (hq : q ∈ thetaPrimeWindow X) :
    primeKernelPairBasisExpansion stage v p q = stage.kernel v p q :=
  pairBasisExpansion_eq (thetaPrimeWindow X) (stage.kernel v) hp hq

/-- Complete absolute mass of the canonical prime pair-basis expansion. -/
def primeKernelPairBasisAbsoluteMass
    {X : ℕ} (stage : PrimeThetaQuadraticKernelStage X)
    (v : ℝ) : ℝ :=
  pairBasisAbsoluteMass (thetaPrimeWindow X) (stage.kernel v)

/-- The universal prime pair-basis expansion has exactly the original kernel
mass, so finite separability alone gives no analytic saving. -/
theorem primeKernelPairBasisAbsoluteMass_eq_kernelMass
    {X : ℕ} (stage : PrimeThetaQuadraticKernelStage X)
    (v : ℝ) :
    primeKernelPairBasisAbsoluteMass stage v = stage.kernelMass v := by
  rw [primeKernelPairBasisAbsoluteMass,
    pairBasisAbsoluteMass_eq_finiteKernelL1Mass]
  rfl

/-- The universal pair-basis factor count is the square of the prime-window
cardinality. -/
theorem primePairBasisFactorIndex_card (X : ℕ) :
    (pairBasisFactorIndex (thetaPrimeWindow X)).card =
      (thetaPrimeWindow X).card ^ 2 := by
  rw [pairBasisFactorIndex_card, pow_two]

end GRWTSK.RiemannHypothesis
