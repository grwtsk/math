# sum_boxes_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2bb566c-57fa-e8e3-d4f2-2970a690654d",
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
  "slug": "sum-boxes-congr--58aef80d7ffc96c3c1b8e06d",
  "source": {
    "blob": "edf59db9be012444009c42e739596cb10d86eefd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 161,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58aef80d7ffc96c3c1b8e06d85ec24bde10d74502189c5bbe31b4d081a6b99de",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2bb566c-57fa-e8e3-d4f2-2970a690654d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_boxes_congr [Finite ι] (f : ι →ᵇᵃ[I₀] M) (hI : ↑I ≤ I₀) {π₁ π₂ : Prepartition I}
    (h : π₁.iUnion = π₂.iUnion) : ∑ J in π₁.boxes, f J = ∑ J in π₂.boxes, f J := by
  rcases exists_splitMany_inf_eq_filter_of_finite {π₁, π₂} ((finite_singleton _).insert _) with
    ⟨s, hs⟩
  simp only [inf_splitMany] at hs
  rcases hs _ (Or.inl rfl), hs _ (Or.inr rfl) with ⟨h₁, h₂⟩; clear hs
  rw [h] at h₁
  calc
    ∑ J in π₁.boxes, f J = ∑ J in π₁.boxes, ∑ J' in (splitMany J s).boxes, f J' :=
      Finset.sum_congr rfl fun J hJ => (f.sum_partition_boxes ?_ (isPartition_splitMany _ _)).symm
    _ = ∑ J in (π₁.biUnion fun J => splitMany J s).boxes, f J := (sum_biUnion_boxes _ _ _).symm
    _ = ∑ J in (π₂.biUnion fun J => splitMany J s).boxes, f J := by rw [h₁, h₂]
    _ = ∑ J in π₂.boxes, ∑ J' in (splitMany J s).boxes, f J' := (sum_biUnion_boxes _ _ _)
    _ = ∑ J in π₂.boxes, f J :=
      Finset.sum_congr rfl fun J hJ => f.sum_partition_boxes ?_ (isPartition_splitMany _ _)
  exacts [(WithTop.coe_le_coe.2 <| π₁.le_of_mem hJ).trans hI,
    (WithTop.coe_le_coe.2 <| π₂.le_of_mem hJ).trans hI]
#align box_integral.box_additive_map.sum_boxes_congr BoxIntegral.BoxAdditiveMap.sum_boxes_congr

section ToSMul

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- If `f` is a box-additive map, then so is the map sending `I` to the scalar multiplication
by `f I` as a continuous linear map from `E` to itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edf59db9be012444009c42e739596cb10d86eefd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
