# integrable_of_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "036a07ecfaa518d7a4f65bad037b62b4c0f95c2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 681,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/487fc5501770874b1cdfc8683885b94ffee4b21a244c932f7fbb5c222149ca5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7638c790-b097-aad0-7421-2830db285024",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54b29772-f11c-250a-371f-38bf2254830d",
  "kind": "theorem",
  "lexical_name": "integrable_of_continuousOn",
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
  "slug": "integrable-of-continuouson--82e79a1dd58abdb9a4b7327f",
  "source": {
    "blob": "036a07ecfaa518d7a4f65bad037b62b4c0f95c2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 681,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant487fc5501770874b1cdfc8683885b94ffee4b21a244c932f7fbb5c222149ca5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82e79a1dd58abdb9a4b7327f5ce63b231d668d7bd56be7b47d1e0c8e81ea320b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant487fc5501770874b1cdfc8683885b94ffee4b21a244c932f7fbb5c222149ca5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54b29772-f11c-250a-371f-38bf2254830d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_of_continuousOn [CompleteSpace E] {I : Box ι} {f : ℝⁿ → E}
    (hc : ContinuousOn f (Box.Icc I)) (μ : Measure ℝⁿ) [IsLocallyFiniteMeasure μ] :
    Integrable.{u, v, v} I l f μ.toBoxAdditive.toSMul := by
  have huc := I.isCompact_Icc.uniformContinuousOn_of_continuous hc
  rw [Metric.uniformContinuousOn_iff_le] at huc
  refine' integrable_iff_cauchy_basis.2 fun ε ε0 => _
  rcases exists_pos_mul_lt ε0 (μ.toBoxAdditive I) with ⟨ε', ε0', hε⟩
  rcases huc ε' ε0' with ⟨δ, δ0 : 0 < δ, Hδ⟩
  refine' ⟨fun _ _ => ⟨δ / 2, half_pos δ0⟩, fun _ _ _ => rfl, fun c₁ c₂ π₁ π₂ h₁ h₁p h₂ h₂p => _⟩
  simp only [dist_eq_norm, integralSum_sub_partitions _ _ h₁p h₂p, BoxAdditiveMap.toSMul_apply,
    ← smul_sub]
  have : ∀ J ∈ π₁.toPrepartition ⊓ π₂.toPrepartition,
      ‖μ.toBoxAdditive J • (f ((π₁.infPrepartition π₂.toPrepartition).tag J) -
        f ((π₂.infPrepartition π₁.toPrepartition).tag J))‖ ≤ μ.toBoxAdditive J * ε' := by
    intro J hJ
    have : 0 ≤ μ.toBoxAdditive J := ENNReal.toReal_nonneg
    rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg this, ← dist_eq_norm]
    refine' mul_le_mul_of_nonneg_left _ this
    refine' Hδ _ (TaggedPrepartition.tag_mem_Icc _ _) _ (TaggedPrepartition.tag_mem_Icc _ _) _
    rw [← add_halves δ]
    refine' (dist_triangle_left _ _ J.upper).trans (add_le_add (h₁.1 _ _ _) (h₂.1 _ _ _))
    · exact Prepartition.biUnionIndex_mem _ hJ
    · exact Box.le_iff_Icc.1 (Prepartition.le_biUnionIndex _ hJ) J.upper_mem_Icc
    · rw [_root_.inf_comm] at hJ
      exact Prepartition.biUnionIndex_mem _ hJ
    · rw [_root_.inf_comm] at hJ
      exact Box.le_iff_Icc.1 (Prepartition.le_biUnionIndex _ hJ) J.upper_mem_Icc
  refine' (norm_sum_le_of_le _ this).trans _
  rw [← Finset.sum_mul, μ.toBoxAdditive.sum_partition_boxes le_top (h₁p.inf h₂p)]
  exact hε.le
#align box_integral.integrable_of_continuous_on BoxIntegral.integrable_of_continuousOn

variable {l}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant487fc5501770874b1cdfc8683885b94ffee4b21a244c932f7fbb5c222149ca5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant487fc5501770874b1cdfc8683885b94ffee4b21a244c932f7fbb5c222149ca5c.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `036a07ecfaa518d7a4f65bad037b62b4c0f95c2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
