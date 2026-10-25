# isSatisfiable_union_distinctConstantsTheory_of_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c67c6fc11af57b4996931de4cddb6f77970b4901",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95303a65-5d95-cd9a-70be-8f004a2cdc82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73033abd-8db7-598b-7187-ad28fb1d6c2a",
  "kind": "theorem",
  "lexical_name": "isSatisfiable_union_distinctConstantsTheory_of_infinite",
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
  "slug": "issatisfiable-union-distinctconstantstheory-of-infinite--38a867eff8899dbdc151ed4e",
  "source": {
    "blob": "c67c6fc11af57b4996931de4cddb6f77970b4901",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38a867eff8899dbdc151ed4ee224ab86457fcb02715228c5ee3672bdf845191e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73033abd-8db7-598b-7187-ad28fb1d6c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSatisfiable_union_distinctConstantsTheory_of_infinite (T : L.Theory) (s : Set α)
    (M : Type w') [L.Structure M] [M ⊨ T] [Infinite M] :
    ((L.lhomWithConstants α).onTheory T ∪ L.distinctConstantsTheory s).IsSatisfiable := by
  classical
    rw [distinctConstantsTheory_eq_iUnion, Set.union_iUnion, isSatisfiable_directed_union_iff]
    · exact fun t =>
        isSatisfiable_union_distinctConstantsTheory_of_card_le T _ M
          ((lift_le_aleph0.2 (finset_card_lt_aleph0 _).le).trans
            (aleph0_le_lift.2 (aleph0_le_mk M)))
    · apply Monotone.directed_le
      refine' monotone_const.union (monotone_distinctConstantsTheory.comp _)
      simp only [Finset.coe_map, Function.Embedding.coe_subtype]
      exact Monotone.comp (g := Set.image ((↑) : s → α)) (f := ((↑) : Finset s → Set s))
        Set.monotone_image fun _ _ => Finset.coe_subset.2
#align first_order.language.Theory.is_satisfiable_union_distinct_constants_theory_of_infinite FirstOrder.Language.Theory.isSatisfiable_union_distinctConstantsTheory_of_infinite

/-- Any theory with an infinite model has arbitrarily large models. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c67c6fc11af57b4996931de4cddb6f77970b4901` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
