# Complete source: GRWTSK.Algebra.LinearAlgebra.InvariantBasisNumber.Variant150423f85bb56834e51e4e0df8da661040af9d710d8100801799b7acd181532a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd8fcb32870de7c8ca5d6ae8dd2b39049389b6eb` · SHA-256 `24cda43f67d554f24959e732a041aa67782bfc5f10e33c4b029207d00c4cf140`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixSquareOfInvertible.Variant36ea36522c8bfced8433286d9f16a87e26f7c09746ed477251efc36c5505e883","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36ea36522c8bfced8433286d9f16a87e26f7c09746ed477251efc36c5505e883","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MatrixSquareOfInvertible.Variant36ea36522c8bfced8433286d9f16a87e26f7c09746ed477251efc36c5505e883","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"36ea36522c8bfced8433286d9f16a87e26f7c09746ed477251efc36c5505e883","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/InvariantBasisNumber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Module.Projective
import Mathlib.LinearAlgebra.Matrix.ToLin
import Mathlib.LinearAlgebra.Matrix.SemiringInverse
import Mathlib.LinearAlgebra.InvariantBasisNumber

/-!
# Invertible matrices over a ring with invariant basis number are square.
-/



namespace GRWTSK.Algebra.LinearAlgebra.MatrixSquareOfInvertible.Variant36ea36522c8bfced8433286d9f16a87e26f7c09746ed477251efc36c5505e883

variable {n m : Type*} [Fintype n] [DecidableEq n] [Fintype m] [DecidableEq m]
variable {R : Type*} [Semiring R] [InvariantBasisNumber R]

theorem Matrix.square_of_invertible (M : Matrix n m R) (N : Matrix m n R) (h : M * N = 1)
    (h' : N * M = 1) : Fintype.card n = Fintype.card m :=
  card_eq_of_linearEquiv R (Matrix.toLinearEquivRight'OfInv h' h)

open Function in
/-- Nontrivial commutative semirings `R` satisfy the rank condition.

If `R` is moreover a ring, then it satisfies the strong rank condition, see
`commRing_strongRankCondition`. It is unclear whether this generalizes to semirings. -/
instance (priority := 100) rankCondition_of_nontrivial_of_commSemiring {R : Type*}
    [CommSemiring R] [Nontrivial R] : RankCondition R where
  le_of_fin_surjective {n m} f hf := by
    by_contra! lt
    let p : (Fin m → R) →ₗ[R] Fin n → R := .funLeft R R (Fin.castLE lt.le)
    have hp : Surjective p :=
      LinearMap.funLeft_surjective_of_injective _ _ _ (Fin.castLE_injective lt.le)
    have ⟨g, eq⟩ := (p ∘ₗ f).exists_rightInverse_of_surjective
      (LinearMap.range_eq_top.mpr <| hp.comp hf)
    let e := Matrix.toLinAlgEquiv' (R := R) (n := Fin n).symm
    apply_fun e at eq
    rw [← Module.End.mul_eq_comp, ← Module.End.one_eq_id, map_mul, map_one,
      Matrix.mul_eq_one_comm_of_equiv (Equiv.refl _),
      ← map_mul, ← map_one e, e.injective.eq_iff] at eq
    have : Injective p := (p.coe_comp f ▸ LinearMap.injective_of_comp_eq_id _ _ eq).of_comp_right hf
    have ⟨⟨i, lt⟩, eq⟩ := injective_comp_right_iff_surjective.mp this ⟨n, lt⟩
    exact lt.ne congr($eq)
```
