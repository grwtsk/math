# isBounded_iff_subset_smul_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bebf5c1a9868dca69e5bbcdeb9bb9cffae8d3773",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 496,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99725c8d-91e3-32c2-2874-0c21f908b6c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d616ecf-ca49-b1c5-72c8-ea8d8ce0a1c2",
  "kind": "theorem",
  "lexical_name": "isBounded_iff_subset_smul_closedBall",
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
  "slug": "isbounded-iff-subset-smul-closedball--8afc1559957ab2f2560cb888",
  "source": {
    "blob": "bebf5c1a9868dca69e5bbcdeb9bb9cffae8d3773",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 496,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8afc1559957ab2f2560cb88878b52943775d40140fc8170b058a41d77177a2dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d616ecf-ca49-b1c5-72c8-ea8d8ce0a1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBounded_iff_subset_smul_closedBall {s : Set E} :
    Bornology.IsBounded s ↔ ∃ a : 𝕜, s ⊆ a • Metric.closedBall (0 : E) 1 := by
  constructor
  · rw [isBounded_iff_subset_smul_ball 𝕜]
    exact Exists.imp fun a ha => ha.trans <| Set.smul_set_mono <| Metric.ball_subset_closedBall
  · rw [← isVonNBounded_iff 𝕜]
    rintro ⟨a, ha⟩
    exact ((isVonNBounded_closedBall 𝕜 E 1).image (a • (1 : E →L[𝕜] E))).subset ha

end NormedSpace

end VonNBornologyEqMetric
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bebf5c1a9868dca69e5bbcdeb9bb9cffae8d3773` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
