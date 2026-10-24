# Complete source: GRWTSK.Topology.AlgebraicTopology.CategoryWithFibrations.Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41aeb3f4bf3efc1049317218d9fb4b3d82addd5c` · SHA-256 `497deca149f2b85a59ad2951e88856507bb6cfc93ac04921d0f2273f1b0aef34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.I.Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.I.Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/SimplicialSet/CategoryWithFibrations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.ModelCategory.CategoryWithCofibrations
import Mathlib.AlgebraicTopology.SimplicialSet.Boundary
import Mathlib.AlgebraicTopology.SimplicialSet.Horn
import Mathlib.CategoryTheory.MorphismProperty.LiftingProperty

/-!
# Cofibrations and fibrations in the category of simplicial sets

We endow `SSet` with `CategoryWithCofibrations` and `CategoryWithFibrations`
instances. Cofibrations are monomorphisms, and fibrations are morphisms
having the right lifting property with respect to horn inclusions.

We have an instance `mono_of_cofibration` (but only a lemma `cofibration_of_mono`).
Then, when stating lemmas about cofibrations of simplicial sets, it is advisable
to use the assumption `[Mono f]` instead of `[Cofibration f]`.

-/


namespace GRWTSK.Topology.AlgebraicTopology.I.Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410

open CategoryTheory HomotopicalAlgebra MorphismProperty Simplicial

universe u

namespace SSet

namespace modelCategoryQuillen

/-- The generating cofibrations: this is the family of morphisms in `SSet`
which consists of boundary inclusions `∂Δ[n].ι : ∂Δ[n] ⟶ Δ[n]`. -/
def I : MorphismProperty SSet.{u} :=
  .ofHoms (fun n ↦ ∂Δ[n].ι)

lemma boundary_ι_mem_I (n : ℕ) :
    I (boundary.{u} n).ι := by constructor

/-- The generating trivial cofibrations: this is the family of morphisms in `SSet`
which consists of horn inclusions `Λ[n, i].ι : Λ[n, i] ⟶ Δ[n]` (for positive `n`). -/
def J : MorphismProperty SSet.{u} :=
  ⨆ n, .ofHoms (fun (i : Fin (n + 2)) ↦ Λ[n + 1, i].ι)

lemma horn_ι_mem_J (n : ℕ) (i : Fin (n + 2)):
    J (horn.{u} (n + 1) i).ι := by
  simp only [J, iSup_iff]
  exact ⟨n, ⟨i⟩⟩

lemma I_le_monomorphisms : I.{u} ≤ monomorphisms _ := by
  rintro _ _ _ ⟨n⟩
  exact monomorphisms.infer_property _

lemma J_le_monomorphisms : J.{u} ≤ monomorphisms _ := by
  rintro _ _ _ h
  simp only [J, iSup_iff] at h
  obtain ⟨n, ⟨i⟩⟩ := h
  exact monomorphisms.infer_property _

/-- The cofibrations for the Quillen model category structure (TODO)
on `SSet` are monomorphisms. -/
scoped instance : CategoryWithCofibrations SSet.{u} where
  cofibrations := .monomorphisms _

/-- The fibrations for the Quillen model category structure (TODO)
on `SSet` are the morphisms which have the right lifting property
with respect to horn inclusions. -/
scoped instance : CategoryWithFibrations SSet.{u} where
  fibrations := J.rlp

lemma cofibrations_eq : cofibrations SSet.{u} = monomorphisms _ := rfl

lemma fibrations_eq : fibrations SSet.{u} = J.rlp := rfl

section

variable {X Y : SSet.{u}} (f : X ⟶ Y)

lemma cofibration_iff : Cofibration f ↔ Mono f := by
  rw [HomotopicalAlgebra.cofibration_iff]
  rfl

lemma fibration_iff : Fibration f ↔ J.rlp f := by
  rw [HomotopicalAlgebra.fibration_iff]
  rfl

instance mono_of_cofibration [Cofibration f] : Mono f := by rwa [← cofibration_iff]

lemma cofibration_of_mono [Mono f] : Cofibration f := by rwa [cofibration_iff]

instance [hf : Fibration f] {n : ℕ} (i : Fin (n + 2)) :
    HasLiftingProperty (horn (n + 1) i).ι f := by
  rw [fibration_iff] at hf
  exact hf _ (horn_ι_mem_J _ _)

end

end modelCategoryQuillen

end SSet
```
