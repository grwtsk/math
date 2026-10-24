# Spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aff77a3dd7b062dc00b0d8171d878edc52dbea9c99bfed5aaf2a78a61c1cff00",
  "kind": "def",
  "lexical_name": "Spec",
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
  "slug": "spec--c49ad861d97bda4f8d8df137",
  "source": {
    "blob": "eb4373799c548d13d1e2a75d2e7d49e75a96d6e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 235,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c49ad861d97bda4f8d8df13717814cb5bc7717734da18ee054a000e4c62dfe32",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aff77a3dd7b062dc00b0d8171d878edc52dbea9c99bfed5aaf2a78a61c1cff00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Spec : CommRingCatᵒᵖ ⥤ Scheme where
  obj R := specObj (unop R)
  map f := specMap f.unop
  map_id R := by simp
  map_comp f g := by simp [specMap_comp]
#align algebraic_geometry.Scheme.Spec AlgebraicGeometry.Scheme.Spec

/-- The empty scheme.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb4373799c548d13d1e2a75d2e7d49e75a96d6e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
