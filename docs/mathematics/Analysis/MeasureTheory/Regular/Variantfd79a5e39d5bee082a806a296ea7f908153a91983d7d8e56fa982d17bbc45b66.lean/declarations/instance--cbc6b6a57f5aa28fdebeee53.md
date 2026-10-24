# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2c83066a98fa8aa2f491660e29b58f8a272147282a2b1c2abd1cfd3319b58fc",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--cbc6b6a57f5aa28fdebeee53",
  "source": {
    "blob": "64b864a9c22a66240a1889f478168dc8c650718d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 828,
    "line": 805,
    "path": "GRWTSK/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbc6b6a57f5aa28fdebeee533cd457394f82e03f098d1ef3e4014556a2cf1468",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2c83066a98fa8aa2f491660e29b58f8a272147282a2b1c2abd1cfd3319b58fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 805–828.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {ι : Type*} {μ : ι → Measure α} [∀ i, InnerRegular (μ i)] :
    InnerRegular (Measure.sum μ) := by
  constructor
  intro s hs r hr
  have : Tendsto (fun (a : Finset ι) ↦ ∑ i ∈ a, μ i s) atTop (𝓝 (Measure.sum μ s)) := by
    simp only [hs, Measure.sum_apply]
    exact ENNReal.summable.hasSum
  obtain ⟨a, ha⟩ : ∃ (a : Finset ι), r < (∑ i ∈ a, μ i) s := by
    simp only [coe_finsetSum, Finset.sum_apply]
    exact ((tendsto_order.1 this).1 r hr).exists
  rcases MeasurableSet.exists_lt_isCompact hs ha with ⟨K, Ks, hK, h'K⟩
  refine ⟨K, Ks, hK, h'K.trans_le ?_⟩
  simp only [coe_finsetSum, Finset.sum_apply]
  exact (ENNReal.sum_le_tsum _).trans (le_sum_apply _ _)

end InnerRegular

namespace InnerRegularCompactLTTop

variable [TopologicalSpace α]

/-- If `μ` is inner regular for finite measure sets with respect to compact sets,
then any measurable set of finite measure can be approximated by a
compact subset. See also `MeasurableSet.exists_lt_isCompact_of_ne_top`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean#L805).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b864a9c22a66240a1889f478168dc8c650718d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
