# sublist_insertionSort'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6898e14de5800e2809aa857baf7f0377fef6f5e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 641,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20540e3843ec63712f922953a5a9c51aea3eca2f7823521966d8613ddbfaf49f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a48f11ec-9a46-75d1-0d1f-fd5eccbdcef9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c882cb6-e6f2-a514-3fc1-37b35b5b7834",
  "kind": "theorem",
  "lexical_name": "sublist_insertionSort'",
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
  "slug": "sublist-insertionsort--3d5dec573712c83e41dc9122",
  "source": {
    "blob": "6898e14de5800e2809aa857baf7f0377fef6f5e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 660,
    "line": 641,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant20540e3843ec63712f922953a5a9c51aea3eca2f7823521966d8613ddbfaf49f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d5dec573712c83e41dc91222cd8d43aea2caa253fcd0daf6f52c876e16cccca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant20540e3843ec63712f922953a5a9c51aea3eca2f7823521966d8613ddbfaf49f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c882cb6-e6f2-a514-3fc1-37b35b5b7834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–660.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublist_insertionSort' {l c : List α} (hs : c.Sorted r) (hc : c <+~ l) :
    c <+ insertionSort r l := by
  classical
  obtain ⟨d, hc, hd⟩ := hc
  induction l generalizing c d with
  | nil         => simp_all only [sublist_nil, insertionSort, nil_perm]
  | cons a _ ih =>
    cases hd with
    | cons  _ h => exact ih hs _ hc h |>.trans (sublist_orderedInsert ..)
    | cons₂ _ h =>
      specialize ih (hs.erase _) _ (erase_cons_head a ‹List _› ▸ hc.erase a) h
      have hm := hc.mem_iff.mp <| mem_cons_self ..
      have he := orderedInsert_erase _ _ hm hs
      exact he ▸ Sublist.orderedInsert_sublist _ ih (sorted_insertionSort ..)

/--
Another statement of stability of insertion sort.
If a pair `[a, b]` is a sublist of a permutation of `l` and `a ≼ b`,
then `[a, b]` is still a sublist of `insertionSort r l`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant20540e3843ec63712f922953a5a9c51aea3eca2f7823521966d8613ddbfaf49f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant20540e3843ec63712f922953a5a9c51aea3eca2f7823521966d8613ddbfaf49f.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6898e14de5800e2809aa857baf7f0377fef6f5e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
