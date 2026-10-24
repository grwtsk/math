# rpow_inv_le_telescope

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
      "line": 837,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c715cc50-ca64-22c0-12c7-f7332e0db9d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66bb7df6-b739-475c-4912-6dbd689359f9",
  "kind": "lemma",
  "lexical_name": "rpow_inv_le_telescope",
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
  "slug": "rpow-inv-le-telescope--dc685e3ea7b16926f69e3153",
  "source": {
    "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 884,
    "line": 837,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc685e3ea7b16926f69e31539b858b0c3b90e1136bce03cbfc7cb06f2e56681a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66bb7df6-b739-475c-4912-6dbd689359f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 837–884.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rpow_inv_le_telescope {m : ℕ} (hm : 2 ≤ m) :
    ((m : ℝ) ^ ((7 : ℝ) / 4))⁻¹ ≤ 2 * (1 / Real.sqrt (m - 1) - 1 / Real.sqrt m) := by
  have hm1 : (1:ℝ) ≤ (m : ℝ) := by exact_mod_cast Nat.one_le_of_lt hm
  have hm0 : (0:ℝ) < m := by linarith
  have hm2 : (2:ℝ) ≤ (m : ℝ) := by exact_mod_cast hm
  have hm10 : (0:ℝ) < (m : ℝ) - 1 := by linarith
  have hs : 0 < Real.sqrt ((m:ℝ) - 1) := Real.sqrt_pos.mpr hm10
  have hsm : 0 < Real.sqrt m := Real.sqrt_pos.mpr hm0
  have hmono : Real.sqrt ((m:ℝ) - 1) ≤ Real.sqrt m := Real.sqrt_le_sqrt (by linarith)
  have h1 : Real.sqrt m * Real.sqrt m = (m:ℝ) := Real.mul_self_sqrt hm0.le
  have h2 : Real.sqrt ((m:ℝ) - 1) * Real.sqrt ((m:ℝ) - 1) = (m:ℝ) - 1 := Real.mul_self_sqrt hm10.le
  have hprod : (Real.sqrt m - Real.sqrt ((m:ℝ) - 1)) * (Real.sqrt m + Real.sqrt ((m:ℝ) - 1)) = 1 := by
    nlinarith [h1, h2]
  have hdiff : 1 / Real.sqrt ((m:ℝ) - 1) - 1 / Real.sqrt m
      = 1 / (Real.sqrt ((m:ℝ) - 1) * Real.sqrt m * (Real.sqrt m + Real.sqrt ((m:ℝ) - 1))) := by
    rw [div_sub_div _ _ hs.ne' hsm.ne', one_mul, mul_one]
    rw [show Real.sqrt m - Real.sqrt ((m:ℝ) - 1)
        = 1 / (Real.sqrt m + Real.sqrt ((m:ℝ) - 1)) from by
      rw [eq_div_iff (by positivity)]
      exact hprod]
    rw [div_div]
    ring_nf
  have hsq : Real.sqrt m = (m:ℝ) ^ ((1:ℝ)/2) := Real.sqrt_eq_rpow m
  have h32 : (m:ℝ) ^ ((3:ℝ)/2) = (m:ℝ) ^ ((1:ℝ)/2) * (m:ℝ) ^ ((1:ℝ)/2) * (m:ℝ) ^ ((1:ℝ)/2) := by
    rw [← Real.rpow_add hm0, ← Real.rpow_add hm0]
    norm_num
  have hden : Real.sqrt ((m:ℝ) - 1) * Real.sqrt m * (Real.sqrt m + Real.sqrt ((m:ℝ) - 1))
      ≤ 2 * (m:ℝ) ^ ((3:ℝ)/2) := by
    calc Real.sqrt ((m:ℝ) - 1) * Real.sqrt m * (Real.sqrt m + Real.sqrt ((m:ℝ) - 1))
        ≤ Real.sqrt m * Real.sqrt m * (2 * Real.sqrt m) := by
          apply mul_le_mul (mul_le_mul_of_nonneg_right hmono hsm.le) (by linarith)
            (by positivity) (by positivity)
      _ = 2 * ((m:ℝ) ^ ((1:ℝ)/2) * (m:ℝ) ^ ((1:ℝ)/2) * (m:ℝ) ^ ((1:ℝ)/2)) := by
          rw [hsq]
          ring
      _ = 2 * (m:ℝ) ^ ((3:ℝ)/2) := by rw [h32]
  have h74 : (m:ℝ) ^ ((3:ℝ)/2) ≤ (m:ℝ) ^ ((7:ℝ)/4) :=
    Real.rpow_le_rpow_of_exponent_le hm1 (by norm_num)
  rw [hdiff]
  calc ((m:ℝ) ^ ((7:ℝ)/4))⁻¹ = 1 / ((m:ℝ) ^ ((7:ℝ)/4)) := (one_div _).symm
    _ ≤ 1 / ((m:ℝ) ^ ((3:ℝ)/2)) := one_div_le_one_div_of_le (by positivity) h74
    _ = 2 * (1 / (2 * (m:ℝ) ^ ((3:ℝ)/2))) := by
        field_simp
    _ ≤ 2 * (1 / (Real.sqrt ((m:ℝ) - 1) * Real.sqrt m * (Real.sqrt m + Real.sqrt ((m:ℝ) - 1)))) := by
        apply mul_le_mul_of_nonneg_left _ (by norm_num)
        exact one_div_le_one_div_of_le (by positivity) hden

/-- partial sums with remainder: Σ_{m ≤ N} (m^{7/4})⁻¹ ≤ 3 − 2/√N for N ≥ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean#L837).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f527e07a44c44619e45eb142a7aa0d20a239b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
