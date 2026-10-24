# varphi_deriv_bv_on_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:954fa9e8-f331-7c5e-ec50-31960f4e9272",
  "kind": "lemma",
  "lexical_name": "varphi_deriv_bv_on_Icc",
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
  "slug": "varphi-deriv-bv-on-icc--ccfc45636a2cff5d4b0362ab",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5265,
    "line": 5223,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccfc45636a2cff5d4b0362ab666398e5e763920b55220ce6e9116b26c6784930",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:954fa9e8-f331-7c5e-ec50-31960f4e9272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5223–5265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma varphi_deriv_bv_on_Icc (ν ε : ℝ) {a b m : ℝ}
    (hab : a < b) (ham : a < m) (hmb : m < b)
    (h_c2 : ContDiffOn ℝ 2 (ϕ_pm ν ε) (Set.Icc a b)) :
    BoundedVariationOn (deriv (ϕ_pm ν ε)) (Set.Icc a b) := by
  set g := deriv (ϕ_pm ν ε)
  set dw := derivWithin (ϕ_pm ν ε) (Set.Icc a b) with hdw_def
  have h_dw_c1 : ContDiffOn ℝ 1 dw (Set.Icc a b) :=
    h_c2.derivWithin (uniqueDiffOn_Icc hab) (by norm_num)
  obtain ⟨K, hK⟩ := h_dw_c1.exists_lipschitzOnWith (by norm_num) (convex_Icc _ _) isCompact_Icc
  have hBV_dw : BoundedVariationOn dw (Set.Icc a b) := by
    simpa using hK.locallyBoundedVariationOn a b
      (Set.left_mem_Icc.mpr hab.le) (Set.right_mem_Icc.mpr hab.le)
  have h_eq_ioo : Set.EqOn g dw (Set.Ioo a b) := fun x hx => by
    simp only [g, hdw_def]
    exact ((h_c2.differentiableOn (by norm_num) x (Set.Ioo_subset_Icc_self hx))
      |>.differentiableAt (Icc_mem_nhds hx.1 hx.2))
      |>.derivWithin (uniqueDiffOn_Icc hab x (Set.Ioo_subset_Icc_self hx)) |>.symm
  have h_split : eVariationOn g (Set.Icc a b) =
      eVariationOn g (Set.Icc a m) + eVariationOn g (Set.Icc m b) := by
    simpa only [Set.univ_inter] using
      (eVariationOn.Icc_add_Icc g ham.le hmb.le (Set.mem_univ m)).symm
  have hBV_L : BoundedVariationOn g (Set.Icc a m) :=
    ne_top_of_le_ne_top (ENNReal.add_ne_top.mpr
      ⟨hBV_dw.mono (Set.Icc_subset_Icc le_rfl hmb.le), (edist_lt_top _ _).ne⟩)
      (eVariationOn_add_jump_endpoint (Or.inl (isLeast_Icc ham.le)) fun x hx =>
        (h_eq_ioo ⟨hx.1.1.lt_of_ne (Ne.symm hx.2), hx.1.2.trans_lt hmb⟩).symm)
  have hBV_R : BoundedVariationOn g (Set.Icc m b) :=
    ne_top_of_le_ne_top (ENNReal.add_ne_top.mpr
      ⟨hBV_dw.mono (Set.Icc_subset_Icc ham.le le_rfl), (edist_lt_top _ _).ne⟩)
      (eVariationOn_add_jump_endpoint (Or.inr (isGreatest_Icc hmb.le)) fun x hx =>
        (h_eq_ioo ⟨ham.trans_le hx.1.1, hx.1.2.lt_of_ne hx.2⟩).symm)
  rw [BoundedVariationOn, h_split]
  exact ENNReal.add_ne_top.mpr ⟨hBV_L, hBV_R⟩

@[blueprint
  "varphi-deriv-tv"
  (title := "$\\varphi'$ total variation")
  (statement := /-- The function $(\varphi_\nu^\pm)'$ has finite total variation. -/)
  (proof := /-- Since $(\varphi_\nu^\pm)'$ is $C^1$ on $[-1, 0]$ and on $[0, 1]$, the $L^1$ norm of $(\varphi_\nu^\pm)''$ on each of these intervals is finite, and so $(\varphi_\nu^\pm)'$ has finite total variation on each of them. As $(\varphi_\nu^\pm)'$ has right and left limits at $-1$, $0$ and $1$, the jumps at those points are finite, and so their contribution to $\|(\varphi_\nu^\pm)'\|_{\mathrm{TV}}$ is finite.
/
-/)
  (latexEnv := "lemma")
  (discussion := 1229)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L5223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
