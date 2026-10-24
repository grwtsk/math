# Complete source: GRWTSK.Topology.GeneralTopology.OrderClosedExtr.Variantd61bb73fba385c3cc6a20dc276311d29c052eb65336ff5013f42a8e75fec5276

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9310515b9826b2d03f3223a174380c161ecb35a2` · SHA-256 `97a66eb274d6b7108218603ca3ed3ecb822a04de6f62307db8fda48c6415af42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsLocalMaxOfMonoAnti.Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsLocalMaxOfMonoAnti.Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991","mathematical_subject":"Topology.GeneralTopology","original_sha256":"6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Order/OrderClosedExtr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Bjørn Kjos-Hanssen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bjørn Kjos-Hanssen, Patrick Massot
-/

import Mathlib.Topology.Order.OrderClosed
import Mathlib.Topology.Order.LocalExtr

/-!
# Local maxima from monotonicity and antitonicity

In this file we prove a lemma that is useful for the First Derivative Test in calculus,
and its dual.

## Main statements

* `isLocalMax_of_mono_anti` : if a function `f` is monotone to the left of `x`
  and antitone to the right of `x` then `f` has a local maximum at `x`.

* `isLocalMin_of_anti_mono` : the dual statement for minima.

* `isLocalMax_of_mono_anti'` : a version of `isLocalMax_of_mono_anti` for filters.

* `isLocalMin_of_anti_mono'` : a version of `isLocalMax_of_mono_anti'` for minima.

-/


namespace GRWTSK.Topology.GeneralTopology.IsLocalMaxOfMonoAnti.Variant6080aa66193065bc5a6c30025877673abe14297dd63eb32e3332c545ca76a991

open Set Topology Filter

/-- If `f` is monotone on `(a,b]` and antitone on `[b,c)` then `f` has
a local maximum at `b`. -/
lemma isLocalMax_of_mono_anti
    {α : Type*} [TopologicalSpace α] [LinearOrder α] [OrderClosedTopology α]
    {β : Type*} [Preorder β]
    {a b c : α} (g₀ : a < b) (g₁ : b < c) {f : α → β}
    (h₀ : MonotoneOn f (Ioc a b))
    (h₁ : AntitoneOn f (Ico b c)) : IsLocalMax f b :=
  isLocalMax_of_mono_anti' (Ioc_mem_nhdsLE g₀) (Ico_mem_nhdsGE g₁) h₀ h₁

/-- If `f` is antitone on `(a,b]` and monotone on `[b,c)` then `f` has
a local minimum at `b`. -/
lemma isLocalMin_of_anti_mono
    {α : Type*} [TopologicalSpace α] [LinearOrder α] [OrderClosedTopology α]
    {β : Type*} [Preorder β] {a b c : α} (g₀ : a < b) (g₁ : b < c) {f : α → β}
    (h₀ : AntitoneOn f (Ioc a b)) (h₁ : MonotoneOn f (Ico b c)) : IsLocalMin f b :=
  mem_of_superset (Ioo_mem_nhds g₀ g₁) (fun x hx => by rcases le_total x b <;> aesop)
```
