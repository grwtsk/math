# centeredTwistedPsiStep_isBigO_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:155e5de1-fb58-750a-a091-0582231a0bee",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiStep_isBigO_rpow",
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
  "slug": "centeredtwistedpsistep-isbigo-rpow--c93d5c36a51975be29aacb1d",
  "source": {
    "blob": "b6000020806bd4e60fb81b36430dd648e001b3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 112,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c93d5c36a51975be29aacb1d7099213a10cb898ca85b1f4ba4630b9eb09c4dc6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:155e5de1-fb58-750a-a091-0582231a0bee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsiStep_isBigO_rpow
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    (hBound : CenteredTwistedPsiHalfPlusEpsilon χ)
    {r : ℝ} (hr : (1 / 2 : ℝ) < r) :
    centeredTwistedPsiStep χ =O[atTop]
      (fun t : ℝ ↦ Real.rpow t r) := by
  obtain ⟨C, hC, hDiscrete⟩ :=
    hBound (r - 1 / 2) (sub_pos.mpr hr)
  have hr0 : 0 ≤ r := by linarith
  refine IsBigO.of_bound (C + 1) ?_
  filter_upwards [eventually_ge_atTop (2 : ℝ)] with t ht
  have ht1 : (1 : ℝ) ≤ t := by linarith
  have ht0 : (0 : ℝ) ≤ t := by linarith
  have hfloor2 : 2 ≤ ⌊t⌋₊ := Nat.le_floor ht
  have hfloor_nonneg : (0 : ℝ) ≤ (⌊t⌋₊ : ℝ) := Nat.cast_nonneg _
  have hfloor_le : (⌊t⌋₊ : ℝ) ≤ t := Nat.floor_le (by linarith)
  have hfloor_lt : t < (⌊t⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one t
  have herror_abs : |(⌊t⌋₊ : ℝ) - t| ≤ 1 := by
    rw [abs_of_nonpos (sub_nonpos.mpr hfloor_le)]
    linarith
  have hpow_mono : Real.rpow (⌊t⌋₊ : ℝ) r ≤ Real.rpow t r :=
    Real.rpow_le_rpow hfloor_nonneg hfloor_le hr0
  have hone_le_pow : (1 : ℝ) ≤ Real.rpow t r := by
    simpa using Real.one_le_rpow ht1 hr0
  rw [centeredTwistedPsiStep_eq_floor_add_error χ ht1]
  calc
    ‖centeredTwistedPsi χ ⌊t⌋₊ +
        dirichletPrincipalIndicator χ * ((⌊t⌋₊ : ℝ) - t)‖
        ≤ ‖centeredTwistedPsi χ ⌊t⌋₊‖ +
            ‖dirichletPrincipalIndicator χ * ((⌊t⌋₊ : ℝ) - t)‖ :=
      norm_add_le _ _
    _ ≤ C * Real.rpow (⌊t⌋₊ : ℝ) r + 1 := by
      gcongr
      · have h := hDiscrete ⌊t⌋₊ hfloor2
        rw [show (1 / 2 : ℝ) + (r - 1 / 2) = r by ring] at h
        exact h
      · rw [norm_mul]
        have herror_norm :
            ‖(((⌊t⌋₊ : ℝ) : ℂ) - (t : ℂ))‖ ≤ 1 := by
          simpa only [← Complex.ofReal_sub, Complex.norm_real,
            Real.norm_eq_abs] using herror_abs
        exact mul_le_one₀ (norm_dirichletPrincipalIndicator_le_one χ)
          (norm_nonneg _) herror_norm
    _ ≤ C * Real.rpow t r + Real.rpow t r :=
      add_le_add (mul_le_mul_of_nonneg_left hpow_mono hC) hone_le_pow
    _ = (C + 1) * ‖Real.rpow t r‖ := by
      rw [Real.norm_eq_abs]
      have hpownonneg : 0 ≤ Real.rpow t r := Real.rpow_nonneg ht0 r
      rw [abs_of_nonneg hpownonneg]
      ring

/-- The continuously centered step function is locally integrable on the
positive real axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6000020806bd4e60fb81b36430dd648e001b3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
