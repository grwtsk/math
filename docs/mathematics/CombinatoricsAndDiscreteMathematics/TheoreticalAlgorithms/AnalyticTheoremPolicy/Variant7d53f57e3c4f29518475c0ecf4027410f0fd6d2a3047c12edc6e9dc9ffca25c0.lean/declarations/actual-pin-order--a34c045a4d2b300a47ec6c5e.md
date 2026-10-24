# actual_pin_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "717d85b06ae1720ba19959341066485d44cb5bf5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d53f57e3c4f29518475c0ecf4027410f0fd6d2a3047c12edc6e9dc9ffca25c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb317f89-27d8-b371-035d-24ad279edf35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff16efb3-977e-7bb4-d2d8-37bf379d5140",
  "kind": "theorem",
  "lexical_name": "actual_pin_order",
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
  "slug": "actual-pin-order--a34c045a4d2b300a47ec6c5e",
  "source": {
    "blob": "717d85b06ae1720ba19959341066485d44cb5bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 213,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticTheoremPolicy/Variant7d53f57e3c4f29518475c0ecf4027410f0fd6d2a3047c12edc6e9dc9ffca25c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a34c045a4d2b300a47ec6c5e262b0f8de964a1c4f7e930b83082667158c7e917",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticTheoremPolicy/Variant7d53f57e3c4f29518475c0ecf4027410f0fd6d2a3047c12edc6e9dc9ffca25c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff16efb3-977e-7bb4-d2d8-37bf379d5140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_pin_order
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {decomposition : FiniteDecomposition}
    {objective : SurgicalObjective State decomposition.Piece}
    (stage : ReductiveSelectionStage State cone decomposition objective) :
    [stage.diffusion.pin] ++
        stage.exclusionTheorems.map RegisteredAnalyticSiteTheorem.pin ++
        stage.attentionTheorems.map RegisteredAnalyticSiteTheorem.pin ++
        (stage.stoppingTheorem.map
          RegisteredAnalyticSiteTheorem.pin).toList =
      stage.configured.allPins := by
  simp only [ConfiguredAnalyticStagePin.allPins]
  rw [stage.diffusion_pin_matches, stage.exclusion_pins_match,
    stage.attention_pins_match, stage.stopping_pin_matches]

/-- An executable selection stage is explicitly enabled in its typed stage record. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticTheoremPolicy/Variant7d53f57e3c4f29518475c0ecf4027410f0fd6d2a3047c12edc6e9dc9ffca25c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticTheoremPolicy/Variant7d53f57e3c4f29518475c0ecf4027410f0fd6d2a3047c12edc6e9dc9ffca25c0.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717d85b06ae1720ba19959341066485d44cb5bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
