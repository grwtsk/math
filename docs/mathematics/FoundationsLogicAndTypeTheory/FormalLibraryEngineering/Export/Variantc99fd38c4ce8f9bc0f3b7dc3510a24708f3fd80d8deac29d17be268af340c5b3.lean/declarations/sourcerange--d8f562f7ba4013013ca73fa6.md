# sourceRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0c11585f3113dfc53be3bf8384f7209ab02935cfd2de0bc74bba4e9ba95669a",
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
  "slug": "sourcerange--d8f562f7ba4013013ca73fa6",
  "source": {
    "blob": "df93042f6586dd3c3bff7352f8e2a722f18de945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8f562f7ba4013013ca73fa62d956470c9e98d4d7caf01a3692a5ce3492ce7b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0c11585f3113dfc53be3bf8384f7209ab02935cfd2de0bc74bba4e9ba95669a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–203.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df93042f6586dd3c3bff7352f8e2a722f18de945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
