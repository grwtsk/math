# riesz_monomial_point_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f7dd0e9-af6c-d308-c5b4-eda0a488c11e",
  "kind": "theorem",
  "lexical_name": "riesz_monomial_point_norm_le",
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
  "slug": "riesz-monomial-point-norm-le--6a78d594b522230077712285",
  "source": {
    "blob": "8efa9bdd38506dec34f6a5f7fcfbbb867f6bcf33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 81,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a78d594b52223007771228531acc9e253863b1eef3d19ba860d15dd8cc2bef2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f7dd0e9-af6c-d308-c5b4-eda0a488c11e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_monomial_point_norm_le (A : ℝ) (hA : 1 ≤ A) (s : ℂ) (j : ℕ) :
    ‖(rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
      ((A : ℂ) ^ j * s ^ (j + 10))‖ ≤
        |rieszCoefficient j| * ((j + 9).factorial : ℝ) / ‖s‖ ^ (j + 10) := by
  by_cases hs : s = 0
  · simp [hs, zero_pow (by omega : j + 10 ≠ 0)]
  · have hAp : 0 < A := by linarith
    have hsp : 0 < ‖s‖ := norm_pos_iff.mpr hs
    have hAj : 1 ≤ A ^ j := one_le_pow₀ hA
    have hden : ‖s‖ ^ (j + 10) ≤ A ^ j * ‖s‖ ^ (j + 10) := by
      nlinarith [pow_nonneg (norm_nonneg s) (j + 10)]
    simp only [norm_div, norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos hAp, Complex.norm_natCast]
    exact div_le_div_of_nonneg_left (by positivity) (by positivity) hden

/-- The rational transform is bounded by the fixed coefficient majorant at every parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8efa9bdd38506dec34f6a5f7fcfbbb867f6bcf33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
