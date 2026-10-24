# boundary_riesz_transform_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f49e986-97cd-3e90-dfa0-138d90c98870",
  "kind": "theorem",
  "lexical_name": "boundary_riesz_transform_norm_le",
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
  "slug": "boundary-riesz-transform-norm-le--6e081cd6bb48d86be5a21818",
  "source": {
    "blob": "ff9a7415a01d712979568726c105559022eb44ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e081cd6bb48d86be5a21818e1e44e202590e6ecc639c2f60ebaed798fb66bcd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f49e986-97cd-3e90-dfa0-138d90c98870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_riesz_transform_norm_le (A : ℝ) (hA : 1 ≤ A) (s : ℂ)
    (hs : 1 ≤ ‖s‖) :
    ‖boundaryRieszTransform A s‖ ≤ rieszDecayConstant / ‖s‖ ^ 6 := by
  have hsp : 0 < ‖s‖ := by linarith
  have hs0 : ‖s‖ ≠ 0 := ne_of_gt hsp
  have hZ := source_normalization_lower_bound A
  have hZp : 0 < sourceNormalization A := by linarith
  have hp : ‖s ^ 2 - (1 / 4 : ℂ)‖ ≤ 2 * ‖s‖ ^ 2 := by
    have ht := norm_sub_le (s ^ 2) (1 / 4 : ℂ)
    norm_num only [norm_pow, norm_div, norm_one, Complex.norm_ofNat] at ht
    have hs2 : 1 ≤ ‖s‖ ^ 2 := one_le_pow₀ hs
    nlinarith
  have hp2 : ‖(s ^ 2 - (1 / 4 : ℂ)) ^ 2‖ ≤ 4 * ‖s‖ ^ 4 := by
    rw [norm_pow]
    have h := pow_le_pow_left₀ (norm_nonneg (s ^ 2 - (1 / 4 : ℂ))) hp 2
    norm_num only [mul_pow, ← pow_mul] at h
    exact h
  have hf : ‖(s ^ 2 - (1 / 4 : ℂ)) ^ 2 / (sourceNormalization A : ℂ)‖ ≤
      4 * ‖s‖ ^ 4 / (4096 / 109395 : ℝ) := by
    rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hZp]
    exact (div_le_div_of_nonneg_right hp2 (le_of_lt hZp)).trans
      (div_le_div_of_nonneg_left (by positivity) (by norm_num) hZ)
  unfold boundaryRieszTransform
  rw [norm_mul]
  calc
    _ ≤ (4 * ‖s‖ ^ 4 / (4096 / 109395 : ℝ)) *
        (rieszCoefficientMass / ‖s‖ ^ 10) :=
      mul_le_mul hf (riesz_factorial_sum_norm_le A hA s hs)
        (norm_nonneg _) (by positivity)
    _ = rieszDecayConstant / ‖s‖ ^ 6 := by
      unfold rieszDecayConstant
      field_simp

/-- Candidate trivial-zero parameters start at the actual first negative even integer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RieszResidueAudit/Variant567941f51a0f493ae88a6c0a72718cb383a2922e556c4a9bcf3dec1630b18b15.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9a7415a01d712979568726c105559022eb44ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
