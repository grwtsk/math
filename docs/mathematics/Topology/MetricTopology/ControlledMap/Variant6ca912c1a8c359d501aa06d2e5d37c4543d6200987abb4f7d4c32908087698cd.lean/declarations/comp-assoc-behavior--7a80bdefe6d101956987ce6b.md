# comp_assoc_behavior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9320cb5c844d3d7834639ed6d586e4e43a3bf2c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14e74f90-e4a7-b503-8f90-c93ea5767264",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9274d34b-94e6-d5b4-d8d5-e2e6e2ef883b",
  "kind": "theorem",
  "lexical_name": "comp_assoc_behavior",
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
  "slug": "comp-assoc-behavior--7a80bdefe6d101956987ce6b",
  "source": {
    "blob": "9320cb5c844d3d7834639ed6d586e4e43a3bf2c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 54,
    "path": "GRWTSK/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a80bdefe6d101956987ce6bc3ae08b5635bacb61185af01afd894fb73879fd8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9274d34b-94e6-d5b4-d8d5-e2e6e2ef883b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_assoc_behavior
    {X : Type u} {Y : Type v} {Z : Type w} {W : Type x}
    [PseudoMetricSpace X] [PseudoMetricSpace Y]
    [PseudoMetricSpace Z] [PseudoMetricSpace W]
    (third : ControlledMap Z W)
    (second : ControlledMap Y Z)
    (first : ControlledMap X Y) :
    (comp (comp third second) first).reference =
        (comp third (comp second first)).reference ∧
      (comp (comp third second) first).implementation =
        (comp third (comp second first)).implementation ∧
      (comp (comp third second) first).localError =
        (comp third (comp second first)).localError ∧
      (comp (comp third second) first).lipschitz =
        (comp third (comp second first)).lipschitz := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact
      Mathematics.Attention.ControlledApproximation.comp_reference_assoc
        third second first
  · exact
      Mathematics.Attention.ControlledApproximation.comp_implementation_assoc
        third second first
  · exact
      Mathematics.Attention.ControlledApproximation.comp_error_assoc
        third second first
  · exact
      Mathematics.Attention.ControlledApproximation.comp_lipschitz_assoc
        third second first

end ControlledMap

end Mathematics.MobiusOntology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9320cb5c844d3d7834639ed6d586e4e43a3bf2c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
