# upper_Rboundary_no_poles

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
      "line": 1659,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8de0101-736c-4c58-b3b6-b3710466c6cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a604612-e4ba-9703-d7cc-15f16fdac5ea",
  "kind": "lemma",
  "lexical_name": "upper_Rboundary_no_poles",
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
  "slug": "upper-rboundary-no-poles--0484f5bcbc86366f3fbfe52e",
  "source": {
    "blob": "464787c2b9aac3a22b4d04cdbd00317bf569c992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1704,
    "line": 1659,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0484f5bcbc86366f3fbfe52e27a773270189b9ef63ffd75ea3ef2f8f394aa838",
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

Occurrence: `result:5a604612-e4ba-9703-d7cc-15f16fdac5ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1659–1704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma upper_Rboundary_no_poles (l : LadderParams)
    (hG : ∀ s, G s = G_circ s + (Real.sign s.im : ℂ) * G_star s)
    (hG_circ_mero : MeromorphicOn G_circ l.R) (hG_star_mero : MeromorphicOn G_star l.R)
    (hx₀ : 1 ≤ x₀)
    (hG_bdd : IsBoundedNoPolesOn (fun s ↦ G s * (x₀ : ℂ) ^ s) l.Rboundary)
    (hGc_contour : IsBoundedNoPolesOn (fun s ↦ G_circ s * (x₀ : ℂ) ^ s) l.admissible_contour)
    (hGs_contour : IsBoundedNoPolesOn (fun s ↦ G_star s * (x₀ : ℂ) ^ s) l.admissible_contour) :
    ∀ s ∈ l.Rboundary, 0 ≤ s.im → 0 ≤ meromorphicOrderAt (G_circ + G_star) s := by
  intro s hs hs_im
  by_cases hs_im_pos : 0 < s.im
  · have hpos_mem : {t : ℂ | 0 < t.im} ∈ nhds s :=
      (isOpen_lt continuous_const Complex.continuous_im).mem_nhds hs_im_pos
    have hG_eq : G =ᶠ[nhds s] G_circ + G_star := by
      filter_upwards [hpos_mem] with t ht
      have hsign : (Real.sign t.im : ℂ) = 1 := by simp [Real.sign_of_pos ht]
      simp [hG t, hsign]
    have hG_eq' : G =ᶠ[nhdsWithin s {s}ᶜ] G_circ + G_star := hG_eq.filter_mono nhdsWithin_le_nhds
    rw [← meromorphicOrderAt_congr hG_eq']
    have hG_mero : MeromorphicAt G s :=
      ((hG_circ_mero s (l.Rboundary_subset_R hs)).add (hG_star_mero s (l.Rboundary_subset_R hs))).congr (hG_eq.symm.filter_mono nhdsWithin_le_nhds)
    exact meromorphicOrderAt_nonneg_of_bounded hx₀ hG_mero hG_bdd hs
  · have hs_im_zero : s.im = 0 := by linarith [hs_im, hs_im_pos]
    have hs_re : s.re = 1 := by
      have h_Rbd : s ∈ l.Rboundary := hs
      simp only [LadderParams.Rboundary, Set.mem_setOf_eq] at h_Rbd
      rcases h_Rbd with ⟨hre, _⟩ | ⟨_, him⟩
      · exact hre
      · rw [hs_im_zero, abs_zero] at him
        have hT_gt_zero := l.hT
        linarith [him]
    have hs_eq : s = 1 := by rw [Complex.ext_iff]; simp [hs_re, hs_im_zero]
    obtain ⟨hGc_order, hGs_order⟩ := G_circ_star_no_poles_at_one l hG_circ_mero hG_star_mero hx₀ hGc_contour hGs_contour
    have hGc_mero : MeromorphicAt G_circ s := hG_circ_mero s (l.Rboundary_subset_R hs)
    have hGs_mero : MeromorphicAt G_star s := hG_star_mero s (l.Rboundary_subset_R hs)
    exact meromorphicOrderAt_add_nonneg hGc_mero hGs_mero (Filter.EventuallyEq.refl (nhds s) (G_circ + G_star)) (hs_eq ▸ hGc_order) (hs_eq ▸ hGs_order)

@[blueprint
  "ch2-lemma-5-1-a"
  (title := "Contour shifting, upper half (CH2 Lemma 5.1, eq. 1)")
  (statement := /--
  For each $n$, shifting the upper half $1 \to 1 + iT$ of the central line leftwards to the
  truncated contour $C_n^+$ picks up the residues of $G$ in $R^+$ to the right of $\sigma_n$:
  $$ \frac{1}{2\pi i}\int_1^{1+iT} G(s) x^s\, ds = \frac{1}{2\pi i}\int_{C_n^+} G(s) x^s\, ds + \sum_{\rho \in R^+,\ \Re\rho > \sigma_n} \mathrm{Res}_{s=\rho} G(s) x^s. $$ -/)
  (proof := /-- The residue theorem on the region of $R^+$ between $[1, 1+iT]$ and $C_n^+$. -/)
  (latexEnv := "sublemma")
  (discussion := 1448)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean#L1659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `464787c2b9aac3a22b4d04cdbd00317bf569c992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
