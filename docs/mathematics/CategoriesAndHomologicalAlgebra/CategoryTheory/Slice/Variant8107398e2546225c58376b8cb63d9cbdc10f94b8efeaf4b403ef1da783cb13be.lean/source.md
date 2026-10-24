# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Slice.Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a74ac0ad03f377f388bb2a5c3474229909f781ef` · SHA-256 `af95eaad5a44d0fb3ce745f8e87b5a05249a0886697ecc2a0762f999ffa0f550`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EvalSlice.Variant73f2994a8f5d7ac9033e94dc48e96c7fb7380067ea33e5046339dd9e188aa9b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73f2994a8f5d7ac9033e94dc48e96c7fb7380067ea33e5046339dd9e188aa9b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EvalSlice.Variant73f2994a8f5d7ac9033e94dc48e96c7fb7380067ea33e5046339dd9e188aa9b7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"73f2994a8f5d7ac9033e94dc48e96c7fb7380067ea33e5046339dd9e188aa9b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/CategoryTheory/Slice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Category.Basic
import Mathlib.Tactic.Conv

/-!
# The `slice` tactic

Applies a tactic to an interval of terms from a term obtained by repeated application
of `Category.comp`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EvalSlice.Variant73f2994a8f5d7ac9033e94dc48e96c7fb7380067ea33e5046339dd9e188aa9b7

open CategoryTheory
open Lean Parser.Tactic Elab Command Elab.Tactic Meta

-- TODO someone might like to generalise this tactic to work with other associative structures.

/- Porting note: moved `repeat_with_results` to `repeat_count` to `Mathlib/Tactic/Core.lean` -/

open Tactic
open Parser.Tactic.Conv

/--
`slice` is a conv tactic; if the current focus is a composition of several morphisms,
`slice a b` reassociates as needed, and zooms in on the `a`-th through `b`-th morphisms.
Thus if the current focus is `(a ≫ b) ≫ ((c ≫ d) ≫ e)`, then `slice 2 3` zooms to `b ≫ c`.
-/
syntax (name := slice) "slice " num ppSpace num : conv

/--
`evalSlice`
- rewrites the target expression using `Category.assoc`.
- uses `congr` to split off the first `a-1` terms and rotates to `a`-th (last) term
- counts the number `k` of rewrites as it uses `←Category.assoc` to bring the target to
  left associated form; from the first step this is the total number of remaining terms from `C`
- it now splits off `b-a` terms from target using `congr` leaving the desired subterm
- finally, it rewrites it once more using `Category.assoc` to bring it to right-associated
  normal form
-/
def evalSlice (a b : Nat) : TacticM Unit := do
  let _ ← iterateUntilFailureWithResults do
    evalTactic (← `(conv| rw [Category.assoc]))
  iterateRange (a - 1) (a - 1) do
      evalTactic (← `(conv| congr))
      evalTactic (← `(tactic| rotate_left))
  let k ← iterateUntilFailureCount
    <| evalTactic (← `(conv| rw [← Category.assoc]))
  let c := k+1+a-b
  iterateRange c c <| evalTactic (← `(conv| congr))
  let _ ← iterateUntilFailureWithResults do
    evalTactic (← `(conv| rw [Category.assoc]))

/-- `slice` is implemented by `evalSlice`. -/
elab "slice " a:num ppSpace b:num : conv => evalSlice a.getNat b.getNat

/--
`slice_lhs a b => tac` zooms to the left hand side, uses associativity for categorical
composition as needed, zooms in on the `a`-th through `b`-th morphisms, and invokes `tac`.
-/
syntax (name := sliceLHS) "slice_lhs " num ppSpace num " => " convSeq : tactic
macro_rules
  | `(tactic| slice_lhs $a $b => $seq) =>
    `(tactic| conv => lhs; slice $a $b; ($seq:convSeq))

/--
`slice_rhs a b => tac` zooms to the right hand side, uses associativity for categorical
composition as needed, zooms in on the `a`-th through `b`-th morphisms, and invokes `tac`.
-/
syntax (name := sliceRHS) "slice_rhs " num ppSpace num " => " convSeq : tactic
macro_rules
  | `(tactic| slice_rhs $a $b => $seq) =>
    `(tactic| conv => rhs; slice $a $b; ($seq:convSeq))

/- Porting note: update when `add_tactic_doc` is supported` -/
-- add_tactic_doc
--   { Name := "slice"
--     category := DocCategory.tactic
--     declNames := [`tactic.interactive.sliceLHS, `tactic.interactive.sliceRHS]
--     tags := ["category theory"] }
--
```
