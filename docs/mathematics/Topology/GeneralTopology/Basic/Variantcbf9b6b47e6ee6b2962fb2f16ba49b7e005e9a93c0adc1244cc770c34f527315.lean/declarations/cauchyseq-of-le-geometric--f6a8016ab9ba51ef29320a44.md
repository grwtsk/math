# cauchySeq_of_le_geometric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e056917bed0090d2909ab8de28047555fd6262b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 482,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5ec4bc6-af47-211b-31af-19c27be9e64a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3734ee25-a197-271e-652c-d16d133787e4",
  "kind": "theorem",
  "lexical_name": "cauchySeq_of_le_geometric",
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
  "slug": "cauchyseq-of-le-geometric--f6a8016ab9ba51ef29320a44",
  "source": {
    "blob": "e056917bed0090d2909ab8de28047555fd6262b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 482,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6a8016ab9ba51ef29320a44d2cd12d050076aceb440a6ff093a0c504f99a0e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3734ee25-a197-271e-652c-d16d133787e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_of_le_geometric : CauchySeq f :=
  cauchySeq_of_dist_le_of_summable _ hu ⟨_, aux_hasSum_of_le_geometric hr hu⟩

/-- If `dist (f n) (f (n+1))` is bounded by `C * r^n`, `r < 1`, then the distance from
`f n` to the limit of `f` is bounded above by `C * r^n / (1 - r)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e056917bed0090d2909ab8de28047555fd6262b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
