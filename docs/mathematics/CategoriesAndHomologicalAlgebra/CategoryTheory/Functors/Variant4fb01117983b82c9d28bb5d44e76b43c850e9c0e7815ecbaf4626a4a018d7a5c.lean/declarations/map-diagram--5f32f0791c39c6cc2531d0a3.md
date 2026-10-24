# map_diagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa790d3c-ecd7-56fa-953a-88a40afa2895",
  "kind": "theorem",
  "lexical_name": "map_diagram",
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
  "slug": "map-diagram--5f32f0791c39c6cc2531d0a3",
  "source": {
    "blob": "d0e66ffa2e01171db42502b12d2920ef79a72bf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant4fb01117983b82c9d28bb5d44e76b43c850e9c0e7815ecbaf4626a4a018d7a5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f32f0791c39c6cc2531d0a3a6974d8b99fb301b0c7b92a4684bc36e5ac8e481",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant4fb01117983b82c9d28bb5d44e76b43c850e9c0e7815ecbaf4626a4a018d7a5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa790d3c-ecd7-56fa-953a-88a40afa2895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_diagram :
    Pairwise.diagram U ⋙ Opens.map f = Pairwise.diagram ((Opens.map f).obj ∘ U) := by
  have obj_eq : ∀ (j : Pairwise ι), (Pairwise.diagram U ⋙ Opens.map f).obj j =
    (Pairwise.diagram ((Opens.map f).toPrefunctor.obj ∘ U)).obj j
  · rintro ⟨i⟩ <;> rfl
  refine Functor.hext obj_eq ?_
  intro i j g; apply Subsingleton.helim
  rw [obj_eq, obj_eq]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.map_diagram TopCat.Presheaf.SheafConditionPairwiseIntersections.map_diagram

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant4fb01117983b82c9d28bb5d44e76b43c850e9c0e7815ecbaf4626a4a018d7a5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant4fb01117983b82c9d28bb5d44e76b43c850e9c0e7815ecbaf4626a4a018d7a5c.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0e66ffa2e01171db42502b12d2920ef79a72bf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
