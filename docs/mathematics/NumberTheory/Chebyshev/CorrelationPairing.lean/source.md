# Complete source: GRWTSK.NumberTheory.Chebyshev.CorrelationPairing

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `670849456af87f0b37ae123c6231714eb0f4d411` · SHA-256 `5f46edc1cf75ca706b35f23a055fd0fb879de551d315452c9828968f1a72a55c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.IntervalIntegral.Reflection
import Mathlib.Analysis.SpecialFunctions.Gamma.Digamma
import Mathlib.MeasureTheory.Function.LocallyIntegrable
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic.Positivity

/-!
# Source-bound signed arithmetic pairing: realization interface

The formulas below transcribe RH-0011 §2, equations (2)--(3), and RH-0012
§2, equations (1)--(2). They use the original zero-extended bump, the prime-power
Chebyshev error, the correlation, and the separate prime-two boundary term.

`DilationRealization` is an explicit collection of still-unproved analytic
obligations. No inhabitant is constructed. In particular, the weak second
derivative is specified distributionally; `deriv (deriv sourceBump)` is never
substituted for it. Existence, uniqueness up to the relevant almost-everywhere
identifications, normalization, and the asserted regularity of this family
remain obligations. Defining the interface does not establish those claims.

The conditional pairing identities are genuine instances of generic Lebesgue
integral identities, with integrability premises stated. Neither the manuscript
identity `Q = M + 2 I` nor the RH-0010 reduction to Mathlib's RH is proved here.
No bound, bridge to RH, finite-range certificate, or publication is admitted.
-/

namespace GRWTSK.RiemannHypothesis.SourcePairing

open MeasureTheory
open scoped BigOperators ContDiff
open GRWTSK.MathematicalTooling.Reflection

noncomputable section

/-- The source's zero-extended polynomial bump, with closed support endpoints. -/
def sourceBump (x : ℝ) : ℝ :=
  if x ∈ Set.Icc (-1 : ℝ) 1 then (1 - x ^ 2) ^ 4 else 0

/-- For the admitted radius domain `A ≥ 1`, `1 / √A` is exactly `A^(-1/2)`. -/
def scaledBump (A x : ℝ) : ℝ := sourceBump (x / A) / Real.sqrt A

/-- The exact rational normalization polynomial specified in both manuscripts. -/
def sourceNormalization (A : ℝ) : ℝ :=
  (65536 / 109395 : ℝ) / 16 +
    (131072 / 45045 : ℝ) / (2 * A ^ 2) + (196608 / 5005 : ℝ) / A ^ 4

theorem source_normalization_pos (A : ℝ) (hA : 1 ≤ A) :
    0 < sourceNormalization A := by
  have : 0 < A := lt_of_lt_of_le (by norm_num) hA
  unfold sourceNormalization
  positivity

/-- Exact weak second derivative in one real dimension. Both sides are locally
integrable, and the distributional identity is tested against every smooth,
compactly supported real test function. Product integrability is explicit so
the total-integral convention cannot manufacture an identity from divergence. -/
def IsWeakSecondDerivative (f g : ℝ → ℝ) : Prop :=
  LocallyIntegrable f volume ∧ LocallyIntegrable g volume ∧
    ∀ η : ℝ → ℝ, ContDiff ℝ ∞ η → HasCompactSupport η →
      Integrable (fun x ↦ g x * η x) volume ∧
      Integrable (fun x ↦ f x * deriv (deriv η) x) volume ∧
      (∫ x, g x * η x) = ∫ x, f x * deriv (deriv η) x

/-- The source's pole-annihilated function for a proposed weak derivative `g`. -/
def dilationTest (g : ℝ → ℝ → ℝ) (A x : ℝ) : ℝ :=
  g A x - scaledBump A x / 4

/-- Normalization uses the manuscript's fixed `Z_A`, not an independently
chosen scale. Agreement with the squared norm is an explicit realization field. -/
def normalizedTest (g : ℝ → ℝ → ℝ) (A x : ℝ) : ℝ :=
  dilationTest g A x / Real.sqrt (sourceNormalization A)

/-- The source convention `τ_t v(x) = v(x-t)` and real `L²` pairing. -/
def sourceCorrelation (g : ℝ → ℝ → ℝ) (A t : ℝ) : ℝ :=
  ∫ x, normalizedTest g A x * normalizedTest g A (x - t)

/-- The complete prime-power count with closed-right convention `2 ≤ n ≤ x`.
Mathlib's von Mangoldt function assigns `log p` to every power `p^k`. -/
def chebyshevPrimePower (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n

/-- The signed centered error; there is no pointwise absolute envelope. -/
def chebyshevError (x : ℝ) : ℝ := chebyshevPrimePower x - x

/-- The lower integration endpoint, which includes the prime-two jump. -/
def lowerEndpoint : ℝ := Real.log 2

theorem source_interval_order (A : ℝ) (hA : 1 ≤ A) : lowerEndpoint ≤ 2 * A := by
  have hlog := Real.log_le_sub_one_of_pos (show (0 : ℝ) < 2 by norm_num)
  dsimp [lowerEndpoint]
  linarith

/-- The closed-right convention includes the prime-two jump. The manuscript's
left limit `E(2⁻) = -2` is a different quantity and is not substituted here. -/
theorem chebyshev_error_at_two : chebyshevError 2 = Real.log 2 - 2 := by
  simp [chebyshevError, chebyshevPrimePower,
    ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]

/-- The exact derivative-weight from RH-0011 equation (3). Correlation
differentiability, unlike the bump's weak derivative, is a realization field. -/
def sourceWeight (g : ℝ → ℝ → ℝ) (A t : ℝ) : ℝ :=
  Real.exp (-t / 2) *
    (deriv (sourceCorrelation g A) t - sourceCorrelation g A t / 2)

/-- The signed prime-power error expressed in logarithmic coordinates. -/
def errorProfile (t : ℝ) : ℝ := chebyshevError (Real.exp t)

/-- The actual signed arithmetic pairing, conditional on realization. -/
def signedPairing (g : ℝ → ℝ → ℝ) (A : ℝ) : ℝ :=
  ∫ t in lowerEndpoint..2 * A, errorProfile t * sourceWeight g A t

/-- The source Fourier convention has the positive imaginary exponential. -/
def sourceFourier (f : ℝ → ℝ) (ξ : ℝ) : ℂ :=
  ∫ x : ℝ, (f x : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))

/-- The archimedean multiplier uses the actual logarithmic derivative of Gamma. -/
def archimedeanMultiplier (ξ : ℝ) : ℝ :=
  (Complex.digamma (1 / 4 + Complex.I * (ξ : ℂ) / 2)).re - Real.log Real.pi

/-- The exact Fourier-side integrand before Plancherel normalization. -/
def archimedeanIntegrand (g : ℝ → ℝ → ℝ) (A ξ : ℝ) : ℝ :=
  archimedeanMultiplier ξ * Complex.normSq (sourceFourier (normalizedTest g A) ξ)

/-- The archimedean contribution with the source's `1 / (2π)` normalization. -/
def archimedeanValue (g : ℝ → ℝ → ℝ) (A : ℝ) : ℝ :=
  (∫ ξ, archimedeanIntegrand g A ξ) / (2 * Real.pi)

/-- This atomic endpoint correction is kept outside the Lebesgue integral. -/
def primeTwoBoundary (g : ℝ → ℝ → ℝ) (A : ℝ) : ℝ :=
  -2 * Real.sqrt 2 * sourceCorrelation g A lowerEndpoint

/-- Dropping the separate prime-two term would require an actual vanishing
proof for the endpoint correlation; the nonzero numerical coefficient cannot
remove that obligation. -/
theorem prime_two_boundary_eq_zero_iff (g : ℝ → ℝ → ℝ) (A : ℝ) :
    primeTwoBoundary g A = 0 ↔ sourceCorrelation g A lowerEndpoint = 0 := by
  have hsqrt : Real.sqrt (2 : ℝ) ≠ 0 := ne_of_gt (Real.sqrt_pos.2 (by norm_num))
  simp [primeTwoBoundary, mul_eq_zero, hsqrt]

/-- The independently defined correction `M(A)`, including its endpoint term. -/
def analyticCorrection (g : ℝ → ℝ → ℝ) (A : ℝ) : ℝ :=
  archimedeanValue g A +
    2 * (∫ t in 0..2 * A, Real.exp (-t / 2) * sourceCorrelation g A t) +
    2 * (∫ t in 0..lowerEndpoint, Real.exp (t / 2) * sourceCorrelation g A t) +
    primeTwoBoundary g A

/-- The strict prime-power cutoff in the manuscript's `Q(A)` formula. -/
def primePowerContribution (g : ℝ → ℝ → ℝ) (A : ℝ) : ℝ :=
  ∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * A)),
    ArithmeticFunction.vonMangoldt n / Real.sqrt n * sourceCorrelation g A (Real.log n)

/-- The signed arithmetic form on the pole-cancelled family, conditional on realization. -/
def sourceQuadraticValue (g : ℝ → ℝ → ℝ) (A : ℝ) : ℝ :=
  archimedeanValue g A - 2 * primePowerContribution g A

/-- Explicit source realization obligations. This is a proof-bearing interface,
not a construction or a claim that an instance currently exists. Fields retain
weak differentiation, zero extension, normalization, both pole moments,
correlation regularity, and the required integral well-formedness. -/
structure DilationRealization where
  /-- A proposed weak second derivative at each radius, constrained by the following proofs. -/
  secondDerivative : ℝ → ℝ → ℝ
  weak_second_derivative : ∀ A, 1 ≤ A →
    IsWeakSecondDerivative (scaledBump A) (secondDerivative A)
  zero_extension : ∀ A, 1 ≤ A → ∀ x, x ∉ Set.Icc (-A) A →
    dilationTest secondDerivative A x = 0
  test_integrable : ∀ A, 1 ≤ A → Integrable (dilationTest secondDerivative A) volume
  test_square_integrable : ∀ A, 1 ≤ A →
    Integrable (fun x ↦ dilationTest secondDerivative A x ^ 2) volume
  normalization : ∀ A, 1 ≤ A →
    (∫ x, dilationTest secondDerivative A x ^ 2) = sourceNormalization A
  positive_pole_integrable : ∀ A, 1 ≤ A →
    Integrable (fun x ↦ normalizedTest secondDerivative A x * Real.exp (x / 2)) volume
  negative_pole_integrable : ∀ A, 1 ≤ A →
    Integrable (fun x ↦ normalizedTest secondDerivative A x * Real.exp (-x / 2)) volume
  positive_pole_zero : ∀ A, 1 ≤ A →
    (∫ x, normalizedTest secondDerivative A x * Real.exp (x / 2)) = 0
  negative_pole_zero : ∀ A, 1 ≤ A →
    (∫ x, normalizedTest secondDerivative A x * Real.exp (-x / 2)) = 0
  correlation_product_integrable : ∀ A, 1 ≤ A → ∀ t,
    Integrable (fun x ↦ normalizedTest secondDerivative A x *
      normalizedTest secondDerivative A (x - t)) volume
  correlation_regular : ∀ A, 1 ≤ A → ContDiff ℝ 1 (sourceCorrelation secondDerivative A)
  archimedean_integrable : ∀ A, 1 ≤ A →
    Integrable (archimedeanIntegrand secondDerivative A) volume
  signed_pairing_integrable : ∀ A, 1 ≤ A →
    IntervalIntegrable (fun t ↦ errorProfile t * sourceWeight secondDerivative A t)
      volume lowerEndpoint (2 * A)

/-- Existence itself is an open obligation; no realization is selected by
`Classical.choose`, and no witness is postulated as an axiom. -/
def SourceRealizationExists : Prop := Nonempty DilationRealization

/-- Uniqueness of the weak derivative is a separate distributional obligation,
expressed in the almost-everywhere sense appropriate for weak derivatives. -/
def SourceRealizationUnique : Prop :=
  ∀ r₁ r₂ : DilationRealization, ∀ A, 1 ≤ A →
    r₁.secondDerivative A =ᵐ[volume] r₂.secondDerivative A

/-- The all-radii signed lower-bound obligation actually requested by RH-0012. -/
def UniformSignedLowerBound (r : DilationRealization) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∀ A, 1 ≤ A → -C ≤ signedPairing r.secondDerivative A

/-- The eventual-tail variant allowed by Issue #5. It does not itself contain a
finite-prefix theorem, nor any implication to the RH target. -/
def UniformSignedTailLowerBound (r : DilationRealization) : Prop :=
  ∃ C A₀ : ℝ, 0 ≤ C ∧ 1 ≤ A₀ ∧
    ∀ A, A₀ ≤ A → -C ≤ signedPairing r.secondDerivative A

theorem uniform_lower_bound_implies_tail (r : DilationRealization)
    (h : UniformSignedLowerBound r) : UniformSignedTailLowerBound r := by
  obtain ⟨C, hC, h⟩ := h
  exact ⟨C, 1, hC, le_rfl, h⟩

/-- RH-0011's manuscript identity is recorded as an unproved proposition over
the exact definitions. Its Stieltjes and pole-cancellation proof is not imported. -/
def ArithmeticRepresentation (r : DilationRealization) : Prop :=
  ∀ A, 1 ≤ A → sourceQuadraticValue r.secondDerivative A =
    analyticCorrection r.secondDerivative A + 2 * signedPairing r.secondDerivative A

/-- Reflection uses the source endpoints `log 2` and `2A` without a surrogate. -/
def sourceReflection (A t : ℝ) : ℝ := intervalReflection lowerEndpoint (2 * A) t

theorem source_reflection_involutive (A : ℝ) : Function.Involutive (sourceReflection A) :=
  interval_reflection_involutive lowerEndpoint (2 * A)

theorem source_reflection_preserves_interval (A t : ℝ) :
    sourceReflection A t ∈ Set.Icc lowerEndpoint (2 * A) ↔
      t ∈ Set.Icc lowerEndpoint (2 * A) :=
  interval_reflection_mem_Icc_iff lowerEndpoint (2 * A) t

/-- Polarization of the source-defined signed pairing, conditional on a genuine
realization and the exact two quadratic-sector integrability hypotheses. -/
theorem signed_pairing_polarization (r : DilationRealization) (A : Set.Ici (1 : ℝ))
    (hplus : IntervalIntegrable
      (fun t ↦ (errorProfile t + sourceWeight r.secondDerivative A t) ^ 2)
      volume lowerEndpoint (2 * A))
    (hminus : IntervalIntegrable
      (fun t ↦ (errorProfile t - sourceWeight r.secondDerivative A t) ^ 2)
      volume lowerEndpoint (2 * A)) :
    signedPairing r.secondDerivative A =
      ((∫ t in lowerEndpoint..2 * A,
          (errorProfile t + sourceWeight r.secondDerivative A t) ^ 2) -
        (∫ t in lowerEndpoint..2 * A,
          (errorProfile t - sourceWeight r.secondDerivative A t) ^ 2)) / 4 :=
  integral_product_eq_signed_squares lowerEndpoint (2 * A)
    errorProfile (sourceWeight r.secondDerivative A) hplus hminus

/-- Exact source-domain even/odd sectors, with four explicit integrability
premises. No parity of the arithmetic weight or sign of either sector follows. -/
theorem signed_pairing_reflection_decomposition (r : DilationRealization) (A : Set.Ici (1 : ℝ))
    (hpp : IntervalIntegrable (fun t ↦
      evenPart lowerEndpoint (2 * A) errorProfile t *
      evenPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
      volume lowerEndpoint (2 * A))
    (hpm : IntervalIntegrable (fun t ↦
      evenPart lowerEndpoint (2 * A) errorProfile t *
      oddPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
      volume lowerEndpoint (2 * A))
    (hmp : IntervalIntegrable (fun t ↦
      oddPart lowerEndpoint (2 * A) errorProfile t *
      evenPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
      volume lowerEndpoint (2 * A))
    (hmm : IntervalIntegrable (fun t ↦
      oddPart lowerEndpoint (2 * A) errorProfile t *
      oddPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t)
      volume lowerEndpoint (2 * A)) :
    signedPairing r.secondDerivative A =
      (∫ t in lowerEndpoint..2 * A,
        evenPart lowerEndpoint (2 * A) errorProfile t *
        evenPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t) +
      (∫ t in lowerEndpoint..2 * A,
        oddPart lowerEndpoint (2 * A) errorProfile t *
        oddPart lowerEndpoint (2 * A) (sourceWeight r.secondDerivative A) t) :=
  integral_product_eq_even_add_odd lowerEndpoint (2 * A)
    errorProfile (sourceWeight r.secondDerivative A) hpp hpm hmp hmm

end

end GRWTSK.RiemannHypothesis.SourcePairing
```
