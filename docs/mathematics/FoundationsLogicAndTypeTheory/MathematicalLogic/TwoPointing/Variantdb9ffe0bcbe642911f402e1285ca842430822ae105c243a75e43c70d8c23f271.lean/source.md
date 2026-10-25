# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TwoPointing.Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4dadcfc89123b4cb44249f63623b333f52df2c4a` · SHA-256 `cbe4c6b0c1e84efa115c33812591743e8b26d21bfd5316f79f7ff6ea6935bd7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TwoPointing.Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.TwoPointing.Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6","mathematical_subject":"Logic.Foundations","original_sha256":"2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/TwoPointing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Logic.Nontrivial.Defs
import Mathlib.Logic.Nonempty
import Mathlib.Tactic.Simps.Basic

/-!
# Two-pointings

This file defines `TwoPointing α`, the type of two pointings of `α`. A two-pointing is the data of
two distinct terms.

This is morally a Type-valued `Nontrivial`. Another type which is quite close in essence is `Sym2`.
Categorically speaking, `prod` is a cospan in the category of types. This forms the category of
bipointed types. Two-pointed types form a full subcategory of those.

## References

* [nLab, *Coalgebra of the real interval*]
  (https://ncatlab.org/nlab/show/coalgebra+of+the+real+interval)
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TwoPointing.Variant2e4d5558b49a9073414a61df3694aa1e8438bcaf769fa809bf992767809ceac6

open Function

variable {α β : Type*}

/-- Two-pointing of a type. This is a Type-valued termed `Nontrivial`. -/
@[ext]
structure TwoPointing (α : Type*) extends α × α where
  /-- `fst` and `snd` are distinct terms -/
  fst_ne_snd : fst ≠ snd
  deriving DecidableEq

initialize_simps_projections TwoPointing (+toProd, -fst, -snd)

namespace TwoPointing

variable (p : TwoPointing α) (q : TwoPointing β)

theorem snd_ne_fst : p.snd ≠ p.fst :=
  p.fst_ne_snd.symm

/-- Swaps the two pointed elements. -/
@[simps]
def swap : TwoPointing α :=
  ⟨(p.snd, p.fst), p.snd_ne_fst⟩

theorem swap_fst : p.swap.fst = p.snd := rfl

theorem swap_snd : p.swap.snd = p.fst := rfl

@[simp]
theorem swap_swap : p.swap.swap = p := rfl

include p in
theorem to_nontrivial : Nontrivial α :=
  ⟨⟨p.fst, p.snd, p.fst_ne_snd⟩⟩

instance [Nontrivial α] : Nonempty (TwoPointing α) :=
  let ⟨a, b, h⟩ := exists_pair_ne α
  ⟨⟨(a, b), h⟩⟩

@[simp]
theorem nonempty_two_pointing_iff : Nonempty (TwoPointing α) ↔ Nontrivial α :=
  ⟨fun ⟨p⟩ ↦ p.to_nontrivial, fun _ => inferInstance⟩

section Pi

variable (α) [Nonempty α]

/-- The two-pointing of constant functions. -/
def pi : TwoPointing (α → β) where
  fst _ := q.fst
  snd _ := q.snd
  fst_ne_snd h := q.fst_ne_snd (congr_fun h (Classical.arbitrary α))

@[simp]
theorem pi_fst : (q.pi α).fst = const α q.fst :=
  rfl

@[simp]
theorem pi_snd : (q.pi α).snd = const α q.snd :=
  rfl

end Pi

/-- The product of two two-pointings. -/
def prod : TwoPointing (α × β) where
  fst := (p.fst, q.fst)
  snd := (p.snd, q.snd)
  fst_ne_snd h := p.fst_ne_snd (congr_arg Prod.fst h)

@[simp]
theorem prod_fst : (p.prod q).fst = (p.fst, q.fst) :=
  rfl

@[simp]
theorem prod_snd : (p.prod q).snd = (p.snd, q.snd) :=
  rfl

/-- The sum of two pointings. Keeps the first point from the left and the second point from the
right. -/
protected def sum : TwoPointing (α ⊕ β) :=
  ⟨(Sum.inl p.fst, Sum.inr q.snd), Sum.inl_ne_inr⟩

@[simp]
theorem sum_fst : (p.sum q).fst = Sum.inl p.fst :=
  rfl

@[simp]
theorem sum_snd : (p.sum q).snd = Sum.inr q.snd :=
  rfl

/-- The `false`, `true` two-pointing of `Bool`. -/
protected def bool : TwoPointing Bool :=
  ⟨(false, true), Bool.false_ne_true⟩

@[simp]
theorem bool_fst : TwoPointing.bool.fst = false := rfl

@[simp]
theorem bool_snd : TwoPointing.bool.snd = true := rfl

instance : Inhabited (TwoPointing Bool) :=
  ⟨TwoPointing.bool⟩

/-- The `False`, `True` two-pointing of `Prop`. -/
protected def prop : TwoPointing Prop :=
  ⟨(False, True), false_ne_true⟩

@[simp]
theorem prop_fst : TwoPointing.prop.fst = False :=
  rfl

@[simp]
theorem prop_snd : TwoPointing.prop.snd = True :=
  rfl

end TwoPointing
```
