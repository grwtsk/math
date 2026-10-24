# one_cell_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49a523e3-8173-bdca-c47d-12d6a1e8fe70",
  "kind": "theorem",
  "lexical_name": "one_cell_power",
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
  "slug": "one-cell-power--bf53298f6e297b5384bd3a47",
  "source": {
    "blob": "44b23e69254182668c698ad7503be216735df592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf53298f6e297b5384bd3a47513bcdeedaea978b2da5d57df6d6a857932b80ac",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49a523e3-8173-bdca-c47d-12d6a1e8fe70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_cell_power (q : ℝ) (hq : 0 < q) (z : ℂ) (hz : z + 1 ≠ 0) :
    logPower q z =
      (logPower (q + 1) (z + 1) - logPower q (z + 1)) / (z + 1) +
      (logPower q z - logPower (q + 1) z) / 2 +
      z * (logPower (q + 1) (z - 1) - logPower q (z - 1)) / 12 +
      z * (z - 1) * (z - 2) * cellRemainder q z := by
  let f := fun u : ℝ => logPower (q + u) z
  let f₁ := fun u : ℝ => z * logPower (q + u) (z - 1)
  let f₂ := fun u : ℝ => z * (z - 1) * logPower (q + u) (z - 2)
  let f₃ := fun u : ℝ => z * (z - 1) * (z - 2) * logPower (q + u) (z - 3)
  have d₀ (u : ℝ) (hu : u ∈ Icc (0 : ℝ) 1) : HasDerivAt f (f₁ u) u :=
    shifted_power_deriv q u z (by linarith [hu.1])
  have d₁ (u : ℝ) (hu : u ∈ Icc (0 : ℝ) 1) : HasDerivAt f₁ (f₂ u) u := by
    have hd := (shifted_power_deriv q u (z - 1) (by linarith [hu.1])).const_mul z
    apply hd.congr_deriv
    dsimp [f₂]
    rw [show z - 1 - 1 = z - 2 by ring]
    ring
  have d₂ (u : ℝ) (hu : u ∈ Icc (0 : ℝ) 1) : HasDerivAt f₂ (f₃ u) u := by
    have hd := (shifted_power_deriv q u (z - 2) (by linarith [hu.1])).const_mul (z * (z - 1))
    apply hd.congr_deriv
    dsimp [f₃]
    rw [show z - 2 - 1 = z - 3 by ring]
    ring
  have c₃ : ContinuousOn f₃ (Icc (0 : ℝ) 1) :=
    continuousOn_const.mul (continuousOn_shifted_power q hq (z - 3))
  have hc := one_cell f f₁ f₂ f₃ d₀ d₁ d₂ c₃
  have hR : (∫ u in (0 : ℝ)..1, (third u : ℂ) * f₃ u) =
      z * (z - 1) * (z - 2) * cellRemainder q z := by
    unfold cellRemainder
    rw [← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro u _
    dsimp [f₃]
    ring
  rw [hR] at hc
  dsimp only [f, f₁] at hc
  rw [integral_shifted_power q hq z hz] at hc
  simpa only [add_zero, mul_sub, mul_div_assoc] using hc

/-- Every terminal power and the complete finite cubic remainder is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicPowerSummation.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b23e69254182668c698ad7503be216735df592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
