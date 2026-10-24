# IncidenceArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46e73485bf1f9a1d2d6b00e863ab5d8f77b2458a3f9d6949df605bb3aa1aaf6a",
  "kind": "structure",
  "lexical_name": "IncidenceArrow",
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
  "slug": "incidencearrow--34d86e4e943cf18212e18eae",
  "source": {
    "blob": "2d9dd55327651ade950d1ec32416ec7ec4125d4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 223,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M56616c69646174696f6e2f41646170746572436f72726573706f6e64656e6365546f706f7341757/Variantd9e0614dd5429f0b6a0068af24a7d91d462ac5124f5a0b66f81153d3b4bc54f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34d86e4e943cf18212e18eae077cd56607947c90f09d576b686da7ca2c2c7ece",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M56616c69646174696f6e2f41646170746572436f72726573706f6e64656e6365546f706f7341757/Variantd9e0614dd5429f0b6a0068af24a7d91d462ac5124f5a0b66f81153d3b4bc54f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46e73485bf1f9a1d2d6b00e863ab5d8f77b2458a3f9d6949df605bb3aa1aaf6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IncidenceArrow {D : MarkdownDocument} (site : FiniteDocumentSite D) where
  lower : DocumentSection
  upper : DocumentSection
  lower_mem : lower ∈ site.regions
  upper_mem : upper ∈ site.regions
  le : site.refines lower upper

/-- Composability of incidence arrows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M56616c69646174696f6e2f41646170746572436f72726573706f6e64656e6365546f706f7341757/Variantd9e0614dd5429f0b6a0068af24a7d91d462ac5124f5a0b66f81153d3b4bc54f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M56616c69646174696f6e2f41646170746572436f72726573706f6e64656e6365546f706f7341757/Variantd9e0614dd5429f0b6a0068af24a7d91d462ac5124f5a0b66f81153d3b4bc54f6.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d9dd55327651ade950d1ec32416ec7ec4125d4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
