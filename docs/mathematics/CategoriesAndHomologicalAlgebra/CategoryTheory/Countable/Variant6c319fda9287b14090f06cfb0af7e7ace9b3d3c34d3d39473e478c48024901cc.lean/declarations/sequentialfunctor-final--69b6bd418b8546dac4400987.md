# sequentialFunctor_final

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87c3d54002c18e6c6d6a762533849914291f21e63d5e951179ed8b35506efe05",
  "kind": "instance",
  "lexical_name": "sequentialFunctor_final",
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
  "slug": "sequentialfunctor-final--69b6bd418b8546dac4400987",
  "source": {
    "blob": "ea476621dd2252da8ed5e60f416ea7149d6f354a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 164,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant6c319fda9287b14090f06cfb0af7e7ace9b3d3c34d3d39473e478c48024901cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69b6bd418b8546dac44009870e9983156b0fb1061b7eea530dda0553428f3e9a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant6c319fda9287b14090f06cfb0af7e7ace9b3d3c34d3d39473e478c48024901cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87c3d54002c18e6c6d6a762533849914291f21e63d5e951179ed8b35506efe05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance sequentialFunctor_final : (sequentialFunctor J).Final where
  out d := by
    obtain ⟨n, (g : d ≤ (sequentialFunctor J).obj n)⟩ := sequentialFunctor_final_aux J d
    have : Nonempty (StructuredArrow d (sequentialFunctor J)) :=
      ⟨StructuredArrow.mk (homOfLE g)⟩
    apply isConnected_of_zigzag
    refine fun i j ↦ ⟨[j], ?_⟩
    simp only [List.isChain_cons_cons, Zag, List.isChain_singleton, and_true, ne_eq,
      not_false_eq_true, List.getLast_cons, List.getLast_singleton', reduceCtorEq]
    clear! C
    wlog! h : j.right ≤ i.right
    · exact or_comm.1 (this J d n g inferInstance j i (le_of_lt h))
    · right
      exact ⟨StructuredArrow.homMk (homOfLE h) rfl⟩

end IsFiltered

namespace IsCofiltered

attribute [local instance] IsCofiltered.nonempty

variable {C} [Preorder J] [IsCofiltered J]

/-- The object part of the initial functor `ℕᵒᵖ ⥤ J` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant6c319fda9287b14090f06cfb0af7e7ace9b3d3c34d3d39473e478c48024901cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant6c319fda9287b14090f06cfb0af7e7ace9b3d3c34d3d39473e478c48024901cc.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea476621dd2252da8ed5e60f416ea7149d6f354a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
