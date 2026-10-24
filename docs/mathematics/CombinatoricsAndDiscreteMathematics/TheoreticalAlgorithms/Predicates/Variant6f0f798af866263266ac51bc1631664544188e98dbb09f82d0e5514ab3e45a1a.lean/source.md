# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Predicates.Variant6f0f798af866263266ac51bc1631664544188e98dbb09f82d0e5514ab3e45a1a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06322b9b41231db0d7be4f532dfb823cc3f1a2ec` · SHA-256 `f8edec9504a781b306e36d5a91d447290855715a851344c7f85d8f3a45fee358`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sign.Variant1d399026c2aa69bd59572a51118c0b9a9f46d6996dae129f9cae9b3a523f7447","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d399026c2aa69bd59572a51118c0b9a9f46d6996dae129f9cae9b3a523f7447","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Sign.Variant1d399026c2aa69bd59572a51118c0b9a9f46d6996dae129f9cae9b3a523f7447","mathematical_subject":"Computation.DataStructures","original_sha256":"1d399026c2aa69bd59572a51118c0b9a9f46d6996dae129f9cae9b3a523f7447","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/ComputeAsymptotics/Multiseries/Monomial/Predicates.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Vasilii Nesterov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vasilii Nesterov
-/
module

public import Mathlib.Basic.Real.Basic

/-!

# Predicates on monomials

In this file we define `UnitMonomial`: type to represent monomials without coefficient as a list of
its exponents.  `[e₁, e₂, ..., eₙ]` corresponds to `basis[0] ^ e₁ * ... * basis[n] ^ eₙ` where
`basis` is the basis of functions.

Then we define some predicates for these lists:
1. `FirstNonzeroIsPos li` means that the first non-zero element of the list `li` is positive.
2. `FirstNonzeroIsNeg li` means that the first non-zero element of the list `li` is negative.
3. `AllZero li` means that all elements in `li` are zero.

This trichotomy determines the asymptotic behaviour of a monomial:
`FirstNonzeroIsPos` means it tends to infinity, `FirstNonzeroIsNeg` means it tends to zero and
`AllZero` means it tends to a constant.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sign.Variant1d399026c2aa69bd59572a51118c0b9a9f46d6996dae129f9cae9b3a523f7447

@[expose] public section

namespace Tactic.ComputeAsymptotics

/-- Unit monomial, represented as a list of its exponents. `[e₁, e₂, ..., eₙ]` corresponds to
`basis[0] ^ e₁ * ... * basis[n] ^ eₙ` where `basis` is the basis of functions. -/
abbrev UnitMonomial := List ℝ

namespace UnitMonomial

/-- Type representing a sign of the first non-zero exponent, returned by `sign`. -/
inductive Sign
| pos | neg | zero

/-- Sign of the first non-zero exponent of a unit monomial. -/
noncomputable def sign : UnitMonomial → Sign
  | [] => .zero
  | hd :: tl =>
    if 0 < hd then
      .pos
    else if hd < 0 then
      .neg
    else
      sign tl

/-- Predicate stating that the first non-zero exponent is positive. -/
def FirstNonzeroIsPos (m : UnitMonomial) : Prop := m.sign = .pos

/-- Predicate stating that the first non-zero exponent is negative. -/
def FirstNonzeroIsNeg (m : UnitMonomial) : Prop := m.sign = .neg

/-- Predicate stating that all exponents are zero. -/
def AllZero (m : UnitMonomial) : Prop := m.sign = .zero

namespace AllZero

theorem nil : AllZero [] :=
  rfl

@[simp]
theorem cons_iff {hd : ℝ} {tl : UnitMonomial} :
    AllZero (hd :: tl) ↔ hd = 0 ∧ AllZero tl := by
  grind [AllZero, sign]

theorem of_tail {hd : ℝ} {tl : UnitMonomial} (h_hd : hd = 0) (h_tl : AllZero tl) :
    AllZero (hd :: tl) :=
  cons_iff.mpr ⟨h_hd, h_tl⟩

theorem replicate {n : ℕ} : AllZero (List.replicate n 0) := by
  induction n <;> grind [AllZero, sign]

theorem not_FirstNonzeroIsPos {li : UnitMonomial} (h : AllZero li) :
    ¬ FirstNonzeroIsPos li := by
  grind [AllZero, FirstNonzeroIsPos]

theorem not_FirstNonzeroIsNeg {li : UnitMonomial} (h : AllZero li) :
    ¬ FirstNonzeroIsNeg li := by
  grind [AllZero, FirstNonzeroIsNeg]

end AllZero

namespace FirstNonzeroIsPos

@[simp]
theorem not_nil : ¬ FirstNonzeroIsPos [] := by simp [FirstNonzeroIsPos, sign]

@[simp]
theorem cons_iff {hd : ℝ} {tl : UnitMonomial} :
    FirstNonzeroIsPos (hd :: tl) ↔ 0 < hd ∨ (hd = 0 ∧ FirstNonzeroIsPos tl) := by
  grind [FirstNonzeroIsPos, sign]

theorem of_head {hd : ℝ} (tl : UnitMonomial) (h_hd : 0 < hd) :
    FirstNonzeroIsPos (hd :: tl) := by
  simp [h_hd]

theorem of_tail {hd : ℝ} {tl : UnitMonomial} (h_hd : hd = 0)
    (h_tl : FirstNonzeroIsPos tl) :
    FirstNonzeroIsPos (hd :: tl) := by
  simp [h_hd, h_tl]

theorem not_AllZero {li : UnitMonomial} (h : FirstNonzeroIsPos li) :
    ¬ AllZero li :=
  fun h' ↦ h'.not_FirstNonzeroIsPos h

theorem not_FirstNonzeroIsNeg {li : UnitMonomial} (h : FirstNonzeroIsPos li) :
    ¬ FirstNonzeroIsNeg li := by
  grind [FirstNonzeroIsPos, FirstNonzeroIsNeg]

end FirstNonzeroIsPos

namespace FirstNonzeroIsNeg

@[simp]
theorem not_nil : ¬ FirstNonzeroIsNeg [] := by simp [FirstNonzeroIsNeg, sign]

@[simp]
theorem cons_iff {hd : ℝ} {tl : UnitMonomial} :
    FirstNonzeroIsNeg (hd :: tl) ↔ hd < 0 ∨ (hd = 0 ∧ FirstNonzeroIsNeg tl) := by
  grind [FirstNonzeroIsNeg, sign]

theorem of_head {hd : ℝ} (tl : UnitMonomial) (h_hd : hd < 0) :
    FirstNonzeroIsNeg (hd :: tl) := by
  simp [h_hd]

theorem of_tail {hd : ℝ} {tl : UnitMonomial} (h_hd : hd = 0) (h_tl : FirstNonzeroIsNeg tl) :
    FirstNonzeroIsNeg (hd :: tl) := by
  simp [h_hd, h_tl]

theorem not_AllZero {li : UnitMonomial} (h : FirstNonzeroIsNeg li) :
    ¬ AllZero li :=
  fun h' ↦ h'.not_FirstNonzeroIsNeg h

theorem not_FirstNonzeroIsPos {li : UnitMonomial} (h : FirstNonzeroIsNeg li) :
    ¬ FirstNonzeroIsPos li :=
  fun h' ↦ h'.not_FirstNonzeroIsNeg h

end FirstNonzeroIsNeg

end Tactic.ComputeAsymptotics.UnitMonomial
```
