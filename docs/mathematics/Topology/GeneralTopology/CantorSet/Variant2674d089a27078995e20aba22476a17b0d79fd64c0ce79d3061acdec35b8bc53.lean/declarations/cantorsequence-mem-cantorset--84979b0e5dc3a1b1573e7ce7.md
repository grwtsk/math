# cantorSequence_mem_cantorSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eaf1e9662b278b4e584feeccfce2be3132dede68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e5a3178-da3e-99d8-0203-96a88064b870",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:395d7b9f-6f7b-0d54-0084-56fc7d37abf5",
  "kind": "theorem",
  "lexical_name": "cantorSequence_mem_cantorSet",
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
  "slug": "cantorsequence-mem-cantorset--84979b0e5dc3a1b1573e7ce7",
  "source": {
    "blob": "eaf1e9662b278b4e584feeccfce2be3132dede68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 227,
    "path": "GRWTSK/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84979b0e5dc3a1b1573e7ce71f7a55ce5da411f358d344ce20b47fefa4f788c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:395d7b9f-6f7b-0d54-0084-56fc7d37abf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cantorSequence_mem_cantorSet {x : ℝ} (hx : x ∈ cantorSet) (n : ℕ) :
    (cantorSequence x).get n ∈ cantorSet := by
  induction n with
  | zero => simpa [cantorSequence]
  | succ n ih => exact cantorStep_mem_cantorSet ih

/-- Points of the Cantor set correspond to infinite paths in the full binary tree.
at each level `n`, the set `preCantorSet (n + 1)` splits each interval in
`preCantorSet n` into two parts.
Given `x ∈ cantorSet`, the point `x` lies in one of the intervals of `preCantorSet n`.
This function tracks which of the two intervals in `preCantorSet (n + 1)`
contains `x` at each step, producing the corresponding path as a stream of booleans. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaf1e9662b278b4e584feeccfce2be3132dede68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
