# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InferControlInfo.Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d06dbca32b3b707b65279072f738744e0e907c7` · SHA-256 `18d0b0ef85b6cc0863931b03e21cdbe2885b584f47168e1a95fa2cd006be743d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlInfo.Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ControlInfo.Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Do/InferControlInfo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Term
public import Lean.Elab.Do.ForwardSyntax
meta import Lean.Parser.Do
import Lean.Elab.Do.PatternVar


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlInfo.Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76

public section

namespace Lean.Elab.Do

open Lean Meta Parser.Term

/--
Represents information about what control effects a `do` block has.

The fields split by flavor:

* `breaks`, `continues`, `returnsEarly`, and `reassigns` are **syntactic**: `true`/non-empty iff
  the corresponding construct appears anywhere in the source text of the block, independent of
  whether it is semantically reachable. Downstream elaborators must assume every such syntactic
  effect may occur, because the elaborator visits every doElem (only top-level
  `return`/`break`/`continue` short-circuit via `elabAsSyntacticallyDeadCode`).
* `numRegularExits` is also **syntactic**: the number of times the block wires the enclosing
  continuation into its elaborated expression. `withDuplicableCont` reads it as a join-point
  duplication trigger (`> 1`).
* `noFallthrough = true` asserts that the next doElem in the enclosing sequence is semantically
  irrelevant (control never falls through to it). `noFallthrough = false` makes no such
  assertion. The dead-code warning fires on the next element when this is `true`.

Invariant: `numRegularExits = 0 → noFallthrough`. The converse does not hold.
-/
structure ControlInfo where
  /-- The `do` block syntactically contains a `break`. -/
  breaks : Bool := false
  /-- The `do` block syntactically contains a `continue`. -/
  continues : Bool := false
  /-- The `do` block syntactically contains an early `return`. -/
  returnsEarly : Bool := false
  /--
  The number of times the block wires the enclosing continuation into its elaborated expression.
  Consumed by `withDuplicableCont` to decide whether to introduce a join point (`> 1`).
  -/
  numRegularExits : Nat := 1
  /--
  When `true`, asserts that the next doElem in the enclosing sequence is semantically irrelevant
  (control never falls through to it). `false` asserts nothing.
  -/
  noFallthrough : Bool := false
  /-- The variables that are syntactically reassigned somewhere in the `do` block. -/
  reassigns : NameSet := {}
  deriving Inhabited

/--
The left identity of `ControlInfo.sequence`: a `ControlInfo` describing an element that always
falls through normally with a single regular exit.
-/
def ControlInfo.pure : ControlInfo := {}

/--
The identity of `ControlInfo.alternative`: a `ControlInfo` describing a block with no branches
at all (so no regular exits and the next element is trivially unreachable).
-/
def ControlInfo.empty : ControlInfo := { numRegularExits := 0, noFallthrough := true }

/--
The `ControlInfo` of a sequence `a; b`: effect flags are unioned, the regular exits are those of
`b`, and the sequence falls through iff both parts fall through.
-/
def ControlInfo.sequence (a b : ControlInfo) : ControlInfo := {
    -- Syntactic fields aggregate unconditionally; the elaborator keeps visiting `b` unless `a` is
    -- a syntactically-terminal element (only top-level `return`/`break`/`continue` are, via
    -- `elabAsSyntacticallyDeadCode`).
    breaks := a.breaks || b.breaks,
    continues := a.continues || b.continues,
    returnsEarly := a.returnsEarly || b.returnsEarly,
    reassigns := a.reassigns ++ b.reassigns,
    numRegularExits := b.numRegularExits,
    -- Semantic: the sequence is dead if either part is dead.
    noFallthrough := a.noFallthrough || b.noFallthrough,
  }

/--
The `ControlInfo` of branches `a | b`: effect flags are unioned, the regular exits are summed, and
the alternative falls through iff at least one branch falls through.
-/
def ControlInfo.alternative (a b : ControlInfo) : ControlInfo := {
    breaks := a.breaks || b.breaks,
    continues := a.continues || b.continues,
    returnsEarly := a.returnsEarly || b.returnsEarly,
    reassigns := a.reassigns ++ b.reassigns,
    numRegularExits := a.numRegularExits + b.numRegularExits,
    -- Semantic: alternatives are dead only if all branches are dead.
    noFallthrough := a.noFallthrough && b.noFallthrough,
  }

instance : ToMessageData ControlInfo where
  toMessageData info := m!"breaks: {info.breaks}, continues: {info.continues},
    returnsEarly: {info.returnsEarly}, numRegularExits: {info.numRegularExits},
    noFallthrough: {info.noFallthrough}, reassigns: {info.reassigns.toList}"

/-- A handler for inferring `ControlInfo` from a `doElem` syntax. Register with `@[doElem_control_info parserName]`. -/
abbrev ControlInfoHandler := DoElem → TermElabM ControlInfo

