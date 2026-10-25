# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variantad6ac2779addf7357855f593005f81863f3f24f7ab636f3d36b58422456d8407

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c384f7c1b848913fbaaf68d49f4dc5736bb913d` · SHA-256 `3659dda4329574e19ada1f8d37908eaf6684231ab41da45b25d1c746879a4580`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variantd188c943a464c1396edaad9dbcba18ab4a63c29e2fc6a96d3479739bcdcba06a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d188c943a464c1396edaad9dbcba18ab4a63c29e2fc6a96d3479739bcdcba06a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Check.Variantd188c943a464c1396edaad9dbcba18ab4a63c29e2fc6a96d3479739bcdcba06a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d188c943a464c1396edaad9dbcba18ab4a63c29e2fc6a96d3479739bcdcba06a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Check
/- Override metavariable delaborator for natural metavariables to print `?m` instead
of including a unique number, for `#guard_msgs`. -/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variantd188c943a464c1396edaad9dbcba18ab4a63c29e2fc6a96d3479739bcdcba06a

open Lean PrettyPrinter Delaborator in @[delab mvar] def delabMVar : Delab := do
  let kind ← (← SubExpr.getExpr).mvarId!.getKind
  unless kind.isNatural do failure
  `(?m)

set_option linter.unusedTactic false
set_option linter.unusedVariables false

/-!
Basic check of `#check`
-/

/-- info: x + y : Nat -/
#guard_msgs in
example (x y : Nat) : True := by
  #check x + y
  trivial


/-!
`#check` is ok with metavariables
and `have := e` is not a substitute for `#check`
-/

/-- info: x + ?m✝ : Nat -/
#guard_msgs in
example (x : Nat) : True := by
  #check x + _
  trivial

/--
error: don't know how to synthesize placeholder
context:
x : Nat
⊢ Nat
---
error: unsolved goals
x : Nat
⊢ True
-/
#guard_msgs in
example (x : Nat) : True := by
  have := x + _


/-!
`#check` cannot be used to accidentally assign metavariables, since it saves the state.
This is in contrasted against `have`.
-/

/--
info: rfl : x = x
---
error: unsolved goals
x : Nat
y : Nat := ?a
⊢ True

case a
x : Nat
⊢ Nat
---
info: x : Nat
y : Nat := ?a
⊢ True

case a
x : Nat
⊢ Nat
-/
#guard_msgs in
example (x : Nat) : True := by
  let y : Nat := ?a
  #check (by refine rfl : ?a = x)
  trace_state

/--
error: unsolved goals
x : Nat
y : Nat := x
this : x = x
⊢ True
---
info: x : Nat
y : Nat := x
this : x = x
⊢ True
-/
#guard_msgs in
example (x : Nat) : True := by
  let y : Nat := ?a
  have := (by refine rfl : ?a = x)
  trace_state
```
