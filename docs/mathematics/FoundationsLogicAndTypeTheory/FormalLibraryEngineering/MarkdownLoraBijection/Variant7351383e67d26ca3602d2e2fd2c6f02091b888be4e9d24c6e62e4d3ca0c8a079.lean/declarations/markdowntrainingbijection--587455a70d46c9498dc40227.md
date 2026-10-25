# MarkdownTrainingBijection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17a7cc2b932fcc22acd9e90230918dc54163b78543ddc0dc4642292b24454045",
  "kind": "structure",
  "lexical_name": "MarkdownTrainingBijection",
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
  "slug": "markdowntrainingbijection--587455a70d46c9498dc40227",
  "source": {
    "blob": "5737ad0bc673cfcd722c91744887cc5853585815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MarkdownLoraBijection/Variant7351383e67d26ca3602d2e2fd2c6f02091b888be4e9d24c6e62e4d3ca0c8a079.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:587455a70d46c9498dc4022792f46c57f9c5fdb63bf07fd0f9a552dbd8837465",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MarkdownLoraBijection/Variant7351383e67d26ca3602d2e2fd2c6f02091b888be4e9d24c6e62e4d3ca0c8a079.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17a7cc2b932fcc22acd9e90230918dc54163b78543ddc0dc4642292b24454045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MarkdownTrainingBijection where
  toRow : CanonicalMarkdownRecord → LoraTrainingRow
  toRecord : LoraTrainingRow → CanonicalMarkdownRecord
  toRow_preserves_id : ∀ r, (toRow r).id = r.id
  toRecord_preserves_id : ∀ row, (toRecord row).id = row.id
  left_inverse_id : ∀ r, (toRecord (toRow r)).id = r.id
  right_inverse_id : ∀ row, (toRow (toRecord row)).id = row.id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MarkdownLoraBijection/Variant7351383e67d26ca3602d2e2fd2c6f02091b888be4e9d24c6e62e4d3ca0c8a079.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MarkdownLoraBijection/Variant7351383e67d26ca3602d2e2fd2c6f02091b888be4e9d24c6e62e4d3ca0c8a079.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5737ad0bc673cfcd722c91744887cc5853585815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
