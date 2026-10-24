# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8daffe62d284b86a595b51a57f01244af149dc4029e23d30e00faf776d9b0c7d",
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
  "slug": "instance--838f46f312dcb8e8d43f5e75",
  "source": {
    "blob": "5ea1da853c6efcb2335716ec01896185c7721e4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 86,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:838f46f312dcb8e8d43f5e75c82d3a1e29777e9289bec6ced36aea7c621550d8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8daffe62d284b86a595b51a57f01244af149dc4029e23d30e00faf776d9b0c7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (x : X) [X.IsGermInjectiveAt x] [IsOpenImmersion f] :
    Y.IsGermInjectiveAt (f.base x) := by
  obtain ⟨U, hxU, hU, H⟩ := X.exists_germ_injective x
  refine ⟨⟨f ''ᵁ U, ⟨x, hxU, rfl⟩, hU.image_of_isOpenImmersion f, ?_⟩⟩
  refine ((MorphismProperty.injective CommRingCat).cancel_right_of_respectsIso _
    (f.stalkMap x)).mp ?_
  refine ((MorphismProperty.injective CommRingCat).cancel_left_of_respectsIso
    (f.appIso U).inv _).mp ?_
  simpa

variable {f} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpreadingOut/Varianta2c11eac3fb02aaeecb3d89a1d51fe59f2852d3bfc8c7c948d1d53f40b078d55.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea1da853c6efcb2335716ec01896185c7721e4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
