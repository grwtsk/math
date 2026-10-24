# integrable_vseg_11

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "464787c2b9aac3a22b4d04cdbd00317bf569c992",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2551,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4bb436f-c7e5-3763-88a2-a1953f5e4ebe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06266aa9-2d48-d633-ee65-11b3b878ace7",
  "kind": "lemma",
  "lexical_name": "integrable_vseg_11",
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
  "slug": "integrable-vseg-11--563f9ac249159f653086dea0",
  "source": {
    "blob": "464787c2b9aac3a22b4d04cdbd00317bf569c992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2580,
    "line": 2551,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:563f9ac249159f653086dea0ac6e7d938fd2db9f09406bbde6bff748ac7ab8ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06266aa9-2d48-d633-ee65-11b3b878ace7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2551–2580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma integrable_vseg_11 {F G_circ : ℂ → ℂ} {x₀ x : ℝ} (hF : F = fun s ↦ G_circ s * (x : ℂ) ^ s) (l : LadderParams)
    (hx₀ : 1 ≤ x₀) (hx : x₀ < x) (hG_circ_symm : ConjSymm G_circ)
    (hG_circ_mero : MeromorphicOn G_circ l.R)
    (hGc_contour : IsBoundedNoPolesOn (fun s ↦ G_circ s * (x₀ : ℂ) ^ s) l.admissible_contour) :
    IntervalIntegrable (fun t : ℝ ↦ F (1 + t * Complex.I) * Complex.I) volume (-l.δ) 0 := by
  rw [hF]
  refine G_circ_mul_cpow_integrable_vseg_general l G_circ hG_circ_mero x₀ x hx₀ hx
    {z | z.re = 1 ∧ z.im ∈ Set.Icc (-l.δ) 0} ?_ ?_ 1 (-l.δ) 0
    (by linarith [l.hδ.1, l.hδ.2, l.hT]) ?_
  · rintro z ⟨hz_re, hz_im⟩
    exact ⟨by simp [hz_re], by
      rw [abs_le]
      constructor
      · linarith [hz_im.1, l.hδ.1, l.hδ.2, l.hT]
      · linarith [hz_im.2, l.hδ.1, l.hδ.2, l.hT]⟩
  · have hGc_contour_order :
        ∀ s ∈ l.admissible_contour, 0 ≤ meromorphicOrderAt G_circ s :=
      meromorphicOrderAt_nonneg_on_of_bounded l hx₀ l.admissible_contour_subset_R hG_circ_mero
        hGc_contour
    rintro z ⟨hz_re, hz_im⟩
    have hz_star : starRingEnd ℂ z ∈ l.admissible_contour :=
      l.star_mem_admissible_contour_of_re_eq_one_of_im_nonpos hz_re hz_im
    rw [meromorphicOrderAt_starRingEnd (Or.inl hG_circ_symm)]
    exact hGc_contour_order (starRingEnd ℂ z) hz_star
  · intro t ht
    exact ⟨by simp, by
      simpa only [ofReal_one, add_im, one_im, mul_im, ofReal_re, I_im, mul_one, ofReal_im, I_re,
        mul_zero, add_zero, zero_add, Set.mem_Icc] using ht⟩

-- Helper for integrating on the upper half of the Re=1 segment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean#L2551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `464787c2b9aac3a22b4d04cdbd00317bf569c992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
