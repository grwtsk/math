# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sigma.Variantcaa36c17fc75fd56a979448286410232cd5f8b407b2a47bd737edc81c4cf7f80

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a05218e9d9c73e570f3cc171d3c52eaf782b2c5` · SHA-256 `72166698c59bf9ab0353ffb7241304fb4665cbbe233a58d2f5d4ecbde4a14af3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sigma.Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Sigma.Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/QPF/Multivariate/Constructions/Sigma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Data.PFunctor.Multivariate.Basic
import Mathlib.Data.QPF.Multivariate.Basic

/-!
# Dependent product and sum of QPFs are QPFs
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sigma.Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac

universe u

namespace MvQPF

open MvFunctor

variable {n : ℕ} {A : Type u}
variable (F : A → TypeVec.{u} n → Type u)

/-- Dependent sum of an `n`-ary functor. The sum can range over
data types like `ℕ` or over `Type.{u-1}` -/
def Sigma (v : TypeVec.{u} n) : Type u :=
  Σ α : A, F α v

/-- Dependent product of an `n`-ary functor. The sum can range over
data types like `ℕ` or over `Type.{u-1}` -/
def Pi (v : TypeVec.{u} n) : Type u :=
  ∀ α : A, F α v

instance Sigma.inhabited {α} [Inhabited A] [Inhabited (F default α)] : Inhabited (Sigma F α) :=
  ⟨⟨default, default⟩⟩

instance Pi.inhabited {α} [∀ a, Inhabited (F a α)] : Inhabited (Pi F α) :=
  ⟨fun _a => default⟩

namespace Sigma

instance [∀ α, MvFunctor <| F α] : MvFunctor (Sigma F) where
  map := fun f ⟨a, x⟩ => ⟨a, f <$$> x⟩


variable [∀ α, MvQPF <| F α]

/-- polynomial functor representation of a dependent sum -/
protected def P : MvPFunctor n :=
  ⟨Σ a, (P (F a)).A, fun x => (P (F x.1)).B x.2⟩

/-- abstraction function for dependent sums -/
protected def abs ⦃α⦄ : Sigma.P F α → Sigma F α
  | ⟨a, f⟩ => ⟨a.1, MvQPF.abs ⟨a.2, f⟩⟩

/-- representation function for dependent sums -/
protected def repr ⦃α⦄ : Sigma F α → Sigma.P F α
  | ⟨a, f⟩ =>
    let x := MvQPF.repr f
    ⟨⟨a, x.1⟩, x.2⟩

instance : MvQPF (Sigma F) where
  P := Sigma.P F
  abs {α} := @Sigma.abs _ _ F _ α
  repr {α} := @Sigma.repr _ _ F _ α
  abs_repr := by rintro α ⟨x, f⟩; simp only [Sigma.abs, Sigma.repr, Sigma.eta, abs_repr]
  abs_map := by rintro α β f ⟨x, g⟩; simp only [Sigma.abs, MvPFunctor.map_eq]
                simp only [(· <$$> ·), ← abs_map, ← MvPFunctor.map_eq]

end Sigma

namespace Pi

instance [∀ α, MvFunctor <| F α] : MvFunctor (Pi F) where map f x a := f <$$> x a

variable [∀ α, MvQPF <| F α]

/-- polynomial functor representation of a dependent product -/
protected def P : MvPFunctor n :=
  ⟨∀ a, (P (F a)).A, fun x i => Σ a, (P (F a)).B (x a) i⟩

/-- abstraction function for dependent products -/
protected def abs ⦃α⦄ : Pi.P F α → Pi F α
  | ⟨a, f⟩ => fun x => MvQPF.abs ⟨a x, fun i y => f i ⟨_, y⟩⟩

/-- representation function for dependent products -/
protected def repr ⦃α⦄ : Pi F α → Pi.P F α
  | f => ⟨fun a => (MvQPF.repr (f a)).1, fun _i a => (MvQPF.repr (f _)).2 _ a.2⟩

instance : MvQPF (Pi F) where
  P := Pi.P F
  abs := @Pi.abs _ _ F _
  repr := @Pi.repr _ _ F _
  abs_repr := by rintro α f; simp only [Pi.abs, Pi.repr, Sigma.eta, abs_repr]
  abs_map := by rintro α β f ⟨x, g⟩; simp only [Pi.abs, (· <$$> ·), ← abs_map]; rfl

end Pi

end MvQPF
```
