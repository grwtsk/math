# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPrimitiveFiniteConsumer.Variant63fda3768ac477d27a2bc0511f47fe092deacc3e25a3d1b6e645e378493c6cc8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d381f074dfbb77878f50b20f90f04d6b2b9b0c8` · SHA-256 `b53a6b4d8a1ba87a5d01176c32f069997e8eeaa88f6593c57d44b22b4dc8de03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFiniteSecondReadout.Variant17b0838b8177ea07a68d2c488d2c6565548bb27e77d311c304e1a80e005feef8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17b0838b8177ea07a68d2c488d2c6565548bb27e77d311c304e1a80e005feef8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualFiniteSecondReadout.Variant17b0838b8177ea07a68d2c488d2c6565548bb27e77d311c304e1a80e005feef8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"17b0838b8177ea07a68d2c488d2c6565548bb27e77d311c304e1a80e005feef8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259/independent-finite-primitive-replay/SourceActualPrimitiveFiniteConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPrimitiveFiniteReadout

/-!
The global second-primitive budget is transported to its actual finite Mangoldt
readout. This reformulates the arithmetic obligation without constructing M.
Research direction: grwtsk contributors. AI construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFiniteSecondReadout.Variant17b0838b8177ea07a68d2c488d2c6565548bb27e77d311c304e1a80e005feef8

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualPrimitiveFiniteConsumer

open MeasureTheory ArithmeticFunction
open scoped Interval
open SourceMangoldtAbel Research.ActualCriticalPrimitive
open SourceActualPrimitiveFiniteReadout

/-- Independent finite atoms and exact continuous endpoint rows at the first-atom anchor. -/
def actualFiniteSecondReadout (t : ℝ) : ℝ :=
  let L := Real.log (2 : ℝ)
  4 * Real.exp (t / 2) * (mangoldtLogError t + Real.eulerMascheroniConstant + 4) -
  Real.exp (L / 2) * (2 * (t - L) + 4) *
    (mangoldtLogError L + Real.eulerMascheroniConstant) -
  Real.exp (L / 2) * (4 * (t - L) + 16) -
  ∑ n ∈ Finset.Ioc ⌊Real.exp L⌋₊ ⌊Real.exp t⌋₊,
    vonMangoldt n / (n : ℝ) * Real.exp (Real.log (n : ℝ) / 2) *
      (2 * (t - Real.log (n : ℝ)) + 4)

/-- Concrete return of the exact readout to the actual nested arithmetic primitive. -/
theorem actual_nested_primitive_eq_finite_readout (t : ℝ) (ht : Real.log 2 ≤ t) :
    (∫ s in Real.log 2..t, criticalPrimitive s - criticalPrimitive (Real.log 2)) =
      actualFiniteSecondReadout t := by
  rw [actual_centered_second_primitive_eq_weighted (Real.log 2) t
    (Real.log_nonneg (by norm_num)) ht]
  exact weightedActualSecondPrimitive_eq_finite_window (Real.log 2) t
    (Real.log_nonneg (by norm_num)) ht

/-- The touching first atom gives zero second-primitive value with its closed convention. -/
theorem actualFiniteSecondReadout_at_first_atom :
    actualFiniteSecondReadout (Real.log 2) = 0 := by
  have h := actual_nested_primitive_eq_finite_readout (Real.log 2) le_rfl
  simpa using h.symm

/-- Exact global arithmetic-budget reduction; the same M is retained in both directions. -/
theorem global_second_primitive_budget_iff_finite_readout :
    (∃ M : ℝ, 0 ≤ M ∧ ∀ t : ℝ, Real.log 2 ≤ t →
      |∫ s in Real.log 2..t,
        criticalPrimitive s - criticalPrimitive (Real.log 2)| ≤ M * (t - Real.log 2)) ↔
    (∃ M : ℝ, 0 ≤ M ∧ ∀ t : ℝ, Real.log 2 ≤ t →
      |actualFiniteSecondReadout t| ≤ M * (t - Real.log 2)) := by
  constructor
  · rintro ⟨M, hM, h⟩
    refine ⟨M, hM, ?_⟩
    intro t ht
    rw [← actual_nested_primitive_eq_finite_readout t ht]
    exact h t ht
  · rintro ⟨M, hM, h⟩
    refine ⟨M, hM, ?_⟩
    intro t ht
    rw [actual_nested_primitive_eq_finite_readout t ht]
    exact h t ht

end FormalResearch.RiemannHypothesis.SourceActualPrimitiveFiniteConsumer
```
