# residueDifferenceCriticalBound_iff_matrixCriticalDecay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce4aa0c4-1756-e7c0-90c9-44463e40941e",
  "kind": "theorem",
  "lexical_name": "residueDifferenceCriticalBound_iff_matrixCriticalDecay",
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
  "slug": "residuedifferencecriticalbound-iff-matrixcriticaldecay--5ce83e964939f85b9bfaf173",
  "source": {
    "blob": "22b6441a9311e0a05b31250db27dce650fb7cd2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 412,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ce83e964939f85b9bfaf1736ceaf31ce5a24e54a145890bb424d93fbc0f89e6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce4aa0c4-1756-e7c0-90c9-44463e40941e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residueDifferenceCriticalBound_iff_matrixCriticalDecay :
    ResidueDifferenceCriticalBound actualResidueSixCounts ↔
      MatrixCriticalDecay actualResidueSixCounts :=
  ⟨residueDifferenceCriticalBound_implies_matrixCriticalDecay,
    matrixCriticalDecay_implies_residueDifferenceCriticalBound⟩

end

end Surface.Core.ConductorThreeCriticalReindexBounds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b6441a9311e0a05b31250db27dce650fb7cd2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
