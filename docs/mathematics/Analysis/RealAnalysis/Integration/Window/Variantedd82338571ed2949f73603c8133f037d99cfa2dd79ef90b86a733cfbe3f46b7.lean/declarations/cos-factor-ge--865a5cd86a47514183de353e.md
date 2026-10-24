# cos_factor_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d584e04-a26f-20ce-bfcb-8fa22095fc25",
  "kind": "theorem",
  "lexical_name": "cos_factor_ge",
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
  "slug": "cos-factor-ge--865a5cd86a47514183de353e",
  "source": {
    "blob": "a019f028b82eba44fbc64defaec246667013fd7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:865a5cd86a47514183de353ee730851e1069b21fd3588ac2d8b1581de2e568b4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d584e04-a26f-20ce-bfcb-8fa22095fc25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cos_factor_ge (h0 : 0 < lam) (h1 : lam ≤ 1) (hL : 0 < L) {u : ℝ}
    (hu : |u| ≤ L / 2) : 3 / 4 ≤ vStar lam (u / L) := by
  unfold vStar
  have h := Real.one_sub_sq_div_two_le_cos (x := Real.sqrt 2 * lam * (u / L))
  have hsq : Real.sqrt 2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  have hu2 : u ^ 2 ≤ (L / 2) ^ 2 := by
    rw [← sq_abs u]
    exact pow_le_pow_left₀ (abs_nonneg u) hu 2
  have hlam2 : lam ^ 2 ≤ 1 := pow_le_one₀ h0.le h1
  have hq0 : 0 ≤ u ^ 2 / L ^ 2 := by positivity
  have hq : u ^ 2 / L ^ 2 ≤ 1 / 4 := by
    rw [div_le_iff₀ (by positivity)]
    nlinarith
  have harg : (Real.sqrt 2 * lam * (u / L)) ^ 2 ≤ 1 / 2 := by
    rw [mul_pow, mul_pow, div_pow, hsq]
    nlinarith [mul_nonneg (sub_nonneg.mpr hlam2) hq0]
  linarith

/-- φ_D ∈ C² (product of the C³ ramp with √cos, smooth near the support; glued with 0 off it). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a019f028b82eba44fbc64defaec246667013fd7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
