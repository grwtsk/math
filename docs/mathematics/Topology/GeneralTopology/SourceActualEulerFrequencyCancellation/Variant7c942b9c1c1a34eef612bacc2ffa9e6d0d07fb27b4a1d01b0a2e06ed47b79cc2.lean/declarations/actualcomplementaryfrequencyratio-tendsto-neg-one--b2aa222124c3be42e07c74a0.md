# actualComplementaryFrequencyRatio_tendsto_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a66bbe1a-d23a-9c45-d740-9a987d102ce6",
  "kind": "theorem",
  "lexical_name": "actualComplementaryFrequencyRatio_tendsto_neg_one",
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
  "slug": "actualcomplementaryfrequencyratio-tendsto-neg-one--b2aa222124c3be42e07c74a0",
  "source": {
    "blob": "61d5be07bf16b8a8a02071d10fd171cad027461b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 148,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant7c942b9c1c1a34eef612bacc2ffa9e6d0d07fb27b4a1d01b0a2e06ed47b79cc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2aa222124c3be42e07c74a0ee353287d177bc1250bc931d35157c30542d6862",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant7c942b9c1c1a34eef612bacc2ffa9e6d0d07fb27b4a1d01b0a2e06ed47b79cc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a66bbe1a-d23a-9c45-d740-9a987d102ce6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplementaryFrequencyRatio_tendsto_neg_one :
    Tendsto (fun A : ℝ => actualComplementaryFrequencyMass A /
      actualCentralFrequencyMass A) atTop (𝓝 (-1)) := by
  have hh := actualComplementaryFrequencyRatio_centered_tendsto_zero.sub_const (1 : ℝ)
  simpa only [add_sub_cancel_right, zero_sub] using hh

end
end FormalResearch.RiemannHypothesis.SourceActualEulerFrequencyCancellation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant7c942b9c1c1a34eef612bacc2ffa9e6d0d07fb27b4a1d01b0a2e06ed47b79cc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerFrequencyCancellation/Variant7c942b9c1c1a34eef612bacc2ffa9e6d0d07fb27b4a1d01b0a2e06ed47b79cc2.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d5be07bf16b8a8a02071d10fd171cad027461b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
