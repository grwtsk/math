# Complete source: GRWTSK.Algebra.LinearAlgebra.AlgClosed.Variant75fe209ed132a7c7b0cc5240dda81a438ec9acc13335b63e2d7afea509e242a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `326c57433841d7d3f181c5f9e90303599ac29987` · SHA-256 `726a599617a9f084e33b8e8fc516d79b2707beebd673609482fad98167478023`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsometryEquivSumSquares.Variantb0c4030ca2b0dcd246e7e625ea9ad8d353f528ff1db04c9ed707a7174abda637","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0c4030ca2b0dcd246e7e625ea9ad8d353f528ff1db04c9ed707a7174abda637","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsometryEquivSumSquares.Variantb0c4030ca2b0dcd246e7e625ea9ad8d353f528ff1db04c9ed707a7174abda637","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b0c4030ca2b0dcd246e7e625ea9ad8d353f528ff1db04c9ed707a7174abda637","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/QuadraticForm/AlgClosed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen, Kexing Ying, Eric Wieser
-/
module

public import Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv
public import Mathlib.FieldTheory.IsAlgClosed.Basic

/-!
# Quadratic forms over an algebraically closed field

`equivalent_sum_squares`: A nondegenerate quadratic form over an algebraically closed field of
characteristic not equal to 2 is equivalent to a sum of squares.

TODO: generalize `QuadraticForm.isometryEquivSumSquares` to quadratically closed field.
-/


namespace GRWTSK.Algebra.LinearAlgebra.IsometryEquivSumSquares.Variantb0c4030ca2b0dcd246e7e625ea9ad8d353f528ff1db04c9ed707a7174abda637

public section


open QuadraticMap
namespace QuadraticForm

variable {ι : Type*} [Fintype ι] {K : Type*} [Field K] [IsAlgClosed K]

/-- The isometry between a weighted sum of squares on an algebraically closed field and the
sum of squares, i.e. `weightedSumSquares` with weights 1 or 0. -/
noncomputable def isometryEquivSumSquares [DecidableEq K] (w : ι → K) :
    IsometryEquiv (weightedSumSquares K w)
      (weightedSumSquares K (fun i => if w i = 0 then 0 else 1 : ι → K)) := by
  refine isometryEquivWeightedSumSquaresWeightedSumSquares (fun i => if h : w i = 0 then 1 else
    Units.mk0 (IsAlgClosed.exists_eq_mul_self (w i)).choose (by
      rw [← mul_self_eq_zero.ne, ← (IsAlgClosed.exists_eq_mul_self (w i)).choose_spec]
      simpa using h)) ?_
  intro i
  split_ifs with h <;>
    simp [h, pow_two, ← (IsAlgClosed.exists_eq_mul_self (w i : K)).choose_spec]

/-- The isometry between a weighted sum of squares on an algebraically closed field and the
sum of squares, i.e. `weightedSumSquares` with weight `fun (i : ι) => 1`. -/
noncomputable def isometryEquivSumSquaresUnits [DecidableEq K] (w : ι → Kˣ) :
    IsometryEquiv (weightedSumSquares K w) (weightedSumSquares K (1 : ι → K)) :=
  (isometryEquivSumSquares (fun i ↦ (w i).val)).trans (weightedSumSquaresCongr (by ext; simp))

/-- A nondegenerate quadratic form on an algebraically closed field of characteristic not equal to 2
is equivalent to the sum of squares, i.e. `weightedSumSquares` with weight `fun (i : ι) => 1`. -/
theorem equivalent_weightedSumSquares_of_isAlgClosed [Invertible (2 : K)] {M : Type*}
    [AddCommGroup M] [Module K M]
    [FiniteDimensional K M] (Q : QuadraticForm K M) (hQ : (associated Q).SeparatingLeft) :
    Equivalent Q (weightedSumSquares K (1 : Fin (Module.finrank K M) → K)) :=
  open scoped Classical in
  let ⟨w, ⟨hw₁⟩⟩ := Q.equivalent_weightedSumSquares_units_of_nondegenerate' hQ
  ⟨hw₁.trans (isometryEquivSumSquaresUnits w)⟩

/-- All nondegenerate quadratic forms on an algebraically closed field of characteristic not equal
to 2 are equivalent. -/
theorem equivalent_of_isAlgClosed [Invertible (2 : K)] {M : Type*} [AddCommGroup M] [Module K M]
    [FiniteDimensional K M] (Q₁ Q₂ : QuadraticForm K M)
    (hQ₁ : (associated Q₁).SeparatingLeft)
    (hQ₂ : (associated Q₂).SeparatingLeft) : Equivalent Q₁ Q₂ :=
  (Q₁.equivalent_weightedSumSquares_of_isAlgClosed hQ₁).trans
  (Q₂.equivalent_weightedSumSquares_of_isAlgClosed hQ₂).symm

end QuadraticForm
```
