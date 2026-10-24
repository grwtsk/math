# integerPsiCapacity_to_canonicalThetaGridRecurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62924343-3b80-a582-8979-ef63fdea1373",
  "kind": "theorem",
  "lexical_name": "integerPsiCapacity_to_canonicalThetaGridRecurrence",
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
  "slug": "integerpsicapacity-to-canonicalthetagridrecurrence--a974b7a94958d19889391507",
  "source": {
    "blob": "8275fc00ee2db9f6379ee6dc61869cc633f825ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 194,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a974b7a94958d19889391507bfecfab03cdc731f566298c3a89f44f465707ced",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62924343-3b80-a582-8979-ef63fdea1373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerPsiCapacity_to_canonicalThetaGridRecurrence
    {C : ℝ}
    (hcapacity :
      PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C) :
    SquareRootForcedQuadraticRecurrence
      canonicalThetaGridEnvelope
      (C * primeCoefficientL1Budget^2)
      canonicalThetaGridRootBudget := by
  obtain ⟨hC, j₀, hstage⟩ := hcapacity
  refine ⟨j₀, ?_⟩
  intro j hj
  let X : ℕ := dyadicScale j
  have hX : 0 < X := dyadicScale_pos j
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  have hE0 : 0 ≤ canonicalThetaGridEnvelope j :=
    canonicalThetaGridEnvelope_nonnegative j
  have hamplitude :
      (pinnedPrimeWeightedAmplitude X)^2 ≤
        (primeCoefficientL1Budget *
          canonicalThetaGridEnvelope j)^2 :=
    pinnedPrimeWeightedAmplitude_sq_le_of_octaveEnvelope
      hX hE0 (by
        simpa [X] using
          canonicalThetaGridEnvelope_controls_real_octave j)
  have hrootOne : 1 ≤ Real.sqrt (X : ℝ) := by
    have hXone : (1 : ℝ) ≤ (X : ℝ) := by
      exact_mod_cast
        (Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt hX))
    simpa using Real.sqrt_le_sqrt hXone
  apply canonicalThetaGridEnvelope_le_of_grid_bound
  intro m hm
  have hmbounds :
      dyadicScale (j + 1) ≤ m ∧
        m ≤ 2 * dyadicScale (j + 1) := by
    simpa [canonicalThetaGridWindow] using
      (Finset.mem_Icc.mp hm)
  have hm4 : m ≤ 4 * X := by
    have hu := hmbounds.2
    rw [dyadicScale_succ_eq_two_mul] at hu
    dsimp [X]
    omega
  have hresponse :
      (X : ℝ) * |psiError (m : ℝ)| ≤
        C * (pinnedPrimeWeightedAmplitude X)^2 := by
    simpa [X] using
      hstage j hj m hmbounds.1 hmbounds.2
  have hscaled :
      (X : ℝ) * |psiError (m : ℝ)| ≤
        (C * primeCoefficientL1Budget^2) *
          (canonicalThetaGridEnvelope j)^2 := by
    calc
      (X : ℝ) * |psiError (m : ℝ)|
          ≤ C * (pinnedPrimeWeightedAmplitude X)^2 := hresponse
      _ ≤ C *
          (primeCoefficientL1Budget *
            canonicalThetaGridEnvelope j)^2 :=
        mul_le_mul_of_nonneg_left hamplitude hC
      _ = (C * primeCoefficientL1Budget^2) *
            (canonicalThetaGridEnvelope j)^2 := by ring
  have hpsi :
      |psiError (m : ℝ)| ≤
        (C * primeCoefficientL1Budget^2) *
          (canonicalThetaGridEnvelope j)^2 / (X : ℝ) := by
    apply (le_div_iff₀ hXr).2
    calc
      |psiError (m : ℝ)| * (X : ℝ) =
          (X : ℝ) * |psiError (m : ℝ)| := by ring
      _ ≤ (C * primeCoefficientL1Budget^2) *
          (canonicalThetaGridEnvelope j)^2 := hscaled
  have hmono : 0 ≤ Chebyshev.psi (m : ℝ) -
      Chebyshev.theta (m : ℝ) := by
    exact sub_nonneg.mpr (Chebyshev.theta_le_psi (m : ℝ))
  have htheta :
      |thetaError (m : ℝ)| ≤
        |psiError (m : ℝ)| +
          (Chebyshev.psi (m : ℝ) - Chebyshev.theta (m : ℝ)) := by
    have heq :
        thetaError (m : ℝ) =
          psiError (m : ℝ) -
            (Chebyshev.psi (m : ℝ) - Chebyshev.theta (m : ℝ)) := by
      unfold thetaError psiError
      ring
    rw [heq]
    simpa [abs_of_nonneg hmono] using
      (abs_sub (psiError (m : ℝ))
        (Chebyshev.psi (m : ℝ) - Chebyshev.theta (m : ℝ)))
  have hsqrt :
      Real.sqrt (m : ℝ) ≤ 2 * Real.sqrt (X : ℝ) :=
    canonicalThetaGrid_sqrt_next_le hX hm4
  have hhp :
      Chebyshev.psi (m : ℝ) - Chebyshev.theta (m : ℝ) ≤
        2 * canonicalThetaPsiRootConstant *
          Real.sqrt (X : ℝ) := by
    calc
      Chebyshev.psi (m : ℝ) - Chebyshev.theta (m : ℝ)
          ≤ canonicalThetaPsiRootConstant * Real.sqrt (m : ℝ) :=
        psi_sub_theta_le_canonicalThetaPsiRootConstant (m : ℝ)
      _ ≤ canonicalThetaPsiRootConstant *
            (2 * Real.sqrt (X : ℝ)) :=
        mul_le_mul_of_nonneg_left hsqrt
          canonicalThetaPsiRootConstant_nonnegative
      _ = 2 * canonicalThetaPsiRootConstant *
            Real.sqrt (X : ℝ) := by ring
  have htwo : (2 : ℝ) ≤ 2 * Real.sqrt (X : ℝ) := by
    linarith
  have htarget :
      |thetaError (m : ℝ)| + 2 ≤
        (C * primeCoefficientL1Budget^2) *
          (canonicalThetaGridEnvelope j)^2 / (X : ℝ) +
        canonicalThetaGridRootBudget * Real.sqrt (X : ℝ) := by
    calc
      |thetaError (m : ℝ)| + 2
          ≤ |psiError (m : ℝ)| +
              (Chebyshev.psi (m : ℝ) - Chebyshev.theta (m : ℝ)) + 2 := by
            linarith [htheta]
      _ ≤ (C * primeCoefficientL1Budget^2) *
            (canonicalThetaGridEnvelope j)^2 / (X : ℝ) +
          (2 * canonicalThetaPsiRootConstant *
            Real.sqrt (X : ℝ)) + 2 := by
            linarith [hpsi, hhp]
      _ ≤ (C * primeCoefficientL1Budget^2) *
            (canonicalThetaGridEnvelope j)^2 / (X : ℝ) +
          (2 * canonicalThetaPsiRootConstant *
            Real.sqrt (X : ℝ)) +
            2 * Real.sqrt (X : ℝ) := by
            linarith [htwo]
      _ = (C * primeCoefficientL1Budget^2) *
            (canonicalThetaGridEnvelope j)^2 / (X : ℝ) +
          canonicalThetaGridRootBudget * Real.sqrt (X : ℝ) := by
            unfold canonicalThetaGridRootBudget
            ring
  simpa [X] using htarget

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8275fc00ee2db9f6379ee6dc61869cc633f825ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
