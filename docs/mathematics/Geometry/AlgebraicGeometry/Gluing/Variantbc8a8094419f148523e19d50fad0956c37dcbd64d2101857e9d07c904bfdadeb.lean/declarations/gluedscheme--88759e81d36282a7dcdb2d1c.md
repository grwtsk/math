# gluedScheme

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19443dcb35e6d04aa67bf92e83157dddceec54522792e64fdb25114a93581f7c",
  "kind": "def",
  "lexical_name": "gluedScheme",
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
  "slug": "gluedscheme--88759e81d36282a7dcdb2d1c",
  "source": {
    "blob": "a9c850b241d16e999d73f27bb40969a58f223081",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 119,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88759e81d36282a7dcdb2d1c29dcada23e61806294e2861fd9b39495ff918fab",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19443dcb35e6d04aa67bf92e83157dddceec54522792e64fdb25114a93581f7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gluedScheme : Scheme := by
  apply LocallyRingedSpace.IsOpenImmersion.scheme
    D.toLocallyRingedSpaceGlueData.toGlueData.glued
  intro x
  obtain ⟨i, y, rfl⟩ := D.toLocallyRingedSpaceGlueData.ι_jointly_surjective x
  refine ⟨_, ((D.U i).affineCover.map y).toLRSHom ≫
    D.toLocallyRingedSpaceGlueData.toGlueData.ι i, ?_⟩
  constructor
  · simp only [LocallyRingedSpace.comp_toShHom, SheafedSpace.comp_base, TopCat.hom_comp,
      ContinuousMap.coe_comp, Set.range_comp]
    refine Set.mem_image_of_mem _ ?_
    exact (D.U i).affineCover.covers y
  · infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c850b241d16e999d73f27bb40969a58f223081` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
