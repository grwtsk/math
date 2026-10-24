# pseudoMetricSpacePi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16f05b0d5ec3d59ea5f687eb5d1977c049bee302bac6ce0514bd414800902c10",
  "kind": "instance",
  "lexical_name": "pseudoMetricSpacePi",
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
  "slug": "pseudometricspacepi--ba2793953c59a9941ee70560",
  "source": {
    "blob": "9310b235fd5fe9592b1ac105d030574652642fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 39,
    "path": "GRWTSK/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba2793953c59a9941ee70560b553fdb1a8560f2a7d0046dc8a227b54621919cf",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16f05b0d5ec3d59ea5f687eb5d1977c049bee302bac6ce0514bd414800902c10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pseudoMetricSpacePi : PseudoMetricSpace (∀ b, X b) := by
  /- we construct the instance from the pseudoemetric space instance to avoid checking again that
    the uniformity is the same as the product uniformity, but we register nevertheless a nice
    formula for the distance -/
  let i := PseudoEMetricSpace.toPseudoMetricSpaceOfDist
    (fun f g : ∀ b, X b => ((sup univ fun b => nndist (f b) (g b) : ℝ≥0) : ℝ))
    (fun f g => NNReal.zero_le_coe)
    (fun f g => by simp [edist_pi_def])
  refine i.replaceBornology fun s => ?_
  simp only [isBounded_iff_eventually, ← forall_isBounded_image_eval_iff,
    forall_mem_image, ← Filter.eventually_all, @dist_nndist (X _)]
  refine eventually_congr ((eventually_ge_atTop 0).mono fun C hC ↦ ?_)
  lift C to ℝ≥0 using hC
  refine ⟨fun H x hx y hy ↦ NNReal.coe_le_coe.2 <| Finset.sup_le fun b _ ↦ H b hx hy,
    fun H b x hx y hy ↦ NNReal.coe_le_coe.2 ?_⟩
  exact Finset.sup_le_iff.1 (NNReal.coe_le_coe.1 <| H hx hy) b (Finset.mem_univ b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9310b235fd5fe9592b1ac105d030574652642fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
