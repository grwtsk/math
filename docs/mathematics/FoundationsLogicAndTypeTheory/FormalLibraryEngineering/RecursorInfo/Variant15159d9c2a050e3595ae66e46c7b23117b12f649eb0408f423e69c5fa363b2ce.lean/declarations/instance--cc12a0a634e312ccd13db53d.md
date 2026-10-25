# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2719e909c08868775df949167a8f9074d5ce42572c580f6a2b4f8739fabb0c26",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--cc12a0a634e312ccd13db53d",
  "source": {
    "blob": "d1e4f1e2e8a91b29d9deeeada48dfa00d0362f91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc12a0a634e312ccd13db53d582fa6996572ef1e53102d99d27bd46ee9069d73",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2719e909c08868775df949167a8f9074d5ce42572c580f6a2b4f8739fabb0c26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ToString RecursorInfo := ⟨fun info =>
  "{\n" ++
  "  name           := " ++ toString info.recursorName ++ "\n" ++
  "  type           := " ++ toString info.typeName ++ "\n" ++
  "  univs          := " ++ toString info.univLevelPos ++ "\n" ++
  "  depElim        := " ++ toString info.depElim ++ "\n" ++
  "  recursive      := " ++ toString info.recursive ++ "\n" ++
  "  numArgs        := " ++ toString info.numArgs ++ "\n" ++
  "  numParams      := " ++ toString info.numParams ++ "\n" ++
  "  numIndices     := " ++ toString info.numIndices ++ "\n" ++
  "  numMinors      := " ++ toString info.numMinors ++ "\n" ++
  "  major          := " ++ toString info.majorPos ++ "\n" ++
  "  motive         := " ++ toString info.motivePos ++ "\n" ++
  "  paramsAtMajor  := " ++ toString info.paramsPos ++ "\n" ++
  "  indicesAtMajor := " ++ toString info.indicesPos ++ "\n" ++
  "  produceMotive  := " ++ toString info.produceMotive ++ "\n" ++
  "}"⟩

end RecursorInfo

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e4f1e2e8a91b29d9deeeada48dfa00d0362f91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
