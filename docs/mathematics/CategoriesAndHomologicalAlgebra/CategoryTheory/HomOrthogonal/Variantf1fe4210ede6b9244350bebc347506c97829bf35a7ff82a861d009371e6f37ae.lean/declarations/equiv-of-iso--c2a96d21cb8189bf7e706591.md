# equiv_of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "871372768bf403abb4280962c3276dba2411b416",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1fe4210ede6b9244350bebc347506c97829bf35a7ff82a861d009371e6f37ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44672420-1c70-4c1f-9610-d5f89b04dde9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc94fef8-11dc-19b9-9e3d-4955fc4ae700",
  "kind": "theorem",
  "lexical_name": "equiv_of_iso",
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
  "slug": "equiv-of-iso--c2a96d21cb8189bf7e706591",
  "source": {
    "blob": "871372768bf403abb4280962c3276dba2411b416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 198,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variantf1fe4210ede6b9244350bebc347506c97829bf35a7ff82a861d009371e6f37ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2a96d21cb8189bf7e706591ddb2389ac617a956878ee78f02e0496ae58b6170",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variantf1fe4210ede6b9244350bebc347506c97829bf35a7ff82a861d009371e6f37ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc94fef8-11dc-19b9-9e3d-4955fc4ae700`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_of_iso (o : HomOrthogonal s) {α β : Type} [Finite α] [Finite β] {f : α → ι}
    {g : β → ι} (i : (⨁ fun a => s (f a)) ≅ ⨁ fun b => s (g b)) :
    ∃ e : α ≃ β, ∀ a, g (e a) = f a := by
  classical
  refine ⟨Equiv.ofPreimageEquiv ?_, fun a => Equiv.ofPreimageEquiv_map _ _⟩
  intro c
  apply Nonempty.some
  apply Cardinal.eq.1
  cases nonempty_fintype α; cases nonempty_fintype β
  simp only [Cardinal.mk_fintype, Nat.cast_inj]
  exact
    Matrix.square_of_invertible (o.matrixDecomposition i.inv c) (o.matrixDecomposition i.hom c)
      (by
        rw [← o.matrixDecomposition_comp]
        simp)
      (by
        rw [← o.matrixDecomposition_comp]
        simp)

end

end HomOrthogonal

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variantf1fe4210ede6b9244350bebc347506c97829bf35a7ff82a861d009371e6f37ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variantf1fe4210ede6b9244350bebc347506c97829bf35a7ff82a861d009371e6f37ae.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `871372768bf403abb4280962c3276dba2411b416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
