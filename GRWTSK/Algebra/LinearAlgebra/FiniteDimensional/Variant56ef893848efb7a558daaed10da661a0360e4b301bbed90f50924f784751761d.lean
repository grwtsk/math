-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixTheory.Variant77a89827176e27d867ace86007645c41f7104245719af97e17e2a46732ea3fa0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77a89827176e27d867ace86007645c41f7104245719af97e17e2a46732ea3fa0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Matrix.Variant77a89827176e27d867ace86007645c41f7104245719af97e17e2a46732ea3fa0","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"77a89827176e27d867ace86007645c41f7104245719af97e17e2a46732ea3fa0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/FiniteDimensional.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Patrick Massot, Casper Putz, Anne Baanen
-/
import Mathlib.Data.Matrix.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Defs
import Mathlib.LinearAlgebra.FreeModule.Finite.Matrix
import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
# The finite-dimensional space of matrices

This file shows that `m` by `n` matrices form a finite-dimensional space.
Note that this is proven more generally elsewhere over modules as `Module.Finite.matrix`; this file
exists only to provide an entry in the instance list for `FiniteDimensional`.

## Main definitions

* `Matrix.finiteDimensional`: matrices form a finite dimensional vector space over a field `K`
* `LinearMap.finiteDimensional`

## Tags

matrix, finite dimensional, findim, finrank

-/



namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.Variant77a89827176e27d867ace86007645c41f7104245719af97e17e2a46732ea3fa0

universe u v

namespace Matrix

section FiniteDimensional

variable {m n : Type*} {R : Type v} [Field R]

instance finiteDimensional [Finite m] [Finite n] : FiniteDimensional R (Matrix m n R) :=
  Module.Finite.matrix

end FiniteDimensional

end Matrix

namespace LinearMap

variable {K : Type*} [Field K]
variable {V : Type*} [AddCommGroup V] [Module K V] [FiniteDimensional K V]
variable {W : Type*} [AddCommGroup W] [Module K W] [FiniteDimensional K W]

instance finiteDimensional : FiniteDimensional K (V →ₗ[K] W) :=
  Module.Finite.linearMap _ _ _ _

variable {A : Type*} [Ring A] [Algebra K A] [Module A V] [IsScalarTower K A V] [Module A W]
  [IsScalarTower K A W]

/-- Linear maps over a `k`-algebra are finite dimensional (over `k`) if both the source and
target are, as they form a subspace of all `k`-linear maps. -/
instance finiteDimensional' : FiniteDimensional K (V →ₗ[A] W) :=
  FiniteDimensional.of_injective (restrictScalarsₗ K A V W K) (restrictScalars_injective _)

end LinearMap
