# instWeakPseudoEMetricSpaceWithTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f1c0ef3c7d6b29a3b2d35f2ef7793689c73d7f465c7a5efa30f9dcefe9343c7",
  "kind": "instance",
  "lexical_name": "instWeakPseudoEMetricSpaceWithTop",
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
  "slug": "instweakpseudoemetricspacewithtop--13cc7ace7c8a07a84d004e60",
  "source": {
    "blob": "25561179c43f0b60f69c6f68e424d3524e80055f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 211,
    "path": "GRWTSK/Topology/MetricTopology/Weak/Variantf190651be2b348814a5ea41c4a884769912cd81284b000be7f0859b07c041db2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13cc7ace7c8a07a84d004e60b5d8ddcc553167ad223d133d7ea66c459811425d",
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

Occurrence: `declaration:9f1c0ef3c7d6b29a3b2d35f2ef7793689c73d7f465c7a5efa30f9dcefe9343c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instWeakPseudoEMetricSpaceWithTop [m : WeakPseudoEMetricSpace α] :
    WeakPseudoEMetricSpace (WithTop α) :=
  letI : TopologicalSpace (Option α) := TopologicalSpace.instWithTopOfOrderTopology
  letI : WeakPseudoEMetricSpace (Option α) :=
    Option.WeakPseudoEMetricSpace.OfIsOpenEmbedding (inst := instEDistWithTop) rfl
    WithTop.isOpenEmbedding_some
  inferInstanceAs <| WeakPseudoEMetricSpace (Option α)

/-- If `α` has a topology induced by a linear order and is a weak extended metric space,
so is `WithTop α` -/
@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Weak/Variantf190651be2b348814a5ea41c4a884769912cd81284b000be7f0859b07c041db2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Weak/Variantf190651be2b348814a5ea41c4a884769912cd81284b000be7f0859b07c041db2.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25561179c43f0b60f69c6f68e424d3524e80055f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
