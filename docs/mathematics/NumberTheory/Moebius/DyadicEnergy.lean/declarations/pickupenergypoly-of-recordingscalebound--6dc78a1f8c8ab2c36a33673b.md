# pickupEnergyPoly_of_recordingScaleBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:088af8c4-8dff-ccaa-c28c-8f9e9b13e838",
  "kind": "theorem",
  "lexical_name": "pickupEnergyPoly_of_recordingScaleBound",
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
  "slug": "pickupenergypoly-of-recordingscalebound--6dc78a1f8c8ab2c36a33673b",
  "source": {
    "blob": "9bd9ace9794e4369974f39c242ad2ab9b04d368f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 123,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dc78a1f8c8ab2c36a33673beec364011ea9566593e01f21a8dd3c712eabe3ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:088af8c4-8dff-ccaa-c28c-8f9e9b13e838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupEnergyPoly_of_recordingScaleBound {C : ℝ} {r : ℕ}
    (hC : 0 ≤ C) (h : RecordingScaleBound C r) : PickupEnergyPoly := by
  let D := pickupEnergy 1+C
  have hE1 : 0 ≤ pickupEnergy 1 := pickupEnergy_nonneg (by norm_num)
  have hD : 0 ≤ D := add_nonneg hE1 hC
  refine ⟨D*(2:ℝ)^(r+1), (r+1:ℕ), by positivity, by positivity, ?_⟩
  intro T hT
  rw [Real.rpow_natCast]
  by_cases hsmall : T ≤ 1
  · have hm := pickupEnergy_mono hT hsmall
    have hb : (1:ℝ) ≤ (1+T)^(r+1) := one_le_pow₀ (by linarith)
    have htwo : (1:ℝ) ≤ 2^(r+1) := one_le_pow₀ (by norm_num)
    have hc : pickupEnergy 1 ≤ D := by dsimp [D]; linarith
    calc
      _ ≤ D := hm.trans hc
      _ ≤ D*(2:ℝ)^(r+1) := by nlinarith
      _ ≤ D*(2:ℝ)^(r+1)*(1+T)^(r+1) := by nlinarith [mul_nonneg hD (by positivity : 0 ≤ (2:ℝ)^(r+1))]
  · have hT1 : 1 < T := lt_of_not_ge hsmall
    have hl2 : 0 < log (2:ℝ) := log_pos (by norm_num)
    have hratio : 0 ≤ log T/log 2 := div_nonneg (log_nonneg hT1.le) hl2.le
    let n := ⌈log T/log 2⌉₊
    have hnlow : log T ≤ (n:ℝ)*log 2 := by
      exact (div_le_iff₀ hl2).mp (Nat.le_ceil (log T/log 2))
    have hnup : (n:ℝ)*log 2 ≤ log T+log 2 := by
      have hc := (Nat.ceil_lt_add_one hratio).le
      have hm := mul_le_mul_of_nonneg_right hc hl2.le
      rw [add_mul, div_mul_cancel₀ _ hl2.ne', one_mul] at hm
      exact hm
    have hp : (2:ℝ)^n = exp ((n:ℝ)*log 2) := by
      rw [← Real.rpow_natCast, Real.rpow_def_of_pos (by norm_num)]
      congr 1
      ring
    have hlow : T ≤ (2:ℝ)^n := by
      rw [hp, ← exp_log (by linarith : 0 < T)]
      exact exp_le_exp.mpr hnlow
    have hupp : (2:ℝ)^n ≤ 2*T := by
      rw [hp]
      calc
        _ ≤ exp (log T+log 2) := exp_le_exp.mpr hnup
        _ = _ := by rw [exp_add, exp_log (by linarith : 0 < T), exp_log (by norm_num)]; ring
    have hd := recordingScale_dyadic h n
    have hnC : 0 ≤ C*((2:ℝ)^n)^r := by positivity
    have hm := pickupEnergy_mono hT hlow
    have hpw := pow_le_pow_left₀ (by positivity : 0 ≤ (2:ℝ)^n)
      (hupp.trans (by linarith : 2*T ≤ 2*(1+T))) (r+1)
    calc
      _ ≤ D*((2:ℝ)^n)^(r+1) := by dsimp [D]; linarith
      _ ≤ D*(2*(1+T))^(r+1) := mul_le_mul_of_nonneg_left hpw hD
      _ = _ := by rw [mul_pow]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicEnergy.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd9ace9794e4369974f39c242ad2ab9b04d368f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
