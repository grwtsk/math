# zipWith_swap_prod_support'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d52f2ec62e73f9fd9ec902f4c062f96249fd61a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1fb8f81-b26b-0e1f-beb7-ed3486e3959a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:830b8b81-816b-3213-92f0-a1361dc8339f",
  "kind": "theorem",
  "lexical_name": "zipWith_swap_prod_support'",
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
  "slug": "zipwith-swap-prod-support--7a22b4ccd253a36ed9a9e587",
  "source": {
    "blob": "4d52f2ec62e73f9fd9ec902f4c062f96249fd61a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a22b4ccd253a36ed9a9e58726d3325431a12f8e863e1133b9800e0981b1094f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:830b8b81-816b-3213-92f0-a1361dc8339f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zipWith_swap_prod_support' (l l' : List α) :
    { x | (zipWith swap l l').prod x ≠ x } ≤ l.toFinset ⊔ l'.toFinset := by
  simp only [Set.sup_eq_union, Set.le_eq_subset]
  induction' l with y l hl generalizing l'
  · simp
  · cases' l' with z l'
    · simp
    · intro x
      simp only [Set.union_subset_iff, mem_cons, zipWith_cons_cons, foldr, prod_cons,
        mul_apply]
      intro hx
      by_cases h : x ∈ { x | (zipWith swap l l').prod x ≠ x }
      · specialize hl l' h
        simp only [ge_iff_le, Finset.le_eq_subset, Finset.sup_eq_union, Finset.coe_union,
          coe_toFinset, Set.mem_union, Set.mem_setOf_eq] at hl
        refine' Or.elim hl (fun hm => _) fun hm => _ <;>
          · simp only [Finset.coe_insert, Set.mem_insert_iff, Finset.mem_coe, toFinset_cons,
              mem_toFinset] at hm ⊢
            simp [hm]
      · simp only [not_not, Set.mem_setOf_eq] at h
        simp only [h, Set.mem_setOf_eq] at hx
        rw [swap_apply_ne_self_iff] at hx
        rcases hx with ⟨hyz, rfl | rfl⟩ <;> simp
#align list.zip_with_swap_prod_support' List.zipWith_swap_prod_support'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d52f2ec62e73f9fd9ec902f4c062f96249fd61a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
