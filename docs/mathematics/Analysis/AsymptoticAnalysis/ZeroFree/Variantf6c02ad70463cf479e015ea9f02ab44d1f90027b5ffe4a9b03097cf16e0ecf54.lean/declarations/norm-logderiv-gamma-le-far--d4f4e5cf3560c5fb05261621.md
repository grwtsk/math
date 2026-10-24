# norm_logDeriv_Gammaℝ_le_far

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
      "line": 496,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b83904ff-5dea-ff7c-a4e4-2cf6b6d99dc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48ab300e-ae0d-8da8-d6af-6aecf0b3278f",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_Gammaℝ_le_far",
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
  "slug": "norm-logderiv-gamma-le-far--d4f4e5cf3560c5fb05261621",
  "source": {
    "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 496,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4f4e5cf3560c5fb05261621466c0fa903cffae5bdfde6a23bc546cb6881a6c5",
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

Occurrence: `result:48ab300e-ae0d-8da8-d6af-6aecf0b3278f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_Gammaℝ_le_far : ∃ C : ℝ, 0 < C ∧ ∀ w : ℂ, 1 ≤ w.re →
    ‖logDeriv Complex.Gammaℝ w‖ ≤ C * Real.log (2 + ‖w‖) := by
  obtain ⟨C, hC, hψ⟩ := norm_digamma_le
  have hlog2 : 0 < Real.log 2 := Real.log_pos one_lt_two
  have hlogπ : 0 < Real.log Real.pi := Real.log_pos (by linarith [Real.pi_gt_three])
  refine ⟨Real.log Real.pi / (2 * Real.log 2) + C / 2, by positivity, fun w hw => ?_⟩
  have hL : Real.log 2 ≤ Real.log (2 + ‖w‖) :=
    Real.log_le_log two_pos (by linarith [norm_nonneg w])
  rw [Zeta23.RvM.logDeriv_Gammaℝ (by linarith)]
  have h1 : ‖-(Real.log Real.pi : ℂ) / 2‖ = Real.log Real.pi / 2 := by
    rw [norm_div, norm_neg, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hlogπ,
      Complex.norm_ofNat]
  have h2 : ‖(1 / 2 : ℂ) * Complex.digamma (w / 2)‖ ≤ C / 2 * Real.log (2 + ‖w‖) := by
    rw [norm_mul, show (1 / 2 : ℂ) = ((1 / 2 : ℝ) : ℂ) by norm_num, Complex.norm_real,
      Real.norm_eq_abs, abs_of_pos (by norm_num)]
    have hw2 : 1 / 2 ≤ (w / 2).re := by simp; linarith
    have h3 := hψ (w / 2) hw2
    have h4 : Real.log (2 + ‖w / 2‖) ≤ Real.log (2 + ‖w‖) := by
      apply Real.log_le_log (by positivity)
      rw [norm_div, Complex.norm_ofNat]
      linarith [norm_nonneg w]
    calc 1 / 2 * ‖Complex.digamma (w / 2)‖ ≤ 1 / 2 * (C * Real.log (2 + ‖w‖)) := by
          apply mul_le_mul_of_nonneg_left _ (by norm_num)
          exact h3.trans (mul_le_mul_of_nonneg_left h4 hC.le)
      _ = C / 2 * Real.log (2 + ‖w‖) := by ring
  calc ‖-(Real.log Real.pi : ℂ) / 2 + (1 / 2 : ℂ) * Complex.digamma (w / 2)‖
      ≤ ‖-(Real.log Real.pi : ℂ) / 2‖ + ‖(1 / 2 : ℂ) * Complex.digamma (w / 2)‖ := norm_add_le _ _
    _ ≤ Real.log Real.pi / 2 + C / 2 * Real.log (2 + ‖w‖) := by rw [h1]; linarith
    _ = Real.log Real.pi / (2 * Real.log 2) * Real.log 2 + C / 2 * Real.log (2 + ‖w‖) := by
        field_simp
    _ ≤ Real.log Real.pi / (2 * Real.log 2) * Real.log (2 + ‖w‖) + C / 2 * Real.log (2 + ‖w‖) := by
        have : 0 ≤ Real.log Real.pi / (2 * Real.log 2) := by positivity
        nlinarith
    _ = (Real.log Real.pi / (2 * Real.log 2) + C / 2) * Real.log (2 + ‖w‖) := by ring

/-- ‖ζ′/ζ(w)‖ ≤ Σ Λ(n) n^{−3/2} for Re w ≥ 3/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b486018e86ff3fab9a3e0bcf36e9d28c00063a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
