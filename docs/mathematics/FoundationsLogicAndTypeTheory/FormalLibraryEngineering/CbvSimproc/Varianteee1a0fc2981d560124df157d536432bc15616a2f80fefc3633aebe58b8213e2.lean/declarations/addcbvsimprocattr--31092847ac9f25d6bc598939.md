# addCbvSimprocAttr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d03cf4d130665d00c82361a7252d8b3ec38fb22d7216f79e78e8c3b1e42d5e2c",
  "kind": "def",
  "lexical_name": "addCbvSimprocAttr",
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
  "slug": "addcbvsimprocattr--31092847ac9f25d6bc598939",
  "source": {
    "blob": "088ba5d882c5a6851b9dae34d5392240c7c018e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvSimproc/Varianteee1a0fc2981d560124df157d536432bc15616a2f80fefc3633aebe58b8213e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31092847ac9f25d6bc59893922e2f54a1124c4b0b0379bda6e766632c1c8b78b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvSimproc/Varianteee1a0fc2981d560124df157d536432bc15616a2f80fefc3633aebe58b8213e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d03cf4d130665d00c82361a7252d8b3ec38fb22d7216f79e78e8c3b1e42d5e2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addCbvSimprocAttr (declName : Name) (stx : Syntax)
    (attrKind : AttributeKind) : AttrM Unit := do
  ensureAttrDeclIsMeta `cbvSimprocAttr declName attrKind
  let go : MetaM Unit := do
    addCbvSimprocAttrCore declName attrKind (parseCbvSimprocPhase stx[1])
  discard <| go.run {} {}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvSimproc/Varianteee1a0fc2981d560124df157d536432bc15616a2f80fefc3633aebe58b8213e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvSimproc/Varianteee1a0fc2981d560124df157d536432bc15616a2f80fefc3633aebe58b8213e2.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `088ba5d882c5a6851b9dae34d5392240c7c018e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
