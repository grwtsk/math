# spatialDerivative_continuousOn_joint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee43c4aa-4fd3-d5ac-6dd5-07dc4bc8d86f",
  "kind": "theorem",
  "lexical_name": "spatialDerivative_continuousOn_joint",
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
  "slug": "spatialderivative-continuouson-joint--630b25460d9a2ccea01e0d8a",
  "source": {
    "blob": "023afda2a42e5811d13d0b084c2e299731f116a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/BasicSourceV3Prebytes/Variantb33753a8321ce6207cd33e97f9c984ab5c3a4f3fa7b4cd1897efc743ddc10a3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:630b25460d9a2ccea01e0d8af46edfc0968109c8897f9fcd31a476da82cac311",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BasicSourceV3Prebytes/Variantb33753a8321ce6207cd33e97f9c984ab5c3a4f3fa7b4cd1897efc743ddc10a3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee43c4aa-4fd3-d5ac-6dd5-07dc4bc8d86f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spatialDerivative_continuousOn_joint :
    ContinuousOn (fun z : ℝ × ℝ => spatialDerivative z.1 z.2) (Ioi 0 ×ˢ univ) :=
  fun _ hz => (spatialDerivative_continuousAt_joint hz.1).continuousWithinAt

/-- Each literal spatial derivative is globally continuous in x. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BasicSourceV3Prebytes/Variantb33753a8321ce6207cd33e97f9c984ab5c3a4f3fa7b4cd1897efc743ddc10a3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BasicSourceV3Prebytes/Variantb33753a8321ce6207cd33e97f9c984ab5c3a4f3fa7b4cd1897efc743ddc10a3b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `023afda2a42e5811d13d0b084c2e299731f116a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
