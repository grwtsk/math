# norm_LFunction_le_of_re_pos

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
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2335d80f-7237-a131-b9d2-fdcc0ad2d74d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:659d3834-932a-1cfa-f82c-844922d345a6",
  "kind": "theorem",
  "lexical_name": "norm_LFunction_le_of_re_pos",
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
  "slug": "norm-lfunction-le-of-re-pos--e1903dfb8b01602915caef39",
  "source": {
    "blob": "5ff8a852835dd7a8f90a4ecfbe2f6fd058563dff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 209,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1903dfb8b01602915caef39f3b9d7438825d879a1fb0017bb7d4cb11176b9b3",
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

Occurrence: `result:659d3834-932a-1cfa-f82c-844922d345a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_LFunction_le_of_re_pos (hχ1 : χ ≠ 1) {s : ℂ} (hs : 0 < s.re) :
    ‖χ.LFunction s‖ ≤ q * ‖s‖ / s.re := by
  rw [LFunction_eq_mul_integral hχ1 hs, norm_mul]
  have hmaj : IntegrableOn (fun t : ℝ => (q : ℝ) * t ^ (-(s.re + 1))) (Set.Ioi 1) :=
    (integrableOn_Ioi_rpow_of_lt (by linarith) zero_lt_one).const_mul _
  have hint : ‖∫ t in Set.Ioi (1 : ℝ),
      (∑ k ∈ Finset.Icc 1 ⌊t⌋₊, χ (k : ZMod q)) * (t : ℂ) ^ (-(s + 1))‖ ≤ q / s.re := by
    calc ‖∫ t in Set.Ioi (1 : ℝ), (∑ k ∈ Finset.Icc 1 ⌊t⌋₊, χ (k : ZMod q)) * (t : ℂ) ^ (-(s + 1))‖
        ≤ ∫ t in Set.Ioi (1 : ℝ), (q : ℝ) * t ^ (-(s.re + 1)) := by
          apply norm_integral_le_of_norm_le hmaj
          filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
          have ht0 : 0 < t := lt_trans zero_lt_one ht
          rw [norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos ht0]
          have hre : (-(s + 1)).re = -(s.re + 1) := by simp
          rw [hre]
          exact mul_le_mul_of_nonneg_right (norm_sum_Icc_le hχ1 _) (by positivity)
      _ = q * ∫ t in Set.Ioi (1 : ℝ), t ^ (-(s.re + 1)) := integral_const_mul _ _
      _ = q / s.re := by
          rw [integral_Ioi_rpow_of_lt (by linarith) zero_lt_one, Real.one_rpow]
          have : -(s.re + 1) + 1 = -s.re := by ring
          rw [this]
          field_simp
  calc ‖s‖ * ‖∫ t in Set.Ioi (1 : ℝ), (∑ k ∈ Finset.Icc 1 ⌊t⌋₊, χ (k : ZMod q)) * (t : ℂ) ^ (-(s + 1))‖
      ≤ ‖s‖ * (q / s.re) := by gcongr
    _ = q * ‖s‖ / s.re := by ring

/-- δ-form, linear: for Re s ≥ δ > 0, ‖L(s,χ)‖ ≤ q·(1 + δ⁻¹)·(|Im s| + 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variant9eaf95806a3d5ac076aa5c91cbd7807be7fc93de2b8fa8519d65e66befe5e57f.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ff8a852835dd7a8f90a4ecfbe2f6fd058563dff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
