# yonedaGluedToSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93518edeae47f7b8ba53fa3d358d95d4049bcdbd0f4c8d5c02977b4b9af36143",
  "kind": "def",
  "lexical_name": "yonedaGluedToSheaf",
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
  "slug": "yonedagluedtosheaf--6a6eaa5d9b9bc883cd0f49a9",
  "source": {
    "blob": "4b974c2b544e1ec61ad486907a02c3418ca6eeee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 99,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a6eaa5d9b9bc883cd0f49a92bde12fbc07b68afce6fa0829115a30b25128e9d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93518edeae47f7b8ba53fa3d358d95d4049bcdbd0f4c8d5c02977b4b9af36143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def yonedaGluedToSheaf :
    zariskiTopology.yoneda.obj (glueData hf).glued ⟶ F where
  -- The map is obtained by finding an object of `F((glueData hf).glued)`.
  val := yonedaEquiv.symm
  -- This section is obtained from gluing the section corresponding to `f i : Hom(-, X i) ⟶ F`.
    ((glueData hf).sheafValGluedMk (fun i ↦ yonedaEquiv (f i)) (by
      intro i j
      apply yonedaEquiv.symm.injective
      dsimp only [glueData_V, glueData_J, glueData_U, glueData_f, glueData_t]
      rw [yonedaEquiv_naturality, Equiv.symm_apply_apply,
        FunctorToTypes.map_comp_apply, yonedaEquiv_naturality, yonedaEquiv_naturality,
        Equiv.symm_apply_apply, ← Functor.map_comp_assoc,
        Functor.relativelyRepresentable.symmetry_fst, ((hf i).rep.isPullback' (f j)).w]))

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b974c2b544e1ec61ad486907a02c3418ca6eeee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
