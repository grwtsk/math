# candidate_square_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e22d9810bd5383210899ba01a2a636e7bca0ae71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd3045b5-2c82-374a-8ea3-5e65dd6ca2b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a841f41f-ffaa-3dd5-98c7-afec9654847f",
  "kind": "theorem",
  "lexical_name": "candidate_square_majorant",
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
  "slug": "candidate-square-majorant--b22b162d0400e014cc9d0cb9",
  "source": {
    "blob": "e22d9810bd5383210899ba01a2a636e7bca0ae71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b22b162d0400e014cc9d0cb90fc03f5da15d46dd6b090582a776dac51fdc3edf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a841f41f-ffaa-3dd5-98c7-afec9654847f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem candidate_square_majorant (X : ℕ) (ε h σ K : ℝ)
    (hh : 0 < h)
    (hdec : ∀ t : ℝ, ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖ ≤
      K/(1+h*|t|)^3) (t : ℝ) :
    ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2 ≤
      K^2 * (1+(h*t)^2)⁻¹ := by
  have hp : 0 < 1+h*|t| := by positivity
  have hpow : 1+(h*t)^2 ≤ (1+h*|t|)^6 := by
    have hbase : 1 ≤ 1+h*|t| := by linarith [mul_nonneg hh.le (abs_nonneg t)]
    have h26 := pow_le_pow_right₀ hbase (by omega : 2 ≤ 6)
    have h2 : 1+(h*t)^2 ≤ (1+h*|t|)^2 := by
      have hs : (h*|t|)^2 = (h*t)^2 := by rw [mul_pow, mul_pow, sq_abs]
      nlinarith [hs, mul_nonneg hh.le (abs_nonneg t)]
    exact h2.trans h26
  calc
    _ ≤ (K/(1+h*|t|)^3)^2 := by
      exact pow_le_pow_left₀ (norm_nonneg _) (hdec t) 2
    _ = K^2/(1+h*|t|)^6 := by simp only [div_pow, ← pow_mul]
    _ ≤ K^2/(1+(h*t)^2) :=
      div_le_div_of_nonneg_left (sq_nonneg K) (by positivity) hpow
    _ = _ := by rw [div_eq_mul_inv]

/-- Every candidate line has a genuine square integral with one uniform source-only budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsModule/Variant00d34bfb2dd53b8d2eb23faefab3d7734e7ddc0225a38e630f26a19fb11edcc6.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e22d9810bd5383210899ba01a2a636e7bca0ae71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
