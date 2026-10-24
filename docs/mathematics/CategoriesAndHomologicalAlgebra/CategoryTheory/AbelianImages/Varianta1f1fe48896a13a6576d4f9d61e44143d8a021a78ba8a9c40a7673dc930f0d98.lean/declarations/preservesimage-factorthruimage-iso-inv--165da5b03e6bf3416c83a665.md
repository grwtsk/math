# PreservesImage.factorThruImage_iso_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec1d50be-e008-571a-79eb-bfc57f2796cc",
  "kind": "theorem",
  "lexical_name": "PreservesImage.factorThruImage_iso_inv",
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
  "slug": "preservesimage-factorthruimage-iso-inv--165da5b03e6bf3416c83a665",
  "source": {
    "blob": "027b0b01ae4d43019ccb4d19c0e48a868289be27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:165da5b03e6bf3416c83a665f99fa1aa9c979a81ee802e453e5001b88dcc3a65",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec1d50be-e008-571a-79eb-bfc57f2796cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PreservesImage.factorThruImage_iso_inv :
    Abelian.factorThruImage (F.map f) ≫ (PreservesImage.iso F f).inv =
      F.map (Abelian.factorThruImage f) := by
  simp [Iso.comp_inv_eq]

/-- If a functor preserves kernels and cokernels, it preserves abelian coimages. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `027b0b01ae4d43019ccb4d19c0e48a868289be27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
