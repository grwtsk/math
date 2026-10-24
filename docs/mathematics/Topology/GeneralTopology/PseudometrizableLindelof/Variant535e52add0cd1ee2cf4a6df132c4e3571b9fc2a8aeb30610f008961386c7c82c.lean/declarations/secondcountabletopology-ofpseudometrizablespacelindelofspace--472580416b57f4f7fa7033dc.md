# SecondCountableTopology.ofPseudoMetrizableSpaceLindelofSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71853d08bc72546f580449307490e593315956dbd836658d4c2a7ef6aca860ca",
  "kind": "instance",
  "lexical_name": "SecondCountableTopology.ofPseudoMetrizableSpaceLindelofSpace",
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
  "slug": "secondcountabletopology-ofpseudometrizablespacelindelofspace--472580416b57f4f7fa7033dc",
  "source": {
    "blob": "303442447cbc5cd3d8f1eef1ef77f4f6410fe1e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 21,
    "path": "GRWTSK/Topology/GeneralTopology/PseudometrizableLindelof/Variant535e52add0cd1ee2cf4a6df132c4e3571b9fc2a8aeb30610f008961386c7c82c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:472580416b57f4f7fa7033dcd2d070cd45d126aa8a91bbc7a0c6a259795edf01",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PseudometrizableLindelof/Variant535e52add0cd1ee2cf4a6df132c4e3571b9fc2a8aeb30610f008961386c7c82c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71853d08bc72546f580449307490e593315956dbd836658d4c2a7ef6aca860ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance SecondCountableTopology.ofPseudoMetrizableSpaceLindelofSpace [PseudoMetrizableSpace X]
    [LindelofSpace X] : SecondCountableTopology X := by
  letI : PseudoMetricSpace X := TopologicalSpace.pseudoMetrizableSpacePseudoMetric X
  have h_dense (ε) (hpos : 0 < ε) : ∃ s : Set X, s.Countable ∧ ∀ x, ∃ y ∈ s, dist x y ≤ ε := by
    let U := fun (z : X) ↦ Metric.ball z ε
    obtain ⟨t, hct, huniv⟩ := LindelofSpace.elim_nhds_subcover U
      (fun _ ↦ (Metric.isOpen_ball).mem_nhds (Metric.mem_ball_self hpos))
    refine ⟨t, hct, fun z ↦ ?_⟩
    obtain ⟨y, ht, hzy⟩ : ∃ y ∈ t, z ∈ U y :=
      exists_set_mem_of_union_eq_top t (fun i ↦ U i) huniv z
    exact ⟨y, ht, (Metric.mem_ball.mp hzy).le⟩
  exact Metric.secondCountable_of_almost_dense_set h_dense
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PseudometrizableLindelof/Variant535e52add0cd1ee2cf4a6df132c4e3571b9fc2a8aeb30610f008961386c7c82c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PseudometrizableLindelof/Variant535e52add0cd1ee2cf4a6df132c4e3571b9fc2a8aeb30610f008961386c7c82c.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `303442447cbc5cd3d8f1eef1ef77f4f6410fe1e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
