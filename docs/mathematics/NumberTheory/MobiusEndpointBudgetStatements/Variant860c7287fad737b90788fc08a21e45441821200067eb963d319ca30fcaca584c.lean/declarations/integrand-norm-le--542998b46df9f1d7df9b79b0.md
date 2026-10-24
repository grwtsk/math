# integrand_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b01b3ac-5d3f-5e80-c7d7-8bc87e5b908e",
  "kind": "theorem",
  "lexical_name": "integrand_norm_le",
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
  "slug": "integrand-norm-le--542998b46df9f1d7df9b79b0",
  "source": {
    "blob": "33b1c1c6fe3927212271f88c662bb605f9249eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 50,
    "path": "GRWTSK/NumberTheory/MobiusEndpointBudgetStatements/Variant860c7287fad737b90788fc08a21e45441821200067eb963d319ca30fcaca584c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:542998b46df9f1d7df9b79b059f867b97843c8ada20e1880649c0a60278aebfd",
  "verification": {
    "reference": "docs/verification/NumberTheory/MobiusEndpointBudgetStatements/Variant860c7287fad737b90788fc08a21e45441821200067eb963d319ca30fcaca584c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b01b3ac-5d3f-5e80-c7d7-8bc87e5b908e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integrand_norm_le (X : ℕ) (ε x : ℝ) (hε : 0 ≤ ε)
    (hx : x ∈ Set.Icc (1 : ℝ) X) :
    ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - (1 / 2 + (ε : ℂ))) * (Real.log x : ℂ)) / (x : ℂ)‖ ≤
      (1 + Real.log (X : ℝ)) / x := by
  have hx0 : 0 < x := lt_of_lt_of_le zero_lt_one hx.1
  have he : ‖Complex.exp ((1 / 2 - (1 / 2 + (ε : ℂ))) * (Real.log x : ℂ))‖ ≤ 1 := by
    rw [show (1 / 2 - (1 / 2 + (ε : ℂ))) * (Real.log x : ℂ) =
      ((-ε * Real.log x : ℝ) : ℂ) by push_cast; ring]
    rw [Complex.norm_exp, Complex.ofReal_re, Real.exp_le_one_iff]
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hε) (Real.log_nonneg hx.1)
  rw [norm_div, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    Complex.norm_real, Real.norm_eq_abs, abs_of_pos hx0]
  apply div_le_div_of_nonneg_right _ hx0.le
  exact (mul_le_mul_of_nonneg_left he (abs_nonneg _)).trans (by
    simpa only [mul_one] using prefix_abs_le X x hx)

/-- The actual corrected numerator near the removed pole has a genuine elementary bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/MobiusEndpointBudgetStatements/Variant860c7287fad737b90788fc08a21e45441821200067eb963d319ca30fcaca584c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/MobiusEndpointBudgetStatements/Variant860c7287fad737b90788fc08a21e45441821200067eb963d319ca30fcaca584c.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33b1c1c6fe3927212271f88c662bb605f9249eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
