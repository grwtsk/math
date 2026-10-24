# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimitiveSampling.Variante17e15625f2879d33ce1351dbf4d99af3c15a626b972b2cbdadcd7ed44239298

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dae838b49909120779651528248204a5ee5d349` · SHA-256 `e17e15625f2879d33ce1351dbf4d99af3c15a626b972b2cbdadcd7ed44239298`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.SamplingReplication
import FormalResearch.RiemannHypothesis.Conversation.PrimitiveAggregation

/-!
# The actual primitive consumes independent sampling replication

The literal finite primitive row is sampled under the materialized product
probability. Its signed expectation is actualPrimitive and its mean-square
error retains the complete signed mean squared. The exponential sample-count
price needs the stated signed-mean and precision hypotheses. No unconditional
variance lower bound or arithmetic estimate for the signed primitive is inferred.

Source: RH conversation Batch 3, BL03-01F and BL03-04. Human programme:
grwtsk contributors. Local actual-source sampling consumer: OpenAI Codex.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.PrimitiveSampling
open SamplingOptimization SamplingReplication PrimitiveAggregation MangoldtPrimitiveAbsoluteMass
open scoped BigOperators
noncomputable section

theorem literal_primitive_sampling_mean (x : ℝ) :
    signedMean (primitiveRow x) = ArithmeticPrimitive.actualPrimitive x :=
  literal_primitive_row_signed_total x

theorem literal_primitive_sampling_mass {x : ℝ} (hx : 0 ≤ x) :
    absoluteMass Finset.univ (primitiveRow x) = absolutePrimitiveMass x :=
  literal_primitive_row_variation hx

theorem actual_primitive_sampling_unbiased {x : ℝ} {m : ℕ} (hm : 0 < m)
    (p : ↥(Finset.Icc 2 ⌊x⌋₊) → ℝ) (hp : ∀ j, 0 < p j)
    (hsum : (∑ j, p j) = 1) :
    expectation m p (readoutMean m p (primitiveRow x)) = ArithmeticPrimitive.actualPrimitive x := by
  rw [replication_is_unbiased hm p _ hp hsum, literal_primitive_sampling_mean]

theorem actual_primitive_replication_lower {x : ℝ} (hx : 0 ≤ x) {m : ℕ} (hm : 0 < m)
    (p : ↥(Finset.Icc 2 ⌊x⌋₊) → ℝ) (hp : ∀ j, 0 < p j)
    (hsum : (∑ j, p j) = 1) :
    (absolutePrimitiveMass x ^ 2 - ArithmeticPrimitive.actualPrimitive x ^ 2) / m ≤
      replicationVariance m p (primitiveRow x) := by
  rw [← literal_primitive_sampling_mass hx, ← literal_primitive_sampling_mean]
  exact replication_variance_lower hm p _ hp hsum

theorem conditional_actual_primitive_sample_count {t : ℝ} (ht : 4 ≤ t)
    {m : ℕ} (hm : 0 < m)
    (p : ↥(Finset.Icc 2 ⌊Real.exp t⌋₊) → ℝ) (hp : ∀ j, 0 < p j)
    (hsum : (∑ j, p j) = 1) {ε : ℝ} (hε : 0 < ε)
    (hmean : |ArithmeticPrimitive.actualPrimitive (Real.exp t)| ≤
      absolutePrimitiveMass (Real.exp t) / 2)
    (hprecision : replicationVariance m p (primitiveRow (Real.exp t)) ≤ ε ^ 2) :
    Real.exp t / (4800 * ε ^ 2) ≤ (m : ℝ) := by
  have hcount := conditional_sample_count hm p (primitiveRow (Real.exp t)) hp hsum hε
    (by simpa only [literal_primitive_sampling_mean,
      literal_primitive_sampling_mass (Real.exp_pos t).le] using hmean) hprecision
  rw [literal_primitive_sampling_mass (Real.exp_pos t).le] at hcount
  have hbase := actual_logarithmic_primitive_absolute_lower ht
  have hE : Real.exp (t / 2) ^ 2 = Real.exp t := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hmass : 0 ≤ absolutePrimitiveMass (Real.exp t) :=
    (div_nonneg (Real.exp_pos _).le (by norm_num)).trans hbase
  have hsq : Real.exp t / 3600 ≤ absolutePrimitiveMass (Real.exp t) ^ 2 := by
    have h := pow_le_pow_left₀ (div_nonneg (Real.exp_pos (t / 2)).le (by norm_num)) hbase 2
    rw [div_pow, hE] at h
    norm_num at h
    exact h
  have hcap := (div_le_iff₀ (by positivity : 0 < 4 * ε ^ 2)).mp hcount
  apply (div_le_iff₀ (by positivity : 0 < 4800 * ε ^ 2)).mpr
  nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.PrimitiveSampling
```
