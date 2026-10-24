# isIndObject_colimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84bc8acad8947f5d85188b04ebac5052c17793fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06182b54-cf49-41dc-82a2-b3e661466f05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca97f04a-32ff-5131-686d-12fe11377b24",
  "kind": "theorem",
  "lexical_name": "isIndObject_colimit",
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
  "slug": "isindobject-colimit--a9b231edb473b450e3cf177d",
  "source": {
    "blob": "84bc8acad8947f5d85188b04ebac5052c17793fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9b231edb473b450e3cf177d58e7bdd841239e4995d3ed5c53d6397f71a28334",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca97f04a-32ff-5131-686d-12fe11377b24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIndObject_colimit (I : Type v) [SmallCategory I] [IsFiltered I]
    (F : I ⥤ Cᵒᵖ ⥤ Type v) (hF : ∀ i, IsIndObject (F.obj i)) : IsIndObject (colimit F) := by
  have : IsFiltered (CostructuredArrow yoneda (colimit F)) :=
    IndizationClosedUnderFilteredColimitsAux.isFiltered F hF
  refine (isIndObject_iff _).mpr ⟨this, ?_⟩

  -- It remains to show that `CostructuredArrow yoneda (colimit F)` is finally small. Because we
  -- have already shown it is filtered, it suffices to exhibit a small weakly terminal set. For this
  -- we use that all the `CostructuredArrow yoneda (F.obj i)` have small weakly terminal sets.
  have : ∀ i, ∃ (s : Set (CostructuredArrow yoneda (F.obj i))) (_ : Small.{v} s),
      ∀ i, ∃ j ∈ s, Nonempty (i ⟶ j) :=
    fun i => (hF i).finallySmall.exists_small_weakly_terminal_set
  choose s hs j hjs hj using this
  refine finallySmall_of_small_weakly_terminal_set
    (⋃ i, (map (colimit.ι F i)).obj '' (s i)) (fun A => ?_)
  obtain ⟨i, y, hy⟩ := FunctorToTypes.jointly_surjective'.{v, v} F _ (yonedaEquiv A.hom)
  let y' : CostructuredArrow yoneda (F.obj i) := mk (yonedaEquiv.symm y)
  obtain ⟨x⟩ := hj _ y'
  refine ⟨(map (colimit.ι F i)).obj (j i y'), ?_, ⟨?_⟩⟩
  · simp only [Set.mem_iUnion, Set.mem_image]
    exact ⟨i, j i y', hjs _ _, rfl⟩
  · refine ?_ ≫ (map (colimit.ι F i)).map x
    refine homMk (𝟙 A.left) (yonedaEquiv.injective ?_)
    simp [-EmbeddingLike.apply_eq_iff_eq, hy, yonedaEquiv_comp, y']

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84bc8acad8947f5d85188b04ebac5052c17793fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
