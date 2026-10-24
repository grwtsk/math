# mergeSortTR₂_run'_eq_mergeSort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f020b2f2e5e4ec87545a57c706d808407c6dfa08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f66c9786-789c-441d-eec9-b43737bad308",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33df12d0-869f-6a04-3fc6-5934d82b9a57",
  "kind": "theorem",
  "lexical_name": "mergeSortTR₂_run'_eq_mergeSort",
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
  "slug": "mergesorttr-run-eq-mergesort--e20aeafb95d0bf2141b10fb6",
  "source": {
    "blob": "f020b2f2e5e4ec87545a57c706d808407c6dfa08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 205,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e20aeafb95d0bf2141b10fb6f5517f45445bac9a7b41b8add814c4c700fc889e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33df12d0-869f-6a04-3fc6-5934d82b9a57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mergeSortTR₂_run'_eq_mergeSort : {n : Nat} → (l : { l : List α // l.length = n }) → (w : l' = l.1.reverse) → mergeSortTR₂.run' le l = mergeSort l' le
  | 0, ⟨[], _⟩, w
  | 1, ⟨[a], _⟩, w => by simp_all [mergeSortTR₂.run']
  | n+2, ⟨a :: b :: l, h⟩, w => by
    cases h
    simp only [mergeSortTR₂.run']
    rw [splitRevInTwo'_fst, splitRevInTwo'_snd]
    rw [mergeSortTR₂_run_eq_mergeSort, mergeSortTR₂_run'_eq_mergeSort _ rfl]
    rw [← merge_eq_mergeTR]
    have w' := congrArg length w
    simp at w'
    cases l' with
    | nil => simp at w'
    | cons x l' =>
      cases l' with
      | nil => simp at w'
      | cons y l' =>
        rw [mergeSort]
        congr 2
        · dsimp at w
          simp only [w]
          simp only [splitInTwo_fst, take_reverse]
          congr 1
          rw [w, length_reverse]
          simp
        · dsimp at w
          simp only [w]
          simp only [reverse_cons, append_assoc, singleton_append, splitInTwo_snd, length_cons]
          congr 1
          simp at w'
          omega
termination_by n => n

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f020b2f2e5e4ec87545a57c706d808407c6dfa08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
