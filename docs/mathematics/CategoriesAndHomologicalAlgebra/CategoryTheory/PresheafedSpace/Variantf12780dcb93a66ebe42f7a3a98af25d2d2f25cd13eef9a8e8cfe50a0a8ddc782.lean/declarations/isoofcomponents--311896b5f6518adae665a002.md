# isoOfComponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e018f7864e60680c4119e39ef46701299f4b35209840d17b71824cb8e11ed203",
  "kind": "def",
  "lexical_name": "isoOfComponents",
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
  "slug": "isoofcomponents--311896b5f6518adae665a002",
  "source": {
    "blob": "3514ef5438f8828077f2f7ad120dec714c84954c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 209,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:311896b5f6518adae665a002f44f1cbb81d4152f2786fc01fe5bdbd566f610ba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e018f7864e60680c4119e39ef46701299f4b35209840d17b71824cb8e11ed203`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoOfComponents (H : X.1 ≅ Y.1) (α : H.hom _* X.2 ≅ Y.2) : X ≅ Y where
  hom :=
    { base := H.hom
      c := α.inv }
  inv :=
    { base := H.inv
      c := Presheaf.toPushforwardOfIso H α.hom }
  hom_inv_id := by ext <;> simp
  inv_hom_id := by
    ext
    · dsimp
      exact H.inv_hom_id_apply _
    dsimp
    simp only [Presheaf.toPushforwardOfIso_app, assoc, ← α.hom.naturality]
    simp only [eqToHom_map, eqToHom_app, eqToHom_trans_assoc, eqToHom_refl, id_comp]
    apply Iso.inv_hom_id_app

/-- Isomorphic `PresheafedSpace`s have naturally isomorphic presheaves. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3514ef5438f8828077f2f7ad120dec714c84954c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
