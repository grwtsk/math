# norm_jacobiTheta₂_term_fderiv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc2d8172-da75-5c04-cbd4-7b0a3ade045d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85680df3-d7c3-b72a-206f-d371bbc49517",
  "kind": "lemma",
  "lexical_name": "norm_jacobiTheta₂_term_fderiv_le",
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
  "slug": "norm-jacobitheta-term-fderiv-le--3d6fa725a25d6d2895efb719",
  "source": {
    "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d6fa725a25d6d2895efb719c80fd0ee00cce3cd4a0ad8bbcd663dd9cbb6f08c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85680df3-d7c3-b72a-206f-d371bbc49517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_jacobiTheta₂_term_fderiv_le (n : ℤ) (z τ : ℂ) :
    ‖jacobiTheta₂_term_fderiv n z τ‖ ≤ 3 * π * |n| ^ 2 * ‖jacobiTheta₂_term n z τ‖ := by
  -- this is slow to elaborate so do it once and reuse:
  have hns (a : ℂ) (f : (ℂ × ℂ) →L[ℂ] ℂ) : ‖a • f‖ = ‖a‖ * ‖f‖ := norm_smul a f
  rw [jacobiTheta₂_term_fderiv, jacobiTheta₂_term, hns,
    mul_comm _ ‖cexp _‖, (by norm_num : (3 : ℝ) = 2 + 1), add_mul, add_mul]
  refine mul_le_mul_of_nonneg_left ((norm_add_le _ _).trans (add_le_add ?_ ?_)) (norm_nonneg _)
  · simp_rw [hns, norm_mul, ← ofReal_ofNat, ← ofReal_intCast,
      norm_real, norm_of_nonneg zero_le_two, Real.norm_of_nonneg pi_pos.le, norm_I, mul_one,
      Real.norm_eq_abs, Int.cast_abs, mul_assoc]
    refine mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left ?_ pi_pos.le) two_pos.le
    refine le_trans ?_ (?_ : |(n : ℝ)| ≤ |(n : ℝ)| ^ 2)
    · exact mul_le_of_le_one_right (abs_nonneg _) (ContinuousLinearMap.norm_fst_le ..)
    · exact_mod_cast Int.le_self_sq |n|
  · simp_rw [hns, norm_mul, one_mul, norm_I, mul_one,
      norm_real, norm_of_nonneg pi_pos.le, ← ofReal_intCast, ← ofReal_pow, norm_real,
      Real.norm_eq_abs, Int.cast_abs, abs_pow]
    apply mul_le_of_le_one_right (mul_nonneg pi_pos.le (pow_nonneg (abs_nonneg _) _))
    exact ContinuousLinearMap.norm_snd_le ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd77f9b89bf0f397ea397436abf6b5f605eeb5ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
