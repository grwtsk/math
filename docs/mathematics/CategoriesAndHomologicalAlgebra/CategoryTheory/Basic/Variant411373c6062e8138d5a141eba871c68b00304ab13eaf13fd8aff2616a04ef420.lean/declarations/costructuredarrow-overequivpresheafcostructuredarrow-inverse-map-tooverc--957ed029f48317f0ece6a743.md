# CostructuredArrow.overEquivPresheafCostructuredArrow_inverse_map_toOverCompYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4d66652-fb9f-017b-b2c7-ba2eb43a2aa5",
  "kind": "theorem",
  "lexical_name": "CostructuredArrow.overEquivPresheafCostructuredArrow_inverse_map_toOverCompYoneda",
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
  "slug": "costructuredarrow-overequivpresheafcostructuredarrow-inverse-map-tooverc--957ed029f48317f0ece6a743",
  "source": {
    "blob": "1fbc2fcda2c4d7aa1dbc2ca4a8dc615b2fba1493",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 600,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant411373c6062e8138d5a141eba871c68b00304ab13eaf13fd8aff2616a04ef420.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:957ed029f48317f0ece6a743d7a94f7bf6e9318b970d30eeb1c63c4f1067082c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant411373c6062e8138d5a141eba871c68b00304ab13eaf13fd8aff2616a04ef420.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4d66652-fb9f-017b-b2c7-ba2eb43a2aa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CostructuredArrow.overEquivPresheafCostructuredArrow_inverse_map_toOverCompYoneda
    {A : Cᵒᵖ ⥤ Type v} {T : Over A} {X : CostructuredArrow yoneda A}
    (f : (CostructuredArrow.toOver yoneda A).obj X ⟶ T) :
    (overEquivPresheafCostructuredArrow A).inverse.map
      (((CostructuredArrow.toOverCompYoneda A T).hom.app (op X) f)) =
      (CostructuredArrow.toOverCompOverEquivPresheafCostructuredArrow A).isoCompInverse.inv.app X ≫
        f ≫ (overEquivPresheafCostructuredArrow A).unit.app T := by
  simp [CostructuredArrow.toOverCompYoneda]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant411373c6062e8138d5a141eba871c68b00304ab13eaf13fd8aff2616a04ef420.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant411373c6062e8138d5a141eba871c68b00304ab13eaf13fd8aff2616a04ef420.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fbc2fcda2c4d7aa1dbc2ca4a8dc615b2fba1493` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
