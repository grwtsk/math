# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InlineCandidate.Variant857089236a7fadb40eaddddd0ee442f6942611f509e10873e74b86518077edf5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8efe6d1309fafb5277787902551eb4858ef5dcea` · SHA-256 `6322a0c3d4a0bd9156b9d1d6291251de1e0845254d841f5d8e59ceabc88f94a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InlineCandidateInfo.Variant78dde468535d6b540c8ce8549548bd5a06addf7ac47ad05b69c468bfcccfd347","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78dde468535d6b540c8ce8549548bd5a06addf7ac47ad05b69c468bfcccfd347","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InlineCandidateInfo.Variant78dde468535d6b540c8ce8549548bd5a06addf7ac47ad05b69c468bfcccfd347","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"78dde468535d6b540c8ce8549548bd5a06addf7ac47ad05b69c468bfcccfd347","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Simp/InlineCandidate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.Simp.SimpM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InlineCandidateInfo.Variant78dde468535d6b540c8ce8549548bd5a06addf7ac47ad05b69c468bfcccfd347

public section

namespace Lean.Compiler.LCNF
namespace Simp

/--
Result of `inlineCandidate?`.
It contains information for inlining local and global functions.
-/
structure InlineCandidateInfo where
  isLocal  : Bool
  params   : Array (Param .pure)
  /-- Value (lambda expression) of the function to be inlined. -/
  value    : Code .pure
  fType    : Expr
  args     : Array (Arg .pure)
  /-- `ifReduce = true` if the declaration being inlined was tagged with `inline_if_reduce`. -/
  ifReduce : Bool
  /-- `recursive = true` if the declaration being inline is in a mutually recursive block. -/
  recursive : Bool := false

/-- The arity (aka number of parameters) of the function to be inlined. -/
def InlineCandidateInfo.arity : InlineCandidateInfo → Nat
  | { params, .. } => params.size

/--
Return `some info` if `e` should be inlined.
-/
def inlineCandidate? (e : LetValue .pure) : SimpM (Option InlineCandidateInfo) := do
  let mut e := e
  let mut mustInline := false
  if let .const ``inline _ #[_, .fvar argFVarId] := e then
    mustInline := true
    if let some decl ← findFunDecl'? (pu := .pure) argFVarId then
      e := .fvar decl.fvarId #[]
    else if let some decl ← findLetDecl? argFVarId then
      e := decl.value
      if let .const declName _ _ := e then
        if (← isCtor? declName).isSome then
          throwError m!"`inline` applied to constructor '{declName}' is invalid"
        else if (← getLocalDecl? declName).isNone then
          throwError m!"`inline` applied to non-local declaration '{declName}' is invalid"
    else
      assert! (← findParam? (pu := .pure) argFVarId).isSome
      throwError m!"`inline` applied to parameters is invalid"
  if let .const declName us args := e then
    unless (← read).config.inlineDefs do
      return none
    let some ⟨.pure, decl⟩ ← getDecl? declName | return none
    let .code code := decl.value | return none
    let shouldInline : SimpM Bool := do
      if !decl.inlineIfReduceAttr && decl.recursive then return false
      if mustInline then return true
      /-
      We don't inline instances tagged with `[inline]/[always_inline]/[inline_if_reduce]` at the base phase.
      We assume that at the base phase these annotations are for the instance methods that will be lambda lifted during the base phase.
      Reason: we eagerly lambda lift local functions occurring at instances before saving their code at
      the end of the base phase. The goal is to make them cheap to inline in actual code.
      By inlining their definitions we would be just generating extra work for the lambda lifter.
      -/
      if (← inBasePhase) then
        /-
        We claim it is correct to use `Meta.isInstance` because
        1. `shouldInline` is called during LCNF compilation, which runs at `addDecl` time
        2. Any instance referenced in the code was found by type class resolution during elaboration
        3. For TC resolution to find it, the scope was active during elaboration
        4. LCNF compilation happens before the scope changes

        We use `Meta.isInstance` rather than `isInstanceReducible` here because we specifically
        want the TC-scoped notion: declarations active as instances during elaboration. Manual
        aux decls bearing `[instance_reducible]` without `[instance]` should not count.
        -/
        if (← Meta.isInstance decl.name) then
          unless decl.name == ``instDecidableEqBool do
            /-
            TODO: remove this hack after we refactor `Decidable` as suggested by Gabriel.
            Recall that the current `Decidable` class is special case since it is an inductive datatype which is not a
            structure like all other type classes. This is bad since it prevents us from treating all classes in a uniform
            way. After we change `Decidable` to a structure as suggested by Gabriel, we should only accept type classes
            that are structures. Moreover, we should reject instances that have only one exit point producing an explicit structure.
            -/
            return false
        -- This is done to avoid inlining `_override` implementations for computed fields in the
        -- base phase, since `cases` constructs have not yet been replaced by their underlying
        -- implementation, and thus inlining `_override` implementations for computed fields will
        -- expose a constructor/`cases` mismatch.
        -- TODO: Find a better solution for this problem.
        if decl.name matches .str _ "_override" then return false
      if decl.alwaysInlineAttr then return true
      -- TODO: check inlining quota
      if decl.inlineAttr || decl.inlineIfReduceAttr then return true
      if decl.noinlineAttr then return false
      isSmall code
    unless (← shouldInline) do return none
    /- check arity -/
    let arity := decl.getArity
    let inlinePartial := (← read).config.inlinePartial
    if !mustInline && !inlinePartial && args.size < arity then return none
    if decl.inlineIfReduceAttr then
      let some paramIdx := decl.isCasesOnParam? | return none
      unless paramIdx < args.size do return none
      let arg := args[paramIdx]!
      unless (← arg.isConstructorApp) do return none
    let params := decl.instantiateParamsLevelParams us
    let value := code.instantiateValueLevelParams decl.levelParams us
    let type := decl.instantiateTypeLevelParams us
    incInline
    return some {
      isLocal   := false
      fType     := type
      args      := args
      ifReduce  := decl.inlineIfReduceAttr
      recursive := decl.recursive
      params, value
    }
  else if let .fvar f args := e then
    let some decl ← findFunDecl'? f | return none
    unless mustInline || args.size > 0 do return none -- It is not worth to inline a local function that does not take any arguments
    unless mustInline || (← shouldInlineLocal decl) do return none
    -- Remark: we inline local function declarations even if they are partial applied
    incInlineLocal
    modify fun s => { s with inlineLocal := s.inlineLocal + 1 }
    return some {
      isLocal  := true
      fType    := (← getType f)
      args     := args
      params   := decl.params
      value    := decl.value
      ifReduce := false
    }
  else
    return none

builtin_initialize
  registerTraceClass `Compiler.simp.inline
```
