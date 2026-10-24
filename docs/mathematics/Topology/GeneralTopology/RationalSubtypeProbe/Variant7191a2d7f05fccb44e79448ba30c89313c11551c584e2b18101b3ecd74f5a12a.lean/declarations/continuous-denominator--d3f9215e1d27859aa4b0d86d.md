# continuous_denominator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8504079f-cc82-d5db-f55e-ded01725600b",
  "kind": "theorem",
  "lexical_name": "continuous_denominator",
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
  "slug": "continuous-denominator--d3f9215e1d27859aa4b0d86d",
  "source": {
    "blob": "40aac8fa9ff8c4956ca8bedd4020a7276200388e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3f9215e1d27859aa4b0d86d9e2a533c84c81d12933f012e4aa3f2297f3414bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8504079f-cc82-d5db-f55e-ded01725600b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_denominator (S : RationalSegment E n) :
    Continuous S.denominator := by
  unfold denominator
  apply continuous_finsetSum Finset.univ
  intro i _
  exact continuous_const.mul (bernstein n i).continuous

section Topology

variable [TopologicalSpace E] [ContinuousAdd E] [ContinuousSMul ℝ E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40aac8fa9ff8c4956ca8bedd4020a7276200388e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
