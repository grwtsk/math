# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Star.Variantba4832f06c2ad5082233c7fb6795662f25f5e80fed003a991ea2c25fab5a23f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a31e2268a74fb306ba1f49bb6fbd107203b1c1e` · SHA-256 `b690ac4e9c82283999cd79833fc0a98ab092c884e1b88c5008c5ad9f418744c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivWithinStar.Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DerivWithinStar.Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed","mathematical_subject":"Analysis.Calculus","original_sha256":"93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/Deriv/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.Analysis.Calculus.FDeriv.Star

/-!
# Star operations on derivatives

This file contains the usual formulas (and existence assertions) for the derivative of the star
operation. Note that these only apply when the field that the derivative is respect to has a trivial
star operation; which as should be expected rules out `𝕜 = ℂ`.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivWithinStar.Variant93a7908e35553564f3af87cbbc772181c5b5556d1915377cd55ab8d0db49d0ed

universe u v w

variable {𝕜 : Type u} [NontriviallyNormedField 𝕜]
variable {F : Type v} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {f : 𝕜 → F}

/-! ### Derivative of `x ↦ star x` -/


variable [StarRing 𝕜] [TrivialStar 𝕜] [StarAddMonoid F] [ContinuousStar F]
variable [StarModule 𝕜 F] {f' : F} {s : Set 𝕜} {x : 𝕜} {L : Filter 𝕜}

protected nonrec theorem HasDerivAtFilter.star (h : HasDerivAtFilter f f' x L) :
    HasDerivAtFilter (fun x => star (f x)) (star f') x L := by
  simpa using h.star.hasDerivAtFilter

protected nonrec theorem HasDerivWithinAt.star (h : HasDerivWithinAt f f' s x) :
    HasDerivWithinAt (fun x => star (f x)) (star f') s x :=
  h.star

protected nonrec theorem HasDerivAt.star (h : HasDerivAt f f' x) :
    HasDerivAt (fun x => star (f x)) (star f') x :=
  h.star

protected nonrec theorem HasStrictDerivAt.star (h : HasStrictDerivAt f f' x) :
    HasStrictDerivAt (fun x => star (f x)) (star f') x := by simpa using h.star.hasStrictDerivAt

protected theorem derivWithin.star :
    derivWithin (fun y => star (f y)) s x = star (derivWithin f s x) := by
  by_cases hxs : UniqueDiffWithinAt 𝕜 s x
  · exact DFunLike.congr_fun (fderivWithin_star hxs) _
  · simp [derivWithin_zero_of_not_uniqueDiffWithinAt hxs]

protected theorem deriv.star : deriv (fun y => star (f y)) x = star (deriv f x) :=
  DFunLike.congr_fun fderiv_star _

@[simp]
protected theorem deriv.star' : (deriv fun y => star (f y)) = fun x => star (deriv f x) :=
  funext fun _ => deriv.star
```
