# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.CountKernel.Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `939193eb909504de26304c17db9b6d7e48d59ca9` · SHA-256 `c4008fb955c2d6098f2475e95290fa0763f0e652d88cd68d0f954cdee82105b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.PositiveOccurrence.Varianta077fff2cf061b812ca5db0eb2a7ae0c80fb6e9fabf1279727938233d1742dba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a077fff2cf061b812ca5db0eb2a7ae0c80fb6e9fabf1279727938233d1742dba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.PositiveOccurrence.Varianta077fff2cf061b812ca5db0eb2a7ae0c80fb6e9fabf1279727938233d1742dba","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"a077fff2cf061b812ca5db0eb2a7ae0c80fb6e9fabf1279727938233d1742dba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_stieltjes_20261004/CountKernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_stieltjes_20261004.CountOccurrences
import Mathlib.Topology.Algebra.InfiniteSum.Real

/-!
Actual cumulative positive-ordinate occurrence indicator. Its support is finite
at every real cutoff and every analytic-multiplicity slot contributes exactly
once. The upper count boundary is closed; the omitted-tail boundary is strict.
Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean construction assistance: OpenAI Codex.
-/

namespace GRWTSK.Analysis.AsymptoticAnalysis.PositiveOccurrence.Varianta077fff2cf061b812ca5db0eb2a7ae0c80fb6e9fabf1279727938233d1742dba

set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject

/-- All actual positive-ordinate occurrences, including multiplicity slots. -/
def PositiveOccurrence := {o : ZeroOccurrence // 0 < (shiftedValue o).im}

def positiveOrdinate (o : PositiveOccurrence) : ℝ := (shiftedValue o.val).im

def positiveClosedCountSet (t : ℝ) : Set PositiveOccurrence :=
  {o | positiveOrdinate o ≤ t}

def positiveClosedCountKernel (t c : ℝ) (o : PositiveOccurrence) : ℝ :=
  if positiveOrdinate o ≤ t then c else 0

/-- The nested positive closed window is exactly the previously counted window. -/
def positiveClosedWindowEquiv (t : ℝ) :
    positiveClosedCountSet t ≃ PositiveOccurrenceWindow t where
  toFun o := ⟨o.val.val, ⟨o.val.property, o.property⟩⟩
  invFun o := ⟨⟨o.val, o.property.1⟩, o.property.2⟩
  left_inv o := by rcases o with ⟨⟨p, hp⟩, ht⟩; rfl
  right_inv o := by rcases o with ⟨p, hp⟩; rfl

theorem positive_closed_count_set_finite (t : ℝ) : (positiveClosedCountSet t).Finite := by
  have : Finite (PositiveOccurrenceWindow t) := positive_occurrence_window_finite t
  have hf : Finite (positiveClosedCountSet t) :=
    Finite.of_equiv (PositiveOccurrenceWindow t) (positiveClosedWindowEquiv t).symm
  exact Set.finite_coe_iff.mp hf

theorem positive_closed_count_kernel_hasFiniteSupport (t c : ℝ) :
    Function.HasFiniteSupport (positiveClosedCountKernel t c) := by
  apply (positive_closed_count_set_finite t).subset
  intro o ho
  change positiveOrdinate o ≤ t
  by_contra h
  change positiveClosedCountKernel t c o ≠ 0 at ho
  exact ho (by simp only [positiveClosedCountKernel, if_neg h])

theorem positive_closed_count_kernel_summable (t c : ℝ) :
    Summable (positiveClosedCountKernel t c) :=
  summable_of_hasFiniteSupport (positive_closed_count_kernel_hasFiniteSupport t c)

/-- An actual cumulative indicator sums to the multiplicity count times c,
for arbitrary real t and c, including a zero exactly at the upper endpoint. -/
theorem positive_closed_count_kernel_tsum (t c : ℝ) :
    (∑' o : PositiveOccurrence, positiveClosedCountKernel t c o) =
      (Zeta23.Ncount 0 t : ℝ) * c := by
  classical
  have hf : Finite (positiveClosedCountSet t) :=
    (positive_closed_count_set_finite t).to_subtype
  let : Fintype (positiveClosedCountSet t) := Fintype.ofFinite _
  have hcard : Nat.card (positiveClosedCountSet t) = Zeta23.Ncount 0 t :=
    (Nat.card_congr (positiveClosedWindowEquiv t)).trans (positive_occurrence_window_card_eq_count t)
  have hc : Fintype.card (positiveClosedCountSet t) = Zeta23.Ncount 0 t := by
    simpa only [Nat.card_eq_fintype_card] using hcard
  have hi : positiveClosedCountKernel t c = (positiveClosedCountSet t).indicator (fun _ => c) := rfl
  rw [hi, ← tsum_subtype]
  simp only [tsum_fintype, Finset.sum_const, Finset.card_univ, nsmul_eq_mul, hc]

/-- The actual strict tail within positive ordinates is the full actual strict
ordinate tail when T >= 0. Both types retain every analytic occurrence. -/
def positiveStrictTailEquiv (T : ℝ) (hT : 0 ≤ T) :
    {o : PositiveOccurrence // T < positiveOrdinate o} ≃
      {o : ZeroOccurrence // T < (shiftedValue o).im} where
  toFun o := ⟨o.val.val, o.property⟩
  invFun o := ⟨⟨o.val, hT.trans_lt o.property⟩, o.property⟩
  left_inv o := by rcases o with ⟨⟨p, hp⟩, ht⟩; rfl
  right_inv o := by rcases o with ⟨p, hp⟩; rfl

/-- Strict indicator transport requires no rearrangement or summability premise;
it is the exact subtype/bijection transport of the same actual summands. -/
theorem positive_strict_tail_tsum_transport (T : ℝ) (hT : 0 ≤ T) (f : ZeroOccurrence → ℝ) :
    (∑' o : PositiveOccurrence, if T < positiveOrdinate o then f o.val else 0) =
      ∑' o : {o : ZeroOccurrence // T < (shiftedValue o).im}, f o.val := by
  classical
  have hi : (fun o : PositiveOccurrence => if T < positiveOrdinate o then f o.val else 0) =
      ({o : PositiveOccurrence | T < positiveOrdinate o} : Set PositiveOccurrence).indicator
        (fun o => f o.val) := rfl
  rw [hi, ← tsum_subtype]
  exact (positiveStrictTailEquiv T hT).tsum_eq (fun o => f o.val)

end CommonMeanStieltjes
```
