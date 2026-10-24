# finiteOnePointChart_isComplete_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6edbc7e-216c-c245-6d18-6c1ffb641c3a",
  "kind": "theorem",
  "lexical_name": "finiteOnePointChart_isComplete_univ",
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
  "slug": "finiteonepointchart-iscomplete-univ--4d189aef186a4c9395416540",
  "source": {
    "blob": "cd725305b9da0a9c7ceb5c731379779857d16104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 153,
    "path": "GRWTSK/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d189aef186a4c9395416540c48d2f288e468ba652046a658522b2fa5428177d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6edbc7e-216c-c245-6d18-6c1ffb641c3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteOnePointChart_isComplete_univ
    [NormedAddCommGroup V] [NormedSpace ℝ V] [CompleteSpace V] :
    IsComplete (Set.univ : Set (FiniteOnePointChart V)) :=
  completeSpace_iff_isComplete_univ.mp inferInstance

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/StereographicBanach/Variant5d34bafb89c76aa228ec18678ddf3f6d94709fa295f47e4d32be5c633b2bd0b0.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd725305b9da0a9c7ceb5c731379779857d16104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
