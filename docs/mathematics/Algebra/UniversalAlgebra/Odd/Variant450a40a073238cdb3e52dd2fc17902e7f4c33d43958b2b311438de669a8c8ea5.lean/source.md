# Complete source: GRWTSK.Algebra.UniversalAlgebra.Odd.Variant450a40a073238cdb3e52dd2fc17902e7f4c33d43958b2b311438de669a8c8ea5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1e6e99819b8892527af7df76f1183ceb36a6f1f` · SHA-256 `0ebab62f5e39be6684842bf795045cca9da3f955a5c64dd139a6a23af9326faf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.StrictMonoOfOddStrictMonoOnNonneg.Variant20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.StrictMonoOfOddStrictMonoOnNonneg.Variant20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Monotone/Odd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.Algebra.Order.Monoid.OrderDual
import Mathlib.Order.Monotone.Union

/-!
# Monotonicity of odd functions

An odd function on a linear ordered additive commutative group `G` is monotone on the whole group
provided that it is monotone on `Set.Ici 0`, see `monotone_of_odd_of_monotoneOn_nonneg`. We also
prove versions of this lemma for `Antitone`, `StrictMono`, and `StrictAnti`.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.StrictMonoOfOddStrictMonoOnNonneg.Variant20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f

open Set

variable {G H : Type*} [AddCommGroup G] [LinearOrder G] [IsOrderedAddMonoid G]
  [AddCommGroup H] [PartialOrder H] [IsOrderedAddMonoid H]

/-- An odd function on a linear ordered additive commutative group is strictly monotone on the whole
group provided that it is strictly monotone on `Set.Ici 0`. -/
theorem strictMono_of_odd_strictMonoOn_nonneg {f : G → H} (h₁ : ∀ x, f (-x) = -f x)
    (h₂ : StrictMonoOn f (Ici 0)) : StrictMono f := by
  refine StrictMonoOn.Iic_union_Ici (fun x hx y hy hxy => neg_lt_neg_iff.1 ?_) h₂
  rw [← h₁, ← h₁]
  exact h₂ (neg_nonneg.2 hy) (neg_nonneg.2 hx) (neg_lt_neg hxy)

/-- An odd function on a linear ordered additive commutative group is strictly antitone on the whole
group provided that it is strictly antitone on `Set.Ici 0`. -/
theorem strictAnti_of_odd_strictAntiOn_nonneg {f : G → H} (h₁ : ∀ x, f (-x) = -f x)
    (h₂ : StrictAntiOn f (Ici 0)) : StrictAnti f :=
  strictMono_of_odd_strictMonoOn_nonneg (H := Hᵒᵈ) h₁ h₂

/-- An odd function on a linear ordered additive commutative group is monotone on the whole group
provided that it is monotone on `Set.Ici 0`. -/
theorem monotone_of_odd_of_monotoneOn_nonneg {f : G → H} (h₁ : ∀ x, f (-x) = -f x)
    (h₂ : MonotoneOn f (Ici 0)) : Monotone f := by
  refine MonotoneOn.Iic_union_Ici (fun x hx y hy hxy => neg_le_neg_iff.1 ?_) h₂
  rw [← h₁, ← h₁]
  exact h₂ (neg_nonneg.2 hy) (neg_nonneg.2 hx) (neg_le_neg hxy)

/-- An odd function on a linear ordered additive commutative group is antitone on the whole group
provided that it is monotone on `Set.Ici 0`. -/
theorem antitone_of_odd_of_monotoneOn_nonneg {f : G → H} (h₁ : ∀ x, f (-x) = -f x)
    (h₂ : AntitoneOn f (Ici 0)) : Antitone f :=
  monotone_of_odd_of_monotoneOn_nonneg (H := Hᵒᵈ) h₁ h₂
```
