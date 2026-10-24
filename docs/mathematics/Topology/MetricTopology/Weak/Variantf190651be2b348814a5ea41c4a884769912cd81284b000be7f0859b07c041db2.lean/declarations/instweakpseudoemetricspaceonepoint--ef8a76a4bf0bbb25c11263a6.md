# instWeakPseudoEMetricSpaceOnePoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d13e1fe728f0e36aafa2953082caa130b2bcc726c176c7ac9965c9aacb4f6573",
  "kind": "instance",
  "lexical_name": "instWeakPseudoEMetricSpaceOnePoint",
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
  "slug": "instweakpseudoemetricspaceonepoint--ef8a76a4bf0bbb25c11263a6",
  "source": {
    "blob": "25561179c43f0b60f69c6f68e424d3524e80055f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 238,
    "path": "GRWTSK/Topology/MetricTopology/Weak/Variantf190651be2b348814a5ea41c4a884769912cd81284b000be7f0859b07c041db2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef8a76a4bf0bbb25c11263a6ae2c1e72fdaea79bafab91d108a5be96812c614b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Weak/Variantf190651be2b348814a5ea41c4a884769912cd81284b000be7f0859b07c041db2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d13e1fe728f0e36aafa2953082caa130b2bcc726c176c7ac9965c9aacb4f6573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instWeakPseudoEMetricSpaceOnePoint [m : WeakPseudoEMetricSpace α] :
    WeakPseudoEMetricSpace (OnePoint α) :=
  let : TopologicalSpace (Option α) := OnePoint.instTopologicalSpace
  let : WeakPseudoEMetricSpace (Option α) := Option.WeakPseudoEMetricSpace.OfIsOpenEmbedding
    (inst := instEDistOnePoint) rfl OnePoint.isOpenEmbedding_coe
  inferInstanceAs <| WeakPseudoEMetricSpace (Option α)

/-- The one point compactification of a weak extended metric space is again a weak extended metric
space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Weak/Variantf190651be2b348814a5ea41c4a884769912cd81284b000be7f0859b07c041db2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Weak/Variantf190651be2b348814a5ea41c4a884769912cd81284b000be7f0859b07c041db2.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25561179c43f0b60f69c6f68e424d3524e80055f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
