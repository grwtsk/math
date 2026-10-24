# Complete source: GRWTSK.Topology.GeneralTopology.Attempt04.Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b7e508a76b0a90153e4950a2bd34b2daa9ae6d7` · SHA-256 `618f381d320250407c92fe33aa23ae968c0511b5cb03a1201019c00546c8e51d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SmallPositive.Variantb8e7e92724a1d9a5d92995baa0d2081ae02a19b9fe4f4ad5444c58bd89f459c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8e7e92724a1d9a5d92995baa0d2081ae02a19b9fe4f4ad5444c58bd89f459c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SmallPositive.Variantb8e7e92724a1d9a5d92995baa0d2081ae02a19b9fe4f4ad5444c58bd89f459c4","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b8e7e92724a1d9a5d92995baa0d2081ae02a19b9fe4f4ad5444c58bd89f459c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass14/localization/attempt04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Topology.Order.IntermediateValue
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

/-!
Exact generic localization guard for issue #247. The domain is every real a>0.
The affine fixture is not the actual Suzuki lowest-eigenvalue function.
Continuity and small-scale positivity are explicit premises in the conditional
eigenvalue adapter; neither an actual negative value nor RH is asserted.
Direction grwtsk contributors; scratch formalization OpenAI Codex.
-/

namespace GRWTSK.Topology.GeneralTopology.SmallPositive.Variantb8e7e92724a1d9a5d92995baa0d2081ae02a19b9fe4f4ad5444c58bd89f459c4

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.LocalizationBlindness
open Set

def SmallPositive (f : ℝ → ℝ) : Prop :=
  ∃ a₀ : ℝ, 0 < a₀ ∧ ∀ a : ℝ, 0 < a → a < a₀ → 0 < f a

def GlobalNonnegative (f : ℝ → ℝ) : Prop :=
  ∀ a : ℝ, 0 < a → 0 ≤ f a

def NonvanishingOnPositive (f : ℝ → ℝ) : Prop :=
  ∀ a : ℝ, 0 < a → f a ≠ 0

def affineFixture (a : ℝ) : ℝ := 1 - a

theorem affineFixture_continuous : Continuous affineFixture := by
  unfold affineFixture
  fun_prop

theorem affineFixture_smallPositive : SmallPositive affineFixture := by
  refine ⟨1, by norm_num, ?_⟩
  intro a _ ha
  dsimp [affineFixture]
  linarith

theorem affineFixture_later_negative : affineFixture 2 = -1 := by
  norm_num [affineFixture]

theorem affineFixture_not_global : ¬ GlobalNonnegative affineFixture := by
  intro h
  have := h 2 (by norm_num)
  norm_num [affineFixture] at this

theorem continuous_local_does_not_imply_global :
    ¬ (∀ f : ℝ → ℝ, ContinuousOn f (Ioi 0) → SmallPositive f →
      GlobalNonnegative f) := by
  intro h
  exact affineFixture_not_global
    (h affineFixture affineFixture_continuous.continuousOn affineFixture_smallPositive)

/-- Every prescribed bounded test window admits a continuous positive fixture that becomes
negative later. This is not a statement about a source-bound operator family. -/
theorem bounded_window_can_miss_negative (R : ℝ) (hR : 0 < R) :
    ∃ f : ℝ → ℝ, ContinuousOn f (Ioi 0) ∧
      (∀ a : ℝ, 0 < a → a ≤ R → 0 < f a) ∧
      ∃ b : ℝ, 0 < b ∧ R < b ∧ f b < 0 := by
  refine ⟨fun a => R + 1 - a, ?_, ?_, R + 2, ?_, ?_, ?_⟩
  · fun_prop
  · intro a _ ha
    linarith
  · linarith
  · linarith
  · dsimp
    linarith

theorem affineFixture_unique_crossing (a : ℝ) : affineFixture a = 0 ↔ a = 1 := by
  dsimp [affineFixture]
  constructor <;> intro h <;> linarith

/-- The witness is strictly inside the positive domain, before the supplied negative value.
No continuity or value at a=0 is assumed. -/
theorem zero_before_negative {f : ℝ → ℝ}
    (hcont : ContinuousOn f (Ioi 0)) (hsmall : SmallPositive f)
    {b : ℝ} (hb : 0 < b) (hnegative : f b < 0) :
    ∃ c : ℝ, 0 < c ∧ c < b ∧ f c = 0 := by
  obtain ⟨a₀, ha₀, hpos⟩ := hsmall
  let a : ℝ := min a₀ b / 2
  have hm : 0 < min a₀ b := lt_min ha₀ hb
  have ha : 0 < a := div_pos hm (by norm_num)
  have ham : a < min a₀ b := by dsimp [a]; linarith
  have haa₀ : a < a₀ := ham.trans_le (min_le_left _ _)
  have hab : a < b := ham.trans_le (min_le_right _ _)
  have hfa : 0 < f a := hpos a ha haa₀
  have hinterval : ContinuousOn f (Icc a b) := hcont.mono (by
    intro x hx
    exact ha.trans_le hx.1)
  obtain ⟨c, hc, hfc⟩ :=
    intermediate_value_Icc' hab.le hinterval ⟨hnegative.le, hfa.le⟩
  refine ⟨c, ha.trans_le hc.1, ?_, hfc⟩
  apply lt_of_le_of_ne hc.2
  intro hcb
  have : f b = 0 := hcb ▸ hfc
  linarith

