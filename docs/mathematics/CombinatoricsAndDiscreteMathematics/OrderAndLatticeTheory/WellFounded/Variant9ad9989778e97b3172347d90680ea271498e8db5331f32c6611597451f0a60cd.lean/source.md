# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WellFounded.Variant9ad9989778e97b3172347d90680ea271498e8db5331f32c6611597451f0a60cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d90916df19b65cb1a5006343f1fb865009f44855` · SHA-256 `68d7326d83318c85774dee5db772a0f5f36f37e024c495a6bdcaadf840cecc73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LexAcc.Variant996bd60c36fa90e371a4120a1d36aa94191dba9571f439974ace1269f0e34e96","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"996bd60c36fa90e371a4120a1d36aa94191dba9571f439974ace1269f0e34e96","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.LexAcc.Variant996bd60c36fa90e371a4120a1d36aa94191dba9571f439974ace1269f0e34e96","mathematical_subject":"Algebra.OrderTheory","original_sha256":"996bd60c36fa90e371a4120a1d36aa94191dba9571f439974ace1269f0e34e96","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finsupp/WellFounded.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
module

public import Mathlib.Data.DFinsupp.WellFounded
public import Mathlib.Data.Finsupp.Lex

/-!
# Well-foundedness of the lexicographic and product orders on `Finsupp`

`Finsupp.Lex.wellFounded` and the two variants that follow it essentially say that if `(· > ·)` is
a well order on `α`, `(· < ·)` is well-founded on `N`, and `0` is a bottom element in `N`, then the
lexicographic `(· < ·)` is well-founded on `α →₀ N`.

`Finsupp.Lex.wellFoundedLT_of_finite` says that if `α` is finite and equipped with a linear order
and `(· < ·)` is well-founded on `N`, then the lexicographic `(· < ·)` is well-founded on `α →₀ N`.

`Finsupp.wellFoundedLT` and `wellFoundedLT_of_finite` state the same results for the product
order `(· < ·)`, but without the ordering conditions on `α`.

All results are transferred from `DFinsupp` via `Finsupp.toDFinsupp`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LexAcc.Variant996bd60c36fa90e371a4120a1d36aa94191dba9571f439974ace1269f0e34e96

public section


variable {α N : Type*}

namespace Finsupp

variable [Zero N] {r : α → α → Prop} {s : N → N → Prop}

/-- Transferred from `DFinsupp.Lex.acc`. See the top of that file for an explanation for the
  appearance of the relation `rᶜ ⊓ (≠)`. -/
theorem Lex.acc (hbot : ∀ ⦃n⦄, ¬s n 0) (hs : WellFounded s) (x : α →₀ N)
    (h : ∀ a ∈ x.support, Acc (rᶜ ⊓ (· ≠ ·)) a) :
    Acc (Finsupp.Lex r s) x := by
  rw [lex_eq_invImage_dfinsupp_lex]
  classical
    refine InvImage.accessible toDFinsupp (DFinsupp.Lex.acc (fun _ ↦ hbot) _ ?_)
    simpa only [toDFinsupp_support] using h

theorem Lex.wellFounded (hbot : ∀ ⦃n⦄, ¬s n 0) (hs : WellFounded s)
    (hr : WellFounded <| rᶜ ⊓ (· ≠ ·)) : WellFounded (Finsupp.Lex r s) :=
  ⟨fun x => Lex.acc hbot hs x fun a _ => hr.apply a⟩

theorem Lex.wellFounded' (hbot : ∀ ⦃n⦄, ¬s n 0) (hs : WellFounded s)
    [Std.Trichotomous r] (hr : WellFounded (Function.swap r)) : WellFounded (Finsupp.Lex r s) :=
  (lex_eq_invImage_dfinsupp_lex r s).symm ▸
    InvImage.wf _ (DFinsupp.Lex.wellFounded' (fun _ ↦ hbot) hr)

instance Lex.wellFoundedLT {α N} [LT α] [@Std.Trichotomous α (· < ·)] [hα : WellFoundedGT α]
    [AddMonoid N] [PartialOrder N] [IsBotZeroClass N]
    [hN : WellFoundedLT N] : WellFoundedLT (Lex (α →₀ N)) :=
  Lex.wellFounded' (fun _ ↦ not_lt_zero) hN hα

instance Colex.wellFoundedLT {α N} [LT α] [@Std.Trichotomous α (· < ·)] [WellFoundedLT α]
    [AddMonoid N] [PartialOrder N] [IsBotZeroClass N]
    [WellFoundedLT N] : WellFoundedLT (Colex (α →₀ N)) :=
  Lex.wellFoundedLT (α := αᵒᵈ)

variable (r)

theorem Lex.wellFounded_of_finite [IsStrictTotalOrder α r] [Finite α]
    (hs : WellFounded s) : WellFounded (Finsupp.Lex r s) :=
  InvImage.wf (@equivFunOnFinite α N _ _) (Pi.Lex.wellFounded r)

theorem Lex.wellFoundedLT_of_finite [LinearOrder α] [Finite α] [LT N]
    [hwf : WellFoundedLT N] : WellFoundedLT (Lex (α →₀ N)) :=
  Finsupp.Lex.wellFounded_of_finite (· < ·) hwf

theorem Colex.wellFoundedLT_of_finite [LinearOrder α] [Finite α] [LT N]
    [WellFoundedLT N] : WellFoundedLT (Colex (α →₀ N)) :=
  Lex.wellFoundedLT_of_finite (α := αᵒᵈ)

protected theorem wellFoundedLT [Preorder N] [WellFoundedLT N] (hbot : ∀ n : N, ¬n < 0) :
    WellFoundedLT (α →₀ N) :=
  InvImage.wf toDFinsupp (DFinsupp.wellFoundedLT fun _ a => hbot a)

instance wellFoundedLT' {N}
    [AddMonoid N] [PartialOrder N] [IsBotZeroClass N] [WellFoundedLT N] :
    WellFoundedLT (α →₀ N) :=
  Finsupp.wellFoundedLT fun _ => not_lt_zero

instance wellFoundedLT_of_finite [Finite α] [Preorder N] [WellFoundedLT N] :
    WellFoundedLT (α →₀ N) :=
  InvImage.wf equivFunOnFinite Function.wellFoundedLT

end Finsupp
```
