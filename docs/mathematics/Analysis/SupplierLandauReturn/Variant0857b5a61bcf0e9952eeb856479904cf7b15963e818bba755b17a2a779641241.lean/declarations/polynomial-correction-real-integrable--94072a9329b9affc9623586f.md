# polynomial_correction_real_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fca3fa39-64e9-7567-e6b9-c76bd36eff3b",
  "kind": "theorem",
  "lexical_name": "polynomial_correction_real_integrable",
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
  "slug": "polynomial-correction-real-integrable--94072a9329b9affc9623586f",
  "source": {
    "blob": "1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 339,
    "path": "GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94072a9329b9affc9623586f03fe39931abdd9bb7cacc43404513adb359af1ad",
  "verification": {
    "reference": "docs/verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fca3fa39-64e9-7567-e6b9-c76bd36eff3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_correction_real_integrable
    (C : ℝ) (hC : 0 ≤ C) (m : ℕ) (s : ℝ) (hs : 0 < s) :
    Integrable (fun t : ℝ ↦ C * (1 + t) ^ m * Real.exp (-s * t)) pickupTimeMeasure := by
  have hzero := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (0 : ℝ)) (p := (1 : ℝ)) (b := s) (by norm_num) zero_lt_one hs
  have hpow := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (m : ℝ)) (p := (1 : ℝ)) (b := s)
    (by have := Nat.cast_nonneg (α := ℝ) m; linarith) zero_lt_one hs
  simp only [Real.rpow_zero, Real.rpow_one, one_mul] at hzero
  simp only [Real.rpow_natCast, Real.rpow_one] at hpow
  have hmajor := (hzero.add hpow).const_mul (C * 2 ^ (m - 1))
  apply hmajor.mono' (by fun_prop)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  have ht0 : 0 ≤ t := ht.le
  rw [Real.norm_of_nonneg (by positivity)]
  have hpoly := add_pow_le (show (0 : ℝ) ≤ 1 by norm_num) ht.le m
  simp only [one_pow] at hpoly
  calc
    C * (1 + t) ^ m * Real.exp (-s * t) ≤
        C * (2 ^ (m - 1) * (1 + t ^ m)) * Real.exp (-s * t) :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hpoly hC) (Real.exp_pos _).le
    _ = (C * 2 ^ (m - 1)) * (Real.exp (-s * t) + t ^ m * Real.exp (-s * t)) := by ring

/-- The complex polynomial correction is initially integrable and, in fact,
integrable on the full positive half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
