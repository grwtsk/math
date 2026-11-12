# WPI-v1-01: continuous_correlation_of_admissible

Local declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.continuous_correlation_of_admissible`.
Maintained source: `../WeilCorrelationInversion.lean`.
Primary MSC2020: 11M41. Secondary: 42A38, 11M06.
Source SHA-256: `1ead84bdbad11fbe64623f1dc3b2fe2c9f66a57df842ec0ac2fbdf661d7db9c7`.
Evidence status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.

## Literal source statement

```lean
theorem continuous_correlation_of_admissible (f : ℝ → ℂ) (hf : Admissible f) :
    Continuous (correlation f)
```

## Complete analytical argument and consumer

For the canonical smooth compact complex source f, put R(t)=conj(f(-t)).
The native L1 consequence of smooth compact support, invariance of Lebesgue
measure under reflection, and preservation of norm by conjugation give R in L1.
Changing t to -t in the defining correlation gives
C_f(r)=integral R(t) f(r-t) dt. This is the actual convolution with the complex
multiplication continuous bilinear map. Mathlib's
HasCompactSupport.continuous_convolution_right applies since f is continuous
and compactly supported and R is locally integrable. Thus C_f is continuous.
No continuity premise for C_f is imported from the desired inversion formula.

Consumer: correlation_weight_inversion uses this result to make the
exponentially tilted correlation continuous at EVERY real sampling location.
This is essential: a.e. inversion alone would not justify evaluation at log n.

## Source comparison and provenance

Local attribution: grwtsk contributors. Date: 2026-11-12.
This is a local consequence on the existing native arithmetic source, not a
new definition of a Weil form and not a proof of RH or primitive Dirichlet GRH.
The method is classical exponential tilting, Fourier inversion and absolute
series integration. Novelty is UNASSESSED; none is asserted.

Primary formal source: Mathlib at `d13f23b723b8a846827a245b89c10fc7d3f11612`,
`Mathlib/Analysis/Fourier/Inversion.lean`,
`MeasureTheory.Integrable.fourierInv_fourier_eq` and
`Continuous.fourierInv_fourier_eq`; `Mathlib/Analysis/Convolution.lean`,
`HasCompactSupport.continuous_convolution_right`;
`Mathlib/MeasureTheory/Integral/DominatedConvergence.lean`,
`hasSum_integral_of_summable_integral_norm`; and the actual
`DirichletCharacter.LSeriesSummable_twist_vonMangoldt`.

Individual upstream comparison: Anthropic formal-math at `16a5ce41304fcdaea4e0be7c132e1c361dc26da5`,
`zeta23/Zeta23/WeilEF/VerticalLine.lean` (`Hfn_line`, `tilted_inversion`,
`per_n_line_integral`, `line_integral_swap`) and
`zeta23/Zeta23/ThmE/VerticalLineChi.lean` (`per_n_line_integral_chi`,
`line_integral_swap_chi`, `prime_side_line_chi`). Upstream copyright/licensing:
Anthropic PBC, Apache-2.0. This development compares the same standard method
but does not import or copy the upstream modules. Their toolchain is not used.
No headline result or upstream verification status is transferred.

Direct references:
- https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Fourier/Inversion.lean
- https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/DominatedConvergence.lean
- https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/Zeta23/WeilEF/VerticalLine.lean
- https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/Zeta23/ThmE/VerticalLineChi.lean
- https://github.com/grwtsk/math/issues/1801#issuecomment-6828845884

Native baseline: `grwtsk/math@6f7d2e3b6d15f0d2c49aaba984af27c48786943c`. Reused definitions and theorems are
in `WeilSourcePrimeCorrelation`, `WeilCorrelationFourier`, `WeilContourWeight`,
`DirichletWeilIntegrand`, `WeilReflectedSourceAdapter`,
`CharacterWeilWindowBounds`, and `WeilLowSchurEnclosure`.
The contour completion, analytic continuation, zero target, pole functionals,
character phases and prime weights are unchanged. No root import/pin changes.

## Evidence and open obligations

WRITTEN_ANALYTIC_ARGUMENT: supplied above. SOURCE_PROOF_CANDIDATE.
LEAN_ELABORATION: NOT_RUN. FULL_DEPENDENCY_BUILD: NOT_RUN.
FRESH_KERNEL_REPLAY: NOT_RUN. TRANSITIVE_AXIOM_AUDIT: NOT_RUN.
INDEPENDENT_ANALYTICAL_REVIEW: NOT_RUN. NUMERICAL_CERTIFICATION: NOT_RUN.
No known failing check is promoted; no current first compiler error was located.
Static source checks and finite scalar sanity checks are not Lean parsing,
proof replay, independent review, or certification of the entire Weil form.

The canonical execution skill was inaccessible at Noe revision
`982acb9cfa87c86ef09a4ad009576be1923885a8`; dependent proof execution was not
attempted. This does not prevent ordinary authorized source publication.

The first formal obligation is checking BOTH new modules and the complete
native dependency closure at Lean `leanprover/lean4:v4.34.1` and the above
Mathlib pin. The source-local identifiers WPI-v1-01--05 identify these candidate
records only; no external claim-registry acceptance or novelty promotion occurs.
The physical gamma/conductor evaluation, unordered zero-sum identification,
criterion/test-domain transfers and universal all-test signed arithmetic
inequality remain separate obligations. Accurate prime evaluation does not
prove that it is dominated by the gamma, conductor and pole terms.
