# nonempty_sections_of_finite_cofiltered_system

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4cf2992f5b7b46f0648d26f29c3e9cdf5902e91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c1fdfb1043b1fa83d4d9e397bae74640fec87f95372030b533a3c4c928ee1f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb1ca9e7-38f8-da3f-3cab-c61c43c540ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2caf3c76-998f-7d22-08ea-263d70726883",
  "kind": "theorem",
  "lexical_name": "nonempty_sections_of_finite_cofiltered_system",
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
  "slug": "nonempty-sections-of-finite-cofiltered-system--9910fba8fdf45480ca4ef273",
  "source": {
    "blob": "d4cf2992f5b7b46f0648d26f29c3e9cdf5902e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant0c1fdfb1043b1fa83d4d9e397bae74640fec87f95372030b533a3c4c928ee1f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9910fba8fdf45480ca4ef273b4ac3a36ddb84cbc47adb7f1a74fe801954cd8a5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant0c1fdfb1043b1fa83d4d9e397bae74640fec87f95372030b533a3c4c928ee1f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2caf3c76-998f-7d22-08ea-263d70726883`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_sections_of_finite_cofiltered_system {J : Type u} [Category.{w} J]
    [IsCofilteredOrEmpty J] (F : J ⥤ Type v) [∀ j : J, Finite (F.obj j)]
    [∀ j : J, Nonempty (F.obj j)] : F.sections.Nonempty := by
  -- Step 1: lift everything to the `max u v w` universe.
  let J' : Type max w v u := AsSmall.{max w v} J
  let down : J' ⥤ J := AsSmall.down
  let F' : J' ⥤ Type (max u v w) := down ⋙ F ⋙ uliftFunctor.{max u w, v}
  have : ∀ i, Nonempty (F'.obj i) := fun i => ⟨⟨Classical.arbitrary (F.obj (down.obj i))⟩⟩
  have : ∀ i, Finite (F'.obj i) := fun i => Finite.of_equiv (F.obj (down.obj i)) Equiv.ulift.symm
  -- Step 2: apply the bootstrap theorem
  cases isEmpty_or_nonempty J
  · fconstructor <;> apply isEmptyElim
  have : IsCofiltered J := ⟨⟩
  obtain ⟨u, hu⟩ := nonempty_sections_of_finite_cofiltered_system.init F'
  -- Step 3: interpret the results
  use fun j => (u ⟨j⟩).down
  intro j j' f
  have h := @hu (⟨j⟩ : J') (⟨j'⟩ : J') (ULift.up f)
  simp only [F', down, AsSmall.down] at h
  simp_rw [← h]
  rfl

/-- The inverse limit of nonempty finite types is nonempty.

See `nonempty_sections_of_finite_cofiltered_system` for a generalization to cofiltered limits.
That version applies in almost all cases, and the only difference is that this version
allows `J` to be empty.

This may be regarded as a generalization of Kőnig's lemma.
To specialize: given a locally finite connected graph, take `Jᵒᵖ` to be `ℕ` and
`F j` to be length-`j` paths that start from an arbitrary fixed vertex.
Elements of `F.sections` can be read off as infinite rays in the graph. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant0c1fdfb1043b1fa83d4d9e397bae74640fec87f95372030b533a3c4c928ee1f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant0c1fdfb1043b1fa83d4d9e397bae74640fec87f95372030b533a3c4c928ee1f8.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4cf2992f5b7b46f0648d26f29c3e9cdf5902e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
