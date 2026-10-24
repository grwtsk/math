# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87d9c1ac6d6e6360325985bee8849069b266b0540a9dc0714c0472f7216bad4a",
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
  "slug": "instance--1a3f96fee5bcec8d125e4026",
  "source": {
    "blob": "3abc737c4a7edc74cc7ea39853431ba5dc9aa44d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 280,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a3f96fee5bcec8d125e40266f7c355051b0250874cd762c3431756118909dfc",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87d9c1ac6d6e6360325985bee8849069b266b0540a9dc0714c0472f7216bad4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (topologically GeneralizingMap).RespectsIso :=
  topologically_respectsIso _ (fun f ↦ f.isOpenEmbedding.generalizingMap
    f.isOpenEmbedding.isOpen_range.stableUnderGeneralization) (fun _ _ hf hg ↦ hf.comp hg)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3abc737c4a7edc74cc7ea39853431ba5dc9aa44d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
