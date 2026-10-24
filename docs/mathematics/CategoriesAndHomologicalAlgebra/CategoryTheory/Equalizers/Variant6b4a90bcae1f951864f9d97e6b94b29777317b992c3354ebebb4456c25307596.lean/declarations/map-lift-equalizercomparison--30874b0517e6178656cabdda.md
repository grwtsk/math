# map_lift_equalizerComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cdc5243-1024-0cd7-f79a-fa676fe7892e",
  "kind": "theorem",
  "lexical_name": "map_lift_equalizerComparison",
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
  "slug": "map-lift-equalizercomparison--30874b0517e6178656cabdda",
  "source": {
    "blob": "6189c7e47c707029cc16c2f3b2a719a43a9052c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1005,
    "line": 998,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant6b4a90bcae1f951864f9d97e6b94b29777317b992c3354ebebb4456c25307596.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30874b0517e6178656cabdda5578f3d2bc4502abae0d764a2efdaf998f1a9d68",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant6b4a90bcae1f951864f9d97e6b94b29777317b992c3354ebebb4456c25307596.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cdc5243-1024-0cd7-f79a-fa676fe7892e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 998–1005.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_lift_equalizerComparison [HasEqualizer f g] [HasEqualizer (G.map f) (G.map g)] {Z : C}
    {h : Z ⟶ X} (w : h ≫ f = h ≫ g) :
    G.map (equalizer.lift h w) ≫ equalizerComparison f g G =
      equalizer.lift (G.map h) (by simp only [← G.map_comp, w]) := by
  apply equalizer.hom_ext
  simp [← G.map_comp]

/-- The comparison morphism for the coequalizer of `f,g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant6b4a90bcae1f951864f9d97e6b94b29777317b992c3354ebebb4456c25307596.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant6b4a90bcae1f951864f9d97e6b94b29777317b992c3354ebebb4456c25307596.lean#L998).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6189c7e47c707029cc16c2f3b2a719a43a9052c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