unsafe def mkControlInfoElemAttributeUnsafe (ref : Name) : IO (KeyedDeclsAttribute ControlInfoHandler) :=
  mkElabAttribute ControlInfoHandler `builtin_doElem_control_info `doElem_control_info
    `Lean.Parser.Term.doElem ``Lean.Elab.Do.ControlInfoHandler "control info inference" ref

@[implemented_by mkControlInfoElemAttributeUnsafe]
opaque mkControlInfoElemAttribute (ref : Name) : IO (KeyedDeclsAttribute ControlInfoHandler)

/--
Registers a `ControlInfo` inference handler for the given `doElem` syntax node kind.

A handler should have type `ControlInfoHandler` (i.e. `DoElem → TermElabM ControlInfo`).
For pure handlers, use `fun stx => return ControlInfo.pure`.
-/
@[builtin_doc]
builtin_initialize controlInfoElemAttribute : KeyedDeclsAttribute ControlInfoHandler ←
  mkControlInfoElemAttribute decl_name%

namespace InferControlInfo

open InternalSyntax in
mutual

partial def ofElem (stx : DoElem) : TermElabM ControlInfo := do
  let env ← getEnv
  if let some (_decl, stxNew?) ← liftMacroM (expandMacroImpl? env stx) then
    let stxNew ← liftMacroM <| liftExcept stxNew?
    return ← ofElem ⟨stxNew⟩

  match stx with
  | `(doElem| break) => return { breaks := true, numRegularExits := 0, noFallthrough := true }
  | `(doElem| continue) => return { continues := true, numRegularExits := 0, noFallthrough := true }
  | `(doElem| return $[$_]?) => return { returnsEarly := true, numRegularExits := 0, noFallthrough := true }
  | `(doExpr| $e:term) =>
    if let some (_, arg) := Forward.matchApp? e then
      -- The last arg is a `do + resume $body` block. Depending on the function, it might or might
      -- not be called. We may definitely fall through and the control lifting mechanism prevents
      -- creation of a join point.
      return { (← ofSeq arg.body) with noFallthrough := false, numRegularExits := 1 }
    else
      return { numRegularExits := 1 }
  | `(doElem| do $doSeq) => ofSeq doSeq
  -- Let
  | `(doElem| let $[mut]? $_:letConfig $_:letDecl) => return .pure
  | `(doElem| have $_:letConfig $_:letDecl) => return .pure
  | `(doElem| let rec $_:letRecDecl) => return .pure
  | `(doElem| let $[mut]? $_:letConfig $_ := $_ | $otherwise $(body?)?) =>
    ofLetOrReassign #[] none otherwise body?
  | `(doElem| let $[mut]? $_:letConfig $decl) =>
    ofLetOrReassignArrow false decl
  | `(doElem| $decl:letIdDeclNoBinders) =>
    ofLetOrReassign (← getLetIdDeclVars ⟨decl⟩) none none none
  | `(doElem| $decl:letPatDecl) =>
    ofLetOrReassign (← getLetPatDeclVars ⟨decl⟩) none none none
  | `(doElem| $decl:doIdDecl) =>
    ofLetOrReassignArrow true decl
  | `(doElem| $decl:doPatDecl) =>
    ofLetOrReassignArrow true decl
  -- match
  | `(doElem| match $[(dependent := $_)]? $[(generalizing := $_)]? $(_)? $_,* with $alts:matchAlt*) =>
    let mut info := ControlInfo.empty
    for alt in alts do
      let `(matchAltExpr| | $[$_,*]|* => $rhs) := alt | throwUnsupportedSyntax
      let rhsInfo ← ofSeq ⟨rhs⟩
      info := info.alternative rhsInfo
    return info
  -- If
  | `(doElem| if $_:doIfCond then $thenSeq $[else if $_:doIfCond then $thenSeqs]* $[else $elseSeq?]?) =>
    let mut info ← ofOptionSeq elseSeq?
    -- Since doIfLetBind does not allow `doElem`, `cond` always has default `ControlInfo`.
    for thenSeq in thenSeqs.reverse do
      let thenInfo ← ofSeq thenSeq
      info := thenInfo.alternative info
    let thenInfo ← ofSeq thenSeq
    return thenInfo.alternative info
  | `(doElem| unless $_ do $elseSeq) =>
    ControlInfo.alternative {} <$> ofSeq elseSeq
  -- For/Repeat
  | `(doElem| for $[$[$_ :]? $_ in $_],* do $bodySeq) =>
    let info ← ofSeq bodySeq
    return { info with  -- keep only reassigns and returnsEarly
      numRegularExits := 1,
      continues := false,
      breaks := false,
      noFallthrough := false,
    }
  | `(doRepeat| repeat $bodySeq) =>
    -- A break-less `repeat` never falls through; the elaborator injects an `unreachable!` so the
    -- surrounding continuation still has a polymorphic value to hand back, and any dead-code
    -- warning on subsequent elements is actionable.
    let info ← ofSeq bodySeq
    return { info with  -- keep only reassigns and returnsEarly
      numRegularExits := if info.breaks then 1 else 0,
      continues := false,
      breaks := false,
      noFallthrough := !info.breaks,
    }
  -- Try
  | `(doElem| try $trySeq:doSeq $[$catches]* $[finally $finSeq?]?) =>
    let mut info ← ofSeq trySeq
    for catch_ in catches do
      match catch_ with
      | `(doCatch| catch $_ $[: $_]? => $catchSeq) =>
        let catchInfo ← ofSeq catchSeq
        info := catchInfo.alternative info
      | `(doCatchMatch| catch $matchAlts:matchAlt*) =>
        for alt in matchAlts do
          let `(matchAltExpr| | $[$_,*]|* => $rhs) := alt | throwUnsupportedSyntax
          let catchInfo ← ofSeq ⟨rhs⟩
          info := info.alternative catchInfo
      | _ => throwError "Not a catch or catch match: {toString catch_}"
    let finInfo ← ofOptionSeq finSeq?
    return info.sequence finInfo
  -- Misc
  | `(doElem| skip) => return .pure
  | `(doElem| dbg_trace $_) => return .pure
  | `(doElem| assert! $_) => return .pure
  | `(doElem| debug_assert! $_) => return .pure
  -- match_expr and let_expr
  | `(doElem| match_expr $[(meta := false)]? $_ with $[| $_:matchExprPat => $rhsSeqs]* | _ => $elseSeq) =>
    let mut info ← ofSeq elseSeq
    for rhsSeq in rhsSeqs do
      let rhsInfo ← ofSeq rhsSeq
      info := rhsInfo.alternative info
    return info
  | `(doElem| let_expr $_ := $_ | $otherwise $(body?)?)
  | `(doElem| let_expr $_ ← $_ | $otherwise $(body?)?) =>
    -- rhs is always just a term
    let otherwiseInfo ← ofSeq ⟨otherwise⟩
    let bodyInfo ← match body? with | none => pure {} | some body => ofSeq ⟨body⟩
    return otherwiseInfo.alternative bodyInfo
  | _ =>
    let kind := stx.raw.getKind
    let handlers := controlInfoElemAttribute.getEntries (← getEnv) kind
    for handler in handlers do
      let res ← catchInternalId unsupportedSyntaxExceptionId
        (some <$> handler.value stx)
        (fun _ => pure none)
      if let some info := res then return info
    throwError
      "No `ControlInfo` inference handler found for `{kind}` in syntax {indentD stx}\n\
       Register a handler with `@[doElem_control_info {kind}]`."

