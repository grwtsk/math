# The gamma Bochner row and the original all-test source pairing

Local attribution: grwtsk contributors.
Owner: [WeilGammaBochnerRow.lean](WeilGammaBochnerRow.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaBochnerRow`.
Primary MSC2020: 11M06; supporting: 46E30, 47B25.
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).

## Target and consumer

The previous quadrature file bounded a finite-translation approximation of a
Bochner lag integral. It did not identify that integral with the canonical
arithmetic source operator. This increment supplies the missing source pairing
and the exact restricted-row return. Its arithmetic consumer is
[WeilFiniteSineGammaQuadrature.lean](WeilFiniteSineGammaQuadrature.lean), which
identifies the existing finite-sine operator output, not a newly chosen model.

The exact input is `TranslationCutoffs.Physical = Lp R 2 volume`. Write

    tau_r f(t)=f(t+r),  J_r f=tau_r f-f,
    Delta_r f=2f-tau_r f-tau_(-r) f,
    k(r)=parityKernel 0 r=exp(-r/2)/(1-exp(-2r)), r>0.

The whole-line norm, both translation orientations, and the original kernel
are unchanged. Assume D>=0 and `TranslationSlope f D`, namely

    ||J_r f||_2 <= |r| D for EVERY real r.                 (1)

The full row is a Bochner integral in the physical Hilbert space:

    Gf = integral_(0,infinity) k(r) Delta_r f dr.         (2)

## Complete primary argument

### Absolute convergence before interpretation

Near zero, the existing kernel estimate gives

    r k(r)<=1/2+r,   ||Delta_r f||<=2rD,
    ||k(r)Delta_r f|| <= (1+2r)D.

Thus (2) is Bochner integrable on (0,1]. Away from zero,

    ||Delta_r f||<=4||f||,
    k(r)<=exp(-r/2)/(1-exp(-2b)) for r>=b>0,

so the row is integrable on (b,infinity). Strong continuity of physical
translations gives measurability. Splitting (0,infinity) at 1 proves absolute
Bochner integrability. No finiteness conclusion is drawn from a totalized
integral alone.

### All physical tests, not finite observations

Translation is a linear isometry and tau_r tau_s=tau_(r+s), hence

    <tau_r f,g> = <f,tau_(-r)g>,
    <g,Delta_r f> = <J_r g,J_r f>.                       (3)

The second identity follows by expanding both sides; omitting either
translation orientation makes it false. For any g in physical L2, evaluation
h -> <g,h> is continuous linear, and therefore commutes with (2):

    <g,Gf>
      = integral_(0,infinity) k(r)<J_r g,J_r f> dr
      = MirroredHermitian.gammaPairing g f.              (4)

The scalar integral is proved integrable from the Bochner integral and the
bounded evaluation functional. At each lag the inner L2 pairing is exactly
the original scalar integral of translated differences, using their a.e.
representatives. No regularity of g beyond L2 is needed. In particular

    <f,Gf>=oddArchimedeanEnergy f.

This does not say that the original signed Weil form is nonnegative: the
prime and pole terms are not gamma energy.

### Exact physical restriction of the far row

Let P_T be the existing contractive indicator restriction to I=[-T,T],
and suppose f vanishes off I almost everywhere. P_T is self-adjoint in the
original physical inner product. If |r|>2T, then P_T tau_r f=0, so

    P_T Delta_r f=2f for r>2T.

For b>0 and b>=2T, the lags in (b,infinity) satisfy this strict inequality,
including when b=2T. Commuting the bounded P_T through the integrable tail gives

    P_T integral_(b,infinity) k(r)Delta_r f dr
      =2 tailWeight(b) f.                               (5)

The equality is for the entire row, not only its diagonal quadratic value.
There is no pointwise endpoint convention and no omitted lag tail.

### Quantitative source-row return

Let x:N->R be monotone, x(0)>0, x(N)>=2T, eta>=0, and require

    x(i+1)-x(i)<=eta*x(i) for every i<N.

The original quadrature uses exact integrated kernel weights and physical
midpoint differences. Define

    Ghat f=P_T midpointRow(x,N,f)+2 tailWeight(x(N))f.

Absolute convergence justifies the exact decomposition

    P_T Gf-Ghat f
      =P_T(nearRow(x(0),f)
           +middleRow(x(0),x(N),f)-midpointRow(x,N,f)).   (6)

The existing near and middle estimates, and ||P_T||<=1, yield

    ||P_T Gf-Ghat f|| <= (x(0)+x(0)^2+5eta)D.             (7)

This is the complete physical L2 row norm. It is not a finite-mode norm,
a sampled residual estimate, or uniform operator-norm convergence on the
whole L2 unit ball.

## Declaration correspondence

Every declaration below is a local consequence of the exact canonical source
and pinned Mathlib APIs, not a direct formalization of an external paper.

| Declaration | Content |
| --- | --- |
| `translate_zero` | Identity physical translation on Lp classes. |
| `translate_pair` | The inverse translation is the adjoint. |
| `symmetricDifference_pair` | Equation (3), both signed orientations. |
| `jump_pair_integral` | Lp inner product equals the original scalar integral. |
| `weightedRow` | Literal kernel times literal symmetric difference. |
| `symmetricDifference_norm_le_mass` | Global bound by four times the physical norm. |
| `weightedRow_integrable_tail` | Absolute Bochner integrability away from zero. |
| `weightedRow_integrable` | Absolute convergence on the entire positive lag axis. |
| `fullRow` | Integral (2), used with its proved convergence contract. |
| `mixedGamma_integrable` | Integrable mixed source for every physical L2 test. |
| `fullRow_pair` | Exact all-test source return (4). |
| `fullRow_self` | Original gamma-energy diagonal. |
| `physicalWindow_pair` | Self-adjointness of the actual indicator projection. |
| `physicalWindow_support` | Exact a.e. output support. |
| `physicalWindow_norm_le` | Original physical norm contraction. |
| `physicalWindow_translate_eq_zero` | Strict support separation, both signs. |
| `physicalWindow_symmetricDifference_far` | Exact far row 2f. |
| `farRow` | Complete tail integral. |
| `physicalWindow_farRow` | Equation (5), including b=2T. |
| `fullRow_split` | Convergent near/middle/far decomposition. |
| `quadratureRow` | Finite translation sum plus exact tail mass. |
| `quadrature_error_eq` | Equation (6). |
| `quadrature_error_le` | Whole-row source estimate (7). |

## Source provenance and comparison

Inspected November 18, 2026 at
`grwtsk/math@300b564894b2c6fe44424ae4a4da9a8170d4c50d`:

- `WeilGammaCutoffResidual.lean`, blob
  `7d0da83892d6ceffb552dbf4aa3ec532a56dd087`: `TranslationSlope`,
  `nearRow_integrable`, kernel-tail integrability and exact tail coefficient.
- `WeilGammaGeometricQuadrature.lean`, blob
  `027568cef624b657629f4474624e55c933aa04d2`: `translate_translate`,
  `middleRow`, `midpointRow`, `near_plus_mesh_error_le`.
- `L2WindowRestriction.lean`, blob
  `3428e436f5bf5939badee9d76d8b4cd9dac51a83`: actual indicator operator,
  a.e. formula, norm contraction and support identity.
- `WeilMirroredHermitian.lean`: `gammaPairing`, not a new form definition.
- `WeilTranslationEnergyDomain.lean`: physical support restriction and
  exact `jump_norm_sq`; the earlier evidence status is unchanged.

At Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`:

- `MeasureTheory/Integral/Bochner/ContinuousLinearMap.lean`, blob
  `24b8ad83aa2cb2a2cb5ce54ac6ce84dbad84bb7f`,
  `ContinuousLinearMap.integral_comp_comm`, is used only after integrability.
- `MeasureTheory/Function/LpSpace/Basic.lean`, blob
  `49ca798a7ffe3002a1d2ce7ae7ba6d06291406b6`: `MemLp.toLp`,
  a.e. representatives, `Lp.ext` and a.e. linear identities.
- `Analysis/InnerProductSpace/LinearMap.lean`, blob
  `9e464cfcd28bd0ac75d7d79f814305a6c88a4a28`:
  `LinearIsometry.inner_map_map` and `innerSL` are the representation tools.

The direct adjoint computation and the scalar translation change of variables
are two descriptions of the same mechanism, not independent proof evidence.
Bochner evaluation and translation-adjoint identities are classical. No novelty
is asserted; prior-art completeness is UNASSESSED.

## Hostile checks and open obligations

An interval indicator has ||tau_r f-f||^2=2|r| for 0<|r|<2T, so no finite
constant D can satisfy (1). This rules out silently applying the estimate to
arbitrary L2 vectors or to an interval function with a nonzero endpoint jump.
The new consumer instead derives (1) for the original globally Lipschitz finite
sines. They need not be globally H2.

Restriction must be applied AFTER the whole-line differences. Replacing each
translation by a compressed translation before computing the energy changes
the boundary terms. Both pole orientations, or their exact odd-sector negative
rank-one reduction, belong to the other source terms and are not erased here.

Not supplied: a whole-form energy Schur decomposition for every source input,
a new high-floor theorem, certified scalar enclosures for the finite row,
a successful finite signed matrix, or cofinal certificate existence. The
arithmetic consumer transports the row error to the existing source operator
on finite sine inputs; it does not turn row convergence into positivity.

## Evidence

Lean `leanprover/lean4:v4.34.1`; Mathlib pin above. Root imports, pins and
existing source are unchanged. SOURCE_PROOF_CANDIDATE. Elaboration, expected
types, fresh kernel replay, transitive axiom audit, dependency replay,
certified arithmetic and independent review: NOT_RUN. The code may need
elaboration repairs. No passing proof-run receipt or unconditional RH/GRH
result is claimed. Publication observations are recorded in math#1837.
