# coprod.map_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9399508fd08677f7cb28b2cda3f6e5d6ceb1922cf14362680d3baa353be22c3a",
  "kind": "instance",
  "lexical_name": "coprod.map_mono",
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
  "slug": "coprod-map-mono--bd0a98aebca37c90888d37a1",
  "source": {
    "blob": "3837449a319def2dfd362fcfbcb2c1c7588628a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 708,
    "line": 695,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant99d3bb4b93294b0979e1b55cc88dfc7b37b2832e280bd651e59a2c12b6838a52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd0a98aebca37c90888d37a131e2ec0f7ebae2b781f79388af21e4fcef8402ce",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant99d3bb4b93294b0979e1b55cc88dfc7b37b2832e280bd651e59a2c12b6838a52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9399508fd08677f7cb28b2cda3f6e5d6ceb1922cf14362680d3baa353be22c3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 695–708.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance coprod.map_mono {W X Y Z : C} (f : W ⟶ Y) (g : X ⟶ Z) [Mono f]
    [Mono g] [HasBinaryBiproduct W X] [HasBinaryBiproduct Y Z] : Mono (coprod.map f g) := by
  rw [show coprod.map f g = (biprod.isoCoprod _ _).inv ≫ biprod.map f g ≫
    (biprod.isoCoprod _ _).hom by simp]
  infer_instance

section BiprodKernel

section BinaryBicone

variable {X Y : C} (c : BinaryBicone X Y)

/-- A kernel fork for the kernel of `BinaryBicone.fst`. It consists of the morphism
`BinaryBicone.inr`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant99d3bb4b93294b0979e1b55cc88dfc7b37b2832e280bd651e59a2c12b6838a52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant99d3bb4b93294b0979e1b55cc88dfc7b37b2832e280bd651e59a2c12b6838a52.lean#L695).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3837449a319def2dfd362fcfbcb2c1c7588628a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
