# logMap_positiveTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e1a9d94-db25-4e83-d015-d298bdb96c41",
  "kind": "theorem",
  "lexical_name": "logMap_positiveTarget",
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
  "slug": "logmap-positivetarget--eb15736d9dad4508f3c3f17d",
  "source": {
    "blob": "e7ee8ef467c899cbcab3d33b9a0758d41a590833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 57,
    "path": "GRWTSK/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb15736d9dad4508f3c3f17d9e61742ac3e5907bd3cf416ec9ca9a0185a87d83",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e1a9d94-db25-4e83-d015-d298bdb96c41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logMap_positiveTarget : logMap positiveTarget = logTarget := by
  apply Lp.ext
  filter_upwards [logMap_ae positiveTarget,exp_quasi.ae_eq_comp positiveTarget_ae,
    logTarget_ae] with u hu hf ht
  dsimp only [Function.comp_apply] at hf
  rw [hu,logFunc,hf,ht]
  exact logTargetFunc_pointwise u

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ActualLogTarget/Variant8acf6c34b4029ca3aafae975d01573e16302bfc129b6df281e033871bf70a339.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7ee8ef467c899cbcab3d33b9a0758d41a590833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
