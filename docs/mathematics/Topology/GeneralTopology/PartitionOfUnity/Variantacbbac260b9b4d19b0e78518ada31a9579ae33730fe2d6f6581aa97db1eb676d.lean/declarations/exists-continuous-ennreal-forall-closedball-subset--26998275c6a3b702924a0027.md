# exists_continuous_eNNReal_forall_closedBall_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:174b89f0-08e2-f4b4-2c78-e709ef2b71a6",
  "kind": "theorem",
  "lexical_name": "exists_continuous_eNNReal_forall_closedBall_subset",
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
  "slug": "exists-continuous-ennreal-forall-closedball-subset--26998275c6a3b702924a0027",
  "source": {
    "blob": "da36bee30beecf91a724bedb4aa027c907689d2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26998275c6a3b702924a002752f61438eef5a597a3481741ae9b8ecba694965b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:174b89f0-08e2-f4b4-2c78-e709ef2b71a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_continuous_eNNReal_forall_closedBall_subset (hK : ∀ i, IsClosed (K i))
    (hU : ∀ i, IsOpen (U i)) (hKU : ∀ i, K i ⊆ U i) (hfin : LocallyFinite K) :
    ∃ δ : C(X, ℝ≥0∞), (∀ x, 0 < δ x) ∧ ∀ (i), ∀ x ∈ K i, closedBall x (δ x) ⊆ U i :=
  let ⟨δ, hδ₀, hδ⟩ := exists_continuous_nnreal_forall_closedBall_subset hK hU hKU hfin
  ⟨ContinuousMap.comp ⟨Coe.coe, ENNReal.continuous_coe⟩ δ, fun x => ENNReal.coe_pos.2 (hδ₀ x), hδ⟩

end EMetric

namespace Metric

variable [MetricSpace X] {K : ι → Set X} {U : ι → Set X}

/-- Let `X` be a metric space. Let `K : ι → Set X` be a locally finite family of closed sets, let
`U : ι → Set X` be a family of open sets such that `K i ⊆ U i` for all `i`. Then there exists a
positive continuous function `δ : C(X, ℝ≥0)` such that for any `i` and `x ∈ K i`, we have
`Metric.closedBall x (δ x) ⊆ U i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variantacbbac260b9b4d19b0e78518ada31a9579ae33730fe2d6f6581aa97db1eb676d.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da36bee30beecf91a724bedb4aa027c907689d2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
