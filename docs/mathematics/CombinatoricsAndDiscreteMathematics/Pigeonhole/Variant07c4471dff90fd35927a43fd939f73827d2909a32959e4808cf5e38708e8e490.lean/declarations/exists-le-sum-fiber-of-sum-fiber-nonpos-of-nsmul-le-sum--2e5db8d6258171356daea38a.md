# exists_le_sum_fiber_of_sum_fiber_nonpos_of_nsmul_le_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71c5c72130fccb832a2b429099aefe2e48bd4067",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1398ec33-6fad-2bb1-e2a8-72db1d366253",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a0a717f-1e67-e450-9825-8df02cd26a21",
  "kind": "theorem",
  "lexical_name": "exists_le_sum_fiber_of_sum_fiber_nonpos_of_nsmul_le_sum",
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
  "slug": "exists-le-sum-fiber-of-sum-fiber-nonpos-of-nsmul-le-sum--2e5db8d6258171356daea38a",
  "source": {
    "blob": "71c5c72130fccb832a2b429099aefe2e48bd4067",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e5db8d6258171356daea38af7d8d04fece137d03706bf249b873507cd5dbd70",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a0a717f-1e67-e450-9825-8df02cd26a21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_le_sum_fiber_of_sum_fiber_nonpos_of_nsmul_le_sum
    (hf : ∀ y ∉ t, ∑ x ∈ s with f x = y, w x ≤ 0) (ht : t.Nonempty)
    (hb : #t • b ≤ ∑ x ∈ s, w x) : ∃ y ∈ t, b ≤ ∑ x ∈ s with f x = y, w x :=
  exists_le_of_sum_le ht <|
    calc
      ∑ _y ∈ t, b ≤ ∑ x ∈ s, w x := by simpa
      _ ≤ ∑ y ∈ t, ∑ x ∈ s with f x = y, w x :=
        sum_le_sum_fiberwise_of_sum_fiber_nonpos hf

/-- The pigeonhole principle for finitely many pigeons counted by weight, non-strict inequality
version: if the total weight of a finite set of pigeons is less than or equal to `n • b`, they are
sorted into some pigeonholes, and for all but `n > 0` pigeonholes the total weight of the pigeons
there is nonnegative, then for at least one of these `n` pigeonholes, the total weight of the
pigeons in this pigeonhole is less than or equal to `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71c5c72130fccb832a2b429099aefe2e48bd4067` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
