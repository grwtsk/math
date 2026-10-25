# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ByCases.Variant5cf67f65a1b06363f342c3384eaa842f8522a6962625638c8ba8fbe2563d62c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f30202f9843b071e5ee2387075637c1813a84de8` · SHA-256 `d6b7355c28057a12bd450f32a0af26cd591cd397fe7f1e2ec78531ecd01c4fde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExpandIfThenElse.Variant3eaf31e4cc57fb9df008b319b36268e5527b4ad7c675dde03479a5c16da32bd9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3eaf31e4cc57fb9df008b319b36268e5527b4ad7c675dde03479a5c16da32bd9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExpandIfThenElse.Variant3eaf31e4cc57fb9df008b319b36268e5527b4ad7c675dde03479a5c16da32bd9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3eaf31e4cc57fb9df008b319b36268e5527b4ad7c675dde03479a5c16da32bd9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/ByCases.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Parser.Tactic

/-!
# `by_cases` and `if then else` tactics

This implements the `if` tactic, which is a structured proof version of `by_cases`.
It allows writing `if h : t then tac1 else tac2` for case analysis on `h : t`,
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExpandIfThenElse.Variant3eaf31e4cc57fb9df008b319b36268e5527b4ad7c675dde03479a5c16da32bd9

open Lean Parser.Tactic

-- This is an improved version of `by_cases` from core that uses `Decidable` if possible
macro_rules | `(tactic| by_cases $e) => `(tactic| by_cases h : $e)
macro_rules
  | `(tactic| by_cases $h : $e) =>
    `(tactic| open Classical in refine if $h:ident : $e then ?pos else ?neg)

private def expandIfThenElse
    (ifTk thenTk elseTk pos neg : Syntax)
    (mkIf : Term → Term → MacroM Term) : MacroM (TSyntax `tactic) := do
  let mkCase tk holeOrTacticSeq mkName : MacroM (Term × Array (TSyntax `tactic)) := do
    if holeOrTacticSeq.isOfKind ``Parser.Term.syntheticHole then
      pure (⟨holeOrTacticSeq⟩, #[])
    else if holeOrTacticSeq.isOfKind ``Parser.Term.hole then
      pure (← mkName, #[])
    else
      let hole ← withFreshMacroScope mkName
      let holeId := hole.raw[1]
      let case ← (open TSyntax.Compat in `(tactic|
          case $holeId:ident =>%$tk
            -- annotate `then/else` with state after `case`
            with_annotate_state $tk skip
            $holeOrTacticSeq))
      pure (hole, #[case])
  let (posHole, posCase) ← mkCase thenTk pos `(?pos)
  let (negHole, negCase) ← mkCase elseTk neg `(?neg)
  `(tactic| (open Classical in refine%$ifTk $(← mkIf posHole negHole); $[$(posCase ++ negCase)]*))

/--
In tactic mode, `if h : t then tac1 else tac2` can be used as alternative syntax for:
```
by_cases h : t
· tac1
· tac2
```
It performs case distinction on `h : t` or `h : ¬t` and `tac1` and `tac2` are the subproofs.

You can use `?_` or `_` for either subproof to delay the goal to after the tactic, but
if a tactic sequence is provided for `tac1` or `tac2` then it will require the goal to be closed
by the end of the block.
-/
syntax (name := tacDepIfThenElse)
  ppRealGroup(ppRealFill(ppIndent("if " binderIdent " : " term " then") ppSpace matchRhs)
    ppDedent(ppSpace) ppRealFill("else " matchRhs)) : tactic

/--
In tactic mode, `if t then tac1 else tac2` is alternative syntax for:
```
by_cases t
· tac1
· tac2
```
It performs case distinction on `h† : t` or `h† : ¬t`, where `h†` is an anonymous
hypothesis, and `tac1` and `tac2` are the subproofs. (It doesn't actually use
nondependent `if`, since this wouldn't add anything to the context and hence would be
useless for proving theorems. To actually insert an `ite` application use
`refine if t then ?_ else ?_`.)
-/
syntax (name := tacIfThenElse)
  ppRealGroup(ppRealFill(ppIndent("if " term " then") ppSpace matchRhs)
    ppDedent(ppSpace) ppRealFill("else " matchRhs)) : tactic

macro_rules
  | `(tactic| if%$tk $h : $c then%$ttk $pos else%$etk $neg) =>
    expandIfThenElse tk ttk etk pos neg fun pos neg => `(if $h : $c then $pos else $neg)

macro_rules
  | `(tactic| if%$tk $c then%$ttk $pos else%$etk $neg) =>
    expandIfThenElse tk ttk etk pos neg fun pos neg => `(if h : $c then $pos else $neg)
````
