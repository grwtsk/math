# RationalMap.openCoverDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef3b88f493617363d76f5ab8f502309929242cb76f3cf614096c42f1074cae6e",
  "kind": "def",
  "lexical_name": "RationalMap.openCoverDomain",
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
  "slug": "rationalmap-opencoverdomain--c6c3b3f73d99b83c10698052",
  "source": {
    "blob": "d59b9102d2dfc449e2da16f0d28631b21cda0758",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 492,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6c3b3f73d99b83c10698052552ef7c65c69d49fe52603bf488a1841f589b6b6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef3b88f493617363d76f5ab8f502309929242cb76f3cf614096c42f1074cae6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RationalMap.openCoverDomain (f : X ⤏ Y) : f.domain.toScheme.OpenCover where
  J := { PartialMap.domain g | (g) (_ : g.toRationalMap = f) }
  obj U := U.1.toScheme
  map U := X.homOfLE (le_sSup U.2)
  f x := ⟨_, (TopologicalSpace.Opens.mem_sSup.mp x.2).choose_spec.1⟩
  covers x := ⟨⟨x.1, (TopologicalSpace.Opens.mem_sSup.mp x.2).choose_spec.2⟩, Subtype.ext (by simp)⟩

/-- If `f : X ⤏ Y` is a rational map from a reduced scheme to a separated scheme,
then `f` can be represented as a partial map on its domain of definition. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d59b9102d2dfc449e2da16f0d28631b21cda0758` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
