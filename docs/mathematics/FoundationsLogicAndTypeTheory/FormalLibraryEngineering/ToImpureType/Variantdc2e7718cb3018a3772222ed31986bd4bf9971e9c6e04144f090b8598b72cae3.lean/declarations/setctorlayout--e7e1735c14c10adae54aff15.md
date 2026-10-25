# setCtorLayout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e092f6d201c8248fc527b6ec871631601fec5a9a7f8decfe0a791941600757b8",
  "kind": "def",
  "lexical_name": "setCtorLayout",
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
  "slug": "setctorlayout--e7e1735c14c10adae54aff15",
  "source": {
    "blob": "86d99ec473fae2ccdd241b8d6dda301656d835b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7e1735c14c10adae54aff15ab86ebb8832aeb85ac3b7d934e657d33fb0d1af7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e092f6d201c8248fc527b6ec871631601fec5a9a7f8decfe0a791941600757b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def setCtorLayout (ctorName : Name) : CoreM Unit := do
  unless (ctorLayoutExt.find? (← getEnv) ctorName).isSome do
    modifyEnv (ctorLayoutExt.insert · ctorName (← fillCache))
where fillCache := do
  let .some (.ctorInfo ctorInfo) := (← getEnv).find? ctorName | unreachable!
  Meta.MetaM.run' <| Meta.forallTelescopeReducing ctorInfo.type fun params _ => do
    let mut fields : Array CtorFieldInfo := .emptyWithCapacity ctorInfo.numFields
    let mut nextIdx := 0
    let mut has1BScalar := false
    let mut has2BScalar := false
    let mut has4BScalar := false
    let mut has8BScalar := false
    for field in params[ctorInfo.numParams...(ctorInfo.numParams + ctorInfo.numFields)] do
      let fieldType ← field.fvarId!.getType
      let lcnfFieldType ← LCNF.toLCNFType fieldType
      let monoFieldType ← LCNF.toMonoType lcnfFieldType
      let irFieldType ← toImpureType monoFieldType
      let ctorField ← match irFieldType with
      | ImpureType.object | ImpureType.tagged | ImpureType.tobject => do
        let i := nextIdx
        nextIdx := nextIdx + 1
        pure <| .object i irFieldType
      | ImpureType.usize => pure <| .usize 0
      | ImpureType.erased => .pure <| .erased
      | ImpureType.void => .pure <| .void
      | ImpureType.uint8 =>
        has1BScalar := true
        .pure <| .scalar 1 0 ImpureType.uint8
      | ImpureType.uint16 =>
        has2BScalar := true
        .pure <| .scalar 2 0 ImpureType.uint16
      | ImpureType.uint32 =>
        has4BScalar := true
        .pure <| .scalar 4 0 ImpureType.uint32
      | ImpureType.uint64 =>
        has8BScalar := true
        .pure <| .scalar 8 0 ImpureType.uint64
      | ImpureType.float32 =>
        has4BScalar := true
        .pure <| .scalar 4 0 ImpureType.float32
      | ImpureType.float =>
        has8BScalar := true
        .pure <| .scalar 8 0 ImpureType.float
      | _ => unreachable!
      fields := fields.push ctorField
    let numObjs := nextIdx
    ⟨fields, nextIdx⟩ := Id.run <| StateT.run (s := nextIdx) <| fields.mapM fun field => do
      match field with
      | .usize _ => do
        let i ← modifyGet fun nextIdx => (nextIdx, nextIdx + 1)
        return .usize i
      | .object .. | .scalar .. | .erased | .void => return field
    let numUSize := nextIdx - numObjs
    let adjustScalarsForSize (fields : Array CtorFieldInfo) (size : Nat) (nextOffset : Nat)
        : Array CtorFieldInfo × Nat :=
      Id.run <| StateT.run (s := nextOffset) <| fields.mapM fun field => do
        match field with
        | .scalar sz _ type => do
          if sz == size then
            let offset ← modifyGet fun nextOffset => (nextOffset, nextOffset + sz)
            return .scalar sz offset type
          else
            return field
        | .object .. | .usize _ | .erased | .void => return field
    let mut nextOffset := 0
    if has8BScalar then
      ⟨fields, nextOffset⟩ := adjustScalarsForSize fields 8 nextOffset
    if has4BScalar then
      ⟨fields, nextOffset⟩ := adjustScalarsForSize fields 4 nextOffset
    if has2BScalar then
      ⟨fields, nextOffset⟩ := adjustScalarsForSize fields 2 nextOffset
    if has1BScalar then
      ⟨fields, nextOffset⟩ := adjustScalarsForSize fields 1 nextOffset
    return {
      ctorInfo := {
        name := ctorName
        cidx := ctorInfo.cidx
        size := numObjs
        usize := numUSize
        ssize := nextOffset
      }
      fieldInfo := fields
    }

/--
Returns the runtime layout of constructor `ctorName`. Requires `compileDecls` to have been run for
its inductive type.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variantdc2e7718cb3018a3772222ed31986bd4bf9971e9c6e04144f090b8598b72cae3.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86d99ec473fae2ccdd241b8d6dda301656d835b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
