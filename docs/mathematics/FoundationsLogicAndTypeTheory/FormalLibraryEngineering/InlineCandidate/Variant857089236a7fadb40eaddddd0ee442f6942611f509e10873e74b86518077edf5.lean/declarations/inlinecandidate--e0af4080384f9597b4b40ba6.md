# inlineCandidate?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8058ea33d4a667fe619e9e7c610ec534e2d3877001ae8288fd6c18fa6cc852a",
  "kind": "def",
  "lexical_name": "inlineCandidate?",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "inlinecandidate--e0af4080384f9597b4b40ba6",
  "source": {
    "blob": "8efe6d1309fafb5277787902551eb4858ef5dcea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineCandidate/Variant857089236a7fadb40eaddddd0ee442f6942611f509e10873e74b86518077edf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0af4080384f9597b4b40ba610f9aa84a7adc9fd6133698291c46213afe80167",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineCandidate/Variant857089236a7fadb40eaddddd0ee442f6942611f509e10873e74b86518077edf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8058ea33d4a667fe619e9e7c610ec534e2d3877001ae8288fd6c18fa6cc852a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineCandidate/Variant857089236a7fadb40eaddddd0ee442f6942611f509e10873e74b86518077edf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineCandidate/Variant857089236a7fadb40eaddddd0ee442f6942611f509e10873e74b86518077edf5.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8efe6d1309fafb5277787902551eb4858ef5dcea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
