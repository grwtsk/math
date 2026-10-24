# eulerMascheroniSeq_lt_eulerMascheroniSeq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "697935c25a2317dcbe16616ee8159d3a476d6fe9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53accc86-1b6d-a1a3-682b-a5d68f919274",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf7a3f09-6708-2ec4-cbf5-effe2ae0b8e0",
  "kind": "lemma",
  "lexical_name": "eulerMascheroniSeq_lt_eulerMascheroniSeq'",
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
  "slug": "eulermascheroniseq-lt-eulermascheroniseq--af73b613cc0a29dd76b6bf4c",
  "source": {
    "blob": "697935c25a2317dcbe16616ee8159d3a476d6fe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af73b613cc0a29dd76b6bf4c9dc2767b868b29ba21face8668d3d41e36fa7e8a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf7a3f09-6708-2ec4-cbf5-effe2ae0b8e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eulerMascheroniSeq_lt_eulerMascheroniSeq' (m n : ℕ) :
    eulerMascheroniSeq m < eulerMascheroniSeq' n := by
  have (r : ℕ) : eulerMascheroniSeq r < eulerMascheroniSeq' r := by
    rcases eq_zero_or_pos r with rfl | hr
    · simp [eulerMascheroniSeq, eulerMascheroniSeq']
    simp only [eulerMascheroniSeq, eulerMascheroniSeq', hr.ne', ite_false]
    gcongr
    linarith
  apply (strictMono_eulerMascheroniSeq.monotone (le_max_left m n)).trans_lt
  exact (this _).trans_le (strictAnti_eulerMascheroniSeq'.antitone (le_max_right m n))

end UpperSequence

/-- The Euler-Mascheroni constant `γ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `697935c25a2317dcbe16616ee8159d3a476d6fe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
