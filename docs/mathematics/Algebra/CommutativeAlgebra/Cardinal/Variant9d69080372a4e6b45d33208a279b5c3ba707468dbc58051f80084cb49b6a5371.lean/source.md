# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Cardinal.Variant9d69080372a4e6b45d33208a279b5c3ba707468dbc58051f80084cb49b6a5371

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `340822f9aecbad0ca2f26677ea5f717726fa27cc` · SHA-256 `8de30ac149ef1f4c73a5055e6abf333ca79a30c9486beef1d681b41723e5bc95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.CardinalMkEqMaxLift.Variantc80a69982b40fae168bc66aa3175c6b4bad03d12fed634695005e72cd98bed7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c80a69982b40fae168bc66aa3175c6b4bad03d12fed634695005e72cd98bed7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.CardinalMkEqMaxLift.Variantc80a69982b40fae168bc66aa3175c6b4bad03d12fed634695005e72cd98bed7b","mathematical_subject":"Algebra.Polynomials","original_sha256":"c80a69982b40fae168bc66aa3175c6b4bad03d12fed634695005e72cd98bed7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/MvPolynomial/Cardinal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Chris Hughes, Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Junyan Xu
-/
module

public import Mathlib.Data.Finsupp.Fintype

import Mathlib.Algebra.MonoidAlgebra.Cardinal
public import Mathlib.Algebra.MvPolynomial.Basic
public import Mathlib.SetTheory.Cardinal.Order
public import Mathlib.Tactic.NormNum

/-!
# Cardinality of Multivariate Polynomial Ring

The main result in this file is `MvPolynomial.cardinalMk_le_max`, which says that
the cardinality of `MvPolynomial σ R` is bounded above by the maximum of `#R`, `#σ`
and `ℵ₀`.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.CardinalMkEqMaxLift.Variantc80a69982b40fae168bc66aa3175c6b4bad03d12fed634695005e72cd98bed7b

public section


universe u v

open Cardinal

namespace MvPolynomial

section TwoUniverses

variable {σ : Type u} {R : Type v} [CommSemiring R]

-- We want this to have higher priority than `AddMonoidAlgebra.cardinalMk_eq_max_lift_of_infinite`.
@[simp high]
theorem cardinalMk_eq_max_lift [Nonempty σ] [Nontrivial R] :
    #(MvPolynomial σ R) = lift.{u} #R ⊔ lift.{v} #σ ⊔ ℵ₀ := by simp [sup_assoc]

-- We want this to have higher priority than `AddMonoidAlgebra.cardinalMk_eq_lift_of_fintype`.
@[simp high]
theorem cardinalMk_eq_lift [IsEmpty σ] : #(MvPolynomial σ R) = lift.{u} #R := by simp

@[nontriviality]
theorem cardinalMk_eq_one [Subsingleton R] : #(MvPolynomial σ R) = 1 := mk_eq_one _


/-- The cardinality of the multivariate polynomial ring, `MvPolynomial σ R` is at most the maximum
of `#R`, `#σ` and `ℵ₀`.

See `cardinalMk_le_max` for the universe monomorphic version. -/
theorem cardinalMk_le_max_lift {σ : Type u} {R : Type v} [CommSemiring R] :
    #(MvPolynomial σ R) ≤ lift.{u} #R ⊔ lift.{v} #σ ⊔ ℵ₀ := by
  nontriviality R; cases isEmpty_or_nonempty σ <;> simp

end TwoUniverses

variable {σ R : Type u} [CommSemiring R]

theorem cardinalMk_eq_max [Nonempty σ] [Nontrivial R] : #(MvPolynomial σ R) = #R ⊔ #σ ⊔ ℵ₀ := by
  simp [sup_assoc]

theorem cardinalMk_eq [IsEmpty σ] : #(MvPolynomial σ R) = #R := by simp

/-- The cardinality of the multivariate polynomial ring, `MvPolynomial σ R` is at most the maximum
of `#R`, `#σ` and `ℵ₀`.

See `cardinalMk_le_max_lift` for the universe polymorphic version. -/
theorem cardinalMk_le_max : #(MvPolynomial σ R) ≤ #R ⊔ #σ ⊔ ℵ₀ :=
  cardinalMk_le_max_lift.trans <| by rw [lift_id, lift_id]

end MvPolynomial
```
