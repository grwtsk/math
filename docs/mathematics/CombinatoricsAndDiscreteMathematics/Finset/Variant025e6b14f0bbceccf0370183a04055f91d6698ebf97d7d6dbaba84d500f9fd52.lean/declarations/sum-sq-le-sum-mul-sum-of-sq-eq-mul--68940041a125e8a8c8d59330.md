# sum_sq_le_sum_mul_sum_of_sq_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "985c6e5457f4ca7a44fb283ef872964bb0e6869c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee48bb42-c886-a02d-d5c1-62dae87174f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17517643-1b47-efaf-7a0a-ab94d7f595c6",
  "kind": "lemma",
  "lexical_name": "sum_sq_le_sum_mul_sum_of_sq_eq_mul",
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
  "slug": "sum-sq-le-sum-mul-sum-of-sq-eq-mul--68940041a125e8a8c8d59330",
  "source": {
    "blob": "985c6e5457f4ca7a44fb283ef872964bb0e6869c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 182,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68940041a125e8a8c8d593300e83df44e79321c96867a223a3f7a7920da573f8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17517643-1b47-efaf-7a0a-ab94d7f595c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_sq_le_sum_mul_sum_of_sq_eq_mul [CommSemiring R] [LinearOrder R] [IsStrictOrderedRing R]
    [ExistsAddOfLE R]
    (s : Finset ι) {r f g : ι → R} (hf : ∀ i ∈ s, 0 ≤ f i) (hg : ∀ i ∈ s, 0 ≤ g i)
    (ht : ∀ i ∈ s, r i ^ 2 = f i * g i) : (∑ i ∈ s, r i) ^ 2 ≤ (∑ i ∈ s, f i) * ∑ i ∈ s, g i := by
  obtain h | h := (sum_nonneg hg).eq_or_gt
  · have ht' : ∑ i ∈ s, r i = 0 := sum_eq_zero fun i hi ↦ by
      simpa [(sum_eq_zero_iff_of_nonneg hg).1 h i hi] using ht i hi
    rw [h, ht']
    simp
  · refine le_of_mul_le_mul_of_pos_left
      (le_of_add_le_add_left (a := (∑ i ∈ s, g i) * (∑ i ∈ s, r i) ^ 2) ?_) h
    calc
      _ = ∑ i ∈ s, 2 * r i * (∑ j ∈ s, g j) * (∑ j ∈ s, r j) := by
          simp_rw [mul_assoc, ← mul_sum, ← sum_mul]; ring
      _ ≤ ∑ i ∈ s, (f i * (∑ j ∈ s, g j) ^ 2 + g i * (∑ j ∈ s, r j) ^ 2) := by
          gcongr with i hi
          have ht : (r i * (∑ j ∈ s, g j) * (∑ j ∈ s, r j)) ^ 2 =
              (f i * (∑ j ∈ s, g j) ^ 2) * (g i * (∑ j ∈ s, r j) ^ 2) := by
            conv_rhs => rw [mul_mul_mul_comm, ← ht i hi]
            ring
          refine le_of_eq_of_le ?_ (two_mul_le_add_of_sq_eq_mul
            (mul_nonneg (hf i hi) (sq_nonneg _)) (mul_nonneg (hg i hi) (sq_nonneg _)) ht)
          repeat rw [mul_assoc]
      _ = _ := by simp_rw [sum_add_distrib, ← sum_mul]; ring

/-- **Cauchy-Schwarz inequality** for finsets, squared version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `985c6e5457f4ca7a44fb283ef872964bb0e6869c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
