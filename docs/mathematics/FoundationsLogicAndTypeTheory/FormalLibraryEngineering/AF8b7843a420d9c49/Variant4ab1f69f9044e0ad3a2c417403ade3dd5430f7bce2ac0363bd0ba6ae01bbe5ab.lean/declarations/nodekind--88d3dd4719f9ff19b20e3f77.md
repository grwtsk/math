# NodeKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9eb6cdbad85e341a5ab12cdb34b93dce22bf13813187652570622b234fe08032",
  "kind": "inductive",
  "lexical_name": "NodeKind",
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
  "slug": "nodekind--88d3dd4719f9ff19b20e3f77",
  "source": {
    "blob": "ef6ce188d9e36d74a8ceb453f78353944a329285",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 10,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF8b7843a420d9c49/Variant4ab1f69f9044e0ad3a2c417403ade3dd5430f7bce2ac0363bd0ba6ae01bbe5ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88d3dd4719f9ff19b20e3f771088ba2eb9aa1e3d2ade0c3a6efbe6e808d7d666",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF8b7843a420d9c49/Variant4ab1f69f9044e0ad3a2c417403ade3dd5430f7bce2ac0363bd0ba6ae01bbe5ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9eb6cdbad85e341a5ab12cdb34b93dce22bf13813187652570622b234fe08032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive NodeKind
  | semantic
  | backbone
  | relationGroup
  | declaration
  | representation
  | runtimeBinding
  | lineage
  | hyperrelation
  | reference
  | diagnostic
  deriving DecidableEq, Inhabited, Fintype

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF8b7843a420d9c49/Variant4ab1f69f9044e0ad3a2c417403ade3dd5430f7bce2ac0363bd0ba6ae01bbe5ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AF8b7843a420d9c49/Variant4ab1f69f9044e0ad3a2c417403ade3dd5430f7bce2ac0363bd0ba6ae01bbe5ab.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef6ce188d9e36d74a8ceb453f78353944a329285` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
