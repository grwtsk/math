# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant23c89a544a006af3a49598de09c8bec3c41819db2208c216a8cb42172346236b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `694507f2a98e92e07b9a6ebf1a4ede002f767e57` · SHA-256 `d7ba392803352704b302b30f8772e7f80c7d873bb0a30d13a18da142949d58d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.IsLittleOConstIdCocompact.Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.IsLittleOConstIdCocompact.Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"c1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/Analysis/Asymptotics/Asymptotics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Asymptotics.Lemmas
import Mathlib.Topology.Order.Compact


namespace GRWTSK.Analysis.AsymptoticAnalysis.IsLittleOConstIdCocompact.Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae

open Filter Topology

namespace Asymptotics

variable {α : Type*} {β : Type*} {E : Type*} {F : Type*} {G : Type*} {E' : Type*}
  {F' : Type*} {G' : Type*} {E'' : Type*} {F'' : Type*} {G'' : Type*} {R : Type*}
  {R' : Type*} {𝕜 : Type*} {𝕜' : Type*}

variable [Norm E] [Norm F] [Norm G]

variable [SeminormedAddCommGroup E'] [SeminormedAddCommGroup F'] [SeminormedAddCommGroup G']
  [NormedAddCommGroup E''] [NormedAddCommGroup F''] [NormedAddCommGroup G''] [SeminormedRing R]
  [SeminormedRing R']


theorem isLittleO_const_id_cocompact [ProperSpace F'']
    (c : E'') : (fun _x : F'' => c) =o[cocompact F''] id :=
  isLittleO_const_left.2 <| Or.inr tendsto_norm_cocompact_atTop

-- to replace existing `isLittleO_const_id_atTop`
theorem isLittleO_const_id_atTop2 [LinearOrder F''] [NoMaxOrder F''] [ClosedIciTopology F'']
    [ProperSpace F''] (c : E'') : (fun _x : F'' => c) =o[atTop] id :=
 (isLittleO_const_id_cocompact c).mono atTop_le_cocompact

-- to replace existing `isLittleO_const_id_atBot`
theorem isLittleO_const_id_atBot2 [LinearOrder F''] [NoMinOrder F''] [ClosedIicTopology F'']
    [ProperSpace F''] (c : E'') : (fun _x : F'' => c) =o[atBot] id :=
  (isLittleO_const_id_cocompact c).mono atBot_le_cocompact

theorem _root_.GRWTSK.Analysis.AsymptoticAnalysis.IsLittleOConstIdCocompact.Variantc1cdb6bb509c6178bf17868c57e5b53721b87fb2774ef8562bc5945ffe5b11ae.Filter.Eventually.natCast {f : ℝ → Prop} (hf : ∀ᶠ x in atTop, f x) :
    ∀ᶠ n : ℕ in atTop, f n :=
  tendsto_natCast_atTop_atTop.eventually hf

theorem IsBigO.natCast {f g : ℝ → E} (h : f =O[atTop] g) :
    (fun n : ℕ => f n) =O[atTop] fun n : ℕ => g n :=
  h.comp_tendsto tendsto_natCast_atTop_atTop

end Asymptotics
```
