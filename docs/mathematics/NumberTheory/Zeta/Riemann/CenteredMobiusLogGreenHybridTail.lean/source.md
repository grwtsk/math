# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenHybridTail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec8ffd6a49ce55533d498642515634401b14da40` · SHA-256 `6ac58308178d2a24a7a03cd2c2f5f76e8a650978516cf7aa6460d7eeed9e1d27`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidueMajorantObstruction
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Principal positive residues. The negative side is symmetric at the level
of the squared majorant. -/
def greenPositivePrincipalResidues (X : ℕ) : Finset ℕ :=
  Finset.Icc 1 (X / 2)

/-- High quotient-class majorant, deliberately excluding q=0. -/
def greenHighQuotientResidueMajorant
    (X Q : ℕ) : ℝ :=
  ∑ r ∈ greenPositivePrincipalResidues X,
    ∑ q ∈ Finset.Icc 1 Q,
      (1 / ((r : ℝ)^2 * ((q * X - r : ℕ) : ℝ)^2) +
       1 / ((r : ℝ)^2 * ((q * X + r : ℕ) : ℝ)^2))

/-- For a principal residue r<=X/2 and q>=1, both |qX±r| are bounded below
by qX/2. -/
theorem principal_residue_denominator_lower
    {X r q : ℕ}
    (hX : 1 ≤ X)
    (hr : r ∈ greenPositivePrincipalResidues X)
    (hq : 1 ≤ q) :
    (q * X - r : ℕ) ≥ q * X / 2 ∧
    q * X + r ≥ q * X := by
  unfold greenPositivePrincipalResidues at hr
  have hrI := Finset.mem_Icc.mp hr
  constructor
  · omega
  · omega

/-- Coarse factorized bound for the finite high-quotient majorant. -/
theorem greenHighQuotientResidueMajorant_le
    {X Q : ℕ} (hX : 1 ≤ X) :
    greenHighQuotientResidueMajorant X Q ≤
      (5 / (X : ℝ)^2) *
        (∑ r ∈ greenPositivePrincipalResidues X, 1 / (r : ℝ)^2) *
        (∑ q ∈ Finset.Icc 1 Q, 1 / (q : ℝ)^2) := by
  unfold greenHighQuotientResidueMajorant
  calc
    _ ≤ ∑ r ∈ greenPositivePrincipalResidues X,
        ∑ q ∈ Finset.Icc 1 Q,
          5 / ((r : ℝ)^2 * (q : ℝ)^2 * (X : ℝ)^2) := by
      apply Finset.sum_le_sum
      intro r hr
      apply Finset.sum_le_sum
      intro q hq
      have hrpos : 1 ≤ r := (Finset.mem_Icc.mp hr).1
      have hqpos : 1 ≤ q := (Finset.mem_Icc.mp hq).1
      have hden := principal_residue_denominator_lower hX hr hqpos
      have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
      have hrr : 0 < (r : ℝ) := by exact_mod_cast hrpos
      have hqr : 0 < (q : ℝ) := by exact_mod_cast hqpos
      have hminus :
          (q * X : ℝ) / 2 ≤ ((q * X - r : ℕ) : ℝ) := by
        exact_mod_cast hden.1
      have hplus :
          (q * X : ℝ) ≤ ((q * X + r : ℕ) : ℝ) := by
        exact_mod_cast hden.2
      have hminuspos : 0 < ((q * X - r : ℕ) : ℝ) := by
        positivity
      have hpluspos : 0 < ((q * X + r : ℕ) : ℝ) := by positivity
      apply add_le_of_le_sub_left
      field_simp
      nlinarith
    _ = (5 / (X : ℝ)^2) *
        (∑ r ∈ greenPositivePrincipalResidues X, 1 / (r : ℝ)^2) *
        (∑ q ∈ Finset.Icc 1 Q, 1 / (q : ℝ)^2) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro r _
      rw [Finset.mul_sum]
      ring

end GRWTSK.RiemannHypothesis
```
