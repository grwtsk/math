# sum_boxes_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad4705089f52b3d5169138c5fd0d7b09a9b17e99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d665169ed4caa4d72cdee59378dfbc263777a425fa330f53f32a8def41167f88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d7ba852-aba5-86a6-cc19-37f582a176ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd481e7f-1a68-f6ba-152e-3aac2a52b5ea",
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
  "slug": "sum-boxes-congr--e2aac1325d7547321a7b5e0f",
  "source": {
    "blob": "ad4705089f52b3d5169138c5fd0d7b09a9b17e99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Additive/Variantd665169ed4caa4d72cdee59378dfbc263777a425fa330f53f32a8def41167f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2aac1325d7547321a7b5e0fdfcbb77f4966e9b66fcbc0342a80f1a2ad954c1a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Additive/Variantd665169ed4caa4d72cdee59378dfbc263777a425fa330f53f32a8def41167f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd481e7f-1a68-f6ba-152e-3aac2a52b5ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–191.

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

section AddCommGroup

/-! ### Additive group structure -/

variable {M : Type*} [AddCommGroup M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Additive/Variantd665169ed4caa4d72cdee59378dfbc263777a425fa330f53f32a8def41167f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Additive/Variantd665169ed4caa4d72cdee59378dfbc263777a425fa330f53f32a8def41167f88.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad4705089f52b3d5169138c5fd0d7b09a9b17e99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
