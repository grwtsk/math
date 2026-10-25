# sourceRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f360b870ffe479c59969e0d7ca8afb28265d706c32f2c4185f49844b985a4184",
  "kind": "def",
  "lexical_name": "sourceRange",
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
  "slug": "sourcerange--bdf66e78ed032718287dc403",
  "source": {
    "blob": "cccf28fcd944636127f300448a7b41b18aee1c61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variant9847bf19cb85ca5985a17ba4c7fda394bc27a6acf1f24cd7e916c54e29f36e34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdf66e78ed032718287dc40333529440c2c21a23145067e9823048059c24cedb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variant9847bf19cb85ca5985a17ba4c7fda394bc27a6acf1f24cd7e916c54e29f36e34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f360b870ffe479c59969e0d7ca8afb28265d706c32f2c4185f49844b985a4184`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sourceRange (env : Environment) (n : Name) : CoreM (Json × Json) := do
  let mut found : Option (DeclarationRanges × Name × String) := none
  if let some r ← findDeclarationRangesCore? n then
    found := some (r, n, "direct-extension")
  else if let some r := (← builtinDeclRanges.get).find? n then
    found := some (r, n, "builtin-exact")
  else if isAuxRecursor env n || isNoConfusion env n || (← isRec n) then
    let parent := n.getPrefix
    if let some r ← findDeclarationRangesCore? parent then
      found := some (r, parent, "generated-parent-extension")
    else if let some r := (← builtinDeclRanges.get).find? parent then
      found := some (r, parent, "generated-parent-builtin")
  let some (r, rangeName, method) := found | return (Json.null, Json.null)
  let some idx := env.getModuleIdxFor? rangeName
    | throwError "missing source-range provenance module for {n}, range origin {rangeName}"
  return (jo [("range", rangeJson r.range), ("selection", rangeJson r.selectionRange)],
    jo [("name", js rangeName.toString), ("module", js env.header.modules[idx]!.module.toString),
      ("method", js method)])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variant9847bf19cb85ca5985a17ba4c7fda394bc27a6acf1f24cd7e916c54e29f36e34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variant9847bf19cb85ca5985a17ba4c7fda394bc27a6acf1f24cd7e916c54e29f36e34.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cccf28fcd944636127f300448a7b41b18aee1c61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
