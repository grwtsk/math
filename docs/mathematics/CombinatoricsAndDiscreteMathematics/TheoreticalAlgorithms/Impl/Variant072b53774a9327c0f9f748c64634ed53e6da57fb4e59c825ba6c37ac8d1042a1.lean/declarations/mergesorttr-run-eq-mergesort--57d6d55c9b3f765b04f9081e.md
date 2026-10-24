# mergeSortTR_run_eq_mergeSort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d367338-ac38-a364-d230-ca7d47cb10f0",
  "kind": "theorem",
  "lexical_name": "mergeSortTR_run_eq_mergeSort",
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
  "slug": "mergesorttr-run-eq-mergesort--57d6d55c9b3f765b04f9081e",
  "source": {
    "blob": "6711d2c542cb76987c91ce0b69f9f6bc838fc3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 185,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57d6d55c9b3f765b04f9081e01513eee6bfa9aeb788515308239c0e88e8cad6f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d367338-ac38-a364-d230-ca7d47cb10f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mergeSortTR_run_eq_mergeSort : {n : Nat} → (l : { l : List α // l.length = n }) → mergeSortTR.run le l = mergeSort l.1 le
  | 0, ⟨[], _⟩
  | 1, ⟨[a], _⟩ => by simp [mergeSortTR.run]
  | n+2, ⟨a :: b :: l, h⟩ => by
    cases h
    simp only [mergeSortTR.run, mergeSortTR.run, mergeSort]
    rw [merge_eq_mergeTR]
    rw [mergeSortTR_run_eq_mergeSort, mergeSortTR_run_eq_mergeSort]

-- We don't make this a `@[csimp]` lemma because `mergeSort_eq_mergeSortTR₂` is faster.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant072b53774a9327c0f9f748c64634ed53e6da57fb4e59c825ba6c37ac8d1042a1.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6711d2c542cb76987c91ce0b69f9f6bc838fc3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
