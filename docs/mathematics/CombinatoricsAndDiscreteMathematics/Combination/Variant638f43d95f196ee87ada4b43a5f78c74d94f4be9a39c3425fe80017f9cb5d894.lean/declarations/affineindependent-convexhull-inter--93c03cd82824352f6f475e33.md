# AffineIndependent.convexHull_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49b789c2-ef90-35e2-533c-a83ae8c8d3db",
  "kind": "lemma",
  "lexical_name": "AffineIndependent.convexHull_inter",
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
  "slug": "affineindependent-convexhull-inter--93c03cd82824352f6f475e33",
  "source": {
    "blob": "7b545e4be70920659c08118cd45bade7baf94040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 534,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant638f43d95f196ee87ada4b43a5f78c74d94f4be9a39c3425fe80017f9cb5d894.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93c03cd82824352f6f475e33e9417a78f4247eec36bb5595d916effb65d46097",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variant638f43d95f196ee87ada4b43a5f78c74d94f4be9a39c3425fe80017f9cb5d894.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49b789c2-ef90-35e2-533c-a83ae8c8d3db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AffineIndependent.convexHull_inter (hs : AffineIndependent R ((↑) : s → E))
    (ht₁ : t₁ ⊆ s) (ht₂ : t₂ ⊆ s) :
    convexHull R (t₁ ∩ t₂ : Set E) = convexHull R t₁ ∩ convexHull R t₂ := by
  classical
  refine (Set.subset_inter (convexHull_mono inf_le_left) <|
    convexHull_mono inf_le_right).antisymm ?_
  simp_rw [Set.subset_def, mem_inter_iff, Set.inf_eq_inter, ← coe_inter, mem_convexHull']
  rintro x ⟨⟨w₁, h₁w₁, h₂w₁, h₃w₁⟩, w₂, -, h₂w₂, h₃w₂⟩
  let w (x : E) : R := (if x ∈ t₁ then w₁ x else 0) - if x ∈ t₂ then w₂ x else 0
  have h₁w : ∑ i ∈ s, w i = 0 := by simp [w, Finset.inter_eq_right.2, *]
  replace hs := hs.eq_zero_of_sum_eq_zero_subtype h₁w <| by
    simp only [w, sub_smul, zero_smul, ite_smul, Finset.sum_sub_distrib, ← Finset.sum_filter, h₃w₁,
      Finset.filter_mem_eq_inter, Finset.inter_eq_right.2 ht₁, Finset.inter_eq_right.2 ht₂, h₃w₂,
      sub_self]
  have ht (x) (hx₁ : x ∈ t₁) (hx₂ : x ∉ t₂) : w₁ x = 0 := by
    simpa [w, hx₁, hx₂] using hs _ (ht₁ hx₁)
  refine ⟨w₁, ?_, ?_, ?_⟩
  · simp only [and_imp, Finset.mem_inter]
    exact fun y hy₁ _ ↦ h₁w₁ y hy₁
  all_goals
  · rwa [sum_subset inter_subset_left]
    rintro x
    simp_intro hx₁ hx₂
    simp [ht x hx₁ hx₂]

/-- Two simplices glue nicely if the union of their vertices is affine independent.

Note that `AffineIndependent.convexHull_inter` should be more versatile in most use cases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variant638f43d95f196ee87ada4b43a5f78c74d94f4be9a39c3425fe80017f9cb5d894.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant638f43d95f196ee87ada4b43a5f78c74d94f4be9a39c3425fe80017f9cb5d894.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b545e4be70920659c08118cd45bade7baf94040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
