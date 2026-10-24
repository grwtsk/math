# lower_Rboundary_no_poles

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
      "line": 2161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3023d6db-c33a-d87d-ce8d-1d422ba98d60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6a11f22-9426-db90-21c8-fe471cefe1bf",
  "kind": "lemma",
  "lexical_name": "lower_Rboundary_no_poles",
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
  "slug": "lower-rboundary-no-poles--5bae0559ff4b71325b13da7d",
  "source": {
    "blob": "464787c2b9aac3a22b4d04cdbd00317bf569c992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2219,
    "line": 2161,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bae0559ff4b71325b13da7d8f2b4944d76bf371d0b45661d001403e0ae3e4b5",
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

Occurrence: `result:e6a11f22-9426-db90-21c8-fe471cefe1bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2161–2219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma lower_Rboundary_no_poles (l : LadderParams)
    (hG : ∀ s, G s = G_circ s + (Real.sign s.im : ℂ) * G_star s)
    (hG_circ_mero : MeromorphicOn G_circ l.R) (hG_star_mero : MeromorphicOn G_star l.R)
    (hx₀ : 1 ≤ x₀)
    (hG_bdd : IsBoundedNoPolesOn (fun s ↦ G s * (x₀ : ℂ) ^ s) l.Rboundary)
    (hGc_contour : IsBoundedNoPolesOn (fun s ↦ G_circ s * (x₀ : ℂ) ^ s) l.admissible_contour)
    (hGs_contour : IsBoundedNoPolesOn (fun s ↦ G_star s * (x₀ : ℂ) ^ s) l.admissible_contour) :
    ∀ s ∈ l.Rboundary, s.im ≤ 0 → 0 ≤ meromorphicOrderAt (G_circ - G_star) s := by
  intro s hs hs_im
  by_cases hs_im_neg : s.im < 0
  · have hneg_mem : {t : ℂ | t.im < 0} ∈ nhds s :=
      (isOpen_lt Complex.continuous_im continuous_const).mem_nhds hs_im_neg
    have hG_eq : G =ᶠ[nhds s] G_circ - G_star := by
      filter_upwards [hneg_mem] with t ht
      have hsign : (Real.sign t.im : ℂ) = -1 := by simp [Real.sign_of_neg ht]
      rw [hG t, hsign]
      change G_circ t + -1 * G_star t = G_circ t - G_star t
      ring
    have hG_eq' : G =ᶠ[nhdsWithin s {s}ᶜ] G_circ - G_star := hG_eq.filter_mono nhdsWithin_le_nhds
    rw [← meromorphicOrderAt_congr hG_eq']
    have hG_mero : MeromorphicAt G s :=
      ((hG_circ_mero s (l.Rboundary_subset_R hs)).sub (hG_star_mero s (l.Rboundary_subset_R hs))).congr (hG_eq.symm.filter_mono nhdsWithin_le_nhds)
    exact meromorphicOrderAt_nonneg_of_bounded hx₀ hG_mero hG_bdd hs
  · have hs_im_zero : s.im = 0 := by linarith [hs_im, hs_im_neg]
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
    have h_sub : G_circ - G_star = G_circ + (-G_star) := rfl
    rw [h_sub]
    have h_neg_order : 0 ≤ meromorphicOrderAt (-G_star) s := by
      have h_neg_eq : -G_star = (fun x => -1) * G_star := by
        ext x; change -(G_star x) = -1 * G_star x; ring
      rw [h_neg_eq]
      have h_order_add := meromorphicOrderAt_mul (f := fun _ => (-1 : ℂ)) (show AnalyticAt ℂ (fun _ => (-1:ℂ)) s from analyticAt_const).meromorphicAt hGs_mero
      rw [h_order_add]
      have h_const : meromorphicOrderAt (fun (x : ℂ) => (-1 : ℂ)) s = 0 := by simp [meromorphicOrderAt_const]
      rw [h_const, zero_add]
      exact hs_eq ▸ hGs_order
    exact meromorphicOrderAt_add_nonneg hGc_mero hGs_mero.neg (Filter.EventuallyEq.refl (nhds s) _) (hs_eq ▸ hGc_order) h_neg_order

@[blueprint
  "ch2-lemma-5-1-b"
  (title := "Contour shifting, lower half (CH2 Lemma 5.1, eq. 2)")
  (statement := /--
  For each $n$, shifting the lower half $1 - iT \to 1$ of the central line leftwards to the
  truncated contour $C_n^-$ picks up the residues of $G$ in $\overline{R^+}$ to the right of $\sigma_n$:
  $$ \frac{1}{2\pi i}\int_{1-iT}^{1} G(s) x^s\, ds = \frac{1}{2\pi i}\int_{C_n^-} G(s) x^s\, ds + \sum_{\rho \in \overline{R^+},\ \Re\rho > \sigma_n} \mathrm{Res}_{s=\rho} G(s) x^s. $$ -/)
  (proof := /-- The residue theorem on the region of $\overline{R^+}$ between $[1-iT, 1]$ and $C_n^-$. -/)
  (latexEnv := "sublemma")
  (discussion := 1449)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean#L2161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `464787c2b9aac3a22b4d04cdbd00317bf569c992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
