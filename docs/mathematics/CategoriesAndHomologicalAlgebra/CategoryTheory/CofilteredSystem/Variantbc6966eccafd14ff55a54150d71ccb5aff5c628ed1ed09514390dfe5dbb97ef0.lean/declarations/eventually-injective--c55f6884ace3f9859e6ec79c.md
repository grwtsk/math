# eventually_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f46a9dc2c9f0751618809334b2b23048f0eb91f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:213be030-39fe-91cd-28d7-e039a0eb30e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e77fc4b7-7428-568b-e322-6bbb6e7b464e",
  "kind": "theorem",
  "lexical_name": "eventually_injective",
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
  "slug": "eventually-injective--c55f6884ace3f9859e6ec79c",
  "source": {
    "blob": "f46a9dc2c9f0751618809334b2b23048f0eb91f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 332,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c55f6884ace3f9859e6ec79c76ab0ecceb327ec7978867c5bc8a6e807b978e9a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e77fc4b7-7428-568b-e322-6bbb6e7b464e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_injective [Nonempty J] [Finite F.sections] :
    ∃ j, ∀ (i) (f : i ⟶ j), (F.map f).Injective := by
  haveI : ∀ j, Fintype (F.obj j) := fun j => Fintype.ofFinite (F.obj j)
  haveI : Fintype F.sections := Fintype.ofFinite F.sections
  have card_le : ∀ j, Fintype.card (F.obj j) ≤ Fintype.card F.sections :=
    fun j => Fintype.card_le_of_surjective _ (F.eval_section_surjective_of_surjective Fsur j)
  let fn j := Fintype.card F.sections - Fintype.card (F.obj j)
  refine ⟨fn.argmin,
    fun i f => ((Fintype.bijective_iff_surjective_and_card _).2
      ⟨Fsur f, le_antisymm ?_ (Fintype.card_le_of_surjective _ <| Fsur f)⟩).1⟩
  rw [← Nat.sub_le_sub_iff_left (card_le i)]
  apply fn.argmin_le

end FiniteCofilteredSystem

end Functor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantbc6966eccafd14ff55a54150d71ccb5aff5c628ed1ed09514390dfe5dbb97ef0.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46a9dc2c9f0751618809334b2b23048f0eb91f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
