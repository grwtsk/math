# getUnivLevelPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d9f1acc434fa18a8af18cf18d9e4ba134b62cbe939ac38f4afc556168764f95",
  "kind": "def",
  "lexical_name": "getUnivLevelPos",
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
  "slug": "getunivlevelpos--608ba23d827892bbebde17f3",
  "source": {
    "blob": "d1e4f1e2e8a91b29d9deeeada48dfa00d0362f91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:608ba23d827892bbebde17f3b2c8ae8ff0c8f079a2f6e0061bfced93764d907f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d9f1acc434fa18a8af18cf18d9e4ba134b62cbe939ac38f4afc556168764f95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getUnivLevelPos (declName : Name) (lparams : List Name) (motiveLvl : Level) (Ilevels : List Level) : MetaM (List RecursorUnivLevelPos) := do
  let Ilevels := Ilevels.toArray
  let mut univLevelPos := #[]
  for p in lparams do
    if motiveLvl == mkLevelParam p then
      univLevelPos := univLevelPos.push RecursorUnivLevelPos.motive
    else
      match Ilevels.findIdx? fun u => u == mkLevelParam p with
      | some i => univLevelPos := univLevelPos.push (RecursorUnivLevelPos.majorType i)
      | none   =>
        throwError "invalid user defined recursor `{.ofConstName declName}`, major premise type does not contain universe level parameter `{p}`"
  pure univLevelPos.toList

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e4f1e2e8a91b29d9deeeada48dfa00d0362f91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
