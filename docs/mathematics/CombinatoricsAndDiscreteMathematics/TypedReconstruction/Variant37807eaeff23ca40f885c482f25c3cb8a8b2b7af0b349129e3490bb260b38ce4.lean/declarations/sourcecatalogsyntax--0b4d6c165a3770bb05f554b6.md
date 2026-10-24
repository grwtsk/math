# sourceCatalogSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a5856a37c4b73118b21b90f4884ccb0b8e3fc9b9acfad55c4125e0816e76624",
  "kind": "def",
  "lexical_name": "sourceCatalogSyntax",
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
  "slug": "sourcecatalogsyntax--0b4d6c165a3770bb05f554b6",
  "source": {
    "blob": "36cd97d12ecb6106f53b31441088cd84fc1edadb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant37807eaeff23ca40f885c482f25c3cb8a8b2b7af0b349129e3490bb260b38ce4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b4d6c165a3770bb05f554b6e99d96b6ba29c8d9617b0ba0a86aca7a8bc8d0bf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant37807eaeff23ca40f885c482f25c3cb8a8b2b7af0b349129e3490bb260b38ce4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a5856a37c4b73118b21b90f4884ccb0b8e3fc9b9acfad55c4125e0816e76624`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sourceCatalogSyntax (full : CheckedFullDeclaration)
    (index : Fin full.value.catalog.length) : SyntaxCertificate := full.value.catalog.get index

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant37807eaeff23ca40f885c482f25c3cb8a8b2b7af0b349129e3490bb260b38ce4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant37807eaeff23ca40f885c482f25c3cb8a8b2b7af0b349129e3490bb260b38ce4.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36cd97d12ecb6106f53b31441088cd84fc1edadb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
