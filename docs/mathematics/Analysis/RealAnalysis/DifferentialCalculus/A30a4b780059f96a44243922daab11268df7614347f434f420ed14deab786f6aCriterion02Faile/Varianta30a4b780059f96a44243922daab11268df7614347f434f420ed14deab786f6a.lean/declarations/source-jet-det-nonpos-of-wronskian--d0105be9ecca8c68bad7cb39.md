# source_jet_det_nonpos_of_wronskian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55215738125cb0648a2fde85c135ff3589ed3486",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfce6285-c470-3fe3-3562-d5b2e49d0b56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c62c94b8-45d1-331c-7114-ee53fd2b3fe3",
  "kind": "theorem",
  "lexical_name": "source_jet_det_nonpos_of_wronskian",
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
  "slug": "source-jet-det-nonpos-of-wronskian--d0105be9ecca8c68bad7cb39",
  "source": {
    "blob": "55215738125cb0648a2fde85c135ff3589ed3486",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 21,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0105be9ecca8c68bad7cb39a06f408f19d75f1d0da058b3855ee2aa4da9e54c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c62c94b8-45d1-331c-7114-ee53fd2b3fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_jet_det_nonpos_of_wronskian
    (f0 f1 f2 f3 f4 : ℝ → ℝ)
    (hd0 : ∀ t ∈ Ici (0 : ℝ), HasDerivAt f0 (f1 t) t)
    (hd1 : ∀ t ∈ Ici (0 : ℝ), HasDerivAt f1 (f2 t) t)
    (hd2 : ∀ t ∈ Ici (0 : ℝ), HasDerivAt f2 (f3 t) t)
    (hd3 : ∀ t ∈ Ici (0 : ℝ), HasDerivAt f3 (f4 t) t)
    (hp : ∀ t ∈ Ici (0 : ℝ), 0 < f0 t)
    (hw2 : ∀ t ∈ Ici (0 : ℝ), f0 t * f2 t - f1 t ^ 2 < 0)
    (hw3 : ∀ t ∈ Ici (0 : ℝ),
      Matrix.det !![f0 t, f1 t, f2 t; f1 t, f2 t, f3 t; f2 t, f3 t, f4 t] ≤ 0)
    {x y z : ℝ} (hx : 0 ≤ x) (hxy : x < y) (hyz : y < z) :
    Matrix.det !![f0 x, f0 y, f0 z; f1 x, f1 y, f1 z; f2 x, f2 y, f2 z] ≤ 0 := by
  let d1 := fun t => (f0 t * f2 t - f1 t ^ 2) / f0 t ^ 2
  let d2 := fun t => (f0 t * f3 t - f1 t * f2 t) / f0 t ^ 2
  let k := fun t => (f0 t * f3 t - f1 t * f2 t) / (f0 t * f2 t - f1 t ^ 2)
  have hkder t (ht : t ∈ Ici (0 : ℝ)) := hasDerivAt_jetRatio f0 f1 f2 f3 f4
    (hd0 t ht) (hd1 t ht) (hd2 t ht) (hd3 t ht) (ne_of_lt (hw2 t ht))
  have hk : AntitoneOn k (Ici 0) := by
    apply antitoneOn_of_deriv_nonpos (convex_Ici 0)
    · exact fun t ht => (hkder t ht).continuousAt.continuousWithinAt
    · exact fun t ht => (hkder t (interior_subset ht)).differentiableAt.differentiableWithinAt
    · intro t ht
      rw [(hkder t (interior_subset ht)).deriv]
      exact div_nonpos_of_nonpos_of_nonneg
        (mul_nonpos_of_nonneg_of_nonpos (hp t (interior_subset ht)).le
          (hw3 t (interior_subset ht))) (sq_nonneg _)
  have hdq1 t (ht : t ∈ Ici (0 : ℝ)) :
      HasDerivAt (fun u => f1 u / f0 u) (d1 t) t := by
    convert! (hd1 t ht).div (hd0 t ht) (hp t ht).ne' using 1
    dsimp [d1]
    ring
  have hdq2 t (ht : t ∈ Ici (0 : ℝ)) :
      HasDerivAt (fun u => f2 u / f0 u) (d2 t) t := by
    convert! (hd2 t ht).div (hd0 t ht) (hp t ht).ne' using 1
    dsimp [d2]
    ring
  have heq t (ht : t ∈ Ici (0 : ℝ)) : d2 t / d1 t = k t := by
    dsimp [d1, d2, k]
    field_simp [(hp t ht).ne', ne_of_lt (hw2 t ht)]
  have hcc : Icc x z ⊆ Ici (0 : ℝ) := fun _ ht => hx.trans ht.1
  have hoo : Ioo x z ⊆ Ici (0 : ℝ) := fun _ ht => hx.trans ht.1.le
  have hn := normalized_det_nonpos_of_antitone_deriv_ratio
    (fun t => f1 t / f0 t) (fun t => f2 t / f0 t) d1 d2 hxy hyz
    (fun t ht => (hdq1 t (hcc ht)).continuousAt.continuousWithinAt)
    (fun t ht => (hdq2 t (hcc ht)).continuousAt.continuousWithinAt)
    (fun t ht => hdq1 t (hoo ht)) (fun t ht => hdq2 t (hoo ht))
    (fun t ht => div_neg_of_neg_of_pos (hw2 t (hoo ht)) (sq_pos_of_pos (hp t (hoo ht))))
    (by
      intro a ha b hb hab
      change d2 b / d1 b ≤ d2 a / d1 a
      rw [heq a (hoo ha), heq b (hoo hb)]
      exact hk (hoo ha) (hoo hb) hab)
  have hy : 0 ≤ y := hx.trans hxy.le
  have hz : 0 ≤ z := hy.trans hyz.le
  have hf := det_fin_three_normalize_first_row
    !![f0 x, f0 y, f0 z; f1 x, f1 y, f1 z; f2 x, f2 y, f2 z]
    (by intro j; fin_cases j <;> simp [ne_of_gt (hp x hx), ne_of_gt (hp y hy), ne_of_gt (hp z hz)])
  simp only [Matrix.of_apply, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val,
    ] at hf
  rw [hf]
  exact mul_nonpos_of_nonneg_of_nonpos
    (mul_nonneg (mul_nonneg (hp x hx).le (hp y hy).le) (hp z hz).le) hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6aCriterion02Faile/Varianta30a4b780059f96a44243922daab11268df7614347f434f420ed14deab786f6a.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55215738125cb0648a2fde85c135ff3589ed3486` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
