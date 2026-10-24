# sourceCatalogTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8724e42bf4ebe7c6ec524c14ba4c3040dec343b9a1be9aaf673f9702fc6e4ca",
  "kind": "def",
  "lexical_name": "sourceCatalogTerm",
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
  "slug": "sourcecatalogterm--71746d4d1960401a50c83bfb",
  "source": {
    "blob": "36cd97d12ecb6106f53b31441088cd84fc1edadb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant37807eaeff23ca40f885c482f25c3cb8a8b2b7af0b349129e3490bb260b38ce4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71746d4d1960401a50c83bfb7f5a7bf4c2407683aab0daa8d028dac54c75481b",
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

Occurrence: `declaration:e8724e42bf4ebe7c6ec524c14ba4c3040dec343b9a1be9aaf673f9702fc6e4ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sourceCatalogTerm (full : CheckedFullDeclaration)
    (index : Fin full.value.catalog.length) : Term := termOfSyntax (sourceCatalogSyntax full index)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant37807eaeff23ca40f885c482f25c3cb8a8b2b7af0b349129e3490bb260b38ce4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant37807eaeff23ca40f885c482f25c3cb8a8b2b7af0b349129e3490bb260b38ce4.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36cd97d12ecb6106f53b31441088cd84fc1edadb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
