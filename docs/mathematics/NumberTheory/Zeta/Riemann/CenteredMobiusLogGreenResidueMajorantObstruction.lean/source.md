# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidueMajorantObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e14c536f26cf1eefb931c8262b73de7c7416b3f` · SHA-256 `860073f9993e720092fbc8bb817f1ef463cbc41031a0b5a679687e12e1e3fb65`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidualBounds
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Leading squared majorant produced by the current nonalias residue estimate. -/
def greenResidueLeadingSquareMajorant
    (X : ℕ) (r q : ℤ) : ℝ :=
  1 / ((r : ℝ)^2 * (((q * (X : ℤ) + r : ℤ) : ℝ)^2))

/-- The q=0 contribution is exactly 1/r^4 and contains no X-decay. -/
theorem greenResidueLeadingSquareMajorant_zero_class
    (X : ℕ) {r : ℤ} (hr : r ≠ 0) :
    greenResidueLeadingSquareMajorant X r 0 =
      1 / (r : ℝ)^4 := by
  unfold greenResidueLeadingSquareMajorant
  field_simp
  ring

/-- In particular the fixed residue r=1 contributes exactly one to this
coarse leading majorant for every X. -/
theorem greenResidueLeadingSquareMajorant_one_zero
    (X : ℕ) :
    greenResidueLeadingSquareMajorant X 1 0 = 1 := by
  norm_num [greenResidueLeadingSquareMajorant]

/-- Finite principal-residue majorant. This is a bound diagnostic, not the
actual residual energy. -/
def greenPrincipalResidueLeadingMajorant
    (X Q : ℕ) : ℝ :=
  ∑ r ∈ Finset.Icc (1 : ℤ) X,
    ∑ q ∈ Finset.Icc (-(Q : ℤ)) (Q : ℤ),
      greenResidueLeadingSquareMajorant X r q

/-- Whenever residue 1 is included, the current majorant is at least one,
uniformly in X. -/
theorem one_le_greenPrincipalResidueLeadingMajorant
    {X Q : ℕ} (hX : 1 ≤ X) :
    1 ≤ greenPrincipalResidueLeadingMajorant X Q := by
  unfold greenPrincipalResidueLeadingMajorant
  have hrmem : (1 : ℤ) ∈ Finset.Icc 1 X := by simp [hX]
  have hqmem : (0 : ℤ) ∈ Finset.Icc (-(Q : ℤ)) (Q : ℤ) := by simp
  have hnonneg : ∀ r ∈ Finset.Icc (1 : ℤ) X,
      ∀ q ∈ Finset.Icc (-(Q : ℤ)) (Q : ℤ),
      0 ≤ greenResidueLeadingSquareMajorant X r q := by
    intro r hr q hq
    unfold greenResidueLeadingSquareMajorant
    positivity
  have hsingle :
      greenResidueLeadingSquareMajorant X 1 0 ≤
        greenPrincipalResidueLeadingMajorant X Q := by
    apply Finset.single_le_sum
    · intro r hr
      apply Finset.sum_nonneg
      intro q hq
      exact hnonneg r hr q hq
    · exact hrmem
    · apply Finset.single_le_sum
      · intro q hq
        exact hnonneg 1 hrmem q hq
      · exact hqmem
  rw [greenResidueLeadingSquareMajorant_one_zero] at hsingle
  exact hsingle

/-- Epistemic conclusion: this particular residue-majorant route cannot by
itself establish an X->infinity vanishing bound, because its finite heads are
already bounded below by one. -/
theorem greenPrincipalResidueLeadingMajorant_not_uniformly_vanishing :
    ¬ (∀ ε : ℝ, 0 < ε → ∃ X0 : ℕ, ∀ X ≥ X0,
        greenPrincipalResidueLeadingMajorant X X < ε) := by
  intro h
  obtain ⟨X0, hX0⟩ := h (1 / 2) (by norm_num)
  let X := max X0 1
  have hsmall := hX0 X (le_max_left _ _)
  have hlarge : 1 ≤ greenPrincipalResidueLeadingMajorant X X :=
    one_le_greenPrincipalResidueLeadingMajorant (le_max_right _ _)
  linarith

end GRWTSK.RiemannHypothesis
```