partial def ofLetOrReassignArrow (reassignment : Bool) (decl : TSyntax [``doIdDecl, ``doPatDecl]) : TermElabM ControlInfo := do
  match decl with
  | `(doIdDecl| $x:ident $[: $_]? ← $rhs) =>
    let reassigns := if reassignment then #[x] else #[]
    ofLetOrReassign reassigns rhs none none
  | `(doPatDecl| $pattern $[: $_]? ← $rhs $[| $otherwise? $[$body??]?]?) =>
    let reassigns ← if reassignment then getPatternVarsEx pattern else pure #[]
    ofLetOrReassign reassigns rhs otherwise? body??.join
  | _ => throwError "Not a let or reassignment declaration: {toString decl}"

partial def ofLetOrReassign (reassigned : Array Ident) (rhs? : Option DoElem)
    (otherwise? : Option (TSyntax ``doSeqIndent)) (body? : Option (TSyntax ``doSeqIndent))
    : TermElabM ControlInfo := do
  let rhs ← match rhs? with | none => pure { : ControlInfo } | some rhs => ofElem rhs
  let otherwise ← match otherwise? with | none => pure { : ControlInfo } | some otherwise => ofSeq ⟨otherwise⟩
  let body ← match body? with | none => pure { : ControlInfo } | some body => ofSeq ⟨body⟩
  let info := rhs.sequence (body.alternative otherwise)
  return { info with reassigns := (reassigned.map TSyntax.getId).foldl NameSet.insert info.reassigns }

partial def ofSeq (stx : DoSeq) : TermElabM ControlInfo := do
  let mut info : ControlInfo := {}
  for elem in getDoElems stx do
    info := info.sequence (← ofElem elem)
  return info

partial def ofOptionSeq (stx? : Option DoSeq) : TermElabM ControlInfo := do
  match stx? with | none => pure { : ControlInfo } | some stx => ofSeq stx

end

end InferControlInfo

/-- Infer the `ControlInfo` of `doSeq`. -/
def inferControlInfoSeq (doSeq : DoSeq) : TermElabM ControlInfo :=
  InferControlInfo.ofSeq doSeq

/-- Infer the `ControlInfo` of a single doElem. -/
def inferControlInfoElem (doElem : DoElem) : TermElabM ControlInfo :=
  InferControlInfo.ofElem doElem
```
