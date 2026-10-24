# subset_countable_closure_of_almost_dense_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bc0c120-8c31-54bf-d559-ce70910c2dc8",
  "kind": "theorem",
  "lexical_name": "subset_countable_closure_of_almost_dense_set",
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
  "slug": "subset-countable-closure-of-almost-dense-set--f21d12dbdf746650b832a58f",
  "source": {
    "blob": "39db534dade6877fb4888a6c73ccb7f32be05d7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 211,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variantce00ad9b149f1583f07ae6448dc843a7b51e356456723a6fc258da507afb0f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f21d12dbdf746650b832a58fa2f065332a9ebb8139bf6d34a666ecc4a062a0b2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variantce00ad9b149f1583f07ae6448dc843a7b51e356456723a6fc258da507afb0f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bc0c120-8c31-54bf-d559-ce70910c2dc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_countable_closure_of_almost_dense_set (s : Set α)
    (hs : ∀ ε > 0, ∃ t : Set α, t.Countable ∧ s ⊆ ⋃ x ∈ t, Metric.closedEBall x ε) :
    ∃ t, t ⊆ s ∧ t.Countable ∧ s ⊆ closure t :=
  let m : PseudoEMetricSpace α :=
    PseudoEMetricSpace.ofEDist edist edist_self edist_comm edist_triangle
  have hmetric :
      ∃ t, t ⊆ s ∧ t.Countable ∧ s ⊆ @closure α m.toUniformSpace.toTopologicalSpace t := by
    apply UniformSpace.subset_countable_closure_of_almost_dense_set
    intro U hU
    obtain ⟨ε, hε, hεU⟩ := uniformity_basis_edist_le.mem_iff.1 hU
    obtain ⟨t, tC, ht⟩ := hs ε hε
    refine ⟨t, tC, ht.trans (iUnion₂_mono fun x hx y hy => UniformSpace.ball_mono hεU x ?_)⟩
    rwa [mem_closedEBall, edist_comm] at hy
  let ⟨t, hts, htc, hst⟩ := hmetric
  ⟨t, hts, htc, hst.trans <| closure.mono WeakPseudoEMetricSpace.topology_le⟩

-- TODO: generalize to metrizable spaces
/-- A compact set in a pseudo emetric space is separable, i.e., it is a subset of the closure of a
countable set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variantce00ad9b149f1583f07ae6448dc843a7b51e356456723a6fc258da507afb0f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variantce00ad9b149f1583f07ae6448dc843a7b51e356456723a6fc258da507afb0f53.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39db534dade6877fb4888a6c73ccb7f32be05d7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
