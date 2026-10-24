# orderedCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea4a76078ffb544aee17db2a7bdf34c7cf41faf67e7ec7a51264daa882502e20",
  "kind": "instance",
  "lexical_name": "orderedCommGroup",
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
  "slug": "orderedcommgroup--8eaf1083b2408460836d9e34",
  "source": {
    "blob": "02000d152845c72f3f8701d3ddef7d0d752e726f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 30,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8eaf1083b2408460836d9e34ae98627cb2091d2d7f8009868ba32e238f7de68f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Prod/Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea4a76078ffb544aee17db2a7bdf34c7cf41faf67e7ec7a51264daa882502e20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance orderedCommGroup [OrderedCommGroup G] [OrderedCommGroup H] :
    OrderedCommGroup (G ×ₗ H) where
  mul_le_mul_left _ _ := mul_le_mul_left'

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Prod/Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Prod/Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02000d152845c72f3f8701d3ddef7d0d752e726f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
