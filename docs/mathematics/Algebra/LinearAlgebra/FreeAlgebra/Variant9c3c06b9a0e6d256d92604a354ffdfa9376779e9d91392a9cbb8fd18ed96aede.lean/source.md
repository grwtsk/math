# Complete source: GRWTSK.Algebra.LinearAlgebra.FreeAlgebra.Variant9c3c06b9a0e6d256d92604a354ffdfa9376779e9d91392a9cbb8fd18ed96aede

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa173666cd2439d7cfd6816c4995606818da2015` · SHA-256 `54e464ad5e31ce7ef353b764e63fcb1216cdcfa3ad90173acb85a090f95b31e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BasisFreeMonoid.Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.BasisFreeMonoid.Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/FreeAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.FreeAlgebra
import Mathlib.LinearAlgebra.Basis.Cardinality
import Mathlib.LinearAlgebra.Dimension.StrongRankCondition
import Mathlib.LinearAlgebra.Dimension.Subsingleton
import Mathlib.LinearAlgebra.Finsupp.VectorSpace
import Mathlib.LinearAlgebra.FreeModule.Basic
import Mathlib.LinearAlgebra.FreeModule.StrongRankCondition

/-!
# Linear algebra properties of `FreeAlgebra R X`

This file provides a `FreeMonoid X` basis on the `FreeAlgebra R X`, and uses it to show the
dimension of the algebra is the cardinality of `List X`
-/



namespace GRWTSK.Algebra.LinearAlgebra.BasisFreeMonoid.Variant480b03d6635bf02403fce51cd2d77975348bcd9ff798405f78872f0e1b36aa45

universe u v

namespace FreeAlgebra

variable (R : Type u) (X : Type v)

section
variable [CommSemiring R]

/-- The `FreeMonoid X` basis on the `FreeAlgebra R X`,
mapping `[x₁, x₂, ..., xₙ]` to the "monomial" `1 • x₁ * x₂ * ⋯ * xₙ` -/
-- @[simps]
noncomputable def basisFreeMonoid : Basis (FreeMonoid X) R (FreeAlgebra R X) :=
  Finsupp.basisSingleOne.map (equivMonoidAlgebraFreeMonoid (R := R) (X := X)).symm.toLinearEquiv

instance : Module.Free R (FreeAlgebra R X) :=
  have : Module.Free R (MonoidAlgebra R (FreeMonoid X)) := Module.Free.finsupp _ _ _
  Module.Free.of_equiv (equivMonoidAlgebraFreeMonoid (R := R) (X := X)).symm.toLinearEquiv

end

theorem rank_eq [CommRing R] [Nontrivial R] :
    Module.rank R (FreeAlgebra R X) = Cardinal.lift.{u} (Cardinal.mk (List X)) := by
  rw [← (Basis.mk_eq_rank'.{_,_,_,u} (basisFreeMonoid R X)).trans (Cardinal.lift_id _),
    Cardinal.lift_umax.{v, u}, FreeMonoid]

end FreeAlgebra

open Cardinal

theorem Algebra.rank_adjoin_le {R : Type u} {S : Type v} [CommRing R] [Ring S] [Algebra R S]
    (s : Set S) : Module.rank R (adjoin R s) ≤ max #s ℵ₀ := by
  rw [adjoin_eq_range_freeAlgebra_lift]
  cases subsingleton_or_nontrivial R
  · rw [rank_subsingleton]; exact one_le_aleph0.trans (le_max_right _ _)
  rw [← lift_le.{max u v}]
  refine (lift_rank_range_le (FreeAlgebra.lift R ((↑) : s → S)).toLinearMap).trans ?_
  rw [FreeAlgebra.rank_eq, lift_id'.{v,u}, lift_umax.{v,u}, lift_le, max_comm]
  exact mk_list_le_max _
```
