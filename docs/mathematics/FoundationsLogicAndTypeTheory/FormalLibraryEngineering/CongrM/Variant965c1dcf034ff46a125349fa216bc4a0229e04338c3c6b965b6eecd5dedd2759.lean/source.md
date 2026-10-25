# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CongrM.Variant965c1dcf034ff46a125349fa216bc4a0229e04338c3c6b965b6eecd5dedd2759

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96523f2ac354a9df9bcd1c1ad798aaca6940eabc` · SHA-256 `f2acad4a35c5abc6d5fe13ebb54f1cb8fb69cea536de1af6a32e84c4d0f7881a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rfl.Variantb8247a12583c12ed5c6f0ff426c18676f06eb23084f507fa0141f66f1042f17c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8247a12583c12ed5c6f0ff426c18676f06eb23084f507fa0141f66f1042f17c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Rfl.Variantb8247a12583c12ed5c6f0ff426c18676f06eb23084f507fa0141f66f1042f17c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b8247a12583c12ed5c6f0ff426c18676f06eb23084f507fa0141f66f1042f17c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/CongrM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Moritz Doll, Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll, Gabriel Ebner, Damiano Testa, Kyle Miller
-/
module

public import Mathlib.Tactic.Relation.Rfl
public import Mathlib.Tactic.TermCongr

/-!
# The `congrm` tactic

The `congrm` tactic ("`congr` with matching")
is a convenient frontend for `congr(...)` congruence quotations.
Roughly, `congrm e` is `refine congr(e')`, where `e'` is `e` with every `?m` placeholder
replaced by `$(?m)`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rfl.Variantb8247a12583c12ed5c6f0ff426c18676f06eb23084f507fa0141f66f1042f17c

public meta section

namespace Mathlib.Tactic
open Lean Parser Elab Tactic Meta

initialize registerTraceClass `Tactic.congrm

/--
`congrm e` is a tactic for proving goals of the form `lhs = rhs`, `lhs ↔ rhs`, `lhs ≍ rhs`,
or `R lhs rhs` when `R` is a reflexive relation.
The expression `e` is a pattern containing placeholders `?_`,
and this pattern is matched against `lhs` and `rhs` simultaneously.
These placeholders generate new goals that state that corresponding subexpressions
in `lhs` and `rhs` are equal.
If the placeholders have names, such as `?m`, then the new goals are given tags with those names.

Examples:
```lean
example {a b c d : ℕ} :
    Nat.pred a.succ * (d + (c + a.pred)) = Nat.pred b.succ * (b + (c + d.pred)) := by
  congrm Nat.pred (Nat.succ ?h1) * (?h2 + ?h3)
  /-  Goals left:
  case h1 ⊢ a = b
  case h2 ⊢ d = b
  case h3 ⊢ c + a.pred = c + d.pred
  -/
  sorry
  sorry
  sorry

example {a b : ℕ} (h : a = b) : (fun y : ℕ => ∀ z, a + a = z) = (fun x => ∀ z, b + a = z) := by
  congrm fun x => ∀ w, ?_ + a = w
  -- ⊢ a = b
  exact h
```

The `congrm` command is a convenient frontend to `congr(...)` congruence quotations.
If the goal is an equality, `congrm e` is equivalent to `refine congr(e')` where `e'` is
built from `e` by replacing each placeholder `?m` by `$(?m)`.
The pattern `e` is allowed to contain `$(...)` expressions to immediately substitute
equality proofs into the congruence, just like for congruence quotations.

[More documentation on `congr()` and `congrm`.](https://leanprover-community.github.io/extras/congr.html)
-/
syntax (name := congrM) "congrm " term : tactic

elab_rules : tactic
  | `(tactic| congrm $expr:term) => do
    -- Wrap all synthetic holes `?m` as `c(?m)` to form `congr(...)` pattern
    let pattern ← expr.raw.replaceM fun stx =>
      if stx.isOfKind ``Parser.Term.syntheticHole then
        pure <| stx.mkAntiquotNode `term
      else if stx.isAntiquots then
        -- Don't look into `$(..)` expressions
        pure stx
      else
        pure none
    trace[Tactic.congrm] "pattern: {pattern}"
    -- Chain together transformations as needed to convert the goal to an Eq if possible.
    liftMetaTactic fun g => do
      return [← liftReflToEq (← g.iffOfEq)]
    -- Apply `congr(...)`
    withMainContext do
      let gStx ← Term.exprToSyntax (← getMainTarget)
      -- Gives the expected type to `refine` as a workaround for its elaboration order.
      evalTactic <| ← `(tactic| refine (congr($(⟨pattern⟩)) : $gStx))

end Mathlib.Tactic
````
