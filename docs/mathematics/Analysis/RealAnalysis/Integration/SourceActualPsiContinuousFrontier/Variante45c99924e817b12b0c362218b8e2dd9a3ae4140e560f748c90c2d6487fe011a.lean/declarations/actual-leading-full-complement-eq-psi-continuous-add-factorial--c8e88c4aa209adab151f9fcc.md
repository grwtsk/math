# actual_leading_full_complement_eq_psi_continuous_add_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e427ffb0-12d7-e5d6-d2f5-7c8b9db6b9de",
  "kind": "theorem",
  "lexical_name": "actual_leading_full_complement_eq_psi_continuous_add_factorial",
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
  "slug": "actual-leading-full-complement-eq-psi-continuous-add-factorial--c8e88c4aa209adab151f9fcc",
  "source": {
    "blob": "a3ac60325b1bf54d1bd237f5ae0d8b9c3d6c40d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 119,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPsiContinuousFrontier/Variante45c99924e817b12b0c362218b8e2dd9a3ae4140e560f748c90c2d6487fe011a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8e88c4aa209adab151f9fcc97b1510be833b165a51859ce5d1d115669c082af",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualPsiContinuousFrontier/Variante45c99924e817b12b0c362218b8e2dd9a3ae4140e560f748c90c2d6487fe011a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e427ffb0-12d7-e5d6-d2f5-7c8b9db6b9de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_leading_full_complement_eq_psi_continuous_add_factorial (A : ℝ) (hA : 91 ≤ A) :
    fullPositiveKappa 1 * actualWeightedMoebiusHalfSum A +
      (literalOmegaComplementarySector A - plainInventory A) =
        actualPsiContinuousPairing A +
          (∫ x in Ioi (0 : ℝ), shortFactorialDefect (vaughanCutoff A) x *
            ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)) := by
  have hf : IntegrableOn (fun x => (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x *
      x ^ (-(3 : ℝ) / 2)) (Ioi (0 : ℝ)) := by
    change Integrable (fun x => (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x *
      x ^ (-(3 : ℝ) / 2)) (volume.restrict (Ioi (0 : ℝ)))
    simpa only [mul_assoc] using (shortFactorialMellin_integrable (vaughanCutoff A)).const_mul
      (1 / 2 : ℝ)
  have he : (∫ x in Ioi (0 : ℝ), actualPsiContinuousDensity A x) =
      (∫ x in Ioi (0 : ℝ), shortFactorialDefect (vaughanCutoff A) x *
          ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)) -
        (∫ x in Ioi (0 : ℝ), (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x *
          x ^ (-(3 : ℝ) / 2)) +
          (∫ x in Ioi (0 : ℝ), complementaryCumulative (vaughanCutoff A) x *
            deriv (plainProfile A 1) x) := by
    rw [integral_congr_ae (by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
      exact actualPsiContinuousDensity_eq_difference hx)]
    rw [integral_add (f := fun x => shortFactorialDefect (vaughanCutoff A) x *
        ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x) -
          (1 / 2 : ℝ) * shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2))
      ((actual_cancelled_factorial_density_integrable A hA).sub hf)
        (complementary_derivative_integrable_positive A (by linarith)),
      integral_sub (actual_cancelled_factorial_density_integrable A hA) hf]
  rw [literal_L_sub_plain_eq_positive_Abel A (by linarith)]
  unfold actualPsiContinuousPairing actualWeightedMoebiusHalfSum
  rw [fullKappa_signed_half_inventory_eq_factorial_integral]
  linarith

/-- A proved analytic error separates the complete leading source from this arithmetic pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualPsiContinuousFrontier/Variante45c99924e817b12b0c362218b8e2dd9a3ae4140e560f748c90c2d6487fe011a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPsiContinuousFrontier/Variante45c99924e817b12b0c362218b8e2dd9a3ae4140e560f748c90c2d6487fe011a.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3ac60325b1bf54d1bd237f5ae0d8b9c3d6c40d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
