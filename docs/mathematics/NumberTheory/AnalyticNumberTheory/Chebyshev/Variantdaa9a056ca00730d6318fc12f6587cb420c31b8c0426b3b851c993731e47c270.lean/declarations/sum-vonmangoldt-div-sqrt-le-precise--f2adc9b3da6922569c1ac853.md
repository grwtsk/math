# sum_vonMangoldt_div_sqrt_le_precise

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
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e7b0fcb-31b0-c474-f4ab-d5a05debc729",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7fa7af9-d07e-26ed-381b-4dd6f6b95c00",
  "kind": "theorem",
  "lexical_name": "sum_vonMangoldt_div_sqrt_le_precise",
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
  "slug": "sum-vonmangoldt-div-sqrt-le-precise--f2adc9b3da6922569c1ac853",
  "source": {
    "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 232,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2adc9b3da6922569c1ac8539a13b2d103fc4c2b71b8962a74e9b4540ed0cd06",
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

Occurrence: `result:b7fa7af9-d07e-26ed-381b-4dd6f6b95c00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_vonMangoldt_div_sqrt_le_precise {x : ℝ} (hx : 1 ≤ x) :
    ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / Real.sqrt n
      ≤ 2 * Real.log 4 * Real.sqrt x + 2 * Real.log x + Real.log x ^ 2 / 2 := by
  have hx0 : (0 : ℝ) < x := lt_of_lt_of_le one_pos hx
  rw [abel_sqrt hx]
  have h1 : x ^ (-(2⁻¹ : ℝ)) * Chebyshev.psi x
      ≤ Real.log 4 * Real.sqrt x + 2 * Real.log x := by
    have hψ := Chebyshev.psi_le hx
    have hnn : (0 : ℝ) ≤ x ^ (-(2⁻¹ : ℝ)) := Real.rpow_nonneg hx0.le _
    have e1 : x ^ (-(2⁻¹ : ℝ)) * x = Real.sqrt x := by
      rw [← Real.rpow_add_one hx0.ne', Real.sqrt_eq_rpow]; norm_num
    have e2 : x ^ (-(2⁻¹ : ℝ)) * Real.sqrt x = 1 := by
      rw [Real.sqrt_eq_rpow, ← Real.rpow_add hx0]; norm_num
    calc x ^ (-(2⁻¹ : ℝ)) * Chebyshev.psi x
        ≤ x ^ (-(2⁻¹ : ℝ)) * (Real.log 4 * x + 2 * Real.sqrt x * Real.log x) :=
          mul_le_mul_of_nonneg_left hψ hnn
      _ = Real.log 4 * (x ^ (-(2⁻¹ : ℝ)) * x)
          + 2 * (x ^ (-(2⁻¹ : ℝ)) * Real.sqrt x) * Real.log x := by ring
      _ = Real.log 4 * Real.sqrt x + 2 * Real.log x := by rw [e1, e2]; ring
  have h2 := integral_tail_bound hx
  have hlog4 : (0 : ℝ) ≤ Real.log 4 := Real.log_nonneg (by norm_num)
  nlinarith [h1, h2]

/-- [eq:cheb1].2, all-x form: Σ_{n≤x} Λ(n)/√n ≤ (2 log 4 + 16)·√x for x ≥ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f527e07a44c44619e45eb142a7aa0d20a239b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
