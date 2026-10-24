# Complete source: GRWTSK.Analysis.MeasureTheory.Notation.Variantf25a7040621eed181b7526dd9815e5a9bc91c0fbc1640b6ab07ade9c16652667

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a0d69b019627397cffb245809aa3fa7831ab1cc` · SHA-256 `e7879f295013322e86a4b1e5eaaa0a8478ad2132c1dac6de4132791a94624961`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ProbabilityMassFunction.Variantbd2d7001987f0d72887a9edcf041530097d69e88c12248e39197412186758dc0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd2d7001987f0d72887a9edcf041530097d69e88c12248e39197412186758dc0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ProbabilityMassFunction.Variantbd2d7001987f0d72887a9edcf041530097d69e88c12248e39197412186758dc0","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"bd2d7001987f0d72887a9edcf041530097d69e88c12248e39197412186758dc0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Probability/Notation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.Probability.ProbabilityMassFunction.Basic
import Mathlib.MeasureTheory.Function.ConditionalExpectation.Basic
import Mathlib.MeasureTheory.Decomposition.Lebesgue


namespace GRWTSK.Analysis.MeasureTheory.ProbabilityMassFunction.Variantbd2d7001987f0d72887a9edcf041530097d69e88c12248e39197412186758dc0

#align_import probability.notation from "leanprover-community/mathlib"@"00abe0695d8767201e6d008afa22393978bb324d"

/-! # Notations for probability theory

This file defines the following notations, for functions `X,Y`, measures `P, Q` defined on a
measurable space `m0`, and another measurable space structure `m` with `hm : m ≤ m0`,
- `P[X] = ∫ a, X a ∂P`
- `𝔼[X] = ∫ a, X a`
- `𝔼[X|m]`: conditional expectation of `X` with respect to the measure `volume` and the
  measurable space `m`. The similar `P[X|m]` for a measure `P` is defined in
  `MeasureTheory.Function.ConditionalExpectation.Basic`.
- `P⟦s|m⟧ = P[s.indicator (fun ω => (1 : ℝ)) | m]`, conditional probability of a set.
- `X =ₐₛ Y`: `X =ᵐ[volume] Y`
- `X ≤ₐₛ Y`: `X ≤ᵐ[volume] Y`
- `∂P/∂Q = P.rnDeriv Q`
We note that the notation `∂P/∂Q` applies to three different cases, namely,
`MeasureTheory.Measure.rnDeriv`, `MeasureTheory.SignedMeasure.rnDeriv` and
`MeasureTheory.ComplexMeasure.rnDeriv`.

- `ℙ` is a notation for `volume` on a measured space.
-/


open MeasureTheory

open scoped MeasureTheory

-- We define notations `𝔼[f|m]` for the conditional expectation of `f` with respect to `m`.
scoped[ProbabilityTheory] notation "𝔼[" X "|" m "]" =>
  MeasureTheory.condexp m MeasureTheory.MeasureSpace.volume X

set_option quotPrecheck false in
scoped[ProbabilityTheory] notation P "[" X "]" => ∫ x, ↑(X x) ∂P

scoped[ProbabilityTheory] notation "𝔼[" X "]" => ∫ a, X a

scoped[ProbabilityTheory] notation P "⟦" s "|" m "⟧" =>
  MeasureTheory.condexp m P (Set.indicator s fun ω => (1 : ℝ))

scoped[ProbabilityTheory] notation:50 X " =ₐₛ " Y:50 => X =ᵐ[MeasureTheory.MeasureSpace.volume] Y

scoped[ProbabilityTheory] notation:50 X " ≤ₐₛ " Y:50 => X ≤ᵐ[MeasureTheory.MeasureSpace.volume] Y

scoped[ProbabilityTheory] notation "∂" P "/∂" Q:100 => MeasureTheory.Measure.rnDeriv P Q

scoped[ProbabilityTheory] notation "ℙ" => MeasureTheory.MeasureSpace.volume
```
