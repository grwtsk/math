# Complete source: GRWTSK.Algebra.GroupTheory.TypeTags.Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6d0560328a120f98dcd68329d146060c9ba502e` · SHA-256 `45fbe12b026e897f8fc7811028e07f5a946f2f70161506dba479facb792072e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.AddEquivToMultiplicative.Variantf0f2dae95683cf65675fc703a6ad45b2d1c33a6c7703868806334d51c42d7349","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0f2dae95683cf65675fc703a6ad45b2d1c33a6c7703868806334d51c42d7349","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.AddEquivToMultiplicative.Variantf0f2dae95683cf65675fc703a6ad45b2d1c33a6c7703868806334d51c42d7349","mathematical_subject":"Algebra.Groups","original_sha256":"f0f2dae95683cf65675fc703a6ad45b2d1c33a6c7703868806334d51c42d7349","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Equiv/TypeTags.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Callum Sutton, Yury Kudryashov
-/
module

public import Mathlib.Algebra.Group.TypeTags.Hom
public import Mathlib.Algebra.Group.Equiv.Defs
public import Mathlib.Algebra.Notation.Prod
public import Mathlib.Tactic.Spread

/-!
# Additive and multiplicative equivalences associated to `Multiplicative` and `Additive`.
-/


namespace GRWTSK.Algebra.GroupTheory.AddEquivToMultiplicative.Variantf0f2dae95683cf65675fc703a6ad45b2d1c33a6c7703868806334d51c42d7349

@[expose] public section

assert_not_exists Finite Fintype

variable {ι G H : Type*}

