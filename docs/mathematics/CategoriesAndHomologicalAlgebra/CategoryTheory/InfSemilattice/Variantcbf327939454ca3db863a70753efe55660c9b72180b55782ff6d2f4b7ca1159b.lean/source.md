# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InfSemilattice.Variantcbf327939454ca3db863a70753efe55660c9b72180b55782ff6d2f4b7ca1159b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31516706d1543ae59100699e276b47c74243cc6e` · SHA-256 `52a08aabfaf2b477bf2bf8202e9990906508dba33c8b71ce8c89c82b5db46b0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TensorObj.Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TensorObj.Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Cartesian/InfSemilattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Sina Hazratpour. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sina Hazratpour
-/
import Mathlib.CategoryTheory.Limits.Preorder
import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic

/-!
# The preorder category of a meet-semilattice with a greatest element is cartesian monoidal

The preorder category of a meet-semilattice `C` with a greatest element is cartesian monoidal.

A symmetric monoidal structure on the preorder category is automatically provided by the
instance and `CartesianMonoidalCategory.toSymmetricCategory`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TensorObj.Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f

namespace CategoryTheory

open Category MonoidalCategory

universe u

variable (C : Type u) [SemilatticeInf C] [OrderTop C]

namespace SemilatticeInf

/-- Cartesian monoidal structure for the preorder category of a meet-semilattice with
a greatest element. -/
noncomputable scoped instance cartesianMonoidalCategory : CartesianMonoidalCategory C :=
  .ofChosenFiniteProducts ⟨_, Preorder.isTerminalTop C⟩ fun X Y ↦ ⟨_, Preorder.isLimitBinaryFan X Y⟩

/-- Braided structure for the preorder category of a meet-semilattice with a greatest element. -/
noncomputable scoped instance braidedCategory : BraidedCategory C := .ofCartesianMonoidalCategory

lemma tensorObj {C : Type u} [SemilatticeInf C] [OrderTop C] {X Y : C} : X ⊗ Y = X ⊓ Y := rfl

lemma tensorUnit {C : Type u} [SemilatticeInf C] [OrderTop C] :
    𝟙_ C = ⊤ := rfl

end SemilatticeInf

end CategoryTheory
```
