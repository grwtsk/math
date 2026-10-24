# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prj.Variant7759f48554c7f80a22023da7752cff99d6b626547d91753ec9107977155dc180

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a0ec60a0c68f3aa218c74fa11f138240e442cd2` · SHA-256 `6dd08bf80a21ddd77d7cc4fb004a92f8b2d868ea3c9900cc0e257c305a9b2e0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prj.Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Prj.Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/QPF/Multivariate/Constructions/Prj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Control.Functor.Multivariate
import Mathlib.Data.QPF.Multivariate.Basic

/-!
Projection functors are QPFs. The `n`-ary projection functors on `i` is an `n`-ary
functor `F` such that `F (α₀..αᵢ₋₁, αᵢ, αᵢ₊₁..αₙ₋₁) = αᵢ`
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prj.Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f

universe u v

namespace MvQPF

open MvFunctor

variable {n : ℕ} (i : Fin2 n)

/-- The projection `i` functor -/
def Prj (v : TypeVec.{u} n) : Type u := v i

instance Prj.inhabited {v : TypeVec.{u} n} [Inhabited (v i)] : Inhabited (Prj i v) :=
  ⟨(default : v i)⟩

/-- `map` on functor `Prj i` -/
def Prj.map ⦃α β : TypeVec n⦄ (f : α ⟹ β) : Prj i α → Prj i β := f _

instance Prj.mvfunctor : MvFunctor (Prj i) where map := @Prj.map _ i

/-- Polynomial representation of the projection functor -/
def Prj.P : MvPFunctor.{u} n where
  A := PUnit
  B _ j := ULift <| PLift <| i = j

/-- Abstraction function of the `QPF` instance -/
def Prj.abs ⦃α : TypeVec n⦄ : Prj.P i α → Prj i α
  | ⟨_x, f⟩ => f _ ⟨⟨rfl⟩⟩

/-- Representation function of the `QPF` instance -/
def Prj.repr ⦃α : TypeVec n⦄ : Prj i α → Prj.P i α := fun x : α i =>
  ⟨⟨⟩, fun j ⟨⟨h⟩⟩ => (h.rec x : α j)⟩

instance Prj.mvqpf : MvQPF (Prj i) where
  P := Prj.P i
  abs := @Prj.abs _ i
  repr := @Prj.repr _ i
  abs_repr := by intros; rfl
  abs_map := by intros α β f P; cases P; rfl

end MvQPF
```
