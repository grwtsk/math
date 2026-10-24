# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prj.Varianteaf8f6255d471ecf5021530c5b7ec1ab7f852d1661ba9ae237c47a8a75c21ba4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bb0f39ee1ea0464d87ab4763a3d2cba70d6e714` · SHA-256 `0de83fc9d89fe57da26b73275e3c969b156f9ec733306461270e7a777bec9ae8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prj.Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Prj.Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/QPF/Multivariate/Constructions/Prj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Simon Hudon All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Control.Functor.Multivariate
import Mathlib.Data.QPF.Multivariate.Basic


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prj.Variant2fc169064d4dab71ea0de0886d5e8a3ec513c0801e78957eeabdf8a5e85bab9a

#align_import data.qpf.multivariate.constructions.prj from "leanprover-community/mathlib"@"dc6c365e751e34d100e80fe6e314c3c3e0fd2988"

/-!
Projection functors are QPFs. The `n`-ary projection functors on `i` is an `n`-ary
functor `F` such that `F (α₀..αᵢ₋₁, αᵢ, αᵢ₊₁..αₙ₋₁) = αᵢ`
-/


universe u v

namespace MvQPF

open MvFunctor

variable {n : ℕ} (i : Fin2 n)

/-- The projection `i` functor -/
def Prj (v : TypeVec.{u} n) : Type u := v i
#align mvqpf.prj MvQPF.Prj

instance Prj.inhabited {v : TypeVec.{u} n} [Inhabited (v i)] : Inhabited (Prj i v) :=
  ⟨(default : v i)⟩
#align mvqpf.prj.inhabited MvQPF.Prj.inhabited

/-- `map` on functor `Prj i` -/
def Prj.map ⦃α β : TypeVec n⦄ (f : α ⟹ β) : Prj i α → Prj i β := f _
#align mvqpf.prj.map MvQPF.Prj.map

instance Prj.mvfunctor : MvFunctor (Prj i) where map := @Prj.map _ i
#align mvqpf.prj.mvfunctor MvQPF.Prj.mvfunctor

/-- Polynomial representation of the projection functor -/
def Prj.P : MvPFunctor.{u} n where
  A := PUnit
  B _ j := ULift <| PLift <| i = j
set_option linter.uppercaseLean3 false in
#align mvqpf.prj.P MvQPF.Prj.P

/-- Abstraction function of the `QPF` instance -/
def Prj.abs ⦃α : TypeVec n⦄ : (Prj.P i).Obj α → Prj i α
  | ⟨_x, f⟩ => f _ ⟨⟨rfl⟩⟩
#align mvqpf.prj.abs MvQPF.Prj.abs

/-- Representation function of the `QPF` instance -/
def Prj.repr ⦃α : TypeVec n⦄ : Prj i α → (Prj.P i).Obj α := fun x : α i =>
  ⟨⟨⟩, fun j ⟨⟨h⟩⟩ => (h.rec x : α j)⟩
#align mvqpf.prj.repr MvQPF.Prj.repr

instance Prj.mvqpf : MvQPF (Prj i) where
  P := Prj.P i
  abs := @Prj.abs _ i
  repr := @Prj.repr _ i
  abs_repr := by intros; rfl
  abs_map := by intros α β f P; cases P; rfl
#align mvqpf.prj.mvqpf MvQPF.Prj.mvqpf

end MvQPF
```
