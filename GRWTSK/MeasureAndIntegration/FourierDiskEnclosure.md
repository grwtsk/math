# Complex-frequency disk bounds for the literal Fourier transform

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 42A38; secondary 65G20, 11M26, 11M41.
Owner: [FourierDiskEnclosure.lean](FourierDiskEnclosure.lean).
Consumer: [WeilZeroDiskEvaluation](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilZeroDiskEvaluation.lean).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[iteration scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6983797790).

## FDE-1: source and quantified analytic estimate

Let f : R -> C be Lebesgue integrable, T >= 0, and f(t)=0 whenever |t|>T.
Use the EXISTING literal plus-sign integral, with no new transform object:

    F_f(z) = integral_R f(t) exp(i z t) dt.

For all z,c in C and every real delta >= 0 with |z-c| <= delta, define

    Delta(f,T,c,delta)
      = T delta exp(T |Im(c)| + T delta) integral_R |f(t)| dt.

Then

    |F_f(z)-F_f(c)| <= Delta(f,T,c,delta).                 (FDE-1)

The bound is valid on the entire closed complex disk; it needs no assumption
T delta <= 1. Large radii may give a useless but still valid enclosure.
It does not grow exponentially with Re(c), the spectral height. The error
vanishes when delta=0, and is invariant under conjugating c. The source proves
nonnegativity, the zero-radius identity and the conjugate identity separately.

### Complete analytic argument

For |t|<=T let w=i(z-c)t. Then |w|<=T delta and

    exp(i z t)-exp(i c t)=exp(i c t)(exp(w)-1).

The order-one exponential remainder estimate gives
|exp(w)-1|<=|w| exp(|w|). Also |exp(i c t)|=exp(-Im(c)t)
<=exp(T|Im(c)|). Multiplying and using monotonicity yields

    |exp(i z t)-exp(i c t)|
      <= T delta exp(T|Im(c)|+T delta).

Outside the support f is zero. Multiply by |f(t)| and integrate. Both original
integrands are integrable by the canonical `integrable_fourier_integrand`;
therefore subtraction can be moved inside the integral before applying its
norm bound. No totalized integral outside the stated domain is used as an
analytic value. The proof uses an elementary exponential remainder, not a
numerical slope guess or an unproved differentiability-under-integral premise.

A distinct elementary hostile check is to put delta=0: the location error
must vanish exactly. Conversely, controlling only Re(z-c) would not bound the
exponential caused by Im(z-c); this theorem retains the full complex distance.

## FDE-2: reflected-product evaluation

Suppose a,b in C and real e_plus,e_minus enclose the TWO center transforms:

    |F_f(c)-a| <= e_plus,
    |F_f(conj(c))-b| <= e_minus.

These hypotheses themselves imply nonnegativity of the two error bounds.
Conjugation preserves the disk distance and Delta. Set

    alpha = Delta + e_plus,  beta = Delta + e_minus,
    R(a,b,alpha,beta) = alpha |b| + beta |a| + alpha beta.

Then

    |F_f(z) conj(F_f(conj(z))) - a conj(b)| <= R.         (FDE-2)

For u=F_f(z), v=F_f(conj(z)), the exact algebraic split is

    u conj(v)-a conj(b) = (u-a)conj(v)+a conj(v-b).

Use |u-a|<=alpha, |v-b|<=beta and |v|<=|b|+beta. This proves
R, including the alpha*beta cross term. The cross term is necessary in
general: u=v=1, a=b=0, alpha=beta=1 gives error 1, while the two linear
charges alone are zero. This is a hand-checked algebraic countermodel to a
wrong formula, not an L-function counterexample or independent review.

The expression is NOT replaced by |F_f(z)|^2 or |a|^2. For example a=1,b=-1
has signed product -1, whereas |a|^2=1. No real-valued or odd test condition
is needed in this module. The arithmetic consumer imposes its original domain.

## Individual declaration correspondence

Prefix: `GRWTSK.MeasureAndIntegration.FourierDiskEnclosure`.

| Declaration | Exact role and source | Mathematical consumer / open input |
| --- | --- | --- |
| `fourierDiskError_nonneg` | Positivity of the displayed constant and integral of a norm; canonical Bochner integral order. | Valid error budget; T,delta>=0. |
| `fourierDiskError_conj` | Conjugation negates the imaginary part, preserving its absolute value. | Same charge for the reflected center. |
| `fourierDiskError_zero` | Exact zero-radius simplification. | Recovery of center-only evaluation. |
| `norm_fourier_integral_sub_le_disk` | FDE-1; mathlib order-one exponential remainder and canonical integrable kernels. | Actual frequency perturbation; full complex location bound is required. |
| `norm_reflected_fourier_product_sub_le_disk` | FDE-2; FDE-1 and the private algebraic `product_error`. | Original signed Weil pairing; both center enclosures remain inputs. |

This is a local consequence of the maintained sources, NOT a new direct paper
formalization or a novelty claim. The primary mathematical comparison is the
pinned mathlib theorem
`Complex.norm_exp_sub_sum_le_norm_mul_exp`, specialized to order 1:
[Mathlib/Analysis/Complex/Exponential.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/Exponential.lean).
Inspected blob: `33157375f0b14cae92abf333dadef21ebbfce756`.
Its proof is reused, not copied or introduced as an axiom. Upstream retains
its authorship and Apache-2.0 license. Local proofs and exposition are by
grwtsk contributors under the repository MIT license.

The integral is the same one in
[FourierCollisionBound](FourierCollisionBound.lean), whose
`integrable_fourier_integrand` discharges integrability at each complex
frequency. Prior source inspection and code search do not establish an
exhaustive literature or repository originality audit. Novelty UNASSESSED.

## Evidence and reproduction boundary

Inspected math source base: `749e1706a21a4fe07fda373fb58d5ed15800591c`.
Complete root tree: `1dff86fdf0376e612b2872150152e02b99dc6f4c`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
No root import, pin, existing mathematical source or historical receipt changes.

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Elaboration, exact-type comparison, build, fresh kernel replay, transitive axiom
audit, validated computation and independent analytical review: NOT_RUN.
Text inspection and source digests, if recorded in the publication receipt,
are not evidence for any of those unrun checks. The companion arithmetic
module is a consumer of these same proofs, not an independent argument.

The required execution skill returned 404 at
`grwtsk/noeaaeue@8ffd1c7de4f701a2fa7dc12d713bd2aaa637a4bd`, path
`workflows/research/orchestration/skills/noe-proof-automation/SKILL.md`.
No verified local skill checkout or Lean/lake executable was found. No dependent
proof execution was dispatched. Ordinary authenticated source publication is
separate. This records the observed blocker without asserting permanent absence.

After satisfying the then-current execution policy in a clean exact-pin checkout,
the intended targeted command is

    lake build GRWTSK.MeasureAndIntegration.FourierDiskEnclosure

That command is NOT_RUN. Check all five public theorem signatures and their
reached proof dependencies; audit transitive axioms and statement correspondence.
Publication commit and file digests are recorded in issue #1801.
