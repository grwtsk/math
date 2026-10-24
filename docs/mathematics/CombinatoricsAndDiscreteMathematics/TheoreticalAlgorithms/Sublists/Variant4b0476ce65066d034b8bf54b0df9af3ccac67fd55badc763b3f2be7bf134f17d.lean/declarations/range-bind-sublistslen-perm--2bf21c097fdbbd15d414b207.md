# range_bind_sublistsLen_perm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7506e826-164a-1b02-04b1-5a1818e1fd9e",
  "kind": "theorem",
  "lexical_name": "range_bind_sublistsLen_perm",
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
  "slug": "range-bind-sublistslen-perm--2bf21c097fdbbd15d414b207",
  "source": {
    "blob": "8449214eb8a5759434946d1473b56b3c6f23f447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 401,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant4b0476ce65066d034b8bf54b0df9af3ccac67fd55badc763b3f2be7bf134f17d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bf21c097fdbbd15d414b207de9a93fc1feaa5d6481e3d526c291fdc0d89361d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant4b0476ce65066d034b8bf54b0df9af3ccac67fd55badc763b3f2be7bf134f17d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7506e826-164a-1b02-04b1-5a1818e1fd9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_bind_sublistsLen_perm (l : List α) :
    ((List.range (l.length + 1)).flatMap fun n => sublistsLen n l) ~ sublists' l := by
  induction' l with h tl l_ih
  · simp [range_succ]
  · simp_rw [range_succ_eq_map, length, flatMap_cons, flatMap_map, sublistsLen_succ_cons,
      sublists'_cons, List.sublistsLen_zero, List.singleton_append]
    refine ((flatMap_append_perm (range (tl.length + 1)) _ _).symm.cons _).trans ?_
    simp_rw [← List.map_flatMap, ← cons_append]
    rw [← List.singleton_append, ← List.sublistsLen_zero tl]
    refine Perm.append ?_ (l_ih.map _)
    rw [List.range_succ, flatMap_append, flatMap_singleton,
      sublistsLen_of_length_lt (Nat.lt_succ_self _), append_nil,
      ← List.flatMap_map Nat.succ fun n => sublistsLen n tl,
      ← flatMap_cons (f := fun n => sublistsLen n tl), ← range_succ_eq_map]
    exact l_ih

end List
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant4b0476ce65066d034b8bf54b0df9af3ccac67fd55badc763b3f2be7bf134f17d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant4b0476ce65066d034b8bf54b0df9af3ccac67fd55badc763b3f2be7bf134f17d.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8449214eb8a5759434946d1473b56b3c6f23f447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
