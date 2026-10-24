# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.2720f7a54bb6d24bc7be251934d7501cb6fff716492357461e4b639df333187fSourceActualAbso.Variante974cd68318f5145372575e1fa58b78476ede9d5f3b2b95c4d1e6a7ce8baa8fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c8962ea7dd3badca8678e09662c96feae19abcd` · SHA-256 `6f69df2bb9566bcc4d69c878513ee92e4b0491e32536f101da95090e714e9415`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualClosedAbsolutePrimeMoment.Variant2720f7a54bb6d24bc7be251934d7501cb6fff716492357461e4b639df333187f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2720f7a54bb6d24bc7be251934d7501cb6fff716492357461e4b639df333187f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualClosedAbsolutePrimeMoment.Variant2720f7a54bb6d24bc7be251934d7501cb6fff716492357461e4b639df333187f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2720f7a54bb6d24bc7be251934d7501cb6fff716492357461e4b639df333187f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-boundary-next/future-pending58/bytes/2720f7a54bb6d24bc7be251934d7501cb6fff716492357461e4b639df333187f--SourceActualAbsolutePrimeMomentObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEdgeComplementCancellation

/-!
The literal full prime-power inventory has unbounded absolute mass even though
the signed residual is relatively small. A constant absolute-value budget
therefore cannot supply the remaining signed estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualClosedAbsolutePrimeMoment.Variant2720f7a54bb6d24bc7be251934d7501cb6fff716492357461e4b639df333187f

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualAbsolutePrimeMomentObstruction
open Filter ArithmeticFunction
open scoped BigOperators Topology
open SourceActualNegativeEdgeMangoldt SourceActualEdgeComplementCancellation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMobiusSplit
noncomputable section

/-- Absolute mass of every unchanged closed original prime-power atom. -/
def actualClosedAbsolutePrimeMoment (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊, |vonMangoldt n * closedPrimeWeight A n|

private theorem complement_le_absoluteMoment (A : ℝ) :
    actualNegativeEdgeComplement A ≤ actualClosedAbsolutePrimeMoment A := by
  unfold actualNegativeEdgeComplement actualClosedAbsolutePrimeMoment
  calc
    _ ≤ |∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ \ actualNegativeEdgeWindow A,
        vonMangoldt n * closedPrimeWeight A n| := le_abs_self _
    _ ≤ ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ \ actualNegativeEdgeWindow A,
        |vonMangoldt n * closedPrimeWeight A n| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := Finset.sum_le_sum_of_subset_of_nonneg Finset.sdiff_subset
      (fun _ _ _ => abs_nonneg _)

/-- The actual full absolute inventory has at least the same genuine exponential growth. -/
theorem actualClosedAbsolutePrimeMoment_eventually_lower :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 ≤
        actualClosedAbsolutePrimeMoment A := by
  obtain ⟨R,hR,hbound⟩ := actualNegativeEdgeComplement_eventually_positive_growth
  exact ⟨R,hR,fun A hA => (hbound A hA).trans (complement_le_absoluteMoment A)⟩

/-- This concerns the actual weighted prime-power terms, rather than raw coefficient labels. -/
theorem actualClosedAbsolutePrimeMoment_tendsto_atTop :
    Tendsto actualClosedAbsolutePrimeMoment atTop atTop :=
  tendsto_atTop_mono complement_le_absoluteMoment actualNegativeEdgeComplement_tendsto_atTop

/-- An eventual constant absolute-value bound is impossible for the unchanged source inventory. -/
theorem actualClosedAbsolutePrimeMoment_no_constant_tail_bound :
    ¬ ∃ K R : ℝ, ∀ A : ℝ, R ≤ A → actualClosedAbsolutePrimeMoment A ≤ K := by
  rintro ⟨K,R,hbound⟩
  have he := actualClosedAbsolutePrimeMoment_tendsto_atTop.eventually
    (eventually_ge_atTop (K + 1))
  obtain ⟨R0,hR0⟩ := eventually_atTop.1 he
  have hl := hR0 (max R R0) (le_max_right _ _)
  have hu := hbound (max R R0) (le_max_left _ _)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualAbsolutePrimeMomentObstruction
```
