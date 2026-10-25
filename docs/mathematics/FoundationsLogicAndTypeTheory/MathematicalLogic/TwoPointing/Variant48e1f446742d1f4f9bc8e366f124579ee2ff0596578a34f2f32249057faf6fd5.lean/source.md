# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TwoPointing.Variant48e1f446742d1f4f9bc8e366f124579ee2ff0596578a34f2f32249057faf6fd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c40d2ad08c4c4d6e2401dd3dd0963ce846b75795` · SHA-256 `ab4a15fa4748f8d9148ec4e72fbc0475da1bd971f726333805301ae3db4ccc2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TwoPointing.Variant48f588dcc7aa0854d25e686e78be93d5c5305d24a4f6538c77c8c96a7fbb5a1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48f588dcc7aa0854d25e686e78be93d5c5305d24a4f6538c77c8c96a7fbb5a1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.TwoPointing.Variant48f588dcc7aa0854d25e686e78be93d5c5305d24a4f6538c77c8c96a7fbb5a1f","mathematical_subject":"Logic.Foundations","original_sha256":"48f588dcc7aa0854d25e686e78be93d5c5305d24a4f6538c77c8c96a7fbb5a1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/TwoPointing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Basic.Nonempty
public import Mathlib.Basic.Nontrivial.Defs
public import Mathlib.Tactic.Simps
public import Batteries.Logic

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


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TwoPointing.Variant48f588dcc7aa0854d25e686e78be93d5c5305d24a4f6538c77c8c96a7fbb5a1f

@[expose] public section

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
