# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TacticDocumentation.Variant1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2455451716f238fb0e38a574c13dc6293af436fa` · SHA-256 `1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
module

public meta import Lean.Elab.Tactic.Doc
public meta import Lean.Parser.Tactic.Doc
-- Import this linter explicitly to ensure that
-- this file has a valid copyright header and module docstring.
public import Mathlib.Tactic.Linter.Header  -- shake: keep
public import Batteries.Tactic.Lint.Basic
public import Lean.Elab.Tactic.Doc

/-! # The `tacticDocs` linter

The `tacticDocs` environment linter checks that all tactics defined in a module come with
a (nonempty) docstring.
-/

open Lean Parser Elab Command

open Tactic.Doc

/-- Does this tactic have a docstring, or an `extensionDoc` defined later? -/
meta def isNonemptyDoc (doc : TacticDoc) : Bool :=
  doc.docString.isSome || doc.extensionDocs.any (! ·.isEmpty)

/-- Check that all tactics available in Mathlib have a docstring. -/
@[env_linter] public meta def tacticDocs : Batteries.Tactic.Lint.Linter where
  noErrorsFound := "No tactics are missing documentation."
  errorsFound := "TACTICS ARE MISSING DOCUMENTATION STRINGS:"
  test tac := do
    let env ← getEnv

    -- Only run on unique tactics (where tactics are defined as parsers in the tactic kind).
    if !isTactic env tac || (alternativeOfTactic env tac).isSome then
      return none

    -- Find the associated documentation.
    let docs ← Tactic.Doc.allTacticDocs
    let docMap : NameMap _ := docs.foldl (init := {}) fun m doc =>
      m.insert doc.internalName doc
    -- This `get?` should not return `none` for normally declared tactics,
    -- but if we do environment manipulation it might give us weird results.
    -- So we should allow the case of `none`.
    let doc := docMap.get? tac
    let name := (doc.map (·.userName)).getD tac.toString

    if let some doc := doc then
      if isNonemptyDoc doc then
        return none

    return m!"tactic `{name}` missing documentation string"

/-- Check tactics with the same user-facing name (usually: first syntax token) get a `@[tactic_alt]`
attribute. -/
@[env_linter] public meta def tacticAlt : Batteries.Tactic.Lint.Linter where
  noErrorsFound := "No tactics sharing the same user-facing name."
  errorsFound := "TACTICS ARE MISSING `@[tactic_alt]` ATTRIBUTES:"
  test tac := do
    let env ← getEnv
    if !isTactic env tac || (alternativeOfTactic env tac).isSome then
      return none
    -- Find duplicates, those with the same user-facing name but that aren't declared
    -- to be alternatives.
    let docs ← Tactic.Doc.allTacticDocs
    let some doc := docs.find? fun doc => doc.internalName == tac | return none
    let name := doc.userName
    let tacs := docs.filter fun doc =>
      (doc.userName == name && (alternativeOfTactic env doc.internalName).isNone)
    -- If we have duplicates, complain.
    if tacs.size <= 1 then return none
    let tacNames := tacs.map (·.internalName)
    return m!"tactic `{doc.userName}` has multiple declarations {tacNames} one of which should \
    be marked as `@[tactic_alt]` of the other(s).\n\
    Hint: you can use the `tactic_extension` command to extend the documentation."
```
