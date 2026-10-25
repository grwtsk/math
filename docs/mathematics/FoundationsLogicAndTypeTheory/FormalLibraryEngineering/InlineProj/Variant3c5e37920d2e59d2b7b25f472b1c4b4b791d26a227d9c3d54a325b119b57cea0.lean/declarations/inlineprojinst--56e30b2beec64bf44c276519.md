# inlineProjInst?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce9900f3c10156da6cb8478ac2fbe2096bec491aa61d7c15ab611339afb774f7",
  "kind": "def",
  "lexical_name": "inlineProjInst?",
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
  "slug": "inlineprojinst--56e30b2beec64bf44c276519",
  "source": {
    "blob": "14369e50f187bb3244afd1587133869fc5040bb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineProj/Variant3c5e37920d2e59d2b7b25f472b1c4b4b791d26a227d9c3d54a325b119b57cea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56e30b2beec64bf44c27651919aaaee117bc26da19d2ee5f2bc76d906729f3f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineProj/Variant3c5e37920d2e59d2b7b25f472b1c4b4b791d26a227d9c3d54a325b119b57cea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce9900f3c10156da6cb8478ac2fbe2096bec491aa61d7c15ab611339afb774f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def inlineProjInst? (e : LetValue .pure) : SimpM (Option (Array (CodeDecl .pure) × FVarId)) := do
  let .proj _ i s := e | return none
  let sType ← getType s
  unless (← isClass? sType).isSome do return none
  let eType ← e.inferType
  unless  (← isClass? eType).isNone do return none
  let (fvarId?, decls) ← visit s [i] |>.run |>.run #[]
  if let some fvarId := fvarId? then
    return some (decls, fvarId)
  else
    eraseCodeDecls decls
    return none
where
  visit (fvarId : FVarId) (projs : List Nat) : OptionT (StateRefT (Array (CodeDecl .pure)) SimpM) FVarId := do
    let some letDecl ← findLetDecl? fvarId | failure
    match letDecl.value with
    | .proj _ i s => visit s (i :: projs)
    | .fvar .. | .lit .. | .erased => failure
    | .const declName us args =>
      if let some (.ctorInfo ctorVal) := (← getEnv).find? declName then
        let i :: projs := projs | unreachable!
        let arg := args[ctorVal.numParams + i]!
        let fvarId ← match arg with
          | .fvar fvarId => pure fvarId
          | .erased | .type .. =>
            let auxDecl ← mkLetDeclErased
            modify (·.push (.let auxDecl))
            pure auxDecl.fvarId
        if projs.isEmpty then
          return fvarId
        else
          visit fvarId projs
      else
        let some ⟨.pure, decl⟩ ← getDecl? declName | failure
        match decl.value with
        | .code code =>
          guard (!decl.recursive && decl.getArity == args.size)
          let params := decl.instantiateParamsLevelParams us
          let code := code.instantiateValueLevelParams decl.levelParams us
          let code ← betaReduce params code args (mustInline := true)
          visitCode code projs
        | .extern .. => failure

  visitCode (code : Code .pure) (projs : List Nat) : OptionT (StateRefT (Array (CodeDecl .pure)) SimpM) FVarId := do
    match code with
    | .let decl k => modify (·.push (.let decl)); visitCode k projs
    | .fun decl k => modify (·.push (.fun decl)); visitCode k projs
    | .return fvarId => visit fvarId projs
    | _ => eraseCode code; failure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineProj/Variant3c5e37920d2e59d2b7b25f472b1c4b4b791d26a227d9c3d54a325b119b57cea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineProj/Variant3c5e37920d2e59d2b7b25f472b1c4b4b791d26a227d9c3d54a325b119b57cea0.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14369e50f187bb3244afd1587133869fc5040bb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
