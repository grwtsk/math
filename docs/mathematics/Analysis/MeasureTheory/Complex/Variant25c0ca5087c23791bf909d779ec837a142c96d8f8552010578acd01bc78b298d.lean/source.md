# Complete source: GRWTSK.Analysis.MeasureTheory.Complex.Variant25c0ca5087c23791bf909d779ec837a142c96d8f8552010578acd01bc78b298d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c50394e5c153138316b18793a1e3eda7f1afb2b5` · SHA-256 `36e4ec07b5805130d2a7e25a92ad8cb814e327d2bfd40c2af55f60ca8490acef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ComplexMeasure.Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ComplexMeasure.Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Measure/Complex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kexing Ying. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kexing Ying
-/
module

public import Mathlib.Analysis.Complex.Basic
public import Mathlib.MeasureTheory.VectorMeasure.Relations

/-!
# Complex measure

This file defines a complex measure to be a vector measure with codomain `ℂ`.
Then we prove some elementary results about complex measures. In particular, we prove that
a complex measure is always in the form `s + it` where `s` and `t` are signed measures.

## Main definitions

* `MeasureTheory.ComplexMeasure.re`: obtains a signed measure `s` from a complex measure `c`
  such that `s i = (c i).re` for all measurable sets `i`.
* `MeasureTheory.ComplexMeasure.im`: obtains a signed measure `s` from a complex measure `c`
  such that `s i = (c i).im` for all measurable sets `i`.
* `MeasureTheory.SignedMeasure.toComplexMeasure`: given two signed measures `s` and `t`,
  `s.toComplexMeasure t` provides a complex measure of the form `s + it`.
* `MeasureTheory.ComplexMeasure.equivSignedMeasure`: is the equivalence between the complex
  measures and the type of the product of the signed measures with itself.

## Tags

Complex measure
-/


namespace GRWTSK.Analysis.MeasureTheory.ComplexMeasure.Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921

@[expose] public section


noncomputable section

open scoped MeasureTheory ENNReal NNReal

variable {α : Type*} {m : MeasurableSpace α}

namespace MeasureTheory

open VectorMeasure

/-- A `ComplexMeasure` is a `ℂ`-vector measure. -/
abbrev ComplexMeasure (α : Type*) [MeasurableSpace α] :=
  VectorMeasure α ℂ

namespace ComplexMeasure

/-- The real part of a complex measure is a signed measure. -/
@[simps! apply]
def re : ComplexMeasure α →ₗ[ℝ] SignedMeasure α :=
  mapRangeL Complex.reCLM

/-- The imaginary part of a complex measure is a signed measure. -/
@[simps! apply]
def im : ComplexMeasure α →ₗ[ℝ] SignedMeasure α :=
  mapRangeL Complex.imCLM

/-- Given `s` and `t` signed measures, `s + it` is a complex measure -/
@[simps!]
def _root_.GRWTSK.Analysis.MeasureTheory.ComplexMeasure.Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.MeasureTheory.SignedMeasure.toComplexMeasure (s t : SignedMeasure α) :
    ComplexMeasure α where
  measureOf' i := ⟨s i, t i⟩
  empty' := by rw [s.empty, t.empty]; rfl
  not_measurable' i hi := by rw [s.not_measurable hi, t.not_measurable hi]; rfl
  m_iUnion' _ hf hfdisj := (Complex.hasSum_iff _ _).2 ⟨s.m_iUnion hf hfdisj, t.m_iUnion hf hfdisj⟩

theorem _root_.GRWTSK.Analysis.MeasureTheory.ComplexMeasure.Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.MeasureTheory.SignedMeasure.toComplexMeasure_apply
    {s t : SignedMeasure α} {i : Set α} : s.toComplexMeasure t i = ⟨s i, t i⟩ := rfl

theorem toComplexMeasure_to_signedMeasure (c : ComplexMeasure α) :
    SignedMeasure.toComplexMeasure (ComplexMeasure.re c) (ComplexMeasure.im c) = c := rfl

theorem _root_.GRWTSK.Analysis.MeasureTheory.ComplexMeasure.Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.MeasureTheory.SignedMeasure.re_toComplexMeasure (s t : SignedMeasure α) :
    ComplexMeasure.re (SignedMeasure.toComplexMeasure s t) = s := rfl

theorem _root_.GRWTSK.Analysis.MeasureTheory.ComplexMeasure.Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.MeasureTheory.SignedMeasure.im_toComplexMeasure (s t : SignedMeasure α) :
    ComplexMeasure.im (SignedMeasure.toComplexMeasure s t) = t := rfl

/-- The complex measures form an equivalence to the type of pairs of signed measures. -/
@[simps]
def equivSignedMeasure : ComplexMeasure α ≃ SignedMeasure α × SignedMeasure α where
  toFun c := ⟨ComplexMeasure.re c, ComplexMeasure.im c⟩
  invFun := fun ⟨s, t⟩ => s.toComplexMeasure t
  left_inv c := c.toComplexMeasure_to_signedMeasure
  right_inv := fun ⟨s, t⟩ => Prod.ext (s.re_toComplexMeasure t) (s.im_toComplexMeasure t)

section

variable {R : Type*} [Semiring R] [Module R ℝ]
variable [ContinuousConstSMul R ℝ] [ContinuousConstSMul R ℂ]

set_option backward.isDefEq.respectTransparency false in
/-- The complex measures form a linear isomorphism to the type of pairs of signed measures. -/
@[simps]
def equivSignedMeasureₗ : ComplexMeasure α ≃ₗ[R] SignedMeasure α × SignedMeasure α :=
  { equivSignedMeasure with
    map_add' := fun c d => by rfl
    map_smul' := by
      intro r c
      dsimp
      ext
      · simp [Complex.smul_re]
      · simp [Complex.smul_im] }

end

set_option backward.isDefEq.respectTransparency false in
theorem absolutelyContinuous_ennreal_iff (c : ComplexMeasure α) (μ : VectorMeasure α ℝ≥0∞) :
    c ≪ᵥ μ ↔ ComplexMeasure.re c ≪ᵥ μ ∧ ComplexMeasure.im c ≪ᵥ μ := by
  constructor <;> intro h
  · constructor <;> · intro i hi; simp [h hi]
  · intro i hi
    rw [← Complex.re_add_im (c i), (_ : (c i).re = 0), (_ : (c i).im = 0)]
    exacts [by simp, h.2 hi, h.1 hi]

end ComplexMeasure

end MeasureTheory
```
