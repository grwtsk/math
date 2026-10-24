# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightSignedSourceCouplingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a43cf6a47d19f8f3b7be421e93e87a654f2630fa` · SHA-256 `09355c603c796dfd1629432772c416e90062e5845de0b81a94c875f504e1ebdd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightSignedSourceCoupling
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightSignedSourceCouplingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Concrete restatement of the pointwise signed-source transport on a dyadic
stage. -/
theorem concrete_signed_source_to_bertrand_ratio
    (rule : PinnedPrimeWeightSignedSourceRule)
    {j : ℕ} {C v E : ℝ}
    (hC : 0 ≤ C)
    (hv : v ∈ pinnedPrimeWeightNextOctave j)
    (hresponse :
      |rule.response j v| ≤
        C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2)
    (hresidual :
      |rule.signedResidual j v| + 1 ≤ E) :
    pinnedPrimeWeightBertrandRatioRequirement
      (dyadicScale j) C v E :=
  rule.pointwise_to_bertrandRatioRequirement
    hC hv hresponse hresidual

/-- Hostile exact rule with zero response and the complete theta error retained
in the signed residual. -/
def zeroResponseFullResidualRule :
    PinnedPrimeWeightSignedSourceRule where
  sourceIdentity := "hostile/zero-response-full-residual"
  normalization := "response=0; residual=thetaError"
  invalidationKey := "hostile-fixture-only"
  response := fun _ _ => 0
  signedResidual := fun _ v => thetaError v
  exactIdentity := by
    intro j v hv
    simp

@[simp]
theorem zeroResponseFullResidualRule_response
    (j : ℕ) (v : ℝ) :
    zeroResponseFullResidualRule.response j v = 0 :=
  rfl

@[simp]
theorem zeroResponseFullResidualRule_residual
    (j : ℕ) (v : ℝ) :
    zeroResponseFullResidualRule.signedResidual j v =
      thetaError v :=
  rfl

/-- The zero-response fixture satisfies the exact identity but cannot fit a
strict residual allowance below the complete target. -/
theorem zeroResponseFullResidualRule_rejects_strict_allowance
    {j : ℕ} {v E : ℝ}
    (hE : E < |thetaError v| + 1) :
    ¬ (|zeroResponseFullResidualRule.signedResidual j v| + 1 ≤ E) := by
  simpa [zeroResponseFullResidualRule] using hE.not_le

/-- Deliberately target-fitted exact rule.  It reads the target theta error into
the response and is therefore not an independent arithmetic construction. -/
def targetFittedZeroResidualRule :
    PinnedPrimeWeightSignedSourceRule where
  sourceIdentity := "hostile/target-fitted-theta-error"
  normalization := "response=X*thetaError; residual=0"
  invalidationKey := "hostile-fixture-only"
  response := fun j v =>
    (dyadicScale j : ℝ) * thetaError v
  signedResidual := fun _ _ => 0
  exactIdentity := by
    intro j v hv
    have hX : (dyadicScale j : ℝ) ≠ 0 := by
      exact_mod_cast Nat.ne_of_gt (dyadicScale_pos j)
    field_simp [hX]

@[simp]
theorem targetFittedZeroResidualRule_response
    (j : ℕ) (v : ℝ) :
    targetFittedZeroResidualRule.response j v =
      (dyadicScale j : ℝ) * thetaError v :=
  rfl

@[simp]
theorem targetFittedZeroResidualRule_residual
    (j : ℕ) (v : ℝ) :
    targetFittedZeroResidualRule.signedResidual j v = 0 :=
  rfl

/-- The target-fitted rule has the exact decomposition, but this theorem says
nothing about source independence or the quadratic response bound. -/
theorem targetFittedZeroResidualRule_exact_identity
    (j : ℕ) {v : ℝ}
    (hv : v ∈ pinnedPrimeWeightNextOctave j) :
    thetaError v =
      targetFittedZeroResidualRule.response j v /
          (dyadicScale j : ℝ) +
        targetFittedZeroResidualRule.signedResidual j v :=
  targetFittedZeroResidualRule.exactIdentity j v hv

/-- Exact obligations still required from an actual arithmetic source. -/
def requiredSignedSourceCouplingObligations : List String :=
  ["construct one immutable explicit-formula, detector, safe-shift, or equivalent signed source rule",
   "prove its exact next-octave identity with all endpoint and normalization channels",
   "prove a scale-uniform quadratic response-capacity bound at threshold 7/8",
   "prove the complete signed residual already has the three-quarters exponent",
   "repeat the independent response and residual estimates at threshold 3/4",
   "retain prime powers, pole, gamma, trivial-zero, nontrivial-zero, tail, and endpoint ledgers when applicable"]

/-- Explicit nonimplication and hostile-fixture boundary. -/
def prohibitedPromotions : List String :=
  ["exact signed decomposition -> quadratic response-capacity bound",
   "exact signed decomposition -> descended residual decay",
   "zero response with full residual -> useful contraction",
   "target-fitted response -> source-faithful arithmetic supplier",
   "source metadata strings -> proof of the exact identity",
   "ratio certificate -> signed source identity",
   "clause arity or MAX-SAT hardness -> arithmetic coupling",
   "conditional signed-source endpoint -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightSignedSourceCouplingControls
```
