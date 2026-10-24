# bernstein_enclosure_01

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 656,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d416207-b776-0088-b621-c7d2dfedc22f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b53abb9c-3a14-9a00-5221-514e7fa7f8ea",
  "kind": "theorem",
  "lexical_name": "bernstein_enclosure_01",
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
  "slug": "bernstein-enclosure-01--3a0bd7d9a3927becf9d1bed6",
  "source": {
    "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 707,
    "line": 656,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a0bd7d9a3927becf9d1bed6e6af39cdfd80b20bb9cbf0d8bb9a5f0b6014e4fd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b53abb9c-3a14-9a00-5221-514e7fa7f8ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–707.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bernstein_enclosure_01 (qs : List ℚ) (n : ℕ) (hn : qs.length = n + 1)
    (t : ℝ) (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    let bs := monomialToBernstein qs
    let bounds := listMinMax bs (bs[0]'(by rw [monomialToBernstein_length qs (by omega)]; omega))
    (bounds.1 : ℝ) ≤
    (Finset.range (n + 1)).sum (fun j => (qs.getD j 0 : ℝ) * t ^ j) ∧
    (Finset.range (n + 1)).sum (fun j => (qs.getD j 0 : ℝ) * t ^ j) ≤
    (bounds.2 : ℝ) := by
  -- Rewrite using bernstein_representation
  rw [bernstein_representation qs n hn t ht0 ht1]
  -- Now the sum is Σ_k b_k * B_{n,k}(t) which is a convex combination
  -- First convert getD to getElem for bs terms
  have hbs_len := monomialToBernstein_length qs (by omega)
  -- Convert from Finset.range to Finset.univ (Fin) for weighted_sum lemmas
  -- First, rewrite the sum using Fin.sum_univ_eq_sum_range
  have hbs := monomialToBernstein qs
  set bs := monomialToBernstein qs with hbs_def
  constructor
  · -- Lower bound
    -- Direct proof: bounds.1 ≤ each summand's coefficient, weights ≥ 0, sum weights = 1
    -- Transform the range sum to a Fin-based sum
    rw [← Fin.sum_univ_eq_sum_range]
    apply inf_le_weighted_sum
    · intro ⟨k, hk⟩
      exact bernstein_nonneg n k t ht0 ht1
    · have := bernstein_partition_of_unity n t
      rwa [← Fin.sum_univ_eq_sum_range] at this
    · intro ⟨k, hk⟩
      have hk_lt : k < bs.length := by rw [hbs_def, hbs_len]; omega
      have hgetD : bs.getD k 0 = bs[k]'hk_lt := List.getD_eq_getElem bs 0 hk_lt
      rw [hgetD]
      exact_mod_cast (listMinMax_bounds_elem bs
        (bs[0]'(by rw [hbs_def, hbs_len]; omega))
        (bs[k]'hk_lt)
        (List.getElem_mem hk_lt)).1
  · -- Upper bound
    rw [← Fin.sum_univ_eq_sum_range]
    apply weighted_sum_le_sup
    · intro ⟨k, hk⟩
      exact bernstein_nonneg n k t ht0 ht1
    · have := bernstein_partition_of_unity n t
      rwa [← Fin.sum_univ_eq_sum_range] at this
    · intro ⟨k, hk⟩
      have hk_lt : k < bs.length := by rw [hbs_def, hbs_len]; omega
      have hgetD : bs.getD k 0 = bs[k]'hk_lt := List.getD_eq_getElem bs 0 hk_lt
      rw [hgetD]
      exact_mod_cast (listMinMax_bounds_elem bs
        (bs[0]'(by rw [hbs_def, hbs_len]; omega))
        (bs[k]'hk_lt)
        (List.getElem_mem hk_lt)).2

/-- Helper: bernsteinCoeffsForDomain is always nonempty -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f24d0e3165301f536c019c4032127a6854d8a77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
