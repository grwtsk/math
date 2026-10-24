# chain'_getLast_head_splitBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c2aa6a93133ff1d947f01abfaebf075031812e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc891e37-0188-4f80-9926-049cc8f61371",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7207dada-0d77-caa2-b587-07ab7a837e7c",
  "kind": "theorem",
  "lexical_name": "chain'_getLast_head_splitBy",
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
  "slug": "chain-getlast-head-splitby--11c5f5da06c8094d117b7749",
  "source": {
    "blob": "1c2aa6a93133ff1d947f01abfaebf075031812e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11c5f5da06c8094d117b7749de9192b91ef578d3bedbfa483b962e1ebe057b58",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7207dada-0d77-caa2-b587-07ab7a837e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chain'_getLast_head_splitBy (r : α → α → Bool) (l : List α) :
    (l.splitBy r).Chain' fun a b ↦ ∃ ha hb, r (a.getLast ha) (b.head hb) = false := by
  cases l with
  | nil => exact chain'_nil
  | cons _ _ =>
    apply chain'_getLast_head_splitByLoop _ not_mem_nil chain'_nil
    rintro _ ⟨⟩

@[deprecated (since := "2024-10-30")] alias groupBy_nil := splitBy_nil
@[deprecated (since := "2024-10-30")] alias flatten_groupBy := flatten_splitBy
@[deprecated (since := "2024-10-30")] alias nil_not_mem_groupBy := nil_notMem_splitBy
@[deprecated (since := "2024-10-30")] alias ne_nil_of_mem_groupBy := ne_nil_of_mem_splitBy
@[deprecated (since := "2024-10-30")] alias chain'_of_mem_groupBy := chain'_of_mem_splitBy
@[deprecated (since := "2024-10-30")]
alias chain'_getLast_head_groupBy := chain'_getLast_head_splitBy

end List
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitBy/Variant570d33bde269f6a747ad55255c3ea3e878927f51cd6a2fc772a1a8e97f5841a8.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c2aa6a93133ff1d947f01abfaebf075031812e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
