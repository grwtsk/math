# WPGA-v1-04: `exists_primitive_weil_gamma_native_limit`

Authors: **grwtsk contributors**. Date: 2026-11-12 (America/Los_Angeles).
Status **SOURCE_PROOF_CANDIDATE**; novelty **UNASSESSED**. MSC2020:11M41,33B15,42A38.
File: [WeilPrimeGammaAssembly.lean](../WeilPrimeGammaAssembly.lean).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.exists_primitive_weil_gamma_native_limit`.
Source SHA-256: `bdb5fe5d3419ff774e3577a1dbfa6bc6769c9fb6944053a7708aa372fd4fba09`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Reconciled base: `grwtsk/math@05c3158365036f6eaa025d78cf2586dbbfb81f20`.
Coordination: math#1801, scope6830176457 and update6830786205.

## Literal statement

Enclosing source variables: `{N : ℕ} [NeZero N]`.

```lean
theorem exists_primitive_weil_gamma_native_limit
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
        let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
        let G := fun t : ℝ =>
          let s := (2 : ℂ) + (t : ℂ) * Complex.I
          (W s + W (1 - s)) * (-(Real.log Real.pi : ℂ) / 2 +
            Complex.digamma ((s + (gammaParity chi : ℂ)) / 2) / 2)
        Integrable G volume ∧
        Tendsto (fun n =>
          (∑ rho ∈ heightWindow chi hprim (T n), (zeroMultiplicity chi rho : ℂ) * W rho.1) -
            (if N = 1 then W 0 + W 1 else 0)) atTop
          (𝓝 ((∫ t : ℝ, G t) / (2 * (Real.pi : ℂ)) +
            (Real.log (N : ℝ) : ℂ) * correlation f 0 -
            (twistedPrime A chi⁻¹ (fun n => correlation f (Real.log (n : ℝ))) : ℂ)))
```

## Complete argument and consumer

Choose the same source heights using exists_primitive_weil_full_line_limit. For every later f,A, invoke WPGA-v1-03 to rewrite the limit value. Do not reselect heights or alter the finite source sum. Pair the resulting convergence with the supplied actual gamma-pair integrability.

Exact direct inputs: WeilVerticalLimits.exists_primitive_weil_full_line_limit; WPGA-v1-03; original heightWindow, CriticalStripZero, zeroMultiplicity, Admissible and correlation.

Consumer: The physical return in WeilGammaPhysicalReturn and its complete companion now consumes the gamma identification and unordered source sum. The unchanged criticalStripStatement consumer still requires separate detection and all-test positivity.

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

The existential heights precede all tests/windows. S-P retains both q=1 poles. Selected-height convergence is not asserted to imply absolute summability over all zeros or any arithmetic sign.

Elaboration, complete dependency build, fresh kernel replay, transitive axiom
audit, elaborated-statement correspondence, independent review and numerical
certification: **NOT_RUN**. Text/scalar checks are not Lean evidence. Required
canonical execution skill returned404 at Noe3a22e1022074ecc99d5cdeaabeb5dc919711a55b;
no dependent proof execution was dispatched. Publication/readback observations
are recorded separately in #1801; this record alone does not establish a build.
