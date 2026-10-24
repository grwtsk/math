# support_sub_monomial_sub_monomial_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b79c7051cb9d53af7bf276e38d4d4cd339857d8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3c2621c41accea35cac02d8a903a043832f6114acf910f02b47cfcb37e8b7b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67457fbd-29b5-d45d-5442-7dda2e78e9dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36ce09aa-1399-82ef-aaf8-8618ca781a2b",
  "kind": "theorem",
  "lexical_name": "support_sub_monomial_sub_monomial_subset",
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
  "slug": "support-sub-monomial-sub-monomial-subset--a71d921f20d3d46d864c6f5f",
  "source": {
    "blob": "b79c7051cb9d53af7bf276e38d4d4cd339857d8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 94,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CommRing/Variantb3c2621c41accea35cac02d8a903a043832f6114acf910f02b47cfcb37e8b7b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a71d921f20d3d46d864c6f5f3e5fc592d1d4cc8f558b672f5e7512d121cae12b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CommRing/Variantb3c2621c41accea35cac02d8a903a043832f6114acf910f02b47cfcb37e8b7b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ce09aa-1399-82ef-aaf8-8618ca781a2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_sub_monomial_sub_monomial_subset [DecidableEq σ] (d d' : σ →₀ ℕ) (c : R)
    (hdd' : d ≠ d') (hc : p.coeff d = c) :
    (p - (monomial d c - monomial d' c)).support ⊆ p.support.erase d ∪ {d'} := by
  classical
  intro x hx
  have hd_not := notMem_support_sub_monomial_sub_monomial p d d' c hdd' hc
  rcases Finset.mem_union.mp (support_sub σ p _ hx) with hp | hdelta
  · by_cases hxd : x = d
    · exact absurd (hxd ▸ hx) hd_not
    exact Finset.mem_union_left _ (Finset.mem_erase.mpr ⟨hxd, hp⟩)
  rcases Finset.mem_union.mp (support_sub σ _ _ hdelta) with h1 | h2
  · rw [support_monomial] at h1
    split_ifs at h1
    · exact absurd h1 (Finset.notMem_empty _)
    exact absurd ((Finset.mem_singleton.mp h1) ▸ hx) hd_not
  rw [support_monomial] at h2
  split_ifs at h2
  · exact absurd h2 (Finset.notMem_empty _)
  exact Finset.mem_union_right _ (by rwa [Finset.mem_singleton] at h2 ⊢)

section Degrees

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CommRing/Variantb3c2621c41accea35cac02d8a903a043832f6114acf910f02b47cfcb37e8b7b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CommRing/Variantb3c2621c41accea35cac02d8a903a043832f6114acf910f02b47cfcb37e8b7b8.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b79c7051cb9d53af7bf276e38d4d4cd339857d8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
