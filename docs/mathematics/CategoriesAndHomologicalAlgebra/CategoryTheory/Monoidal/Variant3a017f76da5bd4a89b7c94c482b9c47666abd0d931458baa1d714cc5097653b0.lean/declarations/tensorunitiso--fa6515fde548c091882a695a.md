# tensorUnitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfd679efb81b261de23ea062d74c6ac80c94d765ea77665ed659075b14ede682",
  "kind": "def",
  "lexical_name": "tensorUnitIso",
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
  "slug": "tensorunitiso--fa6515fde548c091882a695a",
  "source": {
    "blob": "780651401ba216256596f2c6ed62987be1d7ad13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3a017f76da5bd4a89b7c94c482b9c47666abd0d931458baa1d714cc5097653b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa6515fde548c091882a695a1466ba58835994c1a3d3e860d22e52725da1fec4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3a017f76da5bd4a89b7c94c482b9c47666abd0d931458baa1d714cc5097653b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfd679efb81b261de23ea062d74c6ac80c94d765ea77665ed659075b14ede682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def tensorUnitIso :
    (GradedObject.single₀ I).obj (𝟙_ C) ≅ (tensorUnit C c).X :=
  GradedObject.isoMk _ _ (fun i ↦
    if hi : i = 0 then
      (GradedObject.singleObjApplyIsoOfEq (0 : I) (𝟙_ C) i hi).trans
        (singleObjXIsoOfEq c 0 (𝟙_ C) i hi).symm
    else
      { hom := 0
        inv := 0
        hom_inv_id := (GradedObject.isInitialSingleObjApply 0 (𝟙_ C) i hi).hom_ext _ _
        inv_hom_id := (isZero_single_obj_X c 0 (𝟙_ C) i hi).eq_of_src _ _ })

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3a017f76da5bd4a89b7c94c482b9c47666abd0d931458baa1d714cc5097653b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3a017f76da5bd4a89b7c94c482b9c47666abd0d931458baa1d714cc5097653b0.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `780651401ba216256596f2c6ed62987be1d7ad13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
