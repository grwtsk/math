# ϕ_continuous

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
      "line": 2176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8cc3240-b0d8-fe90-dd08-3c5afb7d498a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cea6971b-9684-3e22-e56b-7b67d798b3d4",
  "kind": "theorem",
  "lexical_name": "ϕ_continuous",
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
  "slug": "continuous--bdd8b7e4b58480f4603fa399",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2236,
    "line": 2176,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdd8b7e4b58480f4603fa399bddb161e6aaf557123c46a3fc50f58765cd2a381",
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

Occurrence: `result:cea6971b-9684-3e22-e56b-7b67d798b3d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2176–2236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ϕ_continuous (ν ε : ℝ) (hlam : ν ≠ 0) : Continuous (ϕ_pm ν ε) := by
  have tanh_add_pi (z : ℂ) : Complex.tanh (z + Real.pi * I) = Complex.tanh z := by simp
  have tanh_sub_pi (z : ℂ) : Complex.tanh (z - Real.pi * I) = Complex.tanh z := by
    have h := tanh_add_pi (z - Real.pi * I); rw [sub_add_cancel] at h; exact h.symm
  unfold ϕ_pm
  apply continuous_if
  · intro a ha
    have hfr : frontier {x : ℝ | -1 ≤ x ∧ x ≤ 1} = {-1, 1} := by
      have : {x : ℝ | -1 ≤ x ∧ x ≤ 1} = Set.Icc (-1) 1 := by ext; simp
      rw [this, frontier_Icc (by norm_num : (-1 : ℝ) ≤ 1)]
    rw [hfr] at ha
    rcases ha with rfl | rfl
    · unfold Phi_circ Phi_star B coth
      dsimp only []; push_cast; simp only [Real.sign_neg, Real.sign_one, ofReal_neg, ofReal_one]
      have hw_ne : -2 * Real.pi * I * (-1 : ℂ) + ν ≠ 0 := by
        intro h; have := congr_arg Complex.im h; simp at this
      have hν_ne : (ν : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hlam
      simp only [hw_ne, hν_ne, ↓reduceIte]
      have hw2 : (-2 * Real.pi * I * (-1 : ℂ) + ν) / 2 = ν / 2 + Real.pi * I := by ring
      rw [hw2, tanh_add_pi]
      have hpi : (Real.pi : ℂ) * I ≠ 0 := by
        apply mul_ne_zero (by exact_mod_cast Real.pi_ne_zero) I_ne_zero
      grind
    · unfold Phi_circ Phi_star B coth
      dsimp only []; push_cast; simp only [Real.sign_one, ofReal_one]
      have hw_ne : -2 * Real.pi * I * (1 : ℂ) + ν ≠ 0 := by
        intro h; have := congr_arg Complex.im h; simp at this
      have hν_ne : (ν : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hlam
      simp only [hw_ne, hν_ne, ↓reduceIte]
      have hw2 : (-2 * Real.pi * I * (1 : ℂ) + ν) / 2 = ν / 2 - Real.pi * I := by ring
      rw [hw2, tanh_sub_pi]
      have hpi : (Real.pi : ℂ) * I ≠ 0 := by
        apply mul_ne_zero (by exact_mod_cast Real.pi_ne_zero) I_ne_zero
      field_simp
      ring
  · have hcl : closure {x : ℝ | -1 ≤ x ∧ x ≤ 1} = Set.Icc (-1) 1 := by
      have : {x : ℝ | -1 ≤ x ∧ x ≤ 1} = Set.Icc (-1) 1 := by ext; simp
      rw [this, closure_Icc]
    rw [hcl]
    have hl := (ϕ_c2_left ν ε hlam).continuousOn
    have hr := (ϕ_c2_right ν ε hlam).continuousOn
    have hunion : Set.Icc (-1 : ℝ) 1 = Set.Icc (-1) 0 ∪ Set.Icc 0 1 := by
      ext x; simp
    rw [hunion]
    intro x hx
    rw [continuousWithinAt_union]
    constructor
    · by_cases hxs : x ∈ Set.Icc (-1 : ℝ) 0
      · exact (hl.congr (fun t ht => by simp [ϕ_pm, show -1 ≤ t from ht.1,
            show t ≤ 1 from le_trans ht.2 (by norm_num : (0 : ℝ) ≤ 1)])) x hxs
      · have : ¬ (nhdsWithin x (Set.Icc (-1 : ℝ) 0)).NeBot := by
          rwa [← mem_closure_iff_nhdsWithin_neBot, closure_Icc]
        rw [Filter.not_neBot] at this; simp [ContinuousWithinAt, this]
    · by_cases hxt : x ∈ Set.Icc (0 : ℝ) 1
      · exact (hr.congr (fun t ht => by simp [ϕ_pm, show -1 ≤ t from le_trans (by norm_num : (-1 : ℝ) ≤ 0) ht.1,
            show t ≤ 1 from ht.2])) x hxt
      · have : ¬ (nhdsWithin x (Set.Icc (0 : ℝ) 1)).NeBot := by
          rwa [← mem_closure_iff_nhdsWithin_neBot, closure_Icc]
        rw [Filter.not_neBot] at this; simp [ContinuousWithinAt, this]
  · exact continuousOn_const

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L2176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
