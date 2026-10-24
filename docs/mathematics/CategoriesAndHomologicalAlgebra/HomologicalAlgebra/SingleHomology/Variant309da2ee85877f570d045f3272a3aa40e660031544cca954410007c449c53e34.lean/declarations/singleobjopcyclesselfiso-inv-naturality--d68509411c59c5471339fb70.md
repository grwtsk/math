# singleObjOpcyclesSelfIso_inv_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cb1dd06-90e5-b0f1-08ce-96d520b27d1e",
  "kind": "lemma",
  "lexical_name": "singleObjOpcyclesSelfIso_inv_naturality",
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
  "slug": "singleobjopcyclesselfiso-inv-naturality--d68509411c59c5471339fb70",
  "source": {
    "blob": "b4b2c73946fb82d233f51d10bcc48e88ea51474a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 179,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d68509411c59c5471339fb70c9893d394ca270ba135d44041e328539a1df181f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cb1dd06-90e5-b0f1-08ce-96d520b27d1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma singleObjOpcyclesSelfIso_inv_naturality :
    opcyclesMap ((single C c j).map f) j ≫ (singleObjOpcyclesSelfIso c j B).inv =
      (singleObjOpcyclesSelfIso c j A).inv ≫ f := by
  rw [← cancel_mono (singleObjOpcyclesSelfIso c j B).hom, assoc, assoc, Iso.inv_hom_id,
    comp_id, ← singleObjOpcyclesSelfIso_hom_naturality, Iso.inv_hom_id_assoc]

variable (C)

/-- The computation of the homology of single complexes, as a natural isomorphism
`single C c j ⋙ homologyFunctor C c j ≅ 𝟭 C`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4b2c73946fb82d233f51d10bcc48e88ea51474a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
