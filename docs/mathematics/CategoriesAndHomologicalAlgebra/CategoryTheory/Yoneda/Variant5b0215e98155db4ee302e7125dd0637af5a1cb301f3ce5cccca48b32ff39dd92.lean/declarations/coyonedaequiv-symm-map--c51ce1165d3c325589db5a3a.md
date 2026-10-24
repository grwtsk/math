# coyonedaEquiv_symm_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f514153e7de20fee02d247c0509fe713e853d99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 700,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12258a85-6f2e-b6c7-f8c9-6aa1af8d8fc4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:764ff7e6-bb52-2587-bc5d-5b79efa7b2d6",
  "kind": "lemma",
  "lexical_name": "coyonedaEquiv_symm_map",
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
  "slug": "coyonedaequiv-symm-map--c51ce1165d3c325589db5a3a",
  "source": {
    "blob": "7f514153e7de20fee02d247c0509fe713e853d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 709,
    "line": 700,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c51ce1165d3c325589db5a3a127ab77c266936bd75659b15af61a34786ae187b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:764ff7e6-bb52-2587-bc5d-5b79efa7b2d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 700–709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coyonedaEquiv_symm_map {X Y : C} (f : X ⟶ Y) {F : C ⥤ Type v₁} (t : F.obj X) :
    coyonedaEquiv.symm (F.map f t) = coyoneda.map f.op ≫ coyonedaEquiv.symm t := by
  obtain ⟨u, rfl⟩ := coyonedaEquiv.surjective t
  simp [coyonedaEquiv_naturality u f]

variable (C)

/-- The "Coyoneda evaluation" functor, which sends `X : C` and `F : C ⥤ Type`
to `F.obj X`, functorially in both `X` and `F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5b0215e98155db4ee302e7125dd0637af5a1cb301f3ce5cccca48b32ff39dd92.lean#L700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f514153e7de20fee02d247c0509fe713e853d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
