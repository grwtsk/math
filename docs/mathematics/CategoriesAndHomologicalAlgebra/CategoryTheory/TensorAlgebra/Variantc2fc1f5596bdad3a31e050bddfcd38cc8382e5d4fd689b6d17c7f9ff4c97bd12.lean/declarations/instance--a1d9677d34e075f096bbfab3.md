# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a457fbfcd6b714e73b23b32478271e5f312d0bb87aef4cf1c5812fb2495c917",
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
  "slug": "instance--a1d9677d34e075f096bbfab3",
  "source": {
    "blob": "1a1f307a20c6743fb3570be0300dd3b7e6182eb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TensorAlgebra/Variantc2fc1f5596bdad3a31e050bddfcd38cc8382e5d4fd689b6d17c7f9ff4c97bd12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1d9677d34e075f096bbfab3d040963960eca6019f2fca03afbf43b543e1a939",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TensorAlgebra/Variantc2fc1f5596bdad3a31e050bddfcd38cc8382e5d4fd689b6d17c7f9ff4c97bd12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a457fbfcd6b714e73b23b32478271e5f312d0bb87aef4cf1c5812fb2495c917`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (R : Type v) [CommRing R] [Small.{u} R] :
    (forget₂ (AlgCat.{u} R) (ModuleCat.{u} R)).IsRightAdjoint := by
  let e : AlgCat.{u} R ≌ AlgCat.{u} (Shrink.{u} R) :=
    restrictScalarsEquivalenceOfRingEquiv (Shrink.ringEquiv R)
  have : e.inverse ⋙ forget₂ (AlgCat R) (ModuleCat R) = forget₂ _ _ ⋙
      (ModuleCat.restrictScalarsEquivalenceOfRingEquiv (Shrink.ringEquiv R)).inverse :=
    rfl
  rw [← Functor.isRightAdjoint_comp_iff_right e.inverse, this]
  have := (tensorAlgebraAdj (Shrink.{u} R)).isRightAdjoint
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TensorAlgebra/Variantc2fc1f5596bdad3a31e050bddfcd38cc8382e5d4fd689b6d17c7f9ff4c97bd12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TensorAlgebra/Variantc2fc1f5596bdad3a31e050bddfcd38cc8382e5d4fd689b6d17c7f9ff4c97bd12.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a1f307a20c6743fb3570be0300dd3b7e6182eb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
