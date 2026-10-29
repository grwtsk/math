-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceOption.Variant9dcb9960323578ca32cf4c60e575169e3fc37fcb303dcb64b33a167e3abc5fd2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9dcb9960323578ca32cf4c60e575169e3fc37fcb303dcb64b33a167e3abc5fd2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TraceOption.Variant9dcb9960323578ca32cf4c60e575169e3fc37fcb303dcb64b33a167e3abc5fd2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9dcb9960323578ca32cf4c60e575169e3fc37fcb303dcb64b33a167e3abc5fd2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Tracing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Util.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceOption.Variant9dcb9960323578ca32cf4c60e575169e3fc37fcb303dcb64b33a167e3abc5fd2

public section

open Lean Lean.Meta

namespace Aesop

structure TraceOption where
  traceClass : Name
  option : Lean.Option Bool
  deriving Inhabited

def registerTraceOption (traceName : Name) (descr : String) :
    IO TraceOption := do
  let option ← Option.register (`trace.aesop ++ traceName) {
    defValue := false
    descr
  }
  return { traceClass := `aesop ++ traceName, option }

namespace TraceOption

def isEnabled [Monad m] [MonadOptions m] (opt : TraceOption) : m Bool :=
  return opt.option.get (← getOptions)

def withEnabled [MonadWithOptions m] (opt : TraceOption) (k : m α) : m α :=
  withOptions (λ opts => opt.option.set opts true) k

initialize steps : TraceOption ←
  registerTraceOption .anonymous
    "(aesop) Print actions taken by Aesop during the proof search."

initialize ruleSet : TraceOption ←
  registerTraceOption `ruleSet
    "(aesop) Print the rule set before starting the search."

initialize proof : TraceOption ←
  registerTraceOption `proof
    "(aesop) If the search is successful, print the produced proof term."

initialize tree : TraceOption ←
  registerTraceOption `tree
    "(aesop) Once the search has concluded (successfully or unsuccessfully), print the final search tree."

initialize extraction : TraceOption ←
  registerTraceOption `extraction
    "(aesop) Print a trace of the proof extraction procedure."

initialize stats : TraceOption ←
  registerTraceOption `stats
    "(aesop) If the search is successful, print some statistics."

initialize debug : TraceOption ←
  registerTraceOption `debug
    "(aesop) Print various debugging information."

initialize script : TraceOption ←
  registerTraceOption `script
    "(aesop) Print a trace of script generation."

initialize forward : TraceOption ←
  registerTraceOption `forward
    "(aesop) Trace forward reasoning."

initialize forwardDebug : TraceOption ←
  registerTraceOption `forward.debug
    "(aesop) Trace more information about forward reasoning. Mostly intended for performance analysis."

initialize rpinf : TraceOption ←
  registerTraceOption `rpinf
    "(aesop) Trace RPINF calculations."

end TraceOption

section

open Lean.Elab Lean.Elab.Term

private meta def isFullyQualifiedGlobalName (n : Name) : MacroM Bool :=
  return (← Macro.resolveGlobalName n).any (·.fst == n)

meta def resolveTraceOption (stx : Ident) : MacroM Name :=
  withRef stx do
    let n := stx.getId
    let fqn := ``TraceOption ++ n
    if ← isFullyQualifiedGlobalName fqn then
      return fqn
    else
      return n

macro "aesop_trace![" opt:ident "] " msg:(interpolatedStr(term) <|> term) :
    doElem => do
  let opt ← mkIdent <$> resolveTraceOption opt
  let msg := msg.raw
  let msg ← if msg.getKind == interpolatedStrKind then
    `(m! $(⟨msg⟩):interpolatedStr)
  else
    `(toMessageData ($(⟨msg⟩)))
  `(doElem| Lean.addTrace (Aesop.TraceOption.traceClass $opt) $msg)

macro "aesop_trace[" opt:ident "] "
    msg:(interpolatedStr(term) <|> term) : doElem => do
  let msg := msg.raw
  let opt ← mkIdent <$> resolveTraceOption opt
  match msg with
  | `(do $action) =>
    `(doElem| do
        if ← Aesop.TraceOption.isEnabled $opt then
          $action)
  | _ =>
    `(doElem| do
        if ← Aesop.TraceOption.isEnabled $opt then
          aesop_trace![$opt] $(⟨msg⟩))

end

def ruleSuccessEmoji    := checkEmoji
def ruleFailureEmoji    := crossEmoji
def ruleProvedEmoji     := "🏁"
def ruleErrorEmoji      := bombEmoji
def rulePostponedEmoji  := "⏳️"
def ruleSkippedEmoji    := "⏩️"
def nodeUnknownEmoji    := "❓️"
def nodeProvedEmoji     := ruleProvedEmoji
def nodeUnprovableEmoji := ruleFailureEmoji
def newNodeEmoji        := "🆕"

def exceptRuleResultToEmoji (toEmoji : α → String) : Except ε α → String
  | .error _ => ruleFailureEmoji
  | .ok r => toEmoji r

section

variable [Monad m] [MonadTrace m] [MonadLiftT BaseIO m] [MonadLiftT IO m]
    [MonadRef m] [AddMessageContext m] [MonadOptions m] [MonadAlwaysExcept ε m]

@[inline, always_inline]
def withAesopTraceNode [ExceptToTraceResult ε α] (opt : TraceOption)
    (msg : Except ε α → m MessageData) (k : m α) (collapsed := true) : m α :=
  withTraceNode opt.traceClass msg k collapsed

@[inline, always_inline]
def withAesopTraceNodeBefore [ExceptToTraceResult ε α] (opt : TraceOption)
    (msg : m MessageData) (k : m α) (collapsed := true) : m α :=
  withTraceNodeBefore opt.traceClass (fun _ => msg) k collapsed

@[inline, always_inline]
def withConstAesopTraceNode [ExceptToTraceResult ε α] (opt : TraceOption)
    (msg : m MessageData) (k : m α) (collapsed := true) : m α :=
  withAesopTraceNode opt (λ _ => msg) k collapsed

end

def traceSimpTheoremTreeContents (t : SimpTheoremTree) (opt : TraceOption) :
    CoreM Unit := do
  if ! (← opt.isEnabled) then
    return
  for e in t.values.map (toString ·.origin.key) |>.qsortOrd do
    aesop_trace![opt] e

def traceSimpTheorems (s : SimpTheorems) (opt : TraceOption) : CoreM Unit := do
  if ! (← opt.isEnabled) then
    return
  withConstAesopTraceNode opt (return "Erased entries") do
    aesop_trace![opt] "(Note: even if these entries appear in the sections below, they will not be used by simp.)"
    for e in PersistentHashSet.toArray s.erased |>.map (toString ·.key) |>.qsortOrd do
      aesop_trace![opt] e
  withConstAesopTraceNode opt (return "Pre lemmas") do
    traceSimpTheoremTreeContents s.pre opt
  withConstAesopTraceNode opt (return "Post lemmas") do
    traceSimpTheoremTreeContents s.post opt
  withConstAesopTraceNode opt (return "Constants to unfold") do
    for e in PersistentHashSet.toArray s.toUnfold |>.map toString |>.qsortOrd do
      aesop_trace![opt] e

end Aesop
