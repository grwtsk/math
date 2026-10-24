# mertensPointwisePowerSaving_of_squareEnergyPowerSaving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54f7e835-7ae1-685a-1ab8-a222e2f5bf8c",
  "kind": "theorem",
  "lexical_name": "mertensPointwisePowerSaving_of_squareEnergyPowerSaving",
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
  "slug": "mertenspointwisepowersaving-of-squareenergypowersaving--535256067d16061336beca97",
  "source": {
    "blob": "23e2a592381d907890b210b77bc26dd875b0d3b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 40,
    "path": "GRWTSK/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:535256067d16061336beca97b5b30dcb5743f7d5049047083560a8411b5ef3f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54f7e835-7ae1-685a-1ab8-a222e2f5bf8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensPointwisePowerSaving_of_squareEnergyPowerSaving
    (h : MertensSquareEnergyPowerSaving) :
    MertensPointwisePowerSaving := by
  obtain ⟨C, δ, hC, hδ, hE⟩ := h
  let ε : ℝ := min (δ / 2) (1 / 4)
  let β : ℝ := 1 - ε
  have hε : 0 < ε := by
    dsimp [ε]
    exact lt_min (by linarith) (by norm_num)
  have hεupper : ε ≤ 1 / 4 := by
    dsimp [ε]
    exact min_le_right _ _
  have hεδ : 2 * ε ≤ δ := by
    have hle : ε ≤ δ / 2 := by
      dsimp [ε]
      exact min_le_left _ _
    linarith
  have hβlower : 1 / 2 < β := by dsimp [β]; linarith
  have hβupper : β < 1 := by dsimp [β]; linarith
  refine ⟨Real.sqrt C, β, Real.sqrt_nonneg C, hβlower, hβupper, ?_⟩
  intro n hn
  have hn0 : (0 : ℝ) ≤ n := by positivity
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hvariation : reciprocalPrefixVariationSquare n = mertensSquareEnergy n :=
    reciprocalPrefixVariationSquare_eq_mertensSquareEnergy n
  have hMsq : pickupMertensPrefix n ^ 2 ≤ C * (n : ℝ) ^ (2 - δ) := by
    calc
      pickupMertensPrefix n ^ 2 ≤
          (n : ℝ) * reciprocalPrefixVariationSquare n :=
        pickupMertensPrefix_sq_le_mul_variation hn
      _ = (n : ℝ) * mertensSquareEnergy n := by rw [hvariation]
      _ ≤ (n : ℝ) * (C * (n : ℝ) ^ (1 - δ)) :=
        mul_le_mul_of_nonneg_left (hE n hn) hn0
      _ = C * (n : ℝ) ^ (2 - δ) := by
        have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
        calc
          (n : ℝ) * (C * (n : ℝ) ^ (1 - δ)) =
              C * ((n : ℝ) ^ (1 : ℝ) * (n : ℝ) ^ (1 - δ)) := by
            simp
            ring
          _ = C * (n : ℝ) ^ (1 + (1 - δ)) := by
            rw [Real.rpow_add hnpos]
          _ = C * (n : ℝ) ^ (2 - δ) := by ring
  have hpow : (n : ℝ) ^ (2 - δ) ≤ (n : ℝ) ^ (2 * β) := by
    apply Real.rpow_le_rpow_of_exponent_le hn1
    dsimp [β]
    linarith
  have hsq : pickupMertensPrefix n ^ 2 ≤ C * (n : ℝ) ^ (2 * β) :=
    hMsq.trans (mul_le_mul_of_nonneg_left hpow hC)
  have htarget : 0 ≤ Real.sqrt C * (n : ℝ) ^ β :=
    mul_nonneg (Real.sqrt_nonneg C) (Real.rpow_nonneg hn0 _)
  apply (sq_le_sq₀ (abs_nonneg (pickupMertensPrefix n)) htarget).mp
  rw [sq_abs, mul_pow, Real.sq_sqrt hC]
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  rw [show ((n : ℝ) ^ β) ^ 2 = (n : ℝ) ^ (2 * β) by
    calc
      _ = ((n : ℝ) ^ β) ^ (2 : ℝ) := (Real.rpow_natCast _ 2).symm
      _ = (n : ℝ) ^ (β * 2) := (Real.rpow_mul hnpos.le β 2).symm
      _ = _ := by ring]
  exact hsq

/-- A pointwise Mertens power saving pays the exact positive square energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23e2a592381d907890b210b77bc26dd875b0d3b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
