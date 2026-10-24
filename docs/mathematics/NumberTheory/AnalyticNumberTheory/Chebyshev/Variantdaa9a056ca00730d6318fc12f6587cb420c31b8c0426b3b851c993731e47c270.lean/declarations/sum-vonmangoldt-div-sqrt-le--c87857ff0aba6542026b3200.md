# sum_vonMangoldt_div_sqrt_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0dc3a08b-1bd8-8348-7db8-b1938d750b7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3865c06-3881-303e-4b13-1aee2f7a068d",
  "kind": "theorem",
  "lexical_name": "sum_vonMangoldt_div_sqrt_le",
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
  "slug": "sum-vonmangoldt-div-sqrt-le--c87857ff0aba6542026b3200",
  "source": {
    "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 256,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c87857ff0aba6542026b32005132893d13f4f6370baab6d16a5e29f43ea01811",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3865c06-3881-303e-4b13-1aee2f7a068d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_vonMangoldt_div_sqrt_le {x : ℝ} (hx : 1 ≤ x) :
    ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / Real.sqrt n ≤ (2 * Real.log 4 + 16) * Real.sqrt x := by
  have hx0 : (0 : ℝ) < x := lt_of_lt_of_le one_pos hx
  have h := sum_vonMangoldt_div_sqrt_le_precise hx
  have hq : x ^ ((4 : ℝ)⁻¹) * x ^ ((4 : ℝ)⁻¹) = Real.sqrt x := by
    rw [← Real.rpow_add hx0, Real.sqrt_eq_rpow]; norm_num
  have hlog : Real.log x ≤ 4 * x ^ ((4 : ℝ)⁻¹) := by
    have h4 := Real.log_le_rpow_div hx0.le (by norm_num : (0 : ℝ) < 4⁻¹)
    rw [div_eq_mul_inv, inv_inv] at h4
    linarith
  have h14 : x ^ ((4 : ℝ)⁻¹) ≤ Real.sqrt x := by
    rw [Real.sqrt_eq_rpow]
    exact Real.rpow_le_rpow_of_exponent_le hx (by norm_num)
  have hlognn : (0 : ℝ) ≤ Real.log x := Real.log_nonneg hx
  have h14nn : (0 : ℝ) ≤ x ^ ((4 : ℝ)⁻¹) := Real.rpow_nonneg hx0.le _
  have hsq : Real.log x ^ 2 ≤ 16 * Real.sqrt x := by nlinarith [hlog, hlognn, hq, h14nn]
  have h2log : 2 * Real.log x ≤ 8 * Real.sqrt x := by nlinarith [hlog, h14, h14nn]
  nlinarith [h, hsq, h2log]

/-- [eq:cheb1].2 with the threshold explicit (effective version): the witness of
`sum_vonMangoldt_div_sqrt_le_three` is `x₀ = max 1 ((48/(3 − 2 log 4))⁴)` (≤ 2.0·10⁹). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f527e07a44c44619e45eb142a7aa0d20a239b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
