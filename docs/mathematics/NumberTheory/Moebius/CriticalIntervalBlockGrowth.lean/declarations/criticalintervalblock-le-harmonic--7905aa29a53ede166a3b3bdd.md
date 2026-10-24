# criticalIntervalBlock_le_harmonic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bc4b3bf-94ca-51b0-bad1-adb589646a8e",
  "kind": "theorem",
  "lexical_name": "criticalIntervalBlock_le_harmonic",
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
  "slug": "criticalintervalblock-le-harmonic--7905aa29a53ede166a3b3bdd",
  "source": {
    "blob": "8ae1e6fad120bb5621032759f7518995c2d9e011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7905aa29a53ede166a3b3bddbe066303c16f311e244f7c830d5536872f11c51d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bc4b3bf-94ca-51b0-bad1-adb589646a8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalIntervalBlock_le_harmonic {n : ℕ} (hn : 1 ≤ n) :
    criticalIntervalBlock n ≤ 40 / (n : ℝ) := by
  have hx : (0 : ℝ) < n := by positivity
  have hAabs := pickupWeightedPrefix_abs_le_two_sqrt hn
  have hMabs := pickupMertensPrefix_abs_le_natCast n
  have hsqrt : Real.sqrt (n : ℝ) ^ 2 = (n : ℝ) := Real.sq_sqrt hx.le
  have hA2 : pickupWeightedPrefix n ^ 2 ≤ 4 * (n : ℝ) := by
    have h := (sq_le_sq₀ (abs_nonneg (pickupWeightedPrefix n))
      (mul_nonneg (by norm_num) (Real.sqrt_nonneg n))).2 hAabs
    rw [sq_abs, mul_pow, hsqrt] at h
    norm_num at h ⊢
    exact h
  have hM2 : pickupMertensPrefix n ^ 2 ≤ (n : ℝ) ^ 2 := by
    have h := (sq_le_sq₀ (abs_nonneg (pickupMertensPrefix n)) hx.le).2 hMabs
    simpa only [sq_abs] using h
  have hinvA : (n : ℝ) * (n : ℝ) ^ (-(2 : ℝ)) = 1 / (n : ℝ) := by
    rw [Real.rpow_neg hx.le, Real.rpow_two]
    field_simp [hx.ne']
  have hinvM : (n : ℝ) ^ 2 * (n : ℝ) ^ (-(3 : ℝ)) = 1 / (n : ℝ) := by
    rw [Real.rpow_neg hx.le]
    field_simp [hx.ne']
    exact (Real.rpow_natCast (n : ℝ) 3).symm
  have hAterm : pickupWeightedPrefix n ^ 2 * (n : ℝ) ^ (-(2 : ℝ)) ≤
      4 / (n : ℝ) := by
    calc
      _ ≤ (4 * (n : ℝ)) * (n : ℝ) ^ (-(2 : ℝ)) :=
        mul_le_mul_of_nonneg_right hA2 (Real.rpow_nonneg hx.le _)
      _ = 4 / (n : ℝ) := by rw [mul_assoc, hinvA]; ring
  have hMterm : pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(3 : ℝ)) ≤
      1 / (n : ℝ) := by
    calc
      _ ≤ (n : ℝ) ^ 2 * (n : ℝ) ^ (-(3 : ℝ)) :=
        mul_le_mul_of_nonneg_right hM2 (Real.rpow_nonneg hx.le _)
      _ = 1 / (n : ℝ) := hinvM
  calc
    criticalIntervalBlock n ≤ criticalIntervalMajorant n :=
      criticalIntervalBlock_le_majorant n
    _ ≤ criticalPrefixPowerMajorant n :=
      criticalIntervalMajorant_le_prefixPowerMajorant hn
    _ ≤ criticalPrefixSquareMajorant n :=
      criticalPrefixPowerMajorant_le_squareMajorant hn
    _ ≤ 40 / (n : ℝ) := by
      unfold criticalPrefixSquareMajorant
      calc
        8 * (pickupWeightedPrefix n ^ 2 * (n : ℝ) ^ (-(2 : ℝ)) +
            pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(3 : ℝ))) ≤
            8 * (4 / (n : ℝ) + 1 / (n : ℝ)) := by
          gcongr
        _ = 40 / (n : ℝ) := by ring

/-- The elementary block estimate sums to at most forty times the harmonic
number.  This is finite-horizon control, not a horizon-uniform bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae1e6fad120bb5621032759f7518995c2d9e011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
