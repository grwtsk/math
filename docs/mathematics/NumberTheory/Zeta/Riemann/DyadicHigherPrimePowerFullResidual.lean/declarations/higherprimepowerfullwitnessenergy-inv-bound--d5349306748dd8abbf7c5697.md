# higherPrimePowerFullWitnessEnergy_inv_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00612f67-8d24-3a87-24a7-32e79d843e7f",
  "kind": "theorem",
  "lexical_name": "higherPrimePowerFullWitnessEnergy_inv_bound",
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
  "slug": "higherprimepowerfullwitnessenergy-inv-bound--d5349306748dd8abbf7c5697",
  "source": {
    "blob": "66734eefb2de5f9b09ef807c1ad06194d6bd7b15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5349306748dd8abbf7c5697190a3f437e113019fd11a5c44304c72dd4d65fe6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00612f67-8d24-3a87-24a7-32e79d843e7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPrimePowerFullWitnessEnergy_inv_bound :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ X : ℕ, 0 < X →
      higherPrimePowerFullWitnessEnergy X ≤
        K / (X : ℝ) := by
  obtain ⟨C, hC⟩ := higherPrimePowerWindowMass_sqrt_bound
  let A : ℝ := |C|
  let F : ℝ := 2 + higherPrimePowerFrequencyConstant
  let K : ℝ := 2 * F * A^2
  have hA : 0 ≤ A := abs_nonneg _
  have hF : 0 ≤ F := by
    unfold F
    nlinarith [higherPrimePowerFrequencyConstant_nonnegative]
  have hK : 0 ≤ K := by
    unfold K
    positivity
  refine ⟨K, hK, ?_⟩
  intro X hX
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hb :
      0 ≤ Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ) := by
    positivity
  have hmass0 := higherPrimePowerWindowMass_nonnegative X
  have hmass := hC X hX
  have hmass' :
      higherPrimePowerWindowMass X ≤
        C * (Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ)) := by
    simpa [mul_div_assoc] using hmass
  have hCA : C ≤ A := by
    unfold A
    exact le_abs_self C
  have hmassA :
      higherPrimePowerWindowMass X ≤
        A * (Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ)) := by
    exact hmass'.trans
      (mul_le_mul_of_nonneg_right hCA hb)
  have hmassSq :
      (higherPrimePowerWindowMass X)^2 ≤
        A^2 *
          (Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ))^2 := by
    have hrhs :
        0 ≤ A *
          (Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ)) := by
      positivity
    have hs :=
      (sq_le_sq₀ hmass0 hrhs).2 hmassA
    simpa [mul_pow] using hs
  have henergy := higherPrimePowerFullWitnessEnergy_le_mass_sq hX
  calc
    higherPrimePowerFullWitnessEnergy X
        ≤ F * (higherPrimePowerWindowMass X)^2 := by
      simpa [F] using henergy
    _ ≤ F * (A^2 *
          (Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ))^2) :=
      mul_le_mul_of_nonneg_left hmassSq hF
    _ = K / (X : ℝ) := by
      rw [sqrt_two_mul_nat_div_sq hX]
      unfold K
      ring

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFullResidual.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66734eefb2de5f9b09ef807c1ad06194d6bd7b15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
