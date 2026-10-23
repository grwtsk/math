# Fixed-form decay does not imply uniform decay even on sublinear shift windows

Research date: **2026-10-22**  
Mathematical owner: `grwtsk/math#441` and downstream finite Chowla–sofic `#630`.  
Inspected parent source head: `28e070b53d87b73f1d765c97de9061350fba28af`.  
Evidence: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

## 1. Selected missing supplier

The prior fixed-form analytic source interface
`FixedNonproportionalAffineLogSaving`, if independently proved
and accepted, gives bounds for **each fixed pair of nonproportional
affine forms**. For Liouville additive shifts this is of the form

```text
forall fixed h>0, exists C_h,
  for all large N: |C_N(h)| <= C_h / (log N)^c
```

with one absolute positive exponent `c` and h-dependent `C_h`.

The finite Walsh–sofic program in `#630` needs one effective
bound on ALL nonempty subset correlations of a possibly
growing shift set `H_N`. That is a different quantifier
statement. A theorem which exchanges the fixed-h and
uniform-h quantifiers would need an independent proof.

This increment proves an exact, stronger *logical obstruction*
to that exchange. It does NOT disprove the actual arithmetic
uniformity conjecture or instantiate a source correlation.

## 2. Concrete rational counterexample

Define the abstract family

```text
F(N,h) = 1  if N=h*h,
         0  otherwise.
```

It is bounded by one and has exactly one spike per fixed
shift. In particular, for each fixed h,

```text
N > h²  ==> F(N,h)=0.
```

Thus it exhibits **eventual exact zero** for every fixed h,
stronger than any asymptotic fixed-form cancellation.

Moreover a single polynomial exponent can be chosen for
all h. With the form-dependent constant `C_h=h²+1`,

```text
|F(N,h)| <= (h²+1)/(N+1) for ALL N,h.
```

At `N=h²`, the right side is exactly 1 and the
bound is attained. Everywhere else the left side is zero.
The bound is a `1/N`-scale saving with a *common exponent
one* but coefficients `C_h` which grow quadratically
with the form/shift.

The source-drafted declaration
`squareShiftSpike_fixed_power_envelope` records this
all-horizon bound. It is still subject to Lean compilation.

## 3. A sublinear shift where uniformity still fails

Select the square scales

```text
N_k := k²,
H_k := { h : Nat | 1<=h<=k },
r_k := k.
```

For every k≥1, the shift `h=k` lies in `H_k`
and has exact spike

```text
F(N_k,k) = F(k²,k) = 1.
```

The seam fraction is genuinely sublinear:

```text
r_k/N_k = k/k² = 1/k -> 0.
```

The earlier cyclic comparison theorem requires the **strict**
condition `r_k<N_k`. This holds for every `k≥2`;
the isolated initial case `k=1` has `r=N=1`
and is not an admissible cyclic instance. The eventual
uniformity failure persists on all `k≥2` and is
therefore not an endpoint loophole.

Hence, in the sense of ordinary finite suprema,

```text
sup_(1<=h<=k) |F(k²,h)| = 1.
```

The top supremum identity follows from the explicit member
`h=k` with value 1 and the bound `0<=|F|<=1`.
The Lean source records the peak and exact rational ratio,
rather than claiming it formalized a sup-limit theorem.

For every rational `epsilon<1`, the uniform statement

```text
exists K, forall k>=K, forall h in Icc 1 k,
  |F(k²,h)| <= epsilon
```

is false. The theorem
`squareShiftSpike_not_uniform_on_sublinear_window`
constructs `k=max(1,K)` and uses the explicit member
`h=k` to give the contradiction `1<=epsilon`.

The final declaration
`fixed_power_saving_does_not_imply_sublinear_uniformity`
refutes the abstract implication

```text
  [forall h,N, |F(N,h)| <= (h²+1)/(N+1)]
    ==> [eventual uniform error <= 1/2
          on shifts 1<=h<=k at N=k²].
```

The exponent in the antecedent is common and stronger
than a logarithmic saving, while the constants still
depend on the fixed shift. This is the exact missing
quantifier edge in `#441`.

## 4. Exact subject placement and source identity

The standalone arithmetic-scope module is

`GRWTSK/NumberTheory/ArithmeticFunctions/FixedShiftUniformityObstruction.lean`

at exact blob `3416af4f7e2e4228e01f9b4b8ee5dd8a50540e45`.

Its two definitions are

```text
squareShiftSpike
EventuallySmallOnSquareWindow
```

and its eight proposed theorem heads are

```text
squareShiftSpike_zero_after_square
squareShiftSpike_fixed_eventually_zero
squareShiftSpike_diagonal_peak
squareShiftSpike_fixed_power_envelope
squareShiftSpike_growing_window_peak
squareShiftSpike_sublinear_ratio
squareShiftSpike_not_uniform_on_sublinear_window
fixed_power_saving_does_not_imply_sublinear_uniformity
```

The passive, independent proof target is
`docs/verification/_unscoped/fixed-shift-uniformity-obstruction-441-v0.1.toml`.
The module imports only pinned Mathlib and has no transitive
dependency on the earlier eight generic Walsh modules, the
Liouville arithmetic leaf, or the external fixed-form theorem.

No new root import, Mathlib/toolchain pin, native execution,
CI workflow, or probabilistic source was modified.

## 5. Checks and hostile cases

An independent integer enumeration inspected all
`0<=N<=512`, `0<=h<=120`: **62,073 cases** of
the rational-power envelope and the pointwise tail,
zero discrepancies. Separately, `1<=k<=320`
was checked for exact square-scale peaks and the
identity `k/k²=1/k`, with no discrepancies.
These are finite arithmetic checks, NOT Lean elaboration.

The following must be rejected by any downstream adapter:

1. **Inferring arithmetic counterexamples:** `F` is an
   abstract rational-valued family, not shown to arise
   from actual Liouville, Möbius, or any stationary
   dynamical process. The result is a logical
   non-implication only.
2. **Using a full-scale shift:** the constructed window
   has maximum shift `k=o(k²)`. A counterexample
   restricted to `h=N` would be insufficient for
   this specific sofic-collar regime.
3. **Equating uniform exponent with uniform constant:**
   the exponent one is common, but `C_h=h²+1`.
   Fixed-form source theorems do not impose a
   scale-uniform constant across all shifts.
4. **Treating square scales as an all-scale limit:**
   failure along the infinite subsequence `N=k²`
   is enough to refute the eventual uniform conclusion;
   it does not prove a separate all-scale arithmetic claim.
5. **Using Lean source text as a proof receipt:** the
   proposed Lean proofs have not been compiled,
   kernel checked, replayed, or axiom audited.

## 6. Consequence for the Chowla–sofic dependency path

The existing conditional finite Walsh error bound is

```text
TV(P_cyclic(N,H),U_H)
 <= r/N + (1/2)*sqrt(sum_(S subset H, S!=empty) C_N(S)^2).
```

The proof still requires a **directly supplied small
summed-square correlation energy**, or a single uniform
bound on all relevant nonempty subset correlations with
the exponential character-count cost. Fixed binary
form-by-form bounds plus `r=o(N)` do not themselves
prove this combined assertion.

The exact remaining positive mathematical supplier is
therefore a growing-family estimate at the required
ordinary averaging and all-orders scope. A verified
external fixed-form Result 007 proof would not make
that supplier automatic.

**Evidence:** `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ABSTRACT_QUANTIFIER_NONIMPLICATION / LIouVILLE_NONCLAIM /
GROWING_SHIFT_ALL_ORDER_SUPPLIER_OPEN / RH_NONCLAIM`.
