# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoryWithCofibrations.Variantb8be739041ab31bddb3b6bdb0f786f0da3a0262ea647148b735250f47855b207

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6921190699fa30cc295381d7d4b17ff23f3dbda7` · SHA-256 `ee70c77349b3cc30a42a0e5bc31e73080a8f24c17e0a6789e3f2aaf89b27e606`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoryWithFibrations.Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CategoryWithFibrations.Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/ModelCategory/CategoryWithCofibrations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.MorphismProperty.Basic

/-!
# Categories with classes of fibrations, cofibrations, weak equivalences

We introduce typeclasses `CategoryWithFibrations`, `CategoryWithCofibrations` and
`CategoryWithWeakEquivalences` to express that a category `C` is equipped with
classes of morphisms named "fibrations", "cofibrations" or "weak equivalences".

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoryWithFibrations.Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66

universe v u

namespace HomotopicalAlgebra

open CategoryTheory

variable (C : Type u) [Category.{v} C]

/-- A category with fibrations is a category equipped with
a class of morphisms named "fibrations". -/
class CategoryWithFibrations where
  /-- the class of fibrations -/
  fibrations : MorphismProperty C

/-- A category with cofibrations is a category equipped with
a class of morphisms named "cofibrations". -/
class CategoryWithCofibrations where
  /-- the class of cofibrations -/
  cofibrations : MorphismProperty C

/-- A category with weak equivalences is a category equipped with
a class of morphisms named "weak equivalences". -/
class CategoryWithWeakEquivalences where
  /-- the class of weak equivalences -/
  weakEquivalences : MorphismProperty C

variable {X Y : C} (f : X ⟶ Y)

section Fib

variable [CategoryWithFibrations C]

/-- The class of fibrations in a category with fibrations. -/
def fibrations : MorphismProperty C := CategoryWithFibrations.fibrations

variable {C}

/-- A morphism `f` satisfies `[Fibration f]` if it belongs to `fibrations C`. -/
@[mk_iff]
class Fibration : Prop where
  mem : fibrations C f

lemma mem_fibrations [Fibration f] : fibrations C f := Fibration.mem

end Fib

section Cof

variable [CategoryWithCofibrations C]

/-- The class of cofibrations in a category with cofibrations. -/
def cofibrations : MorphismProperty C := CategoryWithCofibrations.cofibrations

variable {C}

/-- A morphism `f` satisfies `[Cofibration f]` if it belongs to `cofibrations C`. -/
@[mk_iff]
class Cofibration : Prop where
  mem : cofibrations C f

lemma mem_cofibrations [Cofibration f] : cofibrations C f := Cofibration.mem

end Cof

section W

variable [CategoryWithWeakEquivalences C]

/-- The class of weak equivalences in a category with weak equivalences. -/
def weakEquivalences : MorphismProperty C := CategoryWithWeakEquivalences.weakEquivalences

variable {C}

/-- A morphism `f` satisfies `[WeakEquivalence f]` if it belongs to `weakEquivalences C`. -/
@[mk_iff]
class WeakEquivalence : Prop where
  mem : weakEquivalences C f

lemma mem_weakEquivalences [WeakEquivalence f] : weakEquivalences C f := WeakEquivalence.mem

end W

section TrivFib

variable [CategoryWithFibrations C] [CategoryWithWeakEquivalences C]

/-- A trivial fibration is a morphism that is both a fibration and a weak equivalence. -/
def trivialFibrations : MorphismProperty C := fibrations C ⊓ weakEquivalences C

lemma trivialFibrations_sub_fibrations : trivialFibrations C ≤ fibrations C :=
  fun _ _ _ hf ↦ hf.1

lemma trivialFibrations_sub_weakEquivalences : trivialFibrations C ≤ weakEquivalences C :=
  fun _ _ _ hf ↦ hf.2

variable {C}

lemma mem_trivialFibrations [Fibration f] [WeakEquivalence f] :
    trivialFibrations C f :=
  ⟨mem_fibrations f, mem_weakEquivalences f⟩

lemma mem_trivialFibrations_iff :
    trivialFibrations C f ↔ Fibration f ∧ WeakEquivalence f := by
  rw [fibration_iff, weakEquivalence_iff]
  rfl

end TrivFib

section TrivCof

variable [CategoryWithCofibrations C] [CategoryWithWeakEquivalences C]

/-- A trivial cofibration is a morphism that is both a cofibration and a weak equivalence. -/
def trivialCofibrations : MorphismProperty C := cofibrations C ⊓ weakEquivalences C

lemma trivialCofibrations_sub_cofibrations : trivialCofibrations C ≤ cofibrations C :=
  fun _ _ _ hf ↦ hf.1

lemma trivialCofibrations_sub_weakEquivalences : trivialCofibrations C ≤ weakEquivalences C :=
  fun _ _ _ hf ↦ hf.2


variable {C}

lemma mem_trivialCofibrations [Cofibration f] [WeakEquivalence f] :
    trivialCofibrations C f :=
  ⟨mem_cofibrations f, mem_weakEquivalences f⟩

lemma mem_trivialCofibrations_iff :
    trivialCofibrations C f ↔ Cofibration f ∧ WeakEquivalence f := by
  rw [cofibration_iff, weakEquivalence_iff]
  rfl

end TrivCof

end HomotopicalAlgebra
```
