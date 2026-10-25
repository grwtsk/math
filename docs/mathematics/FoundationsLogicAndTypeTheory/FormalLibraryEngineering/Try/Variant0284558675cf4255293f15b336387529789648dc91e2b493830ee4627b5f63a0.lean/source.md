# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Try.Variant0284558675cf4255293f15b336387529789648dc91e2b493830ee4627b5f63a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbd306eb5407d566123d14fddb088e8b64f9ecb2` · SHA-256 `5e4e01d938916f8286364b6af90afb69cfd9a9db14e13af7fe3531271943011d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant03997afc8a7069a52ce6d31feaa507010391dccced3e8baba1faf29a2eec9beb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03997afc8a7069a52ce6d31feaa507010391dccced3e8baba1faf29a2eec9beb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Config.Variant03997afc8a7069a52ce6d31feaa507010391dccced3e8baba1faf29a2eec9beb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"03997afc8a7069a52ce6d31feaa507010391dccced3e8baba1faf29a2eec9beb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Try.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Tactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant03997afc8a7069a52ce6d31feaa507010391dccced3e8baba1faf29a2eec9beb

public section

namespace Lean.Try
/--
Configuration for `try?`.
-/
structure Config where
  /-- If `main` is `true`, all functions in the current module are considered for function induction, unfolding, etc. -/
  main := true
  /-- If `name` is `true`, all functions in the same namespace are considered for function induction, unfolding, etc. -/
  name := true
  /-- If `targetOnly` is `true`, `try?` collects information using the goal target only. -/
  targetOnly := false
  /-- Maximum number of suggestions. -/
  max := 8
  /-- If `missing` is `true`, allows the construction of partial solutions where some of the subgoals are `sorry`. -/
  missing := false
  /-- If `only` is `true`, generates solutions using `grind only` and `simp only`. -/
  only := true
  /-- If `harder` is `true`, more expensive tactics and operations are tried. -/
  harder := false
  /--
  If `merge` is `true`, it tries to compress suggestions such as
  ```
  induction a
  · grind only [= f]
  · grind only [→ g]
  ```
  as
  ```
  induction a <;> grind only [= f, → g]
  ```
  -/
  merge := true
  /-- If `wrapWithBy` is `true`, suggestions are wrapped with `by` for term mode usage. -/
  wrapWithBy := false
  deriving Inhabited

end Lean.Try

namespace Lean.Parser.Tactic

syntax (name := tryTrace) "try?" optConfig : tactic

@[tactic_alt tryTrace]
syntax (name := tryTraceWith) "try?" optConfig " => " tacticSeq : tactic

/-- Helper internal tactic for implementing the tactic `try?`. -/
syntax (name := attemptAll) "attempt_all " withPosition((ppDedent(ppLine) colGe "| " tacticSeq)+) : tactic

/-- Helper internal tactic for implementing the tactic `try?` with parallel execution. -/
syntax (name := attemptAllPar) "attempt_all_par " withPosition((ppDedent(ppLine) colGe "| " tacticSeq)+) : tactic

/-- Helper internal tactic for implementing the tactic `try?` with parallel execution, returning first success. -/
syntax (name := firstPar) "first_par " withPosition((ppDedent(ppLine) colGe "| " tacticSeq)+) : tactic

/-- Helper internal tactic used to implement `evalSuggest` in `try?` -/
syntax (name := tryResult) "try_suggestions " tactic* : tactic

end Lean.Parser.Tactic

namespace Lean.Parser.Command

/--
`register_try?_tactic tac` registers a tactic `tac` as a suggestion generator for the `try?` tactic.

An optional priority can be specified with `register_try?_tactic (priority := 500) tac`.
Higher priority generators are tried first. The default priority is 1000.
-/
syntax (name := registerTryTactic) (docComment)?
  "register_try?_tactic" ("(" &"priority" ":=" num ")")? tacticSeq : command

end Lean.Parser.Command

/-- `∎` (typed as `\qed`) is a macro that expands to `try?` in tactic mode. -/
macro "∎" : tactic => `(tactic| try?)

/-- `∎` (typed as `\qed`) is a macro that expands to `by try? (wrapWithBy := true)` in term mode.
    The `wrapWithBy` config option causes suggestions to be prefixed with `by`. -/
macro "∎" : term => `(by try? (wrapWithBy := true))

namespace Lean.Try

/--
Marker for try?-solved subproofs in `exact? +try?` suggestions.
When `exact?` uses try? as a discharger, it wraps the proof in this marker
so that the unexpander can replace it with `(by try?)` in the suggestion.
-/
@[inline] def Marker {α : Sort u} (a : α) : α := a

@[app_unexpander Marker]
meta def markerUnexpander : PrettyPrinter.Unexpander := fun _ => do
  `(by try?)

end Lean.Try
````
