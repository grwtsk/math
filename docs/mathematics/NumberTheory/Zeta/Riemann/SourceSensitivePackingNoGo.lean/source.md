# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.SourceSensitivePackingNoGo

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ede2f22d91b82774ab7cba993819bcd6cc62c74f` · SHA-256 `d93ac014ec0fad0839a1be0f73e0550f7b9c182a99d7364c36dadc95c5abb786`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DirichletDampedPrimePowerPacking
import GRWTSK.NumberTheory.Zeta.Riemann.PrimeGramQuarticExtraction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Zero-independent packing no-go and source-sensitive replacement

The fixed s=2 Dirichlet-damped packing is useful as a positive/decaying control,
but it cannot itself be the informative zero-facing carrier.

If a sequence V_n is independent of a candidate zero s and V_n -> 0, then any
identity

  V_n = lambda_n * witnessTrace(s) + R_n

with lambda_n -> L>0 and R_n->0 forces witnessTrace(s)=0 purely by taking
limits. Thus a theorem producing such a comparison for every nontrivial zero
already contains the RH conclusion.

The informative arithmetic family must therefore depend on source/test data
that itself depends on the zero-facing multiplier or transform. The dependence
must enter before the positive Gram is formed, not be hidden in the residual.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FIXED_DAMPED_PACKING_CONTROL_ONLY / SOURCE_SENSITIVE_FAMILY_REQUIRED.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open GRWTSK.Polynomial.ConjugateQuartic

/-- Generic scalar no-go: a zero-independent vanishing positive model cannot
carry a nonzero fixed target through a positive limiting coefficient and a
vanishing residual. Positivity of V is not even needed. -/
theorem target_eq_zero_of_model_tendsto_zero
    (V weight residual : ℕ → ℝ)
    (target L : ℝ)
    (hV : Tendsto V atTop (𝓝 0))
    (hweight : Tendsto weight atTop (𝓝 L))
    (hL : 0 < L)
    (hresidual : Tendsto residual atTop (𝓝 0))
    (identity : ∀ n, V n = weight n * target + residual n) :
    target = 0 := by
  have hright :
      Tendsto (fun n => weight n * target + residual n)
        atTop (𝓝 (L * target)) := by
    simpa using (hweight.mul_const target).add hresidual
  have hsame :
      Tendsto V atTop (𝓝 (L * target)) := by
    exact hright.congr' (Eventually.of_forall fun n => (identity n).symm)
  have hzero : L * target = 0 :=
    tendsto_nhds_unique hsame hV
  exact (mul_eq_zero.mp hzero).resolve_left hL.ne'

/-- Comparison of the fixed damped packing against one signed quartic target. -/
structure FixedDampedPackingComparisonAtZero (s : ℂ) where
  weight : ℕ → ℝ
  residual : PrimeQuarticResidualLedger
  limitWeight : ℝ
  limitWeight_pos : 0 < limitWeight
  identity :
    ∀ n,
      dirichletTwoPackingSequence.valueAt n =
        weight n * witnessTrace (s.re - 1 / 2) s.im + residual.total n
  weight_tendsto : Tendsto weight atTop (𝓝 limitWeight)

/-- Because the fixed damped packing already tends to zero, the comparison
itself forces the target quartic to vanish. -/
theorem FixedDampedPackingComparisonAtZero.witnessTrace_eq_zero
    {s : ℂ} (comparison : FixedDampedPackingComparisonAtZero s) :
    witnessTrace (s.re - 1 / 2) s.im = 0 :=
  target_eq_zero_of_model_tendsto_zero
    dirichletTwoPackingSequence.valueAt
    comparison.weight
    comparison.residual.total
    (witnessTrace (s.re - 1 / 2) s.im)
    comparison.limitWeight
    dirichletTwoPacking_valueAt_tendsto_zero
    comparison.weight_tendsto
    comparison.limitWeight_pos
    comparison.residual.total_tendsto
    comparison.identity

/-- Hence a fixed-damped comparison at one actual nontrivial zero already
proves that zero lies on the critical line. -/
theorem FixedDampedPackingComparisonAtZero.forces_critical_line
    {s : ℂ} (comparison : FixedDampedPackingComparisonAtZero s) :
    s.re = 1 / 2 := by
  have hz := comparison.witnessTrace_eq_zero
  have hnonneg : 0 ≤ witnessTrace (s.re - 1 / 2) s.im := by
    rw [hz]
  have hcenter :=
    (witnessTrace_nonneg_iff (s.re - 1 / 2) s.im).mp hnonneg
  linarith

/-- A source-sensitive arithmetic point family. The point must be constructed
from an explicit source multiplier/test datum before any Gram positivity is
taken. -/
structure SourceSensitivePrimePowerPointFamily (Parameter : Type*) where
  point : Parameter → PrimePowerEvent → PackingPoint
  sourceId : String
  revision : String
  normalization : String

/-- Canonical arithmetic schedule with parameter-sensitive coordinates.
Only the points depend on the parameter; the prime-power identities remain the
same canonical sequence. -/
def SourceSensitivePrimePowerPointFamily.sequence
    {Parameter : Type*}
    (family : SourceSensitivePrimePowerPointFamily Parameter)
    (parameter : Parameter) :
    SequentialThreePointPrimePacking where
  point := fun n => family.point parameter (canonicalPrimePowerEventSequence n)
  source := canonicalPrimePowerValueSequence
  IsPrimePowerSource := IsPrimePow
  source_ok := canonicalPrimePowerValueSequence_isPrimePow

/-- The source-sensitive stage is still structurally nonnegative for every
parameter. -/
theorem SourceSensitivePrimePowerPointFamily.valueAt_nonnegative
    {Parameter : Type*}
    (family : SourceSensitivePrimePowerPointFamily Parameter)
    (parameter : Parameter) (n : ℕ) :
    0 ≤ (family.sequence parameter).valueAt n :=
  (family.sequence parameter).valueAt_nonnegative n

/-- Exact requirement for an informative zero-facing family: the parameter is
chosen from source/test data attached to the zero, and the comparison is made
against the resulting parameter-dependent positive stages. -/
structure SourceSensitivePackingComparisonAtZero
    {Parameter : Type*}
    (family : SourceSensitivePrimePowerPointFamily Parameter)
    (parameterOfZero : ℂ → Parameter)
    (s : ℂ) where
  weight : ℕ → ℝ
  residual : PrimeQuarticResidualLedger
  limitWeight : ℝ
  limitWeight_pos : 0 < limitWeight
  identity :
    ∀ n,
      (family.sequence (parameterOfZero s)).valueAt n =
        weight n * witnessTrace (s.re - 1 / 2) s.im + residual.total n
  weight_tendsto : Tendsto weight atTop (𝓝 limitWeight)

/-- The source-sensitive family keeps Gram positivity without pre-imposing a
zero-independent limiting value. -/
theorem SourceSensitivePackingComparisonAtZero.stage_nonnegative
    {Parameter : Type*}
    {family : SourceSensitivePrimePowerPointFamily Parameter}
    {parameterOfZero : ℂ → Parameter}
    {s : ℂ}
    (_comparison :
      SourceSensitivePackingComparisonAtZero family parameterOfZero s)
    (n : ℕ) :
    0 ≤ (family.sequence (parameterOfZero s)).valueAt n :=
  family.valueAt_nonnegative (parameterOfZero s) n

end GRWTSK.RiemannHypothesis
```
