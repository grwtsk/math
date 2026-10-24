# lowerRectangle_no_poles_boundary

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
      "line": 2011,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae41c30d-6488-a19d-e700-0d57368a1e37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a5ded52-cea7-bbea-5d60-f3cf3c68284b",
  "kind": "lemma",
  "lexical_name": "lowerRectangle_no_poles_boundary",
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
  "slug": "lowerrectangle-no-poles-boundary--2c9f28be3e50ab4d986f933d",
  "source": {
    "blob": "464787c2b9aac3a22b4d04cdbd00317bf569c992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2078,
    "line": 2011,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c9f28be3e50ab4d986f933df8b68a99e728e7a521e6ea322f0db00438ce7585",
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

Occurrence: `result:5a5ded52-cea7-bbea-5d60-f3cf3c68284b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2011–2078.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lowerRectangle_no_poles_boundary (l : LadderParams) (n : ℕ)
    (hG : ∀ s, G s = G_circ s + (Real.sign s.im : ℂ) * G_star s)
    (hG_circ_mero : MeromorphicOn G_circ l.R) (hG_star_mero : MeromorphicOn G_star l.R)
    (hG_circ_symm : ConjSymm G_circ)
    (hG_star_symm : ConjAntisymm G_star)
    (hx₀ : 1 ≤ x₀)
    (hG_bdd : IsBoundedNoPolesOn (fun s ↦ G s * (x₀ : ℂ) ^ s) l.Rboundary)
    (hGc_L : IsBoundedNoPolesOn (fun s ↦ G_circ s * (x₀ : ℂ) ^ s) l.L)
    (hGc_contour : IsBoundedNoPolesOn (fun s ↦ G_circ s * (x₀ : ℂ) ^ s) l.admissible_contour)
    (hGs_L : IsBoundedNoPolesOn (fun s ↦ G_star s * (x₀ : ℂ) ^ s) l.L)
    (hGs_contour : IsBoundedNoPolesOn (fun s ↦ G_star s * (x₀ : ℂ) ^ s) l.admissible_contour)
    (hx : x₀ < x) :
    Disjoint (RectangleBorder ((l.σ n : ℂ) - (l.T : ℂ) * Complex.I) (1 - (l.δ : ℂ) * Complex.I))
      {z | meromorphicOrderAt (fun s ↦ G s * (x : ℂ) ^ s) z < 0} := by
  rw [Set.disjoint_left]
  rintro z hz (hz_pole : meromorphicOrderAt _ z < 0)
  have hz_rect := rectangleBorder_subset_rectangle _ _ hz
  have h_rect_R := Set.Subset.trans (l.lowerRectangle_subset_RposBar n) l.RposBar_subset_R
  have hz_R : z ∈ l.R := h_rect_R hz_rect
  have hT_le_delta : -l.T ≤ -l.δ := by linarith [l.hδ.2, l.hT]
  obtain ⟨_, _, hz_im_bot, hz_im_top⟩ :=
    (mem_Rect (by simpa using l.hσ n) (by simpa using hT_le_delta) z).mp hz_rect
  have hz_im_neg : z.im < 0 := lt_of_le_of_lt (by simpa using hz_im_top) (neg_lt_zero.mpr l.hδ.1)
  have abs_zim_le : |z.im| ≤ l.T := by rw [abs_of_neg hz_im_neg]; linarith [show -l.T ≤ z.im by simpa using hz_im_bot]
  have hG_eq : G =ᶠ[nhds z] G_circ - G_star := by
    filter_upwards [(isOpen_lt Complex.continuous_im continuous_const).mem_nhds hz_im_neg] with t ht
    have ht_eq_G := hG t
    rw [show (Real.sign t.im : ℂ) = -1 by simp [Real.sign_of_neg ht]] at ht_eq_G
    change G t = G_circ t - G_star t
    rw [ht_eq_G]
    ring
  have hGc_mero := hG_circ_mero z hz_R
  have hGs_mero := hG_star_mero z hz_R
  have hG_mero := (hGc_mero.sub hGs_mero).congr (hG_eq.symm.filter_mono nhdsWithin_le_nhds)
  have extract_order : ∀ (F : ℂ → ℂ) (S : Set ℂ) (hF_mero : MeromorphicAt F z),
      IsBoundedNoPolesOn (fun s ↦ F s * (x₀ : ℂ) ^ s) S → z ∈ S → 0 ≤ meromorphicOrderAt F z :=
    fun F S hF_mero h_bdd hz_S ↦ meromorphicOrderAt_nonneg_of_bounded hx₀ hF_mero h_bdd hz_S
  have combine_orders (hc : 0 ≤ meromorphicOrderAt G_circ z) (hs : 0 ≤ meromorphicOrderAt G_star z) : 0 ≤ meromorphicOrderAt G z :=
    meromorphicOrderAt_add_nonneg hGc_mero hGs_mero.neg hG_eq hc (meromorphicOrderAt_neg_nonneg hGs_mero hs)
  have h_nonneg_G : 0 ≤ meromorphicOrderAt G z := by
    simp only [RectangleBorder, Set.mem_union, Complex.mem_reProdIm, Set.mem_singleton_iff,
      Complex.sub_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re, Complex.I_im,
      mul_zero, sub_zero, mul_one, zero_sub, Complex.sub_im, Complex.ofReal_im, Complex.mul_im,
      Complex.one_re, Complex.one_im, Set.uIcc_of_le (l.hσ n)] at hz
    rcases hz with (((⟨hz_re, hz_im⟩ | ⟨hz_re, hz_im⟩) | ⟨hz_re, hz_im⟩) | ⟨hz_re, hz_im⟩)
    · exact extract_order G l.Rboundary hG_mero hG_bdd (Or.inr ⟨hz_re.2, by simpa [hz_im] using l.hT.le⟩)
    · cases n with
      | zero => exact extract_order G l.Rboundary hG_mero hG_bdd (Or.inl ⟨by rw [hz_re, l.h0], abs_zim_le⟩)
      | succ n_pred =>
        have hz_L : z ∈ l.L := ⟨n_pred + 1, by omega, hz_re, abs_zim_le⟩
        exact combine_orders (extract_order G_circ l.L hGc_mero hGc_L hz_L) (extract_order G_star l.L hGs_mero hGs_L hz_L)
    · have hw_contour : starRingEnd ℂ z ∈ l.admissible_contour := Or.inl ⟨hz_re.2, by simp [hz_im]⟩
      have hw_pow_mero := meromorphicAt_rpow (show 0 < x₀ by linarith) (starRingEnd ℂ z)
      have hw_pow_order := meromorphicOrderAt_rpow (show 0 < x₀ by linarith) (starRingEnd ℂ z)
      have hz_R_star : starRingEnd ℂ z ∈ l.R := ⟨hz_R.1, by simpa using hz_R.2⟩
      have hGc_order : 0 ≤ meromorphicOrderAt G_circ z := by
        rw [meromorphicOrderAt_starRingEnd (Or.inl hG_circ_symm)]
        exact meromorphicOrderAt_nonneg_of_isBoundedNoPolesOn (hG_circ_mero _ hz_R_star) hw_pow_mero hw_pow_order hGc_contour hw_contour
      have hGs_order : 0 ≤ meromorphicOrderAt G_star z := by
        rw [meromorphicOrderAt_starRingEnd (Or.inr hG_star_symm)]
        exact meromorphicOrderAt_nonneg_of_isBoundedNoPolesOn (hG_star_mero _ hz_R_star) hw_pow_mero hw_pow_order hGs_contour hw_contour
      exact combine_orders hGc_order hGs_order
    · exact extract_order G l.Rboundary hG_mero hG_bdd (Or.inl ⟨hz_re, abs_zim_le⟩)
  rw [show (fun s ↦ G s * (x : ℂ) ^ s) = G * (fun s : ℂ ↦ (x : ℂ) ^ s) from rfl,
    meromorphicOrderAt_mul hG_mero (meromorphicAt_rpow (show 0 < x by linarith) z),
    meromorphicOrderAt_rpow (show 0 < x by linarith) z, add_zero] at hz_pole
  exact not_lt.mpr h_nonneg_G hz_pole

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean#L2011).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `464787c2b9aac3a22b4d04cdbd00317bf569c992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
