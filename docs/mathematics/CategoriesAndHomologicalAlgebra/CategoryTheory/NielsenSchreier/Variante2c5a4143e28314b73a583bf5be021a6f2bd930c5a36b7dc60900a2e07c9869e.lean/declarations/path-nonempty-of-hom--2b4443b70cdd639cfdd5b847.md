# path_nonempty_of_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7d11ddaa0aacad7ef1562ed8ab7ba8f34a3f78e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:918b6e4f-2344-81af-e703-895a5b82c39b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:292284b4-2012-0a12-a5bf-e276106c6cf0",
  "kind": "theorem",
  "lexical_name": "path_nonempty_of_hom",
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
  "slug": "path-nonempty-of-hom--2b4443b70cdd639cfdd5b847",
  "source": {
    "blob": "d7d11ddaa0aacad7ef1562ed8ab7ba8f34a3f78e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 288,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b4443b70cdd639cfdd5b84763fefda04eca17c8406329539e8cbf8942ee4650",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:292284b4-2012-0a12-a5bf-e276106c6cf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem path_nonempty_of_hom {G} [Groupoid.{u, u} G] [IsFreeGroupoid G] {a b : G} :
    Nonempty (a ⟶ b) → Nonempty (Path (symgen a) (symgen b)) := by
  rintro ⟨p⟩
  rw [← @WeaklyConnectedComponent.eq (Generators G), eq_comm, ← FreeGroup.of_injective.eq_iff, ←
    mul_inv_eq_one]
  let X := FreeGroup (WeaklyConnectedComponent <| Generators G)
  let f : G → X := fun g => FreeGroup.of (WeaklyConnectedComponent.mk g)
  let F : G ⥤ CategoryTheory.SingleObj.{u} (X : Type u) := SingleObj.differenceFunctor f
  change (F.map p) = ((@CategoryTheory.Functor.const G _ _ (SingleObj.category X)).obj ()).map p
  congr; ext
  rw [Functor.const_obj_map, id_as_one, differenceFunctor_map, @mul_inv_eq_one _ _ (f _)]
  apply congr_arg FreeGroup.of
  apply (WeaklyConnectedComponent.eq _ _).mpr
  exact ⟨Hom.toPath (Sum.inr (by assumption))⟩

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- Given a connected free groupoid, its generating quiver is rooted-connected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variante2c5a4143e28314b73a583bf5be021a6f2bd930c5a36b7dc60900a2e07c9869e.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7d11ddaa0aacad7ef1562ed8ab7ba8f34a3f78e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
