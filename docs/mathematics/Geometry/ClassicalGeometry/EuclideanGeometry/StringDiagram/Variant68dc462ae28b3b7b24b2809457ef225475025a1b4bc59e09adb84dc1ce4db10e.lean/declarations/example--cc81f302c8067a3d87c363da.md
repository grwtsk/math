# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:567a034bd92e223ce83f872a2c5c6ffb3baa30b92fd0c0a2e68de8466a2ab096",
  "kind": "example",
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
  "slug": "example--cc81f302c8067a3d87c363da",
  "source": {
    "blob": "87240e6539304044b4c729f92dc5346e935edfe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 63,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variant68dc462ae28b3b7b24b2809457ef225475025a1b4bc59e09adb84dc1ce4db10e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc81f302c8067a3d87c363daf649fa9fb0ce406b5ea23fc4f49441a0342c5f5b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variant68dc462ae28b3b7b24b2809457ef225475025a1b4bc59e09adb84dc1ce4db10e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:567a034bd92e223ce83f872a2c5c6ffb3baa30b92fd0c0a2e68de8466a2ab096`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {X Y : C} (f : X ⟶ Y) (g : 𝟙_ C ⊗ X ⟶ 𝟙_ C ⊗ Y) (w : False) : 𝟙_ C ◁ f = g := by
  exact w.elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variant68dc462ae28b3b7b24b2809457ef225475025a1b4bc59e09adb84dc1ce4db10e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/StringDiagram/Variant68dc462ae28b3b7b24b2809457ef225475025a1b4bc59e09adb84dc1ce4db10e.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87240e6539304044b4c729f92dc5346e935edfe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
