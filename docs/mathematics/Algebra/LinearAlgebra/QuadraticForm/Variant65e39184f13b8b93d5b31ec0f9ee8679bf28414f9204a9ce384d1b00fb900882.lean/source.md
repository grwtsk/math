# Complete source: GRWTSK.Algebra.LinearAlgebra.QuadraticForm.Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc4215c28427de8084694963d37122ac783055db` · SHA-256 `cf928596761d3af13ed1cbb55d6c1870d5606fac8d60c47a6e16a77f7d0c2e05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.B.Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.B.Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Counterexamples/QuadraticForm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.LinearAlgebra.QuadraticForm.Basic
import Mathlib.Algebra.CharP.Two
import Mathlib.Data.ZMod.Basic


namespace GRWTSK.Algebra.LinearAlgebra.B.Variantb8ba37b6db3f26b542cf591591a17a05c551bb66a2c535cb0bbb77b50a3a816a

#align_import quadratic_form from "leanprover-community/mathlib"@"328375597f2c0dd00522d9c2e5a33b6a6128feeb"

/-!
# `QuadraticForm R M` and `Subtype BilinForm.IsSymm` are distinct notions in characteristic 2

The main result of this file is `BilinForm.not_injOn_toQuadraticForm_isSymm`.

The counterexample we use is $B (x, y) (x', y') ↦ xy' + x'y$ where `x y x' y' : ZMod 2`.
-/


variable (F : Type _) [Nontrivial F] [CommRing F] [CharP F 2]

open BilinForm

namespace Counterexample

set_option linter.uppercaseLean3 false

/-- The bilinear form we will use as a counterexample, over some field `F` of characteristic two. -/
def B : BilinForm F (F × F) :=
  BilinForm.linMulLin (LinearMap.fst _ _ _) (LinearMap.snd _ _ _) +
    BilinForm.linMulLin (LinearMap.snd _ _ _) (LinearMap.fst _ _ _)
#align counterexample.B Counterexample.B

@[simp]
theorem B_apply (x y : F × F) : B F x y = x.1 * y.2 + x.2 * y.1 :=
  rfl
#align counterexample.B_apply Counterexample.B_apply

theorem isSymm_B : (B F).IsSymm := fun x y => by simp [mul_comm, add_comm]
#align counterexample.is_symm_B Counterexample.isSymm_B

theorem isAlt_B : (B F).IsAlt := fun x => by simp [mul_comm, CharTwo.add_self_eq_zero (x.1 * x.2)]
#align counterexample.is_alt_B Counterexample.isAlt_B

theorem B_ne_zero : B F ≠ 0 := fun h => by simpa using BilinForm.congr_fun h (1, 0) (1, 1)
#align counterexample.B_ne_zero Counterexample.B_ne_zero

/-- `BilinForm.toQuadraticForm` is not injective on symmetric bilinear forms.

This disproves a weaker version of `QuadraticForm.associated_left_inverse`.
-/
theorem BilinForm.not_injOn_toQuadraticForm_isSymm.{u} :
    ¬∀ {R M : Type u} [Semiring R] [AddCommMonoid M], ∀ [Module R M],
      Set.InjOn (toQuadraticForm : BilinForm R M → QuadraticForm R M) {B | B.IsSymm} := by
  intro h
  let F := ULift.{u} (ZMod 2)
  apply B_ne_zero F
  apply h (isSymm_B F) isSymm_zero
  rw [BilinForm.toQuadraticForm_zero, BilinForm.toQuadraticForm_eq_zero]
  exact isAlt_B F
#align counterexample.bilin_form.not_inj_on_to_quadratic_form_is_symm Counterexample.BilinForm.not_injOn_toQuadraticForm_isSymm

end Counterexample
```
