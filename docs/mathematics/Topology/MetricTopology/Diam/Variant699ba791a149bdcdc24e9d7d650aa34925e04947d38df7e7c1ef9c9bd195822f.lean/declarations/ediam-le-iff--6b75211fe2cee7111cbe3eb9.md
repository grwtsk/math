# ediam_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5a39e2f435e837f92a9ed3c804f61d9f6240bbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0dccbef1-0b90-3687-e31a-d24dc95a9091",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82c569cc-d2f2-02d4-c8b3-e6ec57492617",
  "kind": "theorem",
  "lexical_name": "ediam_le_iff",
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
  "slug": "ediam-le-iff--6b75211fe2cee7111cbe3eb9",
  "source": {
    "blob": "d5a39e2f435e837f92a9ed3c804f61d9f6240bbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 37,
    "path": "GRWTSK/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b75211fe2cee7111cbe3eb983847e02b30792465d2a27730a2a3f744479d13f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82c569cc-d2f2-02d4-c8b3-e6ec57492617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediam_le_iff {d : ℝ≥0∞} : ediam s ≤ d ↔ ∀ x ∈ s, ∀ y ∈ s, edist x y ≤ d := by
  simp only [ediam, iSup_le_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Diam/Variant699ba791a149bdcdc24e9d7d650aa34925e04947d38df7e7c1ef9c9bd195822f.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a39e2f435e837f92a9ed3c804f61d9f6240bbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
