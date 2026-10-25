# isSatisfiable_union_distinctConstantsTheory_of_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7c470d2-f2f9-52a5-901b-841d341c0fef",
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
  "slug": "issatisfiable-union-distinctconstantstheory-of-infinite--17a75c1a520567511923cc74",
  "source": {
    "blob": "fcabd4a7605b9ba0274049c820f67b1c0434e3f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 165,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant54b6ad564e90f40963ea1478aa5d92067770c9cf94fb228605ada156b55cccb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17a75c1a520567511923cc7404c2d75cd8669645698d6bfdb17e0a8ae8ec6ae5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant54b6ad564e90f40963ea1478aa5d92067770c9cf94fb228605ada156b55cccb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7c470d2-f2f9-52a5-901b-841d341c0fef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–181.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant54b6ad564e90f40963ea1478aa5d92067770c9cf94fb228605ada156b55cccb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant54b6ad564e90f40963ea1478aa5d92067770c9cf94fb228605ada156b55cccb2.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcabd4a7605b9ba0274049c820f67b1c0434e3f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
