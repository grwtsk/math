# IsLocalAtSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cefa2668427ce3448e105333b5d7af789e6638b0de095b1671e5c2cc17b5b68",
  "kind": "class",
  "lexical_name": "IsLocalAtSource",
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
  "slug": "islocalatsource--436bcea2d80c5fcc4f835946",
  "source": {
    "blob": "ef34b06cff60c634df9ec888bdb06ad41b241450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 217,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:436bcea2d80c5fcc4f835946a58a97d03bc9bf068d52c5a89c1938814bd390f2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cefa2668427ce3448e105333b5d7af789e6638b0de095b1671e5c2cc17b5b68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsLocalAtSource (P : MorphismProperty Scheme) : Prop where
  /-- `P` respects isomorphisms. -/
  respectsIso : P.RespectsIso := by infer_instance
  /-- `P` holds for `f ∣_ U` for an open cover `U` of `Y` if and only if `P` holds for `f`. -/
  iff_of_openCover' :
    ∀ {X Y : Scheme.{u}} (f : X ⟶ Y) (𝒰 : Scheme.OpenCover.{u} X),
      P f ↔ ∀ i, P (𝒰.map i ≫ f)

namespace IsLocalAtSource

attribute [instance] respectsIso

/--
`P` is local at the source if
1. `P` respects isomorphisms.
2. If `P` holds for `f : X ⟶ Y`, then `P` holds for `U.ι ≫ f` for any `U`.
3. If `P` holds for `U.ι ≫ f` for an open cover `U` of `X`, then `P` holds for `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef34b06cff60c634df9ec888bdb06ad41b241450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
