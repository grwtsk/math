# Complete source: GRWTSK.Analysis.MeasureTheory.Inner.Variant5c9835a8da1d19b2f6ff539a18d10736793a96bddc49595694ba9de25ba6c5f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f99d2ef69bf5a179b1d9363fc35f64bd25817f44` · SHA-256 `ed1a4b7e343aa330676bdfde4f76b1a62d13cf19784094f7b3d1fbcae66492e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.Inner.Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.Inner.Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Function/StronglyMeasurable/Inner.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne, Sébastien Gouëzel
-/
import Mathlib.Analysis.InnerProductSpace.Continuous
import Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable

/-!
# Inner products of strongly measurable functions are strongly measurable.

-/


namespace GRWTSK.Analysis.MeasureTheory.Inner.Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f

variable {α 𝕜 E : Type*} [RCLike 𝕜] [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

namespace MeasureTheory

/-! ## Strongly measurable functions -/


local notation "⟪" x ", " y "⟫" => inner 𝕜 x y

namespace StronglyMeasurable

@[fun_prop]
protected theorem inner {_ : MeasurableSpace α} {f g : α → E} (hf : StronglyMeasurable f)
    (hg : StronglyMeasurable g) : StronglyMeasurable fun t => ⟪f t, g t⟫ :=
  Continuous.comp_stronglyMeasurable continuous_inner (hf.prodMk hg)

end StronglyMeasurable

namespace AEStronglyMeasurable
variable {m m₀ : MeasurableSpace α} {μ : Measure[m₀] α} {f g : α → E} {c : E}

@[fun_prop]
protected theorem re {f : α → 𝕜} (hf : AEStronglyMeasurable[m] f μ) :
    AEStronglyMeasurable[m] (fun x => RCLike.re (f x)) μ :=
  RCLike.continuous_re.comp_aestronglyMeasurable hf

@[fun_prop]
protected theorem im {f : α → 𝕜} (hf : AEStronglyMeasurable[m] f μ) :
    AEStronglyMeasurable[m] (fun x => RCLike.im (f x)) μ :=
  RCLike.continuous_im.comp_aestronglyMeasurable hf

@[fun_prop]
protected theorem inner {_ : MeasurableSpace α} {μ : Measure α} {f g : α → E}
    (hf : AEStronglyMeasurable[m] f μ) (hg : AEStronglyMeasurable[m] g μ) :
    AEStronglyMeasurable[m] (fun x => ⟪f x, g x⟫) μ :=
  continuous_inner.comp_aestronglyMeasurable (hf.prodMk hg)

@[fun_prop]
lemma inner_const (hf : AEStronglyMeasurable[m] f μ) : AEStronglyMeasurable[m] (⟪f ·, c⟫) μ :=
  hf.inner aestronglyMeasurable_const

@[fun_prop]
lemma const_inner (hg : AEStronglyMeasurable[m] g μ) : AEStronglyMeasurable[m] (⟪c, g ·⟫) μ :=
  aestronglyMeasurable_const.inner hg

end AEStronglyMeasurable

end MeasureTheory
```
