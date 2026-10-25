# findMethod?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f1b3ac0af7379a51a0be5608d6748422d745c28c307e3e8ad86d05b26a34812",
  "kind": "def",
  "lexical_name": "findMethod?",
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
  "slug": "findmethod--ca3d2f2bdda4f142d3f6b124",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1491,
    "line": 1461,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca3d2f2bdda4f142d3f6b1241e4e66e43946acb4bdecadffc18c0888a1e5a2ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f1b3ac0af7379a51a0be5608d6748422d745c28c307e3e8ad86d05b26a34812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1461–1491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def findMethod? (structName fieldName : Name) : MetaM (Option (Name × Name)) := do
  let env ← getEnv
  let find? structName' : MetaM (Option (Name × Name)) := do
    let fullName := privateToUserName structName' ++ fieldName
    -- We do not want to make use of the current namespace for resolution.
    let candidates :=
      (← withTheReader Core.Context ({ · with currNamespace := .anonymous }) do
        resolveGlobalName fullName)
      |>.filter (fun (_, fieldList) => fieldList.isEmpty)
      |>.map Prod.fst
    match candidates with
    | []          => return none
    | [fullName'] => return some (structName', fullName')
    | _ =>
      let candidates := MessageData.joinSep (candidates.map (m!"`{.ofConstName ·}`")) ", "
      throwError "Field name `{fieldName}` is ambiguous: `{fullName}` has possible interpretations {candidates}"
  -- Optimization: the first element of the resolution order is `structName`,
  -- so we can skip computing the resolution order in the common case
  -- of the name resolving in the `structName` namespace.
  find? structName <||> do
    let resolutionOrder ← if isStructure env structName then getStructureResolutionOrder structName else pure #[structName]
    for ns in resolutionOrder[1...resolutionOrder.size] do
      if let some res ← find? ns then
        return res
    return none

/--
If it seems that the user may be attempting to project out the `n`th element of a tuple, or that the
nesting behavior of n-ary products is otherwise relevant, generates a corresponding hint; otherwise,
produces an empty message.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L1461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
