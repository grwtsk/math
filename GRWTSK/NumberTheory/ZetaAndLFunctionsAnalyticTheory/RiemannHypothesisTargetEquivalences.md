# Exact RH target: open-strip and right-strip equivalences

Authors: grwtsk contributors

## Mathematical consumer and fixed source

The consumer is faithful comparison with Mathlib's actual Riemann-hypothesis
proposition before accepting any proposed RH proof. The maintained module is
[`RiemannHypothesisTargetEquivalences.lean`](RiemannHypothesisTargetEquivalences.lean).
Its source SHA-256 for the checks reported here is
`f2270bcd3550e9f6e7918385aca4fce5a8acfecbf59d9eef623ef52ca796c84d`.

The native acceptance target is `_root_.RiemannHypothesis`, defined in
[Mathlib's `RiemannZeta.lean` at `d13f23b723b8a846827a245b89c10fc7d3f11612`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/RiemannZeta.lean):

```lean
∀ (s : ℂ), riemannZeta s = 0 →
  (¬ ∃ n : ℕ, s = -2 * (n + 1)) → s ≠ 1 → s.re = 1 / 2
```

The existing protected proposition
`GRWTSK.RiemannHypothesis.Target.Statement` is maintained in
[`Hypothesis.lean`](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Hypothesis.lean).
That file imports only Mathlib's Riemann-zeta module, repeats the exact native
quantifiers, and proves `Target.statement_eq_mathlib` by `rfl`. It imports no
proposed RH solution. Its source SHA-256 is
`9a683651598d0b5ce5f0d5bbaee5c412e8d03de07f1e733aef57801b8b795152`
at the inspected `grwtsk/math` base
`5624239ab1a35db87d6eb8aa7771f68ad7117b74`.

Both propositions are definitions of type `Prop`, not proofs of RH. Their
universe-parameter lists are empty. The new equivalence theorems also have
empty universe-parameter lists and no additional hypothesis binders or
typeclass assumptions. Full elaborated types were inspected, including the
concrete real/complex arithmetic instances and numerical proof arguments.

## Declarations and argument

All new declarations are in `GRWTSK.RiemannHypothesis.Target`.

| Declaration | Exact role |
| --- | --- |
| `OpenStripStatement` | Every actual zeta zero with `0 < s.re < 1` has `s.re = 1/2`. |
| `RightOpenStripNonvanishing` | For every complex `s`, `1/2 < s.re` and `s.re < 1` imply `riemannZeta s ≠ 0`. |
| `statement_iff_openStrip` | The protected target is equivalent to the open-strip formulation. |
| `openStrip_iff_mathlib` | Direct equivalence between the open-strip formulation and the native Mathlib target. |
| `openStrip_iff_zeroFreeRightHalfPlane` | Equivalence with raw zeta nonvanishing for `s.re > 1/2`. |
| `rightOpenStripNonvanishing_iff_zeroFreeRightHalfPlane` | Removes the already established region `s.re ≥ 1` from that nonvanishing obligation. |
| `statement_iff_rightOpenStripNonvanishing` | Identifies the precise remaining right-strip premise with the protected target. |

The proof uses four explicit steps.

1. A zero in the open critical strip cannot be a negative even integer and
   cannot equal `1`. Therefore Mathlib RH applies to it directly.
2. Conversely, the existing unconditional theorem
   `NontrivialZetaZero.mem_critical_strip` places every zero in Mathlib's target
   domain inside the open strip. This supplies the hypotheses needed to apply
   `OpenStripStatement`.
3. The existing functional-equation reflection transports a nontrivial zero
   at `s` to one at `1-s`. Thus exclusion of zeros strictly right of `1/2`
   also excludes zeros strictly left of `1/2`.
4. Mathlib already proves `riemannZeta_ne_zero_of_one_le_re`. Consequently,
   nonvanishing in `1/2 < s.re < 1` supplies all of the remaining strict
   right-half-plane assertion. Mathlib's totalized value at `s = 1` is
   nonzero; the open-strip formulation itself never includes that point.

The reused zero-transport proof does not assume strip localization. It first
excludes `s = 0` using `riemannZeta_zero`, then proves `Gammaℝ s ≠ 0` from
`Gammaℝ_eq_zero_iff` and the excluded negative even integers. It obtains a
completed-zeta zero and transports it using
`completedRiemannZeta_one_sub`. Standard nonvanishing for real part at least
one then establishes both strip boundaries.

The exact reused local sources are
[`RiemannZeroSymmetry.lean`](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannZeroSymmetry.lean),
[`ZeroFreeHalfPlaneCriterion.lean`](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroFreeHalfPlaneCriterion.lean),
and [`ZetaZeroFreeHalfPlaneAdapter.lean`](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaZeroFreeHalfPlaneAdapter.lean)
at the same math base. The analytic nonvanishing input is Mathlib's
[`Nonvanishing.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Nonvanishing.lean).
This is attributed reuse of established proofs plus elementary comparison;
no new analytic estimate or independent reconstruction of those inputs is
claimed. Mathlib's upstream authorship and Apache-2.0 licensing are retained.

## Verification scope

Checks used Lean `4.34.1`, compiler
`5045d0056413266e57c625dcd7c365b10e377c52`, and the Mathlib revision above.
All seven modules in the local target dependency chain compiled from exact
source. The unchanged protected target first exceeded a 120-second import
deadline; its bounded retry succeeded. A syntax error in the first independent
inspection helper was corrected and that failed attempt was retained. Neither
failure was in the new mathematical proof.

Built-in axiom queries and a separate traversal of actual kernel declaration
types and values, including opaque values, found only `propext`,
`Classical.choice`, and `Quot.sound`. The traversal failed on missing
constants and explicitly rejected `sorryAx`, `Lean.reduceBool`, and
`Lean.reduceNat`; it completed successfully. The checked closures contained
52,604 to 59,597 constants. Source readback matched all recorded hashes.

Verifier-owned native kernel replay is **PASSED** for the two main comparisons
`openStrip_iff_mathlib` and `statement_iff_rightOpenStripNonvanishing`, as part
of the five-target partial-result acceptance run. The combined actual dependency
closure contained 60,469 declarations and was replayed in an empty kernel
environment. Each actual proof expression was then checked and inserted at its
independently specified literal proposition. The process exited 0 in 202.7003
seconds; every bound source and object file was unchanged. Reached axiom types,
universes and safety flags were compared with the standard `Init` foundation.
The additional Lean4Lean implementation check also **PASSED**. Its native
executable replayed the same 60,469 declarations and admitted the same five
proof expressions at the independent target types in 554.4178 seconds, with
exit 0 and all 54 bound files unchanged. The checker source was unchanged
at revision `67f63b0c818920dfaed2ad07ccff187a6a8fe1e3`, compiled with
Lean 4.34.1. The earlier VM timeout is retained separately. Lean4Lean is
derived from Lean's kernel and shares the loader/runtime; this is another
implementation check, not an independently designed foundation. These
results do not supply a term of the fixed RH acceptance proposition itself.

## Exact remaining obligation

The new criterion leaves the following premise completely visible:

```lean
∀ s : ℂ, (1 / 2 : ℝ) < s.re → s.re < 1 → riemannZeta s ≠ 0
```

The module proves its equivalence to RH, not this premise. No spectral
positivity, Weil-form source return, automorphic construction, zero data, or
numerical observation supplies the premise through these equivalences.
Future mathematical progress must establish an unconditional producer of this
nonvanishing assertion or an independently justified equivalent analytic bound.
