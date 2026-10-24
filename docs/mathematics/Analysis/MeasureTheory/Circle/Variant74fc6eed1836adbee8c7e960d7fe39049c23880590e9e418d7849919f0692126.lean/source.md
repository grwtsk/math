# Complete source: GRWTSK.Analysis.MeasureTheory.Circle.Variant74fc6eed1836adbee8c7e960d7fe39049c23880590e9e418d7849919f0692126

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `156ba2aa97c52afeb96c4c3a78bd13d19aa33290` · SHA-256 `8c932f2831c2a75b22670e004af59895d0065794542d0b7625f28fb0338b7d43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant4f8d65f1895799fb7198bb64327c6f6159ac9a97bab9a49643df752eef12d412","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f8d65f1895799fb7198bb64327c6f6159ac9a97bab9a49643df752eef12d412","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableCoe.Variant4f8d65f1895799fb7198bb64327c6f6159ac9a97bab9a49643df752eef12d412","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"4f8d65f1895799fb7198bb64327c6f6159ac9a97bab9a49643df752eef12d412","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Group/Circle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Terence Tao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Terence Tao
-/
module

public import Mathlib.Analysis.Complex.Circle
public import Mathlib.MeasureTheory.Constructions.BorelSpace.Complex

/-!
# Measure-theoretic results about the circle

This file is a place to collect measure-theoretic results about `Circle`, the unit circle in `ℂ`.
It equips it with the Borel structure inherited from the ambient subtype, which is what makes
`Circle`-valued functions (such as the additive characters `Real.fourierChar` and `Real.probChar`)
measurable.

Unlike `Circle`, the additive circle `ℝ / ℤ` obtains its `MeasurableSpace` and `BorelSpace`
instances from the general `QuotientAddGroup` instances (in
`Mathlib.MeasureTheory.MeasurableSpace.Constructions` and
`Mathlib.MeasureTheory.Constructions.Polish.Basic` respectively).
-/


namespace GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant4f8d65f1895799fb7198bb64327c6f6159ac9a97bab9a49643df752eef12d412

public section

namespace Circle

instance : MeasurableSpace Circle := inferInstanceAs <| MeasurableSpace <| Subtype _

instance : BorelSpace Circle :=
  inferInstanceAs <| BorelSpace <| Subtype (· ∈ Metric.sphere (0 : ℂ) 1)

protected lemma measurable_coe : Measurable fun x : Circle ↦ (x : ℂ) := measurable_subtype_coe

protected lemma measurable_iff {X : Type*} [MeasurableSpace X] {f : X → Circle} :
    Measurable f ↔ Measurable fun x ↦ (f x : ℂ) := measurable_comap_iff

end Circle
```
