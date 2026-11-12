# WPGA-v1-02: `weil_native_prime_pair_evaluation`

Authors: **grwtsk contributors**. Date: 2026-11-12 (America/Los_Angeles).
Status **SOURCE_PROOF_CANDIDATE**; novelty **UNASSESSED**. MSC2020:11M41,33B15,42A38.
File: [WeilPrimeGammaAssembly.lean](../WeilPrimeGammaAssembly.lean).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weil_native_prime_pair_evaluation`.
Source SHA-256: `bdb5fe5d3419ff774e3577a1dbfa6bc6769c9fb6944053a7708aa372fd4fba09`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Reconciled base: `grwtsk/math@05c3158365036f6eaa025d78cf2586dbbfb81f20`.
Coordination: math#1801, scope6830176457 and update6830786205.

## Literal statement

Enclosing source variables: `{N : ℕ} [NeZero N]`.

```lean
theorem weil_native_prime_pair_evaluation
    (chi : DirichletCharacter ℂ N) (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    let P := fun t : ℝ =>
      let s := (2 : ℂ) + (t : ℂ) * Complex.I
      W s * LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) s +
      W (1 - s) * LSeries (fun n : ℕ => chi⁻¹ n * (ArithmeticFunction.vonMangoldt n : ℂ)) s
    Integrable P volume ∧
      (∫ t : ℝ, P t) / (2 * (Real.pi : ℂ)) =
        (twistedPrime A chi⁻¹ (fun n => correlation f (Real.log (n : ℝ))) : ℂ)
```

## Complete argument and consumer

Prove WR(s)=W(1-s) by the literal r-reflection. Instantiate the native reflected_prime_line_eq_twistedPrime at chi inverse and the same f. The resulting integrand is the original two-leg integrand with its summands reversed. Apply inverse-inverse identity and exact I*t=t*I normalization. Both prime legs are separately integrable by integral_mul_primeSeries_eq_tsum and the actual two vertical-weight integrability results. Convert the native multiplicative 1/(2*pi) normalization to the existing quotient form.

Exact direct inputs: PrimeLineEvaluation.reflected_prime_line_eq_twistedPrime and integral_mul_primeSeries_eq_tsum; original correlation; all-line weight integrability; integral_neg_eq_self.

Consumer: WPGA-v1-03 subtracts this exact canonical prime block. No separate finite cutoff library or Fourier inversion proof is duplicated.

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

The native reflected theorem at chi, without inversion or actual test reflection, would give the wrong character phase for the original positive-correlation W. Reordering two summands is not replacing either by an absolute value. All prime powers and strict support endpoints are inherited from the native proved supplier.

Elaboration, complete dependency build, fresh kernel replay, transitive axiom
audit, elaborated-statement correspondence, independent review and numerical
certification: **NOT_RUN**. Text/scalar checks are not Lean evidence. Required
canonical execution skill returned404 at Noe3a22e1022074ecc99d5cdeaabeb5dc919711a55b;
no dependent proof execution was dispatched. Publication/readback observations
are recorded separately in #1801; this record alone does not establish a build.
