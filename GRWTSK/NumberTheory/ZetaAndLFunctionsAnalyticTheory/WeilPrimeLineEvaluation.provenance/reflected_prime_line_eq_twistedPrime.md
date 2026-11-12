# WPI-v1-05: reflected_prime_line_eq_twistedPrime

Local declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.PrimeLineEvaluation.reflected_prime_line_eq_twistedPrime`.
Maintained source: `../WeilPrimeLineEvaluation.lean`.
Primary MSC2020: 11M41. Secondary: 42A38, 11M06.
Source SHA-256: `820e5e64dd9d976b15e09d4ad8af9abdd0629901a62833d56a04ebfa2d68e0e7`.
Evidence status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.

## Literal source statement

```lean
theorem reflected_prime_line_eq_twistedPrime (chi : DirichletCharacter ℂ q)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f (-r) *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, let s := (2 : ℂ) + Complex.I * (t : ℂ)
        W s * LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) s +
        W (1 - s) * LSeries
          (fun n : ℕ => chi⁻¹ n * (ArithmeticFunction.vonMangoldt n : ℂ)) s) =
      (twistedPrime A chi (fun n => correlation f (Real.log (n : ℝ))) : ℂ)
```

## Complete analytical argument and consumer

Write V(s)=integral C_f(r)exp((s-1/2)r)dr and
W(s)=integral C_f(-r)exp((s-1/2)r)dr. Reflection of Lebesgue measure gives
W(s)=V(1-s). At s=2+it, the two weights are therefore
W(s)=V(-1-it) and W(1-s)=V(2+it).
Both are L1 functions of t by native vertical integrability and t->-t.

For the first weight, substitute t->-t in its Fourier pairing. Inversion
of V on sigma=-1 at location -y gives
(1/(2*pi))*integral W(2+it)exp(-ity)dt=C_f(-y)exp(3*y/2).
For the second, inversion of V on sigma=2 at y gives
(1/(2*pi))*integral W(1-(2+it))exp(-ity)dt=C_f(y)exp(3*y/2).
Multiplying by each genuine convergent Dirichlet series and performing the
proved sum/integral exchange evaluates the paired integral as
sum_n primeWeight(n)[chi(n)C_f(-log n)+chi^{-1}(n)C_f(log n)].

The inverse-character value equals conj(chi(n)) also at nonunits. Translation
and conjugation of the actual correlation give C_f(-r)=conj(C_f(r)).
Hence the bracket is exactly 2 Re(conj(chi(n))*C_f(log n)).
No term is replaced by an absolute-value envelope in this final value.

It remains to justify the literal finite inventory. At n=0,1 the weight is
zero. For n>=2 outside activePrimePowers(A), n>=exp(2*A), so log n>=2*A.
The source support theorem correlation_eq_zero_of_cutoff gives C_f(log n)=0,
INCLUDING equality, because the support intersection is Lebesgue-null there.
Its conjugate C_f(-log n) is zero too. Thus both entire sums truncate to the
UNCHANGED strict cutoff, and reflected_prime_legs_eq_twistedPrime identifies
the resulting complex finite sum with the embedding of twistedPrime.

Arithmetic consumer: these are precisely the two positive series products
SUBTRACTED in weilRightArithmeticIntegrand for W. In particular their full-line
contribution, with its original minus sign, is -twistedPrime. The conductor,
parity/gamma block and (for zeta) both pole orientations are untouched.
The theorem does not need primitivity or nonprincipality because it evaluates
only a convergent prime block. For q=1, chi=1, it includes the zeta prime block;
it is not the entire zeta formula and it deletes neither pole.

Hostile checks: complex phases can reverse the sign if the correlation is
not reflected; chi=i,C=i gives 2 in the correct two-leg convention and -2
in the unreflected one. Incorrect sigma=-1 reflection would leave n^{-7/2}
instead of n^{-1/2}. Both are prevented by the exact inversion calculation.
Zero tests and q=1 obey the same formulas; no simplicity or nonreal-zero
restriction occurs. Cutoff equality is proved rather than rounded.

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
