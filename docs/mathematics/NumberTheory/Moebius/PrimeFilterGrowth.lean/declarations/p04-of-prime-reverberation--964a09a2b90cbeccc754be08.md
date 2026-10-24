# p04_of_prime_reverberation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb9053d4-7cd5-3734-1e34-23b5fc3464e6",
  "kind": "theorem",
  "lexical_name": "p04_of_prime_reverberation",
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
  "slug": "p04-of-prime-reverberation--964a09a2b90cbeccc754be08",
  "source": {
    "blob": "e300e722b9da7add5e68de24a3f47e5817e8412f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 118,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFilterGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:964a09a2b90cbeccc754be08e8251b7b119eca6cc16cf4053b1112221124ea91",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeFilterGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb9053d4-7cd5-3734-1e34-23b5fc3464e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem p04_of_prime_reverberation {A B q : ℝ}
    (hA : 0 ≤ A) (hB : 0 ≤ B) (hq : 0 ≤ q)
    (hR : PrimeReverberation A B q) : PickupCrossPoly := by
  apply pickupCrossPoly_iff_pickupEnergyPoly.mpr
  apply pickup_poly_of_compensated_step (C := 1 + 2*A + 2*B) (by positivity) hq
  intro P hP p hp hpP T hT
  have hc := hR P hP p hp hpP T hT
  have hneg : -noteCorrelation (primeNoteCascade P) (log p) T ≤
      (A / sqrt p) * noteEnergy (primeNoteCascade P) T + (B / sqrt p) * (1+T)^q :=
    (le_max_right _ _).trans hc
  have hspos : 0 < sqrt (p : ℝ) := sqrt_pos.mpr (by exact_mod_cast hp.pos)
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have hmono := noteEnergy_mono (primeNoteCascade_continuous hP)
    (show T - log p ≤ T by have := log_nonneg (by exact_mod_cast hp.one_le : (1:ℝ) ≤ p); linarith)
  have hcost := mul_le_mul_of_nonneg_left hneg (show 0 ≤ 2 * (sqrt p)⁻¹ by positivity)
  have hsq : sqrt (p : ℝ)^2 = p := Real.sq_sqrt hp0.le
  have hE := noteEnergy_nonneg (primeNoteCascade P) T
  have hH := Real.rpow_nonneg (by linarith : 0 ≤ 1+T) q
  have hexp := Real.add_one_le_exp ((1+2*A+2*B)/p)
  have hfinal := mul_le_mul_of_nonneg_right hexp (add_nonneg hE hH)
  rw [energy_after_prime_insertion hP hp hpP hT]
  have hcost' : -2 * (sqrt p)⁻¹ * noteCorrelation (primeNoteCascade P) (log p) T ≤
      (2*A/p) * noteEnergy (primeNoteCascade P) T + (2*B/p) * (1+T)^q := by
    have hid : 2 * (sqrt p)⁻¹ *
        (A / sqrt p * noteEnergy (primeNoteCascade P) T + B / sqrt p * (1+T)^q) =
        (2*A/p) * noteEnergy (primeNoteCascade P) T + (2*B/p) * (1+T)^q := by
      have hi : (p : ℝ)⁻¹ = (sqrt p)⁻¹ ^ 2 := by rw [inv_pow, hsq]
      simp only [div_eq_mul_inv, hi]
      ring
    rw [hid] at hcost
    nlinarith
  have hmono' := mul_le_mul_of_nonneg_left hmono (inv_nonneg.mpr hp0.le)
  have hcoefE : 1 + (p:ℝ)⁻¹ + 2*A/p ≤ 1 + (1+2*A+2*B)/p := by
    rw [div_eq_mul_inv, div_eq_mul_inv]
    nlinarith [mul_nonneg hB (inv_nonneg.mpr hp0.le)]
  have hcoefH : 1 + 2*B/p ≤ 1 + (1+2*A+2*B)/p := by
    rw [div_eq_mul_inv, div_eq_mul_inv]
    nlinarith [mul_nonneg hA (inv_nonneg.mpr hp0.le), inv_nonneg.mpr hp0.le]
  have hterms := add_le_add (mul_le_mul_of_nonneg_right hcoefE hE)
    (mul_le_mul_of_nonneg_right hcoefH hH)
  calc
    _ ≤ noteEnergy (primeNoteCascade P) T + (p:ℝ)⁻¹ * noteEnergy (primeNoteCascade P) T +
        (2*A/p) * noteEnergy (primeNoteCascade P) T + (2*B/p) * (1+T)^q + (1+T)^q := by
      linarith only [hcost', hmono']
    _ = (1+(p:ℝ)⁻¹+2*A/p) * noteEnergy (primeNoteCascade P) T +
        (1+2*B/p) * (1+T)^q := by ring
    _ ≤ (1+(1+2*A+2*B)/p) * noteEnergy (primeNoteCascade P) T +
        (1+(1+2*A+2*B)/p) * (1+T)^q := hterms
    _ = ((1+2*A+2*B)/p+1) * (noteEnergy (primeNoteCascade P) T+(1+T)^q) := by ring
    _ ≤ _ := hfinal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFilterGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFilterGrowth.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e300e722b9da7add5e68de24a3f47e5817e8412f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
