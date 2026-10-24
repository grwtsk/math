# mem_closure_iff_exists_finset_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "470177b8c98cf41712d8ac35a90e6412147b3a3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20455cbb45fe529fcb6b19ac2e62fc3ead7b364038b2afde246f531e9526139b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43244d8b-cf23-6896-5e6f-07fedc9a319d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36362dcf-62f0-a9d7-e4cf-5b72c1a15c0e",
  "kind": "lemma",
  "lexical_name": "mem_closure_iff_exists_finset_subset",
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
  "slug": "mem-closure-iff-exists-finset-subset--f65876e2bbcfc0c016125536",
  "source": {
    "blob": "470177b8c98cf41712d8ac35a90e6412147b3a3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 161,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant20455cbb45fe529fcb6b19ac2e62fc3ead7b364038b2afde246f531e9526139b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f65876e2bbcfc0c0161255360a6107351c53592e8cea2a21251d1f9adf6b620e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant20455cbb45fe529fcb6b19ac2e62fc3ead7b364038b2afde246f531e9526139b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36362dcf-62f0-a9d7-e4cf-5b72c1a15c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_closure_iff_exists_finset_subset {s : Set M} :
    x ∈ closure s ↔
      ∃ (f : M → ℕ) (t : Finset M), ↑t ⊆ s ∧ f.support ⊆ t ∧ ∏ a ∈ t, a ^ f a = x where
  mp hx := by
    classical
    induction hx using closure_induction with
    | one => exact ⟨0, ∅, by simp⟩
    | mem x hx =>
      exact ⟨Pi.single x 1, {x}, by simp [hx, Pi.single_apply]⟩
    | mul x y _ _ hx hy =>
    obtain ⟨f, t, hts, hf, rfl⟩ := hx
    obtain ⟨g, u, hus, hg, rfl⟩ := hy
    refine ⟨f + g, t ∪ u, mod_cast Set.union_subset hts hus,
      (Function.support_add _ _).trans <| mod_cast Set.union_subset_union hf hg, ?_⟩
    simp only [Pi.add_apply, pow_add, Finset.prod_mul_distrib]
    congr 1 <;> symm
    · refine Finset.prod_subset Finset.subset_union_left ?_
      simp +contextual [Function.support_subset_iff'.1 hf]
    · refine Finset.prod_subset Finset.subset_union_right ?_
      simp +contextual [Function.support_subset_iff'.1 hg]
  mpr := by
    rintro ⟨n, t, hts, -, rfl⟩; exact prod_mem _ fun x hx ↦ pow_mem (subset_closure <| hts hx) _

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant20455cbb45fe529fcb6b19ac2e62fc3ead7b364038b2afde246f531e9526139b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant20455cbb45fe529fcb6b19ac2e62fc3ead7b364038b2afde246f531e9526139b.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `470177b8c98cf41712d8ac35a90e6412147b3a3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