/-- Reinterpret `G ≃+ H` as `Multiplicative G ≃* Multiplicative H`. -/
@[simps]
def AddEquiv.toMultiplicative [Add G] [Add H] :
    G ≃+ H ≃ (Multiplicative G ≃* Multiplicative H) where
  toFun f :=
  { toFun x := Multiplicative.ofAdd (f (Multiplicative.toAdd x))
    invFun x := Multiplicative.ofAdd (f.symm (Multiplicative.toAdd x))
    left_inv := f.left_inv
    right_inv := f.right_inv
    map_mul' := map_add f }
  invFun f :=
  { toFun x := Multiplicative.toAdd (f (Multiplicative.ofAdd x))
    invFun x := Multiplicative.toAdd (f.symm (Multiplicative.ofAdd x))
    left_inv := f.left_inv
    right_inv := f.right_inv
    map_add' := map_mul f }

/-- Reinterpret `G ≃* H` as `Additive G ≃+ Additive H`. -/
@[simps]
def MulEquiv.toAdditive [Mul G] [Mul H] :
    G ≃* H ≃ (Additive G ≃+ Additive H) where
  toFun f :=
  { toFun x := Additive.ofMul (f (Additive.toMul x))
    invFun x := Additive.ofMul (f.symm (Additive.toMul x))
    left_inv := f.left_inv
    right_inv := f.right_inv
    map_add' := map_mul f }
  invFun f :=
  { toFun x := Additive.toMul (f (Additive.ofMul x))
    invFun x := Additive.toMul (f.symm (Additive.ofMul x))
    left_inv := f.left_inv
    right_inv := f.right_inv
    map_mul' := map_add f }

/-- Reinterpret `Additive G ≃+ H` as `G ≃* Multiplicative H`. -/
@[simps]
def AddEquiv.toMultiplicativeRight [Mul G] [Add H] :
    Additive G ≃+ H ≃ (G ≃* Multiplicative H) where
  toFun f :=
  { toFun x := Multiplicative.ofAdd (f (Additive.ofMul x))
    invFun x := Additive.toMul (f.symm (Multiplicative.toAdd x))
    left_inv := f.left_inv
    right_inv := f.right_inv
    map_mul' := map_add f }
  invFun f :=
  { toFun x := Multiplicative.toAdd (f (Additive.toMul x))
    invFun x := Additive.ofMul (f.symm (Multiplicative.ofAdd x))
    left_inv := f.left_inv
    right_inv := f.right_inv
    map_add' := map_mul f }

/-- Reinterpret `G ≃* Multiplicative H` as `Additive G ≃+ H`. -/
abbrev MulEquiv.toAdditiveLeft [Mul G] [Add H] :
    G ≃* Multiplicative H ≃ (Additive G ≃+ H) :=
  AddEquiv.toMultiplicativeRight.symm

/-- Reinterpret `G ≃+ Additive H` as `Multiplicative G ≃* H`. -/
@[simps]
def AddEquiv.toMultiplicativeLeft [Add G] [Mul H] :
    G ≃+ Additive H ≃ (Multiplicative G ≃* H) where
  toFun f :=
  { toFun x := Additive.toMul (f (Multiplicative.toAdd x))
    invFun x := Multiplicative.ofAdd (f.symm (Additive.ofMul x))
    left_inv := f.left_inv
    right_inv := f.right_inv
    map_mul' := map_add f }
  invFun f :=
  { toFun x := Additive.ofMul (f (Multiplicative.ofAdd x))
    invFun x := Multiplicative.toAdd (f.symm (Additive.toMul x))
    left_inv := f.left_inv
    right_inv := f.right_inv
    map_add' := map_mul f }

/-- Reinterpret `Multiplicative G ≃* H` as `G ≃+ Additive H` as. -/
abbrev MulEquiv.toAdditiveRight [Add G] [Mul H] :
    Multiplicative G ≃* H ≃ (G ≃+ Additive H) :=
  AddEquiv.toMultiplicativeLeft.symm

/-- Multiplicative equivalence between multiplicative endomorphisms of a `MulOneClass` `M`
and additive endomorphisms of `Additive M`. -/
@[simps!] def MulEquiv.monoidEnd (M : Type*) [MulOneClass M] :
    Monoid.End M ≃* AddMonoid.End (Additive M) :=
  { MonoidHom.toAdditive with
    map_mul' := fun _ _ => rfl }

/-- Multiplicative equivalence between additive endomorphisms of an `AddZeroClass` `A`
and multiplicative endomorphisms of `Multiplicative A`. -/
@[simps!] def MulEquiv.addMonoidEnd (A : Type*) [AddZeroClass A] :
    AddMonoid.End A ≃* Monoid.End (Multiplicative A) :=
  { AddMonoidHom.toMultiplicative with
    map_mul' := fun _ _ => rfl }

@[deprecated (since := "2026-09-10")] alias monoidEndToAdditive := MulEquiv.monoidEnd
@[deprecated (since := "2026-09-10")] alias monoidEndToAdditive_apply_apply :=
  MulEquiv.monoidEnd_apply_apply
@[deprecated (since := "2026-09-10")] alias monoidEndToAdditive_symm_apply_apply :=
  MulEquiv.monoidEnd_symm_apply_apply
@[deprecated (since := "2026-09-10")] alias addMonoidEndToMultiplicative := MulEquiv.addMonoidEnd
@[deprecated (since := "2026-09-10")] alias addMonoidEndToMultiplicative_apply_apply :=
  MulEquiv.addMonoidEnd_apply_apply
@[deprecated (since := "2026-09-10")] alias addMonoidEndToMultiplicative_symm_apply_apply :=
  MulEquiv.addMonoidEnd_symm_apply_apply
@[deprecated (since := "2026-09-10")] alias MulEquiv.Monoid.End := MulEquiv.monoidEnd
@[deprecated (since := "2026-09-10")] alias MulEquiv.Monoid.End_apply_apply :=
  MulEquiv.monoidEnd_apply_apply
@[deprecated (since := "2026-09-10")] alias MulEquiv.Monoid.End_symm_apply_apply :=
  MulEquiv.monoidEnd_symm_apply_apply
@[deprecated (since := "2026-09-10")] alias MulEquiv.AddMonoid.End := MulEquiv.addMonoidEnd
@[deprecated (since := "2026-09-10")] alias MulEquiv.AddMonoid.End_apply_apply :=
  MulEquiv.addMonoidEnd_apply_apply
@[deprecated (since := "2026-09-10")] alias MulEquiv.AddMonoid.End_symm_apply_apply :=
  MulEquiv.addMonoidEnd_symm_apply_apply

/-- `Multiplicative (∀ i : ι, K i)` is equivalent to `∀ i : ι, Multiplicative (K i)`. -/
@[simps]
def MulEquiv.piMultiplicative (K : ι → Type*) [∀ i, Add (K i)] :
    Multiplicative (∀ i : ι, K i) ≃* (∀ i : ι, Multiplicative (K i)) where
  toFun x := fun i ↦ Multiplicative.ofAdd <| x.toAdd i
  invFun x := Multiplicative.ofAdd fun i ↦ (x i).toAdd
  map_mul' _ _ := rfl

variable (ι) (G) in
/-- `Multiplicative (ι → G)` is equivalent to `ι → Multiplicative G`. -/
abbrev MulEquiv.funMultiplicative [Add G] :
    Multiplicative (ι → G) ≃* (ι → Multiplicative G) :=
  MulEquiv.piMultiplicative fun _ ↦ G

/-- `Additive (∀ i : ι, K i)` is equivalent to `∀ i : ι, Additive (K i)`. -/
@[simps]
def AddEquiv.piAdditive (K : ι → Type*) [∀ i, Mul (K i)] :
    Additive (∀ i : ι, K i) ≃+ (∀ i : ι, Additive (K i)) where
  toFun x := fun i ↦ Additive.ofMul <| x.toMul i
  invFun x := Additive.ofMul fun i ↦ (x i).toMul
  map_add' _ _ := rfl

variable (ι) (G) in
/-- `Additive (ι → G)` is equivalent to `ι → Additive G`. -/
abbrev AddEquiv.funAdditive [Mul G] :
    Additive (ι → G) ≃+ (ι → Additive G) :=
  AddEquiv.piAdditive fun _ ↦ G

section

variable (G) (H)

/-- `Additive (Multiplicative G)` is just `G`. -/
@[simps!]
def AddEquiv.additiveMultiplicative [Add G] : Additive (Multiplicative G) ≃+ G :=
  MulEquiv.toAdditiveLeft (MulEquiv.refl (Multiplicative G))

/-- `Multiplicative (Additive H)` is just `H`. -/
@[simps!]
def MulEquiv.multiplicativeAdditive [Mul H] : Multiplicative (Additive H) ≃* H :=
  AddEquiv.toMultiplicativeLeft (AddEquiv.refl (Additive H))

@[deprecated (since := "2026-09-10")] alias MulEquiv.toMultiplicative_toAdditive :=
  MulEquiv.multiplicativeAdditive
@[deprecated (since := "2026-09-10")] alias MulEquiv.toMultiplicative_toAdditive_apply :=
  MulEquiv.multiplicativeAdditive_apply
@[deprecated (since := "2026-09-10")] alias MulEquiv.toMultiplicative_toAdditive_symm_apply :=
  MulEquiv.multiplicativeAdditive_symm_apply
@[deprecated (since := "2026-09-10")] alias AddEquiv.toAdditive_toMultiplicative :=
  AddEquiv.additiveMultiplicative
@[deprecated (since := "2026-09-10")] alias AddEquiv.toAdditive_toMultiplicative_apply :=
  AddEquiv.additiveMultiplicative_apply
@[deprecated (since := "2026-09-10")] alias AddEquiv.toAdditive_toMultiplicative_symm_apply :=
  AddEquiv.additiveMultiplicative_symm_apply

/-- `Multiplicative (G × H)` is equivalent to `Multiplicative G × Multiplicative H`. -/
@[simps]
def MulEquiv.prodMultiplicative [Add G] [Add H] :
    Multiplicative (G × H) ≃* Multiplicative G × Multiplicative H where
  toFun x := (Multiplicative.ofAdd x.toAdd.1,
    Multiplicative.ofAdd x.toAdd.2)
  invFun := fun (x, y) ↦ Multiplicative.ofAdd (x.toAdd, y.toAdd)
  map_mul' _ _ := rfl

/-- `Additive (G × H)` is equivalent to `Additive G × Additive H`. -/
@[simps]
def AddEquiv.prodAdditive [Mul G] [Mul H] :
    Additive (G × H) ≃+ Additive G × Additive H where
  toFun x := (Additive.ofMul x.toMul.1,
    Additive.ofMul x.toMul.2)
  invFun := fun (x, y) ↦ Additive.ofMul (x.toMul, y.toMul)
  map_add' _ _ := rfl

end
```
