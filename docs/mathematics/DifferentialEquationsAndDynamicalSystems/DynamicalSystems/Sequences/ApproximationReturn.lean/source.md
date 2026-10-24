# Complete source: GRWTSK.DynamicalSystems.Sequences.ApproximationReturn

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `728e4258f184eef7e2279e09e3c56759fa9e8888` · SHA-256 `cc6d98e815cd1a67252b23d13f35daf443a33ee8ac9c0e4ceac86254ed2c459e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Loss-bearing return contracts for the almost Mathieu route

User-supplied sequence-role separation, 2026-10-10. Polynomial bounds on an
operator readout return to a target only with an all-real identification
inequality and a polynomial bound on its complete correction budget. This
is a parametric interface: it has no instance identifying the actual CCC
ordered Möbius pickup, and the exact P04 in the source registry stays open.

Proposition 2.9 of arXiv 2110.07974v2 keeps frequency-dependent interval
shrinkage separate from the finite-size mass loss 4/L. The elementary
composition below assumes the actual finite/infinite and finite-comparison
inequalities; it does not formalize the paper's spectral theorem.
Human mathematical direction: grwtsk contributors. Formalization: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.BranchSequenceReturn

open BranchSequenceRealization

/-- The exact existential growth class, evaluated on every nonnegative real T.
To mean P04, X must be the source-bound complete ordered CCC cross energy. -/
def PolynomialBound (X : ℝ → ℝ) : Prop :=
  ∃ C r : ℝ, 0 ≤ C ∧ 0 ≤ r ∧ ∀ T : ℝ, 0 ≤ T → X T ≤ C * (1 + T) ^ r

/-- An arithmetic identification must retain the full target and every correction. -/
def IdentifiesWithLoss (target observable correction : ℝ → ℝ) : Prop :=
  ∀ T : ℝ, 0 ≤ T → target T ≤ observable T + correction T

/-- A polynomial correction budget and exact all-real identification yield a
polynomial target bound, with both constants and exponents charged. -/
theorem polynomial_return {target observable correction : ℝ → ℝ}
    (hid : IdentifiesWithLoss target observable correction)
    (hobs : PolynomialBound observable) (hloss : PolynomialBound correction) :
    PolynomialBound target := by
  obtain ⟨C, r, hC, hr, ho⟩ := hobs
  obtain ⟨D, s, hD, hs, hl⟩ := hloss
  refine ⟨C + D, max r s, add_nonneg hC hD, hr.trans (le_max_left r s), ?_⟩
  intro T hT
  have hbase : 1 ≤ 1 + T := by linarith
  have hro := Real.rpow_le_rpow_of_exponent_le hbase (le_max_left r s)
  have hso := Real.rpow_le_rpow_of_exponent_le hbase (le_max_right r s)
  have hc := mul_le_mul_of_nonneg_left hro hC
  have hd := mul_le_mul_of_nonneg_left hso hD
  have ht := hid T hT
  have h1 := ho T hT
  have h2 := hl T hT
  calc
    target T ≤ C * (1 + T) ^ r + D * (1 + T) ^ s := by linarith
    _ ≤ C * (1 + T) ^ max r s + D * (1 + T) ^ max r s := add_le_add hc hd
    _ = (C + D) * (1 + T) ^ max r s := by ring

/-- The AM route contains its independent frequency, growth, identification and
correction obligations. It is not a necessary route for every possible P04 proof. -/
def ArithmeticRoute (a : ℕ → ℕ) (alpha : ℝ) (growth : ℝ → Prop)
    (target observable correction : ℝ → ℝ) : Prop :=
  FrequencyRealization a alpha ∧ growth alpha ∧
    IdentifiesWithLoss target observable correction ∧ PolynomialBound observable ∧
      PolynomialBound correction

/-- A fully supplied route returns the target bound; no frequency or scheduling
claim discharges any missing arithmetic premise. -/
theorem arithmetic_route_return {a : ℕ → ℕ} {alpha : ℝ} {growth : ℝ → Prop}
    {target observable correction : ℝ → ℝ}
    (h : ArithmeticRoute a alpha growth target observable correction) :
    PolynomialBound target := polynomial_return h.2.2.1 h.2.2.2.1 h.2.2.2.2

/-- The frequency-dependent quantity is an interval displacement, not an
additive error in the counting measure. -/
def intervalLoss (lip alpha alpha' L : ℝ) : ℝ :=
  2 * Real.pi * lip * |alpha' - alpha| * L

/-- Each finite-to-infinite counting comparison costs 2/L. -/
def finiteSizeLoss (L : ℝ) : ℝ := 4 / L

/-- Both independent approximation obligations are retained in the certificate. -/
def ApproximationCertificate (lip alpha alpha' L kappa : ℝ) : Prop :=
  0 ≤ lip ∧ 1 ≤ L ∧ intervalLoss lip alpha alpha' L ≤ kappa

/-- Positive window length leaves a genuine finite-size loss even at equal frequencies. -/
theorem finiteSizeLoss_pos {L : ℝ} (hL : 0 < L) : 0 < finiteSizeLoss L := by
  exact div_pos (by norm_num) hL

/-- Matching the frequencies removes interval displacement, not finite-size loss. -/
theorem equal_frequency_intervalLoss (lip alpha L : ℝ) :
    intervalLoss lip alpha alpha L = 0 := by
  simp [intervalLoss]

/-- The interval displacement is nonnegative under its stated hypotheses. -/
theorem intervalLoss_nonneg {lip alpha alpha' L : ℝ} (hlip : 0 ≤ lip) (hL : 0 ≤ L) :
    0 ≤ intervalLoss lip alpha alpha' L := by
  unfold intervalLoss
  positivity

/-- The two 2/L errors accumulate as 4/L while the frequency loss stays in the
interval arguments. Finite spectral comparison is an explicit hypothesis. -/
theorem approximation_return
    (source target finiteSource finiteTarget : ℝ → ℝ → ℝ)
    {lip alpha alpha' L kappa left right : ℝ}
    (hcert : ApproximationCertificate lip alpha alpha' L kappa)
    (hsource : source (left + kappa) (right - kappa) ≤
      finiteSource (left + kappa) (right - kappa) + 2 / L)
    (hcompare : ∀ displacement : ℝ, intervalLoss lip alpha alpha' L ≤ displacement →
      finiteSource (left + displacement) (right - displacement) ≤ finiteTarget left right)
    (htarget : finiteTarget left right ≤ target left right + 2 / L) :
    source (left + kappa) (right - kappa) - finiteSizeLoss L ≤ target left right := by
  have hc := hcompare kappa hcert.2.2
  unfold finiteSizeLoss
  have he : 4 / L = 2 / L + 2 / L := by ring
  rw [he]
  linarith

end GRWTSK.RiemannHypothesis.BranchSequenceReturn
```
