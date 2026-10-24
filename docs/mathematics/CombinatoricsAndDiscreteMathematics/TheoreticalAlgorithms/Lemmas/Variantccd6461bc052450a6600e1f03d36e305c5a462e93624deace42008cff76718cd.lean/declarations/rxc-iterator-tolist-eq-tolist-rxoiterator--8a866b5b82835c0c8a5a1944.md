# Rxc.Iterator.toList_eq_toList_rxoIterator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdb1a9bb-c81a-1a31-6e9b-994e7745252a",
  "kind": "theorem",
  "lexical_name": "Rxc.Iterator.toList_eq_toList_rxoIterator",
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
  "slug": "rxc-iterator-tolist-eq-tolist-rxoiterator--8a866b5b82835c0c8a5a1944",
  "source": {
    "blob": "282c6d363d234063da5da594aa260861655588ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 489,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantccd6461bc052450a6600e1f03d36e305c5a462e93624deace42008cff76718cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a866b5b82835c0c8a5a1944f03fe944740359c3127ecb95a49a4e355d1d83fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantccd6461bc052450a6600e1f03d36e305c5a462e93624deace42008cff76718cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdb1a9bb-c81a-1a31-6e9b-994e7745252a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Rxc.Iterator.toList_eq_toList_rxoIterator [LE α] [DecidableLE α] [LT α] [DecidableLT α]
    [UpwardEnumerable α] [Rxc.IsAlwaysFinite α] [Rxo.IsAlwaysFinite α] [LawfulUpwardEnumerable α]
    [LawfulUpwardEnumerableLE α] [LawfulUpwardEnumerableLT α]
    [InfinitelyUpwardEnumerable α] [LinearlyUpwardEnumerable α] {it : Iter (α := Rxc.Iterator α) α}:
    it.toList = (⟨⟨it.internalState.next, succ it.internalState.upperBound⟩⟩ : Iter (α := Rxo.Iterator α) α).toList := by
  induction it using Iter.inductSteps with | step it ihy ihs
  rw [Rxc.Iterator.toList_eq_match, Rxo.Iterator.toList_eq_match]
  split
  · simp [*]
  · simp only [UpwardEnumerable.le_iff, UpwardEnumerable.lt_iff, *]
    split <;> rename_i h
    · rw [ihy]; rotate_left
      · simp [Iter.IsPlausibleStep, IterM.IsPlausibleStep, Iterator.IsPlausibleStep, instIteratorIteratorIdOfUpwardEnumerableOfDecidableLE, -- TODO
          Iterator.Monadic.step, Iter.toIterM, *]; rfl
      · simpa [UpwardEnumerable.lt_iff, UpwardEnumerable.le_iff, UpwardEnumerable.lt_succ_iff] using h
    · simpa [UpwardEnumerable.lt_iff, UpwardEnumerable.le_iff, UpwardEnumerable.lt_succ_iff] using h

@[cbv_eval]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantccd6461bc052450a6600e1f03d36e305c5a462e93624deace42008cff76718cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantccd6461bc052450a6600e1f03d36e305c5a462e93624deace42008cff76718cd.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `282c6d363d234063da5da594aa260861655588ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
