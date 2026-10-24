# nndist_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7db9cc0-88c6-65f7-3d38-e352d65d86ca",
  "kind": "lemma",
  "lexical_name": "nndist_def",
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
  "slug": "nndist-def--428a7022da99a8e4d7ca353e",
  "source": {
    "blob": "e27605fce0f263083778555c9606e3c3bb82221d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 95,
    "path": "GRWTSK/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:428a7022da99a8e4d7ca353ec6b78bb05b47b3dd55f45e7937dfc6061cf16a5c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7db9cc0-88c6-65f7-3d38-e352d65d86ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nndist_def [PseudoMetricSpace X] (f g : WithLp p <| ι →₀ X) :
    nndist f g =
      ((f.ofLp.zipWith nndist (nndist_self _) g.ofLp).sum fun _i r ↦ r ^ (p : ℝ)) ^ (p⁻¹ : ℝ) := by
  ext
  simp only [coe_nndist, dist_def, sum, zipWith_apply, NNReal.coe_sum, NNReal.coe_rpow]
  congr 2
  ext i
  simp [← coe_nndist]

/-- The L^1 metric on `ι`-many copies of a metric space `X` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e27605fce0f263083778555c9606e3c3bb82221d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
