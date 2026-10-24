# ϕ_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99225eb7-d57a-d32d-77e2-6851936dbefd",
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
  "slug": "continuous--8a0d8638016bc927a4a6cc0a",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2244,
    "line": 2184,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a0d8638016bc927a4a6cc0a473efdd3827701da6e1b22c847e5bd9eaae6809e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99225eb7-d57a-d32d-77e2-6851936dbefd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2184–2244.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L2184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
