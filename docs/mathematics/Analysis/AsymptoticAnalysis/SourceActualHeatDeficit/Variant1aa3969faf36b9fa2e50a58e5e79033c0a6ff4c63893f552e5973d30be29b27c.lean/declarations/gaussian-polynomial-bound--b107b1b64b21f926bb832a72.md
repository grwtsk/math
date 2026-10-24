# gaussian_polynomial_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74f2546c-b290-d7cf-4845-327db138151d",
  "kind": "theorem",
  "lexical_name": "gaussian_polynomial_bound",
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
  "slug": "gaussian-polynomial-bound--b107b1b64b21f926bb832a72",
  "source": {
    "blob": "117ada60642589b4db151ec3f90a06529585b414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 62,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variant1aa3969faf36b9fa2e50a58e5e79033c0a6ff4c63893f552e5973d30be29b27c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b107b1b64b21f926bb832a72e57dc90198c5bdce2c708cddd6a65089cbcb3235",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variant1aa3969faf36b9fa2e50a58e5e79033c0a6ff4c63893f552e5973d30be29b27c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74f2546c-b290-d7cf-4845-327db138151d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussian_polynomial_bound {t : ℝ} (ht : 0 < t) {r : ℝ} (hr : 0 ≤ r) :
    (1 + r) ^ 6 * Real.exp (-t * r ^ 2) ≤ 32 * (1 + 6 / t ^ 3) := by
  have hpoly : (1 + r) ^ 6 ≤ 32 * (1 + r ^ 6) := by
    have h := add_pow_le (by norm_num : (0 : ℝ) ≤ 1) hr 6
    norm_num at h
    exact h
  have he : Real.exp (-t * r ^ 2) ≤ 1 :=
    Real.exp_le_one_iff.mpr (by nlinarith [sq_nonneg r])
  have hseries := Real.pow_div_factorial_le_exp (t * r ^ 2)
    (show 0 ≤ t * r ^ 2 by positivity) 3
  norm_num at hseries
  have hm := mul_le_mul_of_nonneg_right hseries
    (Real.exp_pos (-t * r ^ 2)).le
  have hexp : Real.exp (t * r ^ 2) * Real.exp (-t * r ^ 2) = 1 := by
    rw [← Real.exp_add, show t * r ^ 2 + -t * r ^ 2 = 0 by ring, Real.exp_zero]
  rw [hexp] at hm
  have hscaled : t ^ 3 * (r ^ 6 * Real.exp (-t * r ^ 2)) ≤ 6 := by
    nlinarith [hm]
  have hdegree : r ^ 6 * Real.exp (-t * r ^ 2) ≤ 6 / t ^ 3 := by
    apply (le_div_iff₀ (pow_pos ht 3)).mpr
    nlinarith [hscaled]
  calc
    _ ≤ (32 * (1 + r ^ 6)) * Real.exp (-t * r ^ 2) :=
      mul_le_mul_of_nonneg_right hpoly (Real.exp_pos _).le
    _ ≤ _ := by nlinarith [he, hdegree]

/-- A Gaussian at actual height is dominated by the already proved radial zero tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variant1aa3969faf36b9fa2e50a58e5e79033c0a6ff4c63893f552e5973d30be29b27c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variant1aa3969faf36b9fa2e50a58e5e79033c0a6ff4c63893f552e5973d30be29b27c.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117ada60642589b4db151ec3f90a06529585b414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
