# equiv_punit_iff_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1752a12e3181c8cd3f38715fb56d802d7191041f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fdfc2dbcf0c3006ba3404b0f7dbdccbdeac14e5dc44aada0ae3709a4cb63d92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4809f441-8ad1-6cc1-a7c1-91ae8164f3e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4e2e647-00eb-b51d-e883-0247df2c1cd5",
  "kind": "theorem",
  "lexical_name": "equiv_punit_iff_unique",
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
  "slug": "equiv-punit-iff-unique--65a1bd3ec4dcc976e7cb9dc4",
  "source": {
    "blob": "1752a12e3181c8cd3f38715fb56d802d7191041f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PUnit/Variant3fdfc2dbcf0c3006ba3404b0f7dbdccbdeac14e5dc44aada0ae3709a4cb63d92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65a1bd3ec4dcc976e7cb9dc4c32dc3f90f5c3236fb973352188e543ebaea5980",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PUnit/Variant3fdfc2dbcf0c3006ba3404b0f7dbdccbdeac14e5dc44aada0ae3709a4cb63d92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4e2e647-00eb-b51d-e883-0247df2c1cd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_punit_iff_unique :
    Nonempty (C ≌ Discrete PUnit.{w + 1}) ↔ Nonempty C ∧ ∀ x y : C, Nonempty <| Unique (x ⟶ y) := by
  constructor
  · rintro ⟨h⟩
    refine ⟨⟨h.inverse.obj ⟨⟨⟩⟩⟩, fun x y => Nonempty.intro ?_⟩
    let f : x ⟶ y := by
      have hx : x ⟶ h.inverse.obj ⟨⟨⟩⟩ := by convert! h.unit.app x
      have hy : h.inverse.obj ⟨⟨⟩⟩ ⟶ y := by convert! h.unitInv.app y
      exact hx ≫ hy
    suffices sub : Subsingleton (x ⟶ y) from uniqueOfSubsingleton f
    have : ∀ z, z = h.unit.app x ≫ (h.functor ⋙ h.inverse).map z ≫ h.unitInv.app y := by
      simp
    apply Subsingleton.intro
    intro a b
    rw [this a, this b]
    simp only [Functor.comp_map]
    congr 3
    simp [eq_iff_true_of_subsingleton]
  · rintro ⟨⟨p⟩, h⟩
    have := fun x y => (h x y).some
    refine
      Nonempty.intro
        (CategoryTheory.Equivalence.mk ((Functor.const _).obj ⟨⟨⟩⟩)
          ((@Functor.const <| Discrete PUnit).obj p) ?_ (by apply Functor.punitExt))
    exact
      NatIso.ofComponents fun _ =>
        { hom := default
          inv := default }

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PUnit/Variant3fdfc2dbcf0c3006ba3404b0f7dbdccbdeac14e5dc44aada0ae3709a4cb63d92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PUnit/Variant3fdfc2dbcf0c3006ba3404b0f7dbdccbdeac14e5dc44aada0ae3709a4cb63d92.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1752a12e3181c8cd3f38715fb56d802d7191041f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
