-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ProjectiveSpecialLinearGroup.Variant1d70fd07e900dd09f6f2447ebf7464294ffd3793c02a5c2b618a1d8deaa9cc45","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d70fd07e900dd09f6f2447ebf7464294ffd3793c02a5c2b618a1d8deaa9cc45","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ProjectiveSpecialLinearGroup.Variant1d70fd07e900dd09f6f2447ebf7464294ffd3793c02a5c2b618a1d8deaa9cc45","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"1d70fd07e900dd09f6f2447ebf7464294ffd3793c02a5c2b618a1d8deaa9cc45","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/Matrix/ProjectiveSpecialLinearGroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Wen Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wen Yang
-/
module

public import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup

/-!
# Projective Special Linear Group

## Notation

In the `MatrixGroups` locale:

* `PSL(n, R)` is a shorthand for `Matrix.ProjectiveSpecialLinearGroup (Fin n) R`
-/


namespace GRWTSK.Algebra.LinearAlgebra.ProjectiveSpecialLinearGroup.Variant1d70fd07e900dd09f6f2447ebf7464294ffd3793c02a5c2b618a1d8deaa9cc45

public section

namespace Matrix

universe u v

open Matrix

open scoped MatrixGroups

variable (n : Type u) [DecidableEq n] [Fintype n] (R : Type v) [CommRing R]

/-- A projective special linear group is the quotient of a special linear group by its center. -/
abbrev ProjectiveSpecialLinearGroup : Type _ :=
    SpecialLinearGroup n R ⧸ Subgroup.center (SpecialLinearGroup n R)

/-- `PSL(n, R)` is the projective special linear group `SL(n, R)/Z(SL(n, R))`. -/
scoped[MatrixGroups] notation "PSL(" n ", " R ")" => Matrix.ProjectiveSpecialLinearGroup (Fin n) R

end Matrix