theorem zero_of_not_global {f : ℝ → ℝ}
    (hcont : ContinuousOn f (Ioi 0)) (hsmall : SmallPositive f)
    (hfailure : ¬ GlobalNonnegative f) :
    ∃ b c : ℝ, 0 < c ∧ c < b ∧ f c = 0 ∧ f b < 0 := by
  unfold GlobalNonnegative at hfailure
  push Not at hfailure
  obtain ⟨b, hb, hnegative⟩ := hfailure
  obtain ⟨c, hc, hcb, hzero⟩ := zero_before_negative hcont hsmall hb hnegative
  exact ⟨b, c, hc, hcb, hzero, hnegative⟩

/-- Nonvanishing on *every* positive scale is an additional global premise. -/
theorem positive_everywhere_of_nonvanishing {f : ℝ → ℝ}
    (hcont : ContinuousOn f (Ioi 0)) (hsmall : SmallPositive f)
    (hnonzero : NonvanishingOnPositive f) :
    ∀ a : ℝ, 0 < a → 0 < f a := by
  intro a ha
  by_contra h
  have hle : f a ≤ 0 := le_of_not_gt h
  rcases hle.eq_or_lt with heq | hlt
  · exact hnonzero a ha heq
  · obtain ⟨c, hc, _, hzero⟩ := zero_before_negative hcont hsmall ha hlt
    exact hnonzero c hc hzero

theorem positive_everywhere_iff_nonvanishing {f : ℝ → ℝ}
    (hcont : ContinuousOn f (Ioi 0)) (hsmall : SmallPositive f) :
    (∀ a : ℝ, 0 < a → 0 < f a) ↔ NonvanishingOnPositive f := by
  constructor
  · exact fun h a ha => ne_of_gt (h a ha)
  · exact positive_everywhere_of_nonvanishing hcont hsmall

theorem global_nonnegative_of_nonvanishing {f : ℝ → ℝ}
    (hcont : ContinuousOn f (Ioi 0)) (hsmall : SmallPositive f)
    (hnonzero : NonvanishingOnPositive f) : GlobalNonnegative f :=
  fun a ha => (positive_everywhere_of_nonvanishing hcont hsmall hnonzero a ha).le

/-- Literal interface for a proposed lowest-eigenvalue function. The actual operator family,
its Rayleigh characterization and these two analytic premises must be source-bound separately. -/
def LowestEigenvalueProfile (ell : ℝ → ℝ) : Prop :=
  ContinuousOn ell (Ioi 0) ∧ SmallPositive ell

theorem lowestEigenvalue_crossing {ell : ℝ → ℝ}
    (hell : LowestEigenvalueProfile ell) {b : ℝ} (hb : 0 < b) (hnegative : ell b < 0) :
    ∃ c : ℝ, 0 < c ∧ c < b ∧ ell c = 0 :=
  zero_before_negative hell.1 hell.2 hb hnegative

theorem lowestEigenvalue_failure_crossing {ell : ℝ → ℝ}
    (hell : LowestEigenvalueProfile ell) (hfailure : ¬ GlobalNonnegative ell) :
    ∃ b c : ℝ, 0 < c ∧ c < b ∧ ell c = 0 ∧ ell b < 0 :=
  zero_of_not_global hell.1 hell.2 hfailure

theorem lowestEigenvalue_nonvanishing_iff_positive {ell : ℝ → ℝ}
    (hell : LowestEigenvalueProfile ell) :
    NonvanishingOnPositive ell ↔ (∀ a : ℝ, 0 < a → 0 < ell a) :=
  (positive_everywhere_iff_nonvanishing hell.1 hell.2).symm

theorem affineFixture_lowestEigenvalueProfile : LowestEigenvalueProfile affineFixture :=
  ⟨affineFixture_continuous.continuousOn, affineFixture_smallPositive⟩

#check SmallPositive
#print axioms SmallPositive
#check GlobalNonnegative
#print axioms GlobalNonnegative
#check NonvanishingOnPositive
#print axioms NonvanishingOnPositive
#check affineFixture
#print axioms affineFixture
#check affineFixture_continuous
#print axioms affineFixture_continuous
#check affineFixture_smallPositive
#print axioms affineFixture_smallPositive
#check affineFixture_later_negative
#print axioms affineFixture_later_negative
#check affineFixture_not_global
#print axioms affineFixture_not_global
#check continuous_local_does_not_imply_global
#print axioms continuous_local_does_not_imply_global
#check bounded_window_can_miss_negative
#print axioms bounded_window_can_miss_negative
#check affineFixture_unique_crossing
#print axioms affineFixture_unique_crossing
#check zero_before_negative
#print axioms zero_before_negative
#check zero_of_not_global
#print axioms zero_of_not_global
#check positive_everywhere_of_nonvanishing
#print axioms positive_everywhere_of_nonvanishing
#check positive_everywhere_iff_nonvanishing
#print axioms positive_everywhere_iff_nonvanishing
#check global_nonnegative_of_nonvanishing
#print axioms global_nonnegative_of_nonvanishing
#check LowestEigenvalueProfile
#print axioms LowestEigenvalueProfile
#check lowestEigenvalue_crossing
#print axioms lowestEigenvalue_crossing
#check lowestEigenvalue_failure_crossing
#print axioms lowestEigenvalue_failure_crossing
#check lowestEigenvalue_nonvanishing_iff_positive
#print axioms lowestEigenvalue_nonvanishing_iff_positive
#check affineFixture_lowestEigenvalueProfile
#print axioms affineFixture_lowestEigenvalueProfile

end ContinuousResearch.LocalizationBlindness
```
