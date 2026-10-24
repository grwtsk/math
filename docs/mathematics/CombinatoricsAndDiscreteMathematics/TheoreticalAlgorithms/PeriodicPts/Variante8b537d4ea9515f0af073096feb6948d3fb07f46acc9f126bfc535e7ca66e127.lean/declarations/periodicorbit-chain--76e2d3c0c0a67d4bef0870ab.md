# periodicOrbit_chain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c765b5f701ae5a51aaa3893473b7aff51e0d3fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 560,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72e96993-5ee0-aeed-a7a7-d4f4a6ce65a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a610bb26-0e5a-e260-7b70-4879bc80713b",
  "kind": "theorem",
  "lexical_name": "periodicOrbit_chain",
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
  "slug": "periodicorbit-chain--76e2d3c0c0a67d4bef0870ab",
  "source": {
    "blob": "6c765b5f701ae5a51aaa3893473b7aff51e0d3fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 560,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76e2d3c0c0a67d4bef0870ab74475807e8fde699b36a9d3c2b1a9d227b721570",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a610bb26-0e5a-e260-7b70-4879bc80713b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem periodicOrbit_chain (r : α → α → Prop) {f : α → α} {x : α} :
    (periodicOrbit f x).Chain r ↔ ∀ n < minimalPeriod f x, r (f^[n] x) (f^[n + 1] x) := by
  by_cases hx : x ∈ periodicPts f
  · have hx' := minimalPeriod_pos_of_mem_periodicPts hx
    have hM := Nat.sub_add_cancel (succ_le_iff.2 hx')
    rw [periodicOrbit, ← Cycle.map_coe, Cycle.chain_map, ← hM, Cycle.chain_range_succ]
    refine' ⟨_, fun H => ⟨_, fun m hm => H _ (hm.trans (Nat.lt_succ_self _))⟩⟩
    · rintro ⟨hr, H⟩ n hn
      cases' eq_or_lt_of_le (lt_succ_iff.1 hn) with hM' hM'
      · rwa [hM', hM, iterate_minimalPeriod]
      · exact H _ hM'
    · rw [iterate_zero_apply]
      nth_rw 3 [← @iterate_minimalPeriod α f x]
      nth_rw 2 [← hM]
      exact H _ (Nat.lt_succ_self _)
  · rw [periodicOrbit_eq_nil_of_not_periodic_pt hx, minimalPeriod_eq_zero_of_nmem_periodicPts hx]
    simp
#align function.periodic_orbit_chain Function.periodicOrbit_chain

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c765b5f701ae5a51aaa3893473b7aff51e0d3fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
