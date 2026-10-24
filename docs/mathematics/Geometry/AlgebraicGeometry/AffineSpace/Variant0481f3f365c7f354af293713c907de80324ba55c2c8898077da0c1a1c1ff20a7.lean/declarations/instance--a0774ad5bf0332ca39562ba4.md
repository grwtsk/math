# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee222d3313305f933a4c34670fe56ed4fc7b272e15e2d0d5ed93b5674266cf38",
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
  "slug": "instance--a0774ad5bf0332ca39562ba4",
  "source": {
    "blob": "26ae68e236b2102eb2333471cf36cb0628dd49f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 429,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0774ad5bf0332ca39562ba42b5b24c09f672b5ee00ef78abfc6f7fc89dd0b20",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee222d3313305f933a4c34670fe56ed4fc7b272e15e2d0d5ed93b5674266cf38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : GeometricallyReduced (𝔸(n; S) ↘ S) := by
  rw [geometricallyReduced_iff]
  introv K h
  apply ObjectProperty.prop_of_iso _
    ((h.isoIsPullback _ _ (isPullback_map _)) ≪≫ (SpecIso n ↧K)).symm
  infer_instance

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant0481f3f365c7f354af293713c907de80324ba55c2c8898077da0c1a1c1ff20a7.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ae68e236b2102eb2333471cf36cb0628dd49f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
