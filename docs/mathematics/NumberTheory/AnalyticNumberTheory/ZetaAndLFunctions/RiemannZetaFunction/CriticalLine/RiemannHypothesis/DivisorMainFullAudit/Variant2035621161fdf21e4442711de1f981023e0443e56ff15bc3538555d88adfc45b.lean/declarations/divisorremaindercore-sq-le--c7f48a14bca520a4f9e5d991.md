# divisorRemainderCore_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6b03adbcc0735f3e16aa7822db8a806846fce06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9dd65cde-c2bc-6f00-719e-d41646f6b801",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2964e76c-6829-ec93-3dc1-7620cfddf7b4",
  "kind": "theorem",
  "lexical_name": "divisorRemainderCore_sq_le",
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
  "slug": "divisorremaindercore-sq-le--c7f48a14bca520a4f9e5d991",
  "source": {
    "blob": "f6b03adbcc0735f3e16aa7822db8a806846fce06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7f48a14bca520a4f9e5d991f5f47abec070db60621882cac36f8046b08c587c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2964e76c-6829-ec93-3dc1-7620cfddf7b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem divisorRemainderCore_sq_le (ε : ℝ) (hε : 0 ≤ ε)
    (Y : ℝ) (_hY : 1 ≤ Y) (u : ℝ) :
    ‖divisorRemainderCore ε Y u‖ ^ 2 ≤
      (Icc (0 : ℝ) (Real.log Y)).indicator
        (fun u : ℝ => ε ^ 4 * Real.exp u * (Real.log Y) ^ 4) u := by
  by_cases hu : u ∈ Icc (0 : ℝ) (Real.log Y)
  · rw [divisorRemainderCore, indicator_of_mem hu, indicator_of_mem hu,
      norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _),
      Complex.norm_real, Real.norm_eq_abs]
    have he := dampedDivisorCoefficient_real_prefix_first_order ε hε (Real.exp u)
      (Real.one_le_exp_iff.mpr hu.1)
    rw [Real.log_exp] at he
    have hsq := pow_le_pow_left₀ (abs_nonneg _) he 2
    have hexp : Real.exp (-u / 2) ^ 2 * Real.exp u ^ 2 = Real.exp u := by
      rw [← mul_pow, ← Real.exp_add, pow_two, ← Real.exp_add]
      congr 1
      ring
    have hlog : u ^ 4 ≤ Real.log Y ^ 4 := pow_le_pow_left₀ hu.1 hu.2 4
    calc
      _ ≤ Real.exp (-u / 2) ^ 2 * (ε ^ 2 * Real.exp u * u ^ 2) ^ 2 := by
        rw [mul_pow]
        exact mul_le_mul_of_nonneg_left hsq (sq_nonneg _)
      _ = ε ^ 4 * Real.exp u * u ^ 4 := by
        calc
          _ = ε ^ 4 * (Real.exp (-u / 2) ^ 2 * Real.exp u ^ 2) * u ^ 4 := by ring
          _ = _ := by rw [hexp]
      _ ≤ _ := mul_le_mul_of_nonneg_left hlog (by positivity)
  · simp [divisorRemainderCore, hu]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6b03adbcc0735f3e16aa7822db8a806846fce06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
