# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Complex.Variant06afed2d0dc8f77d066d39a024b812a36393adcd9240f10e6bb1f22a224272e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0776ad1964674d18bf1c9a4941e85da12eef9c4f` · SHA-256 `0d16a361186a1fb356ef02810fdae43e11732180f710e61bc7d94179e07296a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MeasurableEquivPi.Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.MeasurableEquivPi.Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c","mathematical_subject":"Logic.Foundations","original_sha256":"22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/MeasureTheory/Measure/Lebesgue/Complex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.MeasureTheory.Constructions.BorelSpace.Complex
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.MeasureTheory.Measure.Haar.OfBasis


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MeasurableEquivPi.Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c

#align_import measure_theory.measure.lebesgue.complex from "leanprover-community/mathlib"@"fd5edc43dc4f10b85abfe544b88f82cf13c5f844"

/-!
# Lebesgue measure on `ℂ`

In this file we define Lebesgue measure on `ℂ`. Since `ℂ` is defined as a `structure` as the
push-forward of the volume on `ℝ²` under the natural isomorphism. There are (at least) two
frequently used ways to represent `ℝ²` in `mathlib`: `ℝ × ℝ` and `Fin 2 → ℝ`. We define measurable
equivalences (`MeasurableEquiv`) to both types and prove that both of them are volume preserving
(in the sense of `MeasureTheory.measurePreserving`).
-/


open MeasureTheory

noncomputable section

namespace Complex

/-- Lebesgue measure on `ℂ`. -/
instance measureSpace : MeasureSpace ℂ :=
  ⟨Measure.map basisOneI.equivFun.symm volume⟩
#align complex.measure_space Complex.measureSpace

/-- Measurable equivalence between `ℂ` and `ℝ² = Fin 2 → ℝ`. -/
def measurableEquivPi : ℂ ≃ᵐ (Fin 2 → ℝ) :=
  basisOneI.equivFun.toContinuousLinearEquiv.toHomeomorph.toMeasurableEquiv
#align complex.measurable_equiv_pi Complex.measurableEquivPi

/-- Measurable equivalence between `ℂ` and `ℝ × ℝ`. -/
def measurableEquivRealProd : ℂ ≃ᵐ ℝ × ℝ :=
  equivRealProdClm.toHomeomorph.toMeasurableEquiv
#align complex.measurable_equiv_real_prod Complex.measurableEquivRealProd

theorem volume_preserving_equiv_pi : MeasurePreserving measurableEquivPi :=
  (measurableEquivPi.symm.measurable.measurePreserving _).symm _
#align complex.volume_preserving_equiv_pi Complex.volume_preserving_equiv_pi

theorem volume_preserving_equiv_real_prod : MeasurePreserving measurableEquivRealProd :=
  (volume_preserving_finTwoArrow ℝ).comp volume_preserving_equiv_pi
#align complex.volume_preserving_equiv_real_prod Complex.volume_preserving_equiv_real_prod

end Complex
```
