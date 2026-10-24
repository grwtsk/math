# sum_map_count_dedup_filter_eq_countP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5651539-ecd3-1d78-b27c-30785ff29219",
  "kind": "theorem",
  "lexical_name": "sum_map_count_dedup_filter_eq_countP",
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
  "slug": "sum-map-count-dedup-filter-eq-countp--d941da82ce1783a5d30970b0",
  "source": {
    "blob": "d1e39a6a3f1df5c405760d77bd51d3b3700b3f97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 155,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d941da82ce1783a5d30970b01289b8a7dfcbc5a5c4811ff6e7256093f64b2cf7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5651539-ecd3-1d78-b27c-30785ff29219`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_map_count_dedup_filter_eq_countP (p : α → Bool) (l : List α) :
    ((l.dedup.filter p).map fun x => l.count x).sum = l.countP p := by
  induction' l with a as h
  · simp
  · simp_rw [List.countP_cons, List.count_cons, List.sum_map_add]
    congr 1
    · refine' _root_.trans _ h
      by_cases ha : a ∈ as
      · simp [dedup_cons_of_mem ha]
      · simp only [dedup_cons_of_not_mem ha, List.filter]
        match p a with
        | true => simp only [List.map_cons, List.sum_cons, List.count_eq_zero.2 ha, zero_add]
        | false => simp only
    · by_cases hp : p a
      · refine' _root_.trans (sum_map_eq_nsmul_single a _ fun _ h _ => by simp [h]) _
        simp [hp, count_dedup]
      · refine' _root_.trans (List.sum_eq_zero fun n hn => _) (by simp [hp])
        obtain ⟨a', ha'⟩ := List.mem_map.1 hn
        split_ifs at ha' with ha
        · simp only [ha, mem_filter, mem_dedup, find?, mem_cons, true_or, hp,
            and_false, false_and] at ha'
        · exact ha'.2.symm
#align list.sum_map_count_dedup_filter_eq_countp List.sum_map_count_dedup_filter_eq_countP

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant5eae557584325528e6afe65b4f34e2fa08e22ecb98665c3098a7a6fea2a82450.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e39a6a3f1df5c405760d77bd51d3b3700b3f97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
