# WPGA-v1-05: `exists_zeta_weil_gamma_native_limit`

Authors: **grwtsk contributors**. Date: 2026-11-12 (America/Los_Angeles).
Status **SOURCE_PROOF_CANDIDATE**; novelty **UNASSESSED**. MSC2020:11M41,33B15,42A38.
File: [WeilPrimeGammaAssembly.lean](../WeilPrimeGammaAssembly.lean).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.exists_zeta_weil_gamma_native_limit`.
Source SHA-256: `bdb5fe5d3419ff774e3577a1dbfa6bc6769c9fb6944053a7708aa372fd4fba09`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Reconciled base: `grwtsk/math@05c3158365036f6eaa025d78cf2586dbbfb81f20`.
Coordination: math#1801, scope6830176457 and update6830786205.

## Literal statement

Enclosing source variables: `{N : ℕ} [NeZero N]`.

```lean
theorem exists_zeta_weil_gamma_native_limit :
    let chi : DirichletCharacter ℂ 1 := 1
    let hprim : chi.IsPrimitive := DirichletCharacter.isPrimitive_one_level_one
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
        let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
        let G := fun t : ℝ =>
          let s := (2 : ℂ) + (t : ℂ) * Complex.I
          (W s + W (1 - s)) * (-(Real.log Real.pi : ℂ) / 2 + Complex.digamma (s / 2) / 2)
        Integrable G volume ∧
        Tendsto (fun n =>
          (∑ rho ∈ heightWindow chi hprim (T n), (zeroMultiplicity chi rho : ℂ) * W rho.1) -
            (W 0 + W 1)) atTop
          (𝓝 ((∫ t : ℝ, G t) / (2 * (Real.pi : ℂ)) -
            ((2 * ∑ n ∈ activePrimePowers A,
              primeWeight n * (correlation f (Real.log (n : ℝ))).re : ℝ) : ℂ)))
```

## Complete argument and consumer

Specialize WPGA-v1-04 to the original level-one primitive character. Simplify parity, log(1), inverse character and its unit values, then unfold the existing twistedPrime to the original finite von Mangoldt expression. Keep both pole values subtracted from the zero-window sum. The actual gamma integral and its supplied integrability remain in the conclusion.

Exact direct inputs: WPGA-v1-04; DirichletCharacter.isPrimitive_one_level_one; gammaParity; CharacterWindow.twistedPrime; LowSchur.activePrimePowers and primeWeight; level-one continued-source identities.

Consumer: The literal zeta source-return formula in WeilGammaPhysicalReturn, with both signed poles. Its complete companion supplies the analytical argument. The original modOne_criticalStripStatement endpoint is unchanged.

[Connected analytical proof and source return](README.md). No RH/GRH, simplicity,
real/even-test restriction or all-test sign is assumed. Canonical objects and
quantifiers are retained; no external arithmetic target is substituted.

## Individual provenance and comparison

Native inputs: WeilCorrelationInversion.lean, blob
`6cddeef9417b55e33e2f4f8c446bd591e5a78bc6`, correlation_weight_inversion;
WeilPrimeLineEvaluation.lean, blob `0c7338b32fdd2b103f331e3a4f6dcaad6c627c44`,
integral_mul_primeSeries_eq_tsum and reflected_prime_line_eq_twistedPrime;
WeilVerticalLimits.lean, integrable_weilRightArithmeticIntegrand and
exists_primitive_weil_full_line_limit. The argument identifies the exact direct
consumer among these. Native authorship: grwtsk contributors. Method comparison:
Anthropic Zeta23/WeilEF/VerticalLine and ThmE/VerticalLineChi at
16a5ce41304fcdaea4e0be7c132e1c361dc26da5, not imported or replayed.

This is a local consequence/assembly, not a new direct paper formalization.
No external code is copied, no provider build is inherited, and the comparison
is targeted rather than an exhaustive novelty search. Imported evidence remains
unchanged. Original unpublished material, where applicable, is recorded in README.

## Hostile check and evidence

No nonprincipal formula is applied at q=1. The two pole products are not made into absolute squares and are not assumed nonnegative. No even/pole-neutral test restriction is imposed.

Elaboration, complete dependency build, fresh kernel replay, transitive axiom
audit, elaborated-statement correspondence, independent review and numerical
certification: **NOT_RUN**. Text/scalar checks are not Lean evidence. Required
canonical execution skill returned404 at Noe3a22e1022074ecc99d5cdeaabeb5dc919711a55b;
no dependent proof execution was dispatched. Publication/readback observations
are recorded separately in #1801; this record alone does not establish a build.
