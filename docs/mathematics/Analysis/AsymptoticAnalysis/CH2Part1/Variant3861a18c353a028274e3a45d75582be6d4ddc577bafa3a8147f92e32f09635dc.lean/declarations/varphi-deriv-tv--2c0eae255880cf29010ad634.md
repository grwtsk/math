# varphi_deriv_tv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 5232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50bc2782-d465-ad79-b4d3-4b819c2898c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad04222f-cea4-d882-74da-faf4a0c2783c",
  "kind": "theorem",
  "lexical_name": "varphi_deriv_tv",
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
  "slug": "varphi-deriv-tv--2c0eae255880cf29010ad634",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5264,
    "line": 5232,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c0eae255880cf29010ad634bbdeb3017e153a3821442925520736e89e859ee8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad04222f-cea4-d882-74da-faf4a0c2783c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5232–5264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem varphi_deriv_tv (ν ε : ℝ) (hlam : ν ≠ 0) : BoundedVariationOn (deriv (ϕ_pm ν ε)) Set.univ := by
  set g := deriv (ϕ_pm ν ε)
  have hBV_left := varphi_deriv_bv_on_Icc ν ε (a := -1) (b := 0) (m := -1/2)
    (by norm_num) (by norm_num) (by norm_num) (ϕ_c2_left ν ε hlam)
  have hBV_right := varphi_deriv_bv_on_Icc ν ε (a := 0) (b := 1) (m := 1/2)
    (by norm_num) (by norm_num) (by norm_num) (ϕ_c2_right ν ε hlam)
  have hBV_Icc : BoundedVariationOn g (Set.Icc (-1 : ℝ) 1) := by
    simp only [BoundedVariationOn] at hBV_left hBV_right ⊢
    have h_split : eVariationOn g (Set.Icc (-1 : ℝ) 0) + eVariationOn g (Set.Icc 0 1) =
        eVariationOn g (Set.Icc (-1 : ℝ) 1) := by
      simpa only [Set.univ_inter] using eVariationOn.Icc_add_Icc g (by norm_num) (by norm_num) (Set.mem_univ _)
    rw [← h_split]
    exact ENNReal.add_ne_top.mpr ⟨hBV_left, hBV_right⟩
  simp only [BoundedVariationOn] at hBV_Icc ⊢
  have h_split1 : eVariationOn g Set.univ =
      eVariationOn g (Set.Iic (-1 : ℝ)) + eVariationOn g (Set.Ici (-1 : ℝ)) := by
    conv_lhs => rw [← Set.Iic_union_Ici (a := (-1 : ℝ))]
    exact eVariationOn.union g isGreatest_Iic isLeast_Ici
  have h_split2 : eVariationOn g (Set.Ici (-1 : ℝ)) =
      eVariationOn g (Set.Icc (-1 : ℝ) 1) + eVariationOn g (Set.Ici (1 : ℝ)) := by
    conv_lhs => rw [← Set.Icc_union_Ici_eq_Ici (by norm_num : (-1 : ℝ) ≤ 1)]
    exact eVariationOn.union g (isGreatest_Icc (by norm_num)) isLeast_Ici
  rw [h_split1, h_split2]
  exact ENNReal.add_ne_top.mpr
    ⟨ϕ_pm_deriv_Iic_finite ν ε, ENNReal.add_ne_top.mpr ⟨hBV_Icc, ϕ_pm_deriv_Ici_finite ν ε⟩⟩

@[blueprint
  "varphi-fourier-decay"
  (title := "$\\varphi$ Fourier decay")
  (statement := /-- For $|x| \to \infty$, $\widehat{\varphi_\nu^\pm}(x) = O(1/x^2)$. -/)
  (proof := /-- For $f$ absolutely continuous with $f, f' \in L^1(\mathbb{R})$, integration by parts gives us that $\hat{f}(x) = \widehat{f'}(x)/(2\pi i x)$. If $f' \in L^1(\mathbb{R})$ with $\|f'\|_{\mathrm{TV}} < \infty$, then, again by integration by parts, $|\widehat{f'}(x)| \leq |f'|_{\mathrm{TV}}/(2\pi x)$. We are done by the preceding lemmas. -/)
  (latexEnv := "corollary")
  (discussion := 1230)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L5232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
