# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoopProtection.Variant8fe18facaf32c0410b1562796b71b2ad09c99e550f700d165e43ef003de4544a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `086a59c912bec60eabba580fafc05f0cff68529c` · SHA-256 `5d4cca0fec0778bd9c8dc8ccc916b2f21731b9206e309969d450899d5cb078a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PpOrigins.Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PpOrigins.Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Simp/LoopProtection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Lean.Meta.Tactic.Simp.Types
public import Lean.Linter.Init


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PpOrigins.Variant3e26c7a3f4bceb7c99475e78ebbf0c79a76f130d51fc029e57db0844d98a0a87

public section

namespace Lean.Meta.Simp

register_builtin_option linter.loopingSimpArgs : Bool := {
  defValue := false
  descr := "\
    When enabled, `simp` will check if the theorems passed as simp arguments (`simp [thm1]`) \
    are possibly looping in the current simp set.\n\
    \n\
    More precisely, it tries to simplify the right-hand side of the theorem and complains if \
    that fails, which it typically does because of running out of recursion depth.\n\
    \n\
    This is a relatively expensive check, so it i disabled by default, and only run after \
    a `simp` call actually failed with a recursion depth error."

}

@[inline] def withFreshUsedTheorems (x : SimpM α) : SimpM α := do
  let saved := (← get).usedTheorems
  modify fun s => { s with usedTheorems := {} }
  try x finally modify fun s => { s with usedTheorems := saved }

private def ppOrigins (origins : Array Origin) : MetaM MessageData := do
  return .andList (← origins.mapM (return m!"`{← ppOrigin ·}`")).toList

def mkLoopWarningMsg (thm : SimpTheorem) : SimpM MessageData := do
  let mut msg := m!""
  msg := msg ++ m!"Possibly looping simp theorem: `{← ppOrigin thm.origin}`"

  let mut others := #[]
  for other in (← get).usedTheorems.toArray do
    if other != thm.origin  then
      others := others.push other
  unless others.isEmpty do
    msg := msg ++ .note m!"Possibly caused by: {← ppOrigins others}"

  msg := msg ++ .hint' m!"You can disable a simp theorem from the default simp set by \
    passing `- theoremName` to `simp`."
  pure msg

def shouldCheckLoops (force : Bool) (ctxt : Simp.Context) : CoreM Bool := do
  if ctxt.config.singlePass then return false
  if force then return true
  return Linter.getLinterValue linter.loopingSimpArgs (← Linter.getLinterOptions)

/--
Main entry point to the loop protection mechanism: Checks if the given theorem is looping in the
current simp set, and logs a warning if it does.

Assumes that `withRef` is set appropriately for the warning.

With `force := off`, only runs when `linter.loopingSimpArgs` is enabled and presents it as a
linter. With `force := on` (typically after `simp` threw an exception) it prints plain warnings.
-/
def checkLoops (force : Bool) (ctxt : Simp.Context) (methods : Methods) (thm : SimpTheorem) : MetaM Unit := do
  -- No loop checking when disabled or in single pass mode
  unless (← shouldCheckLoops force ctxt) do return

  -- Ignore theorems depending on the local context for now
  if thm.proof.hasFVar then return

  let type ← inferType (← thm.getValue)
  forallTelescopeReducing type fun _xs type => do
    let rhs := (← whnf type).appArg!

      let _ ← SimpM.run ctxt (s := {}) (methods := methods) do
        -- We ignore the simp result.
        -- A different design is possible where we use the simplified RHS to continue
        -- rewriting, but it would be a too severe change to `simp`’s semantics
        tryCatchRuntimeEx do
            let _ ← simp rhs
          fun ex => do
            trace[Meta.Tactic.simp.loopProtection] "loop protection for {← ppOrigin thm.origin}: got exception{indentD ex.toMessageData}"
            if force then
              logWarning (← mkLoopWarningMsg thm)
            else
              Linter.logLint linter.loopingSimpArgs (← getRef) (← mkLoopWarningMsg thm)
```
