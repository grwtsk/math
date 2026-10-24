# dist_convolution_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01ac3fc1f4d36b203933f575dde6b0931b0b8556",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 771,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b1288a2-8b3d-e5ca-ac50-c3bd9e30ac83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fa02dd4-d736-0f4e-ef8b-cd76d804510b",
  "kind": "theorem",
  "lexical_name": "dist_convolution_le'",
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
  "slug": "dist-convolution-le--caab18ba7182b972d0b104e7",
  "source": {
    "blob": "01ac3fc1f4d36b203933f575dde6b0931b0b8556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 815,
    "line": 771,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caab18ba7182b972d0b104e7f9f6416a8b9d6733e0231fb4946a49f0a8e392a5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fa02dd4-d736-0f4e-ef8b-cd76d804510b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 771–815.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_convolution_le' {x₀ : G} {R ε : ℝ} {z₀ : E'} (hε : 0 ≤ ε) (hif : Integrable f μ)
    (hf : support f ⊆ ball (0 : G) R) (hmg : AEStronglyMeasurable g μ)
    (hg : ∀ x ∈ ball x₀ R, dist (g x) z₀ ≤ ε) :
    dist ((f ⋆[L, μ] g : G → F) x₀) (∫ t, L (f t) z₀ ∂μ) ≤ (‖L‖ * ∫ x, ‖f x‖ ∂μ) * ε := by
  have hfg : ConvolutionExistsAt f g x₀ L μ := by
    refine BddAbove.convolutionExistsAt L ?_ Metric.isOpen_ball.measurableSet (Subset.trans ?_ hf)
      hif.integrableOn hmg
    swap; · refine fun t => mt fun ht : f t = 0 => ?_; simp_rw [ht, L.map_zero₂]
    rw [bddAbove_def]
    refine ⟨‖z₀‖ + ε, ?_⟩
    rintro _ ⟨x, hx, rfl⟩
    refine norm_le_norm_add_const_of_dist_le (hg x ?_)
    rwa [mem_ball_iff_norm, norm_sub_rev, ← mem_ball_zero_iff]
  have h2 : ∀ t, dist (L (f t) (g (x₀ - t))) (L (f t) z₀) ≤ ‖L (f t)‖ * ε := by
    intro t; by_cases ht : t ∈ support f
    · have h2t := hf ht
      rw [mem_ball_zero_iff] at h2t
      specialize hg (x₀ - t)
      rw [sub_eq_add_neg, add_mem_ball_iff_norm, norm_neg, ← sub_eq_add_neg] at hg
      refine ((L (f t)).dist_le_opNorm _ _).trans ?_
      gcongr
      exact hg h2t
    · rw [notMem_support] at ht
      simp_rw [ht, L.map_zero₂, L.map_zero, norm_zero, zero_mul, dist_self]
      rfl
  simp_rw [convolution_def]
  simp_rw [dist_eq_norm] at h2 ⊢
  rw [← integral_sub hfg.integrable]; swap; · exact (L.flip z₀).integrable_comp hif
  refine (norm_integral_le_of_norm_le ((L.integrable_comp hif).norm.mul_const ε)
    (Eventually.of_forall h2)).trans ?_
  rw [integral_mul_const]
  gcongr
  have h3 : ∀ t, ‖L (f t)‖ ≤ ‖L‖ * ‖f t‖ := by
    intro t
    exact L.le_opNorm (f t)
  refine (integral_mono (L.integrable_comp hif).norm (hif.norm.const_mul _) h3).trans_eq ?_
  rw [integral_const_mul]

variable [NormedSpace ℝ E] [NormedSpace ℝ E'] [CompleteSpace E']

/-- Approximate `f ⋆ g` if the support of the `f` is bounded within a ball, and `g` is near `g x₀`
on a ball with the same radius around `x₀`.

This is a special case of `dist_convolution_le'` where `L` is `(•)`, `f` has integral 1 and `f` is
nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean#L771).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01ac3fc1f4d36b203933f575dde6b0931b0b8556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
