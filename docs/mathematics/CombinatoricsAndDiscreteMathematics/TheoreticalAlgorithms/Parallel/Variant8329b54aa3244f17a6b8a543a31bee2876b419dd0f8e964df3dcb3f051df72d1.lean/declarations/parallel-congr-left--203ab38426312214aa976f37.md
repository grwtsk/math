# parallel_congr_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7692ab70-70d3-8c51-5c97-811acbf802ff",
  "kind": "theorem",
  "lexical_name": "parallel_congr_left",
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
  "slug": "parallel-congr-left--203ab38426312214aa976f37",
  "source": {
    "blob": "b563c6ddd5afd3e7822f3389bd6f4cac4f1185af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 389,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:203ab38426312214aa976f37028dbcef214738260878d109ddf21870de98c062",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7692ab70-70d3-8c51-5c97-811acbf802ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parallel_congr_left {S T : WSeq (Computation α)} {a} (h1 : ∀ s ∈ S, s ~> a)
    (H : S.LiftRel Equiv T) : parallel S ~ parallel T :=
  let h2 := (parallel_congr_lem H).1 h1
  fun a' =>
  ⟨fun h => by
    have aa := parallel_promises h1 h
    rw [← aa]
    rw [← aa] at h
    exact
      let ⟨s, sS, as⟩ := exists_of_mem_parallel h
      let ⟨t, tT, st⟩ := WSeq.exists_of_liftRel_left H sS
      let aT := (st _).1 as
      mem_parallel h2 tT aT,
    fun h => by
    have aa := parallel_promises h2 h
    rw [← aa]
    rw [← aa] at h
    exact
      let ⟨s, sS, as⟩ := exists_of_mem_parallel h
      let ⟨t, tT, st⟩ := WSeq.exists_of_liftRel_right H sS
      let aT := (st _).2 as
      mem_parallel h1 tT aT⟩
#align computation.parallel_congr_left Computation.parallel_congr_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b563c6ddd5afd3e7822f3389bd6f4cac4f1185af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
