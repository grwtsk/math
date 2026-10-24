# LFunction_eq_mul_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ff8a852835dd7a8f90a4ecfbe2f6fd058563dff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60cc4885-86db-53aa-a937-54ac84c9c82b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b68ba7e3-3fdc-a303-7c82-fac12b3ed72a",
  "kind": "theorem",
  "lexical_name": "LFunction_eq_mul_integral",
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
  "slug": "lfunction-eq-mul-integral--1f4cebcba4d51e62c31a2c44",
  "source": {
    "blob": "5ff8a852835dd7a8f90a4ecfbe2f6fd058563dff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 171,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f4cebcba4d51e62c31a2c44d96f707d810047a5cdd58a264d7b7971a2e3bf8b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b68ba7e3-3fdc-a303-7c82-fac12b3ed72a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LFunction_eq_mul_integral (hχ1 : χ ≠ 1) {s : ℂ} (hs : 0 < s.re) :
    χ.LFunction s = s * ∫ t in Set.Ioi (1 : ℝ),
      (∑ k ∈ Finset.Icc 1 ⌊t⌋₊, χ (k : ZMod q)) * (t : ℂ) ^ (-(s + 1)) := by
  set G : ℂ → ℂ := fun z => z * mellin (abelKernel χ) (-z) with hG
  have hopen : IsOpen {z : ℂ | 0 < z.re} := isOpen_lt continuous_const Complex.continuous_re
  have hG_an : AnalyticOnNhd ℂ G {z : ℂ | 0 < z.re} := by
    apply DifferentiableOn.analyticOnNhd _ hopen
    intro z hz
    exact (differentiableAt_id.mul (differentiableAt_mellin_abelKernel hχ1 hz)).differentiableWithinAt
  have hL_an : AnalyticOnNhd ℂ χ.LFunction {z : ℂ | 0 < z.re} :=
    (LFunction_analyticOnNhd hχ1).mono (Set.subset_univ _)
  have heq : ∀ z : ℂ, 1 < z.re → χ.LFunction z = G z := by
    intro z hz
    have hO : (fun n : ℕ => ∑ k ∈ Finset.Icc 1 n, ‖χ (k : ZMod q)‖) =O[atTop]
        fun n : ℕ => (n : ℝ) ^ (1 : ℝ) := by
      apply Asymptotics.IsBigO.of_bound 1
      filter_upwards with n
      rw [Real.rpow_one, one_mul, Real.norm_of_nonneg (Finset.sum_nonneg fun _ _ => norm_nonneg _),
        Real.norm_of_nonneg (Nat.cast_nonneg n)]
      calc ∑ k ∈ Finset.Icc 1 n, ‖χ (k : ZMod q)‖ ≤ ∑ k ∈ Finset.Icc 1 n, (1 : ℝ) :=
            Finset.sum_le_sum fun k _ => χ.norm_le_one _
        _ = n := by simp
    rw [LFunction_eq_LSeries χ hz,
      LSeries_eq_mul_integral' (fun n : ℕ => χ (n : ZMod q)) zero_le_one hz hO]
    simp only [hG, mellin_abelKernel]
  have hpre : IsPreconnected {z : ℂ | 0 < z.re} := (convex_halfSpace_re_gt 0).isPreconnected
  have h2 : (2 : ℂ) ∈ {z : ℂ | 0 < z.re} := by simp
  have hev : χ.LFunction =ᶠ[𝓝 2] G := by
    have : {z : ℂ | 1 < z.re} ∈ 𝓝 (2 : ℂ) :=
      (isOpen_lt continuous_const Complex.continuous_re).mem_nhds (by simp)
    filter_upwards [this] with z hz using heq z hz
  have hEq := hL_an.eqOn_of_preconnected_of_eventuallyEq hG_an hpre h2 hev hs
  rw [hEq]
  simp only [hG, mellin_abelKernel]

/-! ## Growth bounds -/

/-- **Half-plane bound**: ‖L(s,χ)‖ ≤ q·‖s‖/Re s for Re s > 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ff8a852835dd7a8f90a4ecfbe2f6fd058563dff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
