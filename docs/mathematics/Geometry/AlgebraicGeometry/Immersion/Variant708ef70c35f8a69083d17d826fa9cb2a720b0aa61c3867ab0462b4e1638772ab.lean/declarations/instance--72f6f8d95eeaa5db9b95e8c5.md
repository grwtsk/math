# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0fea890c8cf4de3e9e8c6fe903fdb7fc3bd6cec231425b643fa0e8e09c9d95d",
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
  "slug": "instance--72f6f8d95eeaa5db9b95e8c5",
  "source": {
    "blob": "32bac392ced9f8f130bc8cf5cb4b71fd074a8f59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 183,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72f6f8d95eeaa5db9b95e8c559c6c67cb15e30689a720c639e4ed0f4d8626b80",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0fea890c8cf4de3e9e8c6fe903fdb7fc3bd6cec231425b643fa0e8e09c9d95d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsImmersion (prod.lift (𝟙 X) (𝟙 X)) := by
  rw [← MorphismProperty.cancel_right_of_respectsIso @IsImmersion _ (prodIsoPullback X X).hom]
  convert inferInstanceAs (IsImmersion (pullback.diagonal (terminal.from X)))
  ext : 1 <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Immersion/Variant708ef70c35f8a69083d17d826fa9cb2a720b0aa61c3867ab0462b4e1638772ab.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32bac392ced9f8f130bc8cf5cb4b71fd074a8f59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
