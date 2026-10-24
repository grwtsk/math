# candidate_square_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfde07c7-32a8-4711-84d7-9a745f3cebff",
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
  "slug": "candidate-square-majorant--65d761a9d70533f01b9b1605",
  "source": {
    "blob": "e71cc5f6408738e8de995da246872998fe158573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsFragment/Variantdc22e96887c1901bc2c9ab6d8a0a7ba3419487c88632f15e8c4f7ae0cee04dad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65d761a9d70533f01b9b1605acbf8392a1e0399580670f3518f8e0b429002d13",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsFragment/Variantdc22e96887c1901bc2c9ab6d8a0a7ba3419487c88632f15e8c4f7ae0cee04dad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfde07c7-32a8-4711-84d7-9a745f3cebff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–142.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsFragment/Variantdc22e96887c1901bc2c9ab6d8a0a7ba3419487c88632f15e8c4f7ae0cee04dad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsFragment/Variantdc22e96887c1901bc2c9ab6d8a0a7ba3419487c88632f15e8c4f7ae0cee04dad.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e71cc5f6408738e8de995da246872998fe158573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
