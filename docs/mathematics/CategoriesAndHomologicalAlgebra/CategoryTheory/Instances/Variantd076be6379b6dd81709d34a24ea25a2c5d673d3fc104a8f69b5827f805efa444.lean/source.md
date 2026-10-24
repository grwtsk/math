# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Instances.Variantd076be6379b6dd81709d34a24ea25a2c5d673d3fc104a8f69b5827f805efa444

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59235631efff83499065bfaab7b8933a0569fad2` · SHA-256 `8863d62b91853b80c08b4e65c303726c8de8ed092e7b217a5299bbc49d4da01d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProdBitraverse.Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ProdBitraverse.Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"cbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Control/Bitraversable/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Control.Bitraversable.Lemmas
import Mathlib.Control.Traversable.Lemmas

/-!
# Bitraversable instances

This file provides `Bitraversable` instances for concrete bifunctors:
* `Prod`
* `Sum`
* `Functor.Const`
* `flip`
* `Function.bicompl`
* `Function.bicompr`

## References

* Hackage: <https://hackage.haskell.org/package/base-4.12.0.0/docs/Data-Bitraversable.html>

## Tags

traversable bitraversable functor bifunctor applicative
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProdBitraverse.Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf

universe u v w

variable {t : Type u → Type u → Type u} [Bitraversable t]

section

variable {F : Type u → Type u} [Applicative F]

/-- The bitraverse function for `α × β`. -/
def Prod.bitraverse {α α' β β'} (f : α → F α') (f' : β → F β') : α × β → F (α' × β')
  | (x, y) => Prod.mk <$> f x <*> f' y

instance : Bitraversable Prod where bitraverse := @Prod.bitraverse

instance : LawfulBitraversable Prod := by
  constructor <;> intros <;> casesm _ × _ <;>
    simp [bitraverse, Prod.bitraverse, functor_norm] <;> rfl

open Functor

/-- The bitraverse function for `α ⊕ β`. -/
def Sum.bitraverse {α α' β β'} (f : α → F α') (f' : β → F β') : α ⊕ β → F (α' ⊕ β')
  | Sum.inl x => Sum.inl <$> f x
  | Sum.inr x => Sum.inr <$> f' x

instance : Bitraversable Sum where bitraverse := @Sum.bitraverse

instance : LawfulBitraversable Sum := by
  constructor <;> intros <;> casesm _ ⊕ _ <;>
    simp [bitraverse, Sum.bitraverse, functor_norm] <;> rfl


set_option linter.unusedVariables false in
/-- The bitraverse function for `Const`. It throws away the second map. -/
@[nolint unusedArguments]
def Const.bitraverse {F : Type u → Type u} [Applicative F] {α α' β β'} (f : α → F α')
    (f' : β → F β') : Const α β → F (Const α' β') :=
  f

instance Bitraversable.const : Bitraversable Const where bitraverse := @Const.bitraverse

instance LawfulBitraversable.const : LawfulBitraversable Const := by
  constructor <;> intros <;> simp [bitraverse, Const.bitraverse, functor_norm] <;> rfl

/-- The bitraverse function for `flip`. -/
nonrec def flip.bitraverse {α α' β β'} (f : α → F α') (f' : β → F β') :
    flip t α β → F (flip t α' β') :=
  (bitraverse f' f : t β α → F (t β' α'))

instance Bitraversable.flip : Bitraversable (flip t) where bitraverse := @flip.bitraverse t _

open LawfulBitraversable

instance LawfulBitraversable.flip [LawfulBitraversable t] : LawfulBitraversable (flip t) := by
  constructor <;> intros <;> casesm LawfulBitraversable t <;> apply_assumption only [*]

open Bitraversable Functor

instance (priority := 10) Bitraversable.traversable {α} : Traversable (t α) where
  traverse := @tsnd t _ _

instance (priority := 10) Bitraversable.isLawfulTraversable [LawfulBitraversable t] {α} :
    LawfulTraversable (t α) := by
  constructor <;> intros <;>
    simp [traverse, comp_tsnd, functor_norm]
  · simp [tsnd_eq_snd_id, (· <$> ·)]
  · simp [tsnd, binaturality, Function.comp_def, functor_norm]

end

open Bifunctor Traversable LawfulTraversable LawfulBitraversable

open Function (bicompl bicompr)

section Bicompl

variable (F G : Type u → Type u) [Traversable F] [Traversable G]

/-- The bitraverse function for `bicompl`. -/
nonrec def Bicompl.bitraverse {m} [Applicative m] {α β α' β'} (f : α → m β) (f' : α' → m β') :
    bicompl t F G α α' → m (bicompl t F G β β') :=
  (bitraverse (traverse f) (traverse f') : t (F α) (G α') → m _)

instance : Bitraversable (bicompl t F G) where bitraverse := @Bicompl.bitraverse t _ F G _ _

instance [LawfulTraversable F] [LawfulTraversable G] [LawfulBitraversable t] :
    LawfulBitraversable (bicompl t F G) := by
  constructor <;> intros <;>
    simp [bitraverse, Bicompl.bitraverse, bimap, traverse_id, bitraverse_id_id, comp_bitraverse,
      functor_norm]
  · simp [traverse_eq_map_id', bitraverse_eq_bimap_id]
  · dsimp only [bicompl]
    simp [binaturality, naturality_pf]

end Bicompl

section Bicompr

variable (F : Type u → Type u) [Traversable F]

/-- The bitraverse function for `bicompr`. -/
nonrec def Bicompr.bitraverse {m} [Applicative m] {α β α' β'} (f : α → m β) (f' : α' → m β') :
    bicompr F t α α' → m (bicompr F t β β') :=
  (traverse (bitraverse f f') : F (t α α') → m _)

instance : Bitraversable (bicompr F t) where bitraverse := @Bicompr.bitraverse t _ F _

instance [LawfulTraversable F] [LawfulBitraversable t] : LawfulBitraversable (bicompr F t) := by
  constructor <;> intros <;>
    simp [bitraverse, Bicompr.bitraverse, bitraverse_id_id, functor_norm]
  · simp only [bitraverse_eq_bimap_id', traverse_eq_map_id', Function.comp_apply, Id.pure_eq]; rfl
  · dsimp only [bicompr]
    simp [naturality, binaturality']

end Bicompr
```
