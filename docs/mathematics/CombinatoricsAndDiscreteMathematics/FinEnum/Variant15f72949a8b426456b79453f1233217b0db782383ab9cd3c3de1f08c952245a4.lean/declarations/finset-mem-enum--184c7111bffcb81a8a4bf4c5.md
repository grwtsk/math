# Finset.mem_enum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25f2cc0fffb7f1edbefb1d3ec6dd46dab1acbc3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44a54007-c6aa-8f5a-927e-88e2201917b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7226a74-72cb-d9fb-8ae7-3df62cfbc80a",
  "kind": "theorem",
  "lexical_name": "Finset.mem_enum",
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
  "slug": "finset-mem-enum--184c7111bffcb81a8a4bf4c5",
  "source": {
    "blob": "25f2cc0fffb7f1edbefb1d3ec6dd46dab1acbc3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:184c7111bffcb81a8a4bf4c56dcbd5a9d207e15de9d032be6df0d17539a27bb7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7226a74-72cb-d9fb-8ae7-3df62cfbc80a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.mem_enum [DecidableEq α] (s : Finset α) (xs : List α) :
    s ∈ Finset.enum xs ↔ ∀ x ∈ s, x ∈ xs := by
  induction' xs with xs_hd generalizing s <;> simp [*, Finset.enum]
  · simp [Finset.eq_empty_iff_forall_not_mem]
  · constructor
    · rintro ⟨a, h, h'⟩ x hx
      cases' h' with _ h' a b
      · right
        apply h
        subst a
        exact hx
      · simp only [h', mem_union, mem_singleton] at hx ⊢
        cases' hx with hx hx'
        · exact Or.inl hx
        · exact Or.inr (h _ hx')
    · intro h
      exists s \ ({xs_hd} : Finset α)
      simp only [and_imp, mem_sdiff, mem_singleton]
      simp only [or_iff_not_imp_left] at h
      exists h
      by_cases h : xs_hd ∈ s
      · have : {xs_hd} ⊆ s
        simp only [HasSubset.Subset, *, forall_eq, mem_singleton]
        simp only [union_sdiff_of_subset this, or_true_iff, Finset.union_sdiff_of_subset,
          eq_self_iff_true]
      · left
        symm
        simp only [sdiff_eq_self]
        intro a
        simp only [and_imp, mem_inter, mem_singleton]
        rintro h₀ rfl
        exact (h h₀).elim
#align fin_enum.finset.mem_enum FinEnum.Finset.mem_enum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25f2cc0fffb7f1edbefb1d3ec6dd46dab1acbc3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
