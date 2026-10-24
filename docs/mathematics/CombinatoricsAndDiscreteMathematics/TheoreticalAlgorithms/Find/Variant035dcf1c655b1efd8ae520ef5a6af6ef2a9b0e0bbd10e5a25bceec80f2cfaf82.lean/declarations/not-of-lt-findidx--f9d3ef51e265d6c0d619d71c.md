# not_of_lt_findIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9067dab78972b411b755074f9c0f682b9b49a8f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:847cb51f-d852-f109-5a94-09e53e55e0e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db7e0750-450d-32f2-d115-a9b344fcbe9b",
  "kind": "theorem",
  "lexical_name": "not_of_lt_findIdx",
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
  "slug": "not-of-lt-findidx--f9d3ef51e265d6c0d619d71c",
  "source": {
    "blob": "9067dab78972b411b755074f9c0f682b9b49a8f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 411,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9d3ef51e265d6c0d619d71ce68a7c7d15c71c7e4cd13a0bc95ed5961027e370",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db7e0750-450d-32f2-d115-a9b344fcbe9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_of_lt_findIdx {p : α → Bool} {xs : Array α} {i : Nat} (h : i < xs.findIdx p) :
    p (xs[i]'(Nat.le_trans h findIdx_le_size)) = false := by
  rcases xs with ⟨xs⟩
  simpa using! List.not_of_lt_findIdx (by simpa using h)

grind_pattern not_of_lt_findIdx => xs.findIdx p, xs[i]

/-- If `¬ p xs[j]` for all `j < i`, then `i ≤ xs.findIdx p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9067dab78972b411b755074f9c0f682b9b49a8f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
