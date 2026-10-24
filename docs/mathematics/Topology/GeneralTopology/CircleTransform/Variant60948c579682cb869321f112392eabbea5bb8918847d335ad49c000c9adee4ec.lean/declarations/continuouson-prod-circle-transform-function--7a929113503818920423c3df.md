# continuousOn_prod_circle_transform_function

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bf36930-51cb-20d3-47c0-d5d193fd9326",
  "kind": "theorem",
  "lexical_name": "continuousOn_prod_circle_transform_function",
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
  "slug": "continuouson-prod-circle-transform-function--7a929113503818920423c3df",
  "source": {
    "blob": "b70c377581ddcb0693b0865aae7ebda61ffba381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 94,
    "path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a929113503818920423c3dffc879f4cb93f95e8ddd8204a95c3b571b73a2380",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bf36930-51cb-20d3-47c0-d5d193fd9326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_prod_circle_transform_function {R r : ℝ} (hr : r < R) {z : ℂ} :
    ContinuousOn (fun w : ℂ × ℝ => (circleMap z R w.snd - w.fst)⁻¹ ^ 2)
      (closedBall z r ×ˢ univ) := by
  simp_rw [← one_div]
  apply_rules [ContinuousOn.pow, ContinuousOn.div, continuousOn_const]
  · exact ((continuous_circleMap z R).comp_continuousOn continuousOn_snd).sub continuousOn_fst
  · rintro ⟨a, b⟩ ⟨ha, -⟩
    have ha2 : a ∈ ball z R := closedBall_subset_ball hr ha
    exact sub_ne_zero.2 (circleMap_ne_mem_ball ha2 b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CircleTransform/Variant60948c579682cb869321f112392eabbea5bb8918847d335ad49c000c9adee4ec.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b70c377581ddcb0693b0865aae7ebda61ffba381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
