# assignment_pair_sum_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f47bc15ee7659d444f6099da0293a4fd500d3780",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 14,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4446222-ea90-55d6-b33b-85aa5336bc42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57e82f15-4cc7-2382-a820-c70adf8ea233",
  "kind": "theorem",
  "lexical_name": "assignment_pair_sum_insert",
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
  "slug": "assignment-pair-sum-insert--ca27d9103f096c6ff40dda49",
  "source": {
    "blob": "f47bc15ee7659d444f6099da0293a4fd500d3780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 14,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca27d9103f096c6ff40dda49bb0ac865a30b4e4f95e56b6b97c1a5a672ca46bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57e82f15-4cc7-2382-a820-c70adf8ea233`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem assignment_pair_sum_insert (P : Finset ℕ) (p : ℕ) (hp : p ∉ P)
    (F : ℕ → ℕ → ℝ) :
    (∑ U ∈ (insert p P).powerset, ∑ V ∈ (insert p P \ U).powerset,
      F (∏ q ∈ U, q) (∏ q ∈ V, q)) =
      (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
        F (∏ q ∈ U, q) (∏ q ∈ V, q)) +
      (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
        F (p * ∏ q ∈ U, q) (∏ q ∈ V, q)) +
      (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
        F (∏ q ∈ U, q) (p * ∏ q ∈ V, q)) := by
  rw [sum_powerset_insert hp]
  have hU (U : Finset ℕ) (hU : U ∈ P.powerset) : p ∉ U :=
    fun hu ↦ hp ((mem_powerset.mp hU) hu)
  have hfirst :
      (∑ U ∈ P.powerset, ∑ V ∈ (insert p P \ U).powerset,
        F (∏ q ∈ U, q) (∏ q ∈ V, q)) =
      (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
        F (∏ q ∈ U, q) (∏ q ∈ V, q)) +
      (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
        F (∏ q ∈ U, q) (p * ∏ q ∈ V, q)) := by
    rw [← sum_add_distrib]
    apply sum_congr rfl
    intro U hUP
    have heq : insert p P \ U = insert p (P \ U) := by
      ext q
      simp only [mem_sdiff, mem_insert]
      constructor
      · rintro ⟨hq | hq, hn⟩
        · exact Or.inl hq
        · exact Or.inr ⟨hq, hn⟩
      · rintro (rfl | ⟨hq, hn⟩)
        · exact ⟨Or.inl rfl, hU U hUP⟩
        · exact ⟨Or.inr hq, hn⟩
    rw [heq, sum_powerset_insert (fun h ↦ hp (mem_sdiff.mp h).1)]
    congr 1
    apply sum_congr rfl
    intro V hV
    rw [prod_insert (fun hv ↦ hp (mem_sdiff.mp ((mem_powerset.mp hV) hv)).1)]
  have hsecond :
      (∑ U ∈ P.powerset, ∑ V ∈ (insert p P \ insert p U).powerset,
        F (∏ q ∈ insert p U, q) (∏ q ∈ V, q)) =
      (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
        F (p * ∏ q ∈ U, q) (∏ q ∈ V, q)) := by
    apply sum_congr rfl
    intro U hUP
    have heq : insert p P \ insert p U = P \ U := by
      ext q
      simp only [mem_sdiff, mem_insert, not_or]
      constructor
      · rintro ⟨rfl | hq, hn, hnU⟩
        · exact False.elim (hn rfl)
        · exact ⟨hq, hnU⟩
      · rintro ⟨hq, hn⟩
        exact ⟨Or.inr hq, (fun he ↦ hp (he ▸ hq)), hn⟩
    rw [heq, prod_insert (hU U hUP)]
  rw [hfirst, hsecond]
  ring

/-- Insertion into the complete prime support keeps both ordered placements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f47bc15ee7659d444f6099da0293a4fd500d3780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
