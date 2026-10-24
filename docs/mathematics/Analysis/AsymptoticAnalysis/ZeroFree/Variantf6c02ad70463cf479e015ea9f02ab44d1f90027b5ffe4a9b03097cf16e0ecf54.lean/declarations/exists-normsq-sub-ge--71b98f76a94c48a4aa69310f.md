# exists_normSq_sub_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1031,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d0158ab-6c4d-8a6a-94d5-083f658da55a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:270e4d41-af3f-0bf9-24df-ace48906cd32",
  "kind": "theorem",
  "lexical_name": "exists_normSq_sub_ge",
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
  "slug": "exists-normsq-sub-ge--71b98f76a94c48a4aa69310f",
  "source": {
    "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1090,
    "line": 1031,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71b98f76a94c48a4aa69310f3d615f7a37e47d5ef4789b2dc1c5919197bd165e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:270e4d41-af3f-0bf9-24df-ace48906cd32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1031–1090.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_normSq_sub_ge {s : ℂ} (hxi : xi s ≠ 0) : ∃ c : ℝ, 0 < c ∧ ∀ ρ : ℂ,
    IsNontrivialZero ρ → c * (1 + Complex.normSq (gammaOf ρ)) ≤ Complex.normSq (s - ρ) := by
  classical
  set t : ℝ := s.im with ht
  have hfin := zetaSeam.finite_window (t - 1) (t + 1)
  set F : Finset ℂ := hfin.toFinset with hF
  have hmemF : ∀ ρ : ℂ, ρ ∈ F ↔ IsNontrivialZero ρ ∧ t - 1 < ρ.im ∧ ρ.im ≤ t + 1 := by
    intro ρ; rw [hF, Set.Finite.mem_toFinset]; rfl
  -- a positive lower bound d for normSq (s − ρ) over the finitely many zeros at height within 1 of t
  obtain ⟨d, hd0, hd⟩ : ∃ d : ℝ, 0 < d ∧ ∀ ρ ∈ F, d ≤ Complex.normSq (s - ρ) := by
    by_cases hne : F.Nonempty
    · refine ⟨F.inf' hne (fun ρ => Complex.normSq (s - ρ)), ?_, fun ρ hρ => Finset.inf'_le _ hρ⟩
      obtain ⟨ρ₀, hρ₀, heq⟩ := Finset.exists_mem_eq_inf' hne (fun ρ => Complex.normSq (s - ρ))
      rw [heq]
      refine Complex.normSq_pos.mpr (sub_ne_zero.mpr (fun h => hxi ?_))
      rw [h]
      exact (xi_eq_zero_iff ρ₀).mpr ((hmemF ρ₀).mp hρ₀).1
    · exact ⟨1, one_pos, fun ρ hρ => (hne ⟨ρ, hρ⟩).elim⟩
  refine ⟨min (d / (5 / 4 + (|t| + 1) ^ 2)) (1 / (13 / 4 + 2 * t ^ 2)), lt_min (by positivity)
    (by positivity), fun ρ hρ => ?_⟩
  have hN : Complex.normSq (gammaOf ρ) = ρ.im ^ 2 + (1 / 2 - ρ.re) ^ 2 := by
    rw [Complex.normSq_apply, Zeta23.WeilEF.gammaOf_re, Zeta23.WeilEF.gammaOf_im]; ring
  have hβ1 := hρ.2.1
  have hβ2 := hρ.2.2
  have hNle : Complex.normSq (gammaOf ρ) ≤ ρ.im ^ 2 + 1 / 4 := by
    rw [hN]; nlinarith
  have hns : Complex.normSq (s - ρ) = (s.re - ρ.re) ^ 2 + (t - ρ.im) ^ 2 := by
    rw [Complex.normSq_apply, Complex.sub_re, Complex.sub_im, ht]; ring
  by_cases hwin : t - 1 < ρ.im ∧ ρ.im ≤ t + 1
  · -- a nearby zero: use d
    have hρF : ρ ∈ F := (hmemF ρ).mpr ⟨hρ, hwin⟩
    have h1 : 1 + Complex.normSq (gammaOf ρ) ≤ 5 / 4 + (|t| + 1) ^ 2 := by
      have : ρ.im ^ 2 ≤ (|t| + 1) ^ 2 := by
        have h : |ρ.im| ≤ |t| + 1 :=
          abs_le.mpr ⟨by linarith [hwin.1, neg_abs_le t], by linarith [hwin.2, le_abs_self t]⟩
        calc ρ.im ^ 2 = |ρ.im| ^ 2 := (sq_abs _).symm
          _ ≤ (|t| + 1) ^ 2 := pow_le_pow_left₀ (abs_nonneg _) h 2
      linarith
    calc min (d / (5 / 4 + (|t| + 1) ^ 2)) (1 / (13 / 4 + 2 * t ^ 2)) * (1 + Complex.normSq (gammaOf ρ))
        ≤ (d / (5 / 4 + (|t| + 1) ^ 2)) * (5 / 4 + (|t| + 1) ^ 2) := by
          apply mul_le_mul (min_le_left _ _) h1
            (by linarith [Complex.normSq_nonneg (gammaOf ρ)]) (by positivity)
      _ = d := by field_simp
      _ ≤ Complex.normSq (s - ρ) := hd ρ hρF
  · -- a far zero: |t − Im ρ| ≥ 1
    have hfar : 1 ≤ (t - ρ.im) ^ 2 := by
      rcases not_and_or.mp hwin with h | h
      · push Not at h; nlinarith
      · push Not at h; nlinarith
    have h1 : 1 + Complex.normSq (gammaOf ρ) ≤ (13 / 4 + 2 * t ^ 2) * (t - ρ.im) ^ 2 := by
      have : ρ.im ^ 2 ≤ 2 * (ρ.im - t) ^ 2 + 2 * t ^ 2 := by nlinarith [sq_nonneg (ρ.im - 2 * t)]
      nlinarith
    calc min (d / (5 / 4 + (|t| + 1) ^ 2)) (1 / (13 / 4 + 2 * t ^ 2)) * (1 + Complex.normSq (gammaOf ρ))
        ≤ (1 / (13 / 4 + 2 * t ^ 2)) * ((13 / 4 + 2 * t ^ 2) * (t - ρ.im) ^ 2) := by
          apply mul_le_mul (min_le_right _ _) h1
            (by linarith [Complex.normSq_nonneg (gammaOf ρ)]) (by positivity)
      _ = (t - ρ.im) ^ 2 := by field_simp
      _ ≤ Complex.normSq (s - ρ) := by rw [hns]; nlinarith

/-- |wt s ρ| ≤ C_s/(1 + |γ_ρ|²) on the zero set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean#L1031).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b486018e86ff3fab9a3e0bcf36e9d28c00063a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
