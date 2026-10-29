-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Groupoid.Varianta41c49cf334f230e7ba77573cfaeba33046cb655d968fd7a078f8a69e3d907c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a41c49cf334f230e7ba77573cfaeba33046cb655d968fd7a078f8a69e3d907c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Groupoid.Varianta41c49cf334f230e7ba77573cfaeba33046cb655d968fd7a078f8a69e3d907c9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a41c49cf334f230e7ba77573cfaeba33046cb655d968fd7a078f8a69e3d907c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Groupoid/Discrete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Groupoid
public import Mathlib.CategoryTheory.Discrete.Basic
/-!

# Discrete categories are groupoids
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Groupoid.Varianta41c49cf334f230e7ba77573cfaeba33046cb655d968fd7a078f8a69e3d907c9

public section

namespace CategoryTheory

variable {C : Type*}

instance : Groupoid (Discrete C) := { inv := fun h ↦ ⟨h.1.symm⟩ }

instance [Category* C] [IsDiscrete C] : IsGroupoid C where

end CategoryTheory
