# sum_boxes_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75f6f0213d26d37137f95ce4925a06b63358dfba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0bbd91df-247c-188c-d038-07eab8a9ec31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6996814-fb12-b98c-5a8d-fb2f8a0ed013",
  "kind": "theorem",
  "lexical_name": "sum_boxes_congr",
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
  "slug": "sum-boxes-congr--93a2b1f1163074d03f13df6f",
  "source": {
    "blob": "75f6f0213d26d37137f95ce4925a06b63358dfba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 144,
    "path": "GRWTSK/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93a2b1f1163074d03f13df6f5d327dc826e4bd5c4a2817a7a14cd3e95e6bf977",
  "verification": {
    "reference": "docs/verification/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6996814-fb12-b98c-5a8d-fb2f8a0ed013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_boxes_congr [Finite ι] (f : ι →ᵇᵃ[I₀] M) (hI : ↑I ≤ I₀) {π₁ π₂ : Prepartition I}
    (h : π₁.iUnion = π₂.iUnion) : ∑ J ∈ π₁.boxes, f J = ∑ J ∈ π₂.boxes, f J := by
  rcases exists_splitMany_inf_eq_filter_of_finite {π₁, π₂} ((finite_singleton _).insert _) with
    ⟨s, hs⟩
  simp only [inf_splitMany] at hs
  rcases hs _ (Or.inl rfl), hs _ (Or.inr rfl) with ⟨h₁, h₂⟩; clear hs
  rw [h] at h₁
  calc
    ∑ J ∈ π₁.boxes, f J = ∑ J ∈ π₁.boxes, ∑ J' ∈ (splitMany J s).boxes, f J' :=
      Finset.sum_congr rfl fun J hJ => (f.sum_partition_boxes ?_ (isPartition_splitMany _ _)).symm
    _ = ∑ J ∈ (π₁.biUnion fun J => splitMany J s).boxes, f J := (sum_biUnion_boxes _ _ _).symm
    _ = ∑ J ∈ (π₂.biUnion fun J => splitMany J s).boxes, f J := by rw [h₁, h₂]
    _ = ∑ J ∈ π₂.boxes, ∑ J' ∈ (splitMany J s).boxes, f J' := sum_biUnion_boxes _ _ _
    _ = ∑ J ∈ π₂.boxes, f J :=
      Finset.sum_congr rfl fun J hJ => f.sum_partition_boxes ?_ (isPartition_splitMany _ _)
  exacts [(WithTop.coe_le_coe.2 <| π₁.le_of_mem hJ).trans hI,
    (WithTop.coe_le_coe.2 <| π₂.le_of_mem hJ).trans hI]

section ToSMul

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- If `f` is a box-additive map, then so is the map sending `I` to the scalar multiplication
by `f I` as a continuous linear map from `E` to itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Additive/Variantaac5b7b96fffea114fcff176673e491c3875b0412b7ab9fb2d69ef99a5c93268.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75f6f0213d26d37137f95ce4925a06b63358dfba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
