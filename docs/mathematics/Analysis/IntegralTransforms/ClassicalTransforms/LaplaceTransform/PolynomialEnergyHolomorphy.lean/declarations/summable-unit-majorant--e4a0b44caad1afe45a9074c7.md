# summable_unit_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b13f477235c1eaaf98659cadaab90ca581a499fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49d4b934-5e06-b9e1-ef89-461afeba04c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8064361-09f9-384c-4623-c64cdce6d05f",
  "kind": "theorem",
  "lexical_name": "summable_unit_majorant",
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
  "slug": "summable-unit-majorant--e4a0b44caad1afe45a9074c7",
  "source": {
    "blob": "b13f477235c1eaaf98659cadaab90ca581a499fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 32,
    "path": "GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4a0b44caad1afe45a9074c7e415345154a4903f80c3e860f3563c460cb1a983",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8064361-09f9-384c-4623-c64cdce6d05f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_unit_majorant {C q σ : ℝ} (hC : 0 ≤ C) (hσ : 0 < σ) :
    Summable (fun n : ℕ => Real.exp (-σ * n) * (1 + C * (2 + n) ^ q)) := by
  let k : ℕ := ⌈q⌉₊
  have hqk : q ≤ (k : ℝ) := Nat.le_ceil q
  have hpow (n : ℕ) : (2 + (n : ℝ)) ^ q ≤ (2 : ℝ) ^ k * ((n : ℝ) + 1) ^ k := by
    calc
      (2 + (n : ℝ)) ^ q ≤ (2 + (n : ℝ)) ^ (k : ℝ) :=
        Real.rpow_le_rpow_of_exponent_le (by linarith [show (0 : ℝ) ≤ (n : ℝ) from Nat.cast_nonneg n]) hqk
      _ = (2 + (n : ℝ)) ^ k := Real.rpow_natCast _ _
      _ ≤ (2 * ((n : ℝ) + 1)) ^ k := by
        gcongr
        linarith [show (0 : ℝ) ≤ (n : ℝ) from Nat.cast_nonneg n]
      _ = _ := mul_pow _ _ _
  have he : Summable (fun n : ℕ => Real.exp (-σ * n)) := by
    simpa only [mul_comm] using
      (Real.summable_exp_nat_mul_iff (a := -σ)).mpr (by linarith)
  have hp := (summable_successor_power_exp k hσ).mul_left (C * 2 ^ k)
  apply (he.add hp).of_nonneg_of_le (fun n => by positivity)
  intro n
  calc
    Real.exp (-σ * n) * (1 + C * (2 + n) ^ q) ≤
      Real.exp (-σ * n) * (1 + C * (2 ^ k * ((n : ℝ) + 1) ^ k)) :=
        mul_le_mul_of_nonneg_left
          (add_le_add_right (mul_le_mul_of_nonneg_left (hpow n) hC) 1)
          (Real.exp_pos _).le
    _ = _ := by ring

/-- Unit-interval weighted mass is controlled solely by the cumulative L² budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b13f477235c1eaaf98659cadaab90ca581a499fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
