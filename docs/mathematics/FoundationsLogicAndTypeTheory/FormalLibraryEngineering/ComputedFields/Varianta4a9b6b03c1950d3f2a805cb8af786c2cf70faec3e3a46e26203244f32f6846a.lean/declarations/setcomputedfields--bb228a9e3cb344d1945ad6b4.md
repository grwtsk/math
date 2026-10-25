# setComputedFields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc24de984e860d4ea288311650156b2a44bf7d8135ae2592de9d3ab08706dca1",
  "kind": "def",
  "lexical_name": "setComputedFields",
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
  "slug": "setcomputedfields--bb228a9e3cb344d1945ad6b4",
  "source": {
    "blob": "9bd1c0cefff8dfd606d5c8c1cd498a96e636cab9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 238,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputedFields/Varianta4a9b6b03c1950d3f2a805cb8af786c2cf70faec3e3a46e26203244f32f6846a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb228a9e3cb344d1945ad6b49dc573be3bd4fbbfa98b04c16a91fb8ba131d1b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputedFields/Varianta4a9b6b03c1950d3f2a805cb8af786c2cf70faec3e3a46e26203244f32f6846a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc24de984e860d4ea288311650156b2a44bf7d8135ae2592de9d3ab08706dca1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def setComputedFields (computedFields : Array (Name × Array Name)) : MetaM Unit := do
  for (indName, computedFieldNames) in computedFields do
    for computedFieldName in computedFieldNames do
      unless computedFieldAttr.hasTag (← getEnv) computedFieldName do
        logError m!"'{computedFieldName}' must be tagged with @[computed_field]"
    mkComputedFieldOverrides indName computedFieldNames

  -- Once all the implemented_by infrastructure is set up, compile everything.
  compileDecls <| computedFields.map fun (indName, _) =>
    mkCasesOnName indName ++ `_override

  let mut toCompile := #[]
  for (declName, computedFields) in computedFields do
    let ind ← getConstInfoInduct declName
    for ctor in ind.ctors do
      toCompile := toCompile.push (ctor ++ `_override)
    for fieldName in computedFields do
      unless isExtern (← getEnv) fieldName do
        toCompile := toCompile.push <| fieldName ++ `_override
  compileDecls toCompile
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputedFields/Varianta4a9b6b03c1950d3f2a805cb8af786c2cf70faec3e3a46e26203244f32f6846a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputedFields/Varianta4a9b6b03c1950d3f2a805cb8af786c2cf70faec3e3a46e26203244f32f6846a.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd1c0cefff8dfd606d5c8c1cd498a96e636cab9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
