# Geometric gamma quadrature and the complete spatial residual Gram

Local attribution: grwtsk contributors.
Owner: [WeilGammaGeometricQuadrature.lean](WeilGammaGeometricQuadrature.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaGeometricQuadrature`.
MSC2020: 11M06 (primary), 46C05, 65G20.
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837), math#1258.
Review base: `grwtsk/math@bc1e1b34506f54ccdb46de9138e906044def5a55`.

## 1. Exact source and mathematical increment

Use the unchanged real physical L2 space, zero extensions, translations
`tau_r u(x)=u(x+r)`, kernel `k(r)=parityKernel 0 r`, and signed odd Weil form.
All prime powers with log(n)<2L and the original negative odd pole remain.
Set `Delta_r u=2u-tau_r u-tau_(-r) u`, as in the preceding cutoff module.
Assume the WHOLE-LINE translation bound

    ||tau_r u-u|| <= |r| D,  D>=0.                         (1)

The source-specific quadrature theorem proves, for relative-width cells,

    ||integral_a^b k(r) Delta_r u dr
       - sum_i nu_i Delta_(c_i) u|| <= 5 eta D.            (2)

Here `0<a=x_0<=...<=x_N=b`, `h_i=x_(i+1)-x_i<=eta*x_i`,
`c_i=(x_i+x_(i+1))/2`, and the weights are EXACT source integrals

    nu_i=integral_(x_i)^(x_(i+1)) k(r) dr
        = tailWeight(x_i)-tailWeight(x_(i+1)).             (3)

The constant 5 is independent of a,b,L,N. This is NOT operator-norm
convergence on the full L2 unit ball: D is input-dependent. The energy,
arithmetic sign and physical norm are unchanged. Kernel sampling, an
unpaid near-zero cutoff, and a finite sampled residual norm are not used.

## 2. Proof of the geometric-mesh estimate

The elementary exponential inequality exp(2r)>=1+2r gives

    r/(1-exp(-2r)) <= r+1/2,
    r*k(r) <= (r+1/2)*exp(-r/2), r>0.                    (4)

The antiderivative of the right side is `-(2r+5)exp(-r/2)`. Thus

    0 <= integral_0^b r*k(r) dr
      <= 5-(2b+5)exp(-b/2) <= 5, b>=0.                  (5)

No improper-integral interchange or unknown gamma spectral datum is needed
for this finite first-moment bound. The integrability proof precedes use of
the integral; a totalized value outside convergence is not interpreted.

The original translation group law and its L2 isometry imply

    ||tau_r u-tau_s u|| = ||tau_(r-s) u-u|| <= |r-s| D,
    ||Delta_r u-Delta_s u|| <= 2|r-s| D.                 (6)

On each midpoint cell,

    2|r-c_i| <= h_i <= eta*x_i <= eta*r.

Multiplying (6) by k(r), integrating and summing gives

    error <= eta*D * sum_i integral_(x_i)^(x_(i+1)) r*k(r) dr
          <= 5 eta D.

The finite source integrals telescope EXACTLY before applying (5).
This retains the factor r and avoids the weaker bound involving
`eta` times a singular total kernel mass. The weights nu_i are nonnegative, and positive for nondegenerate cells.

An explicit finite mesh exists for every a,b>0 with a<b and eta>0:
use x_i=a(1+eta)^i and select any integer N with x_N>=b. There is no
need to cap the last endpoint at b when the far tail is treated exactly
at x_N. One may take

    N = ceil(log(b/a)/log(1+eta)).

This count is a written elementary construction, not a new Lean declaration.
The implemented theorem accepts ANY monotone sequence satisfying the relative
width inequalities, including zero-width panels, and proves the estimate.

## 3. The complete gamma row and tolerance selection

For a globally H1 supported trial u, its Bochner gamma row exists because
near zero (1) gives an integrable bound, and away from zero the kernel is
exponentially integrable. Denote physical restriction by P_I. For b>=2L,
the previous exact support-separation identity gives

    P_I Gamma u = P_I nearRow(a,u)
                + P_I middleRow(a,b,u) + 2*kappa(b)u.

Define the finite gamma row

    GammaHat u = P_I sum_i nu_i Delta_(c_i) u + 2*kappa(b)u.

Restriction is contractive. Combining (2) with the original near-row estimate
therefore proves the WRITTEN source-row bound

    ||P_I Gamma u-GammaHat u|| <= delta D,
    delta = a+a^2+5 eta.                                (7)

The Lean theorem `near_plus_mesh_error_le` proves the unprojected sum of
these two error vectors; the complete gamma Bochner row/source-pairing and
restriction return in this paragraph remain source-specific adapters to
formalize. The far tail in (7) is exact, not omitted.

For a specified finite-dimensional H1 trial synthesis U with
`||(Uv)'||<=D_*||v||`, any row tolerance theta>0 can be met: take

    0<a<=min(1,b/2,theta/(4(D_*+1))),
    0<eta<=theta/(10(D_*+1)).

Then `(a+a^2+5eta)D_*<=theta`. This is constructive finite approximation of
specified rows, NOT existence of positive Schur certificates. D_* and the
needed sign margin may depend arbitrarily on the stage. The cell count and
arithmetic precision can become expensive; no efficient all-scale algorithm
is claimed.

For the canonical zero-extended normalized sine basis, whole-line H1 follows
from vanishing boundary values, and

    ||(sum_n z_n e_n)'||^2 = sum_n (n*pi/L)^2 |z_n|^2.

The derivative Gram is therefore explicit. These weak-derivative and Gram
facts are proved in the preceding written note, not yet new Lean declarations.
An arbitrary low spectral space need NOT lie in H1. Apply this row construction
to admitted finite sine trials (and an independently proved genuine high
floor), or first prove the corresponding regularity/source realization.
Do not silently replace the retained reference eigenvectors by approximations.

## 4. Correct sign and complete matrix allowance

Let q_epsilon=q+epsilon*physicalMass. On the genuine high space W assume
`a_epsilon[w]>=m||w||^2`, m>0. Let X:V->W and Uv=v-Xv be actual supported
H1 trials. The physical mass is that of Uv, NOT automatically that of v.
The negative odd pole is retained. A bordered auxiliary pole coordinate is
not assigned a physical epsilon mass.

Let THat be the unchanged signed source row with only Gamma replaced by
GammaHat. Set

    FHat[v] = <THat Uv,Uv>,
    RHat[v] = ||P_W THat Uv||^2,
    M[v] = ||Uv||^2,       D[v] = ||(Uv)'||^2.

The near-lag quadratic energy is nonnegative, but geometric midpoint error
has NO guaranteed sign. Thus, for any sigma>0,

    exactTrial[v] >= FHat[v]-J_sigma[v],
    J_sigma = (5eta/2)*(sigma D+sigma^(-1) M).             (8)

Proof: retain the favorable near energy, bound the middle-row pairing error
by `5eta sqrt(D[v] M[v])`, and apply scalar Young. No near quadratic error
is paid twice. The row residual still pays BOTH near and middle errors.

The full dual residual is bounded, for any t>0, by

    ||r_v||_(a_epsilon^*)^2
      <= ((1+t) RHat[v] + (1+t^(-1))*delta^2 D[v])/m.      (9)

Use the exact existing identity `s=exactTrial-||r||^2`. For certified
Hermitian lower/upper enclosures `F_lower<=FHat`, `R_upper>=RHat`, the
sufficient finite matrix sign is

    F_lower - J_sigma
      - ((1+t) R_upper+(1+t^(-1))*delta^2 D)/m >= 0.       (10)

All matrix comparisons quantify EVERY coefficient vector. Formula (10)
is a WRITTEN source-specific consequence; this module does not claim a
passing matrix, a new checker, or a completed typed arithmetic packet.
Observation and coefficient-rounding errors must be included BEFORE (10).

In particular, the current `CofinalFlexibleHead.FlexibleStageHeadSource`
contains a prescribed `completeRemoteAllowance`, not merely the actual
residual norm. A new spatial bound does NOT automatically bound that older
allowance or fill that structure. A typed direct source realization through
`WeilShiftedSchurReturn.windowLower_of_energyResidual` is the appropriate
consumer unless the required comparison to the older allowance is proved.
No existing source or criterion is replaced.

## 5. Computing the full spatial residual Gram without an unseen mode tail

Choose an orthonormal physical retained basis v_1,...,v_N and let
`z_i=THat Uv_i`. Define

    H_ij=<z_i,z_j>,       C_ai=<v_a,z_i>.

Then the exact COMPLETE residual Gram is

    R = H-C^* C,          v^* R v=||P_W sum_i v_i z_i||^2. (11)

For a nonorthonormal retained basis of invertible Gram G_V, replace C^*C
by C^* G_V^(-1) C. The inverse and its conditioning must then be certified.
Positivity of H by itself does not establish a Schur sign.

For canonical finite sine trials each z_i is a FINITE linear combination of
window-restricted shifted sines, the original sinh pole profile, and the
unshifted trial. Gamma quadrature contributes finitely many shifts c_i;
the prime row contributes EVERY log(n) in the active prime-power inventory.
Consequently H and C are complete spatial integrals of finitely many known
piecewise elementary functions, rather than finite Fourier projections.
There is no unobserved high-mode tail in (11).

For shifts h and k, intersect I, I-h, I-k. On that interval every product of
two shifted sine modes is integrated by

    integral_l^r sin(omega*x+theta)sin(nu*x+phi) dx
      = [J(omega-nu,theta-phi)-J(omega+nu,theta+phi)]/2,
    J(t,b) = (sin(t*r+b)-sin(t*l+b))/t, t != 0,
    J(0,b) = (r-l)cos(b).

Empty intersections contribute zero; equal-frequency cases use J(0,b), not
an illegal division. Sine/sinh products reduce to exp/sine primitives
`exp(cx)(c sin(omega*x+theta)-omega cos(omega*x+theta))/(c^2+omega^2)`
with c=+/-1/2. The squared pole-profile norm is the existing `sinh(L)-L`.
This is an exact written finite assembly, not an implemented interval evaluator.

Rounding boundaries and shifts also has a paid row cost. Kernel-weight
errors contribute `4 sum_i |nu_i-nuHat_i| ||u||`; midpoint errors contribute
`2 sum_i |nuHat_i| |c_i-cHat_i| D`. Tail-coefficient error contributes
`2|kappa-kappaHat| ||u||`. Prime-weight/shift errors similarly contribute
`2 sum_n |w_n-wHat_n| ||u|| + 2 sum_n |wHat_n| |log(n)-hHat_n| D`.
Scalar gamma/shift errors add their absolute difference times ||u||.
For an approximate pole profile sHat with ||s-sHat||<=e_s, its signed
rank-one row error is at most `2 e_s (||s||+||sHat||)||u||`.
These bounds must be propagated into BOTH the trial observation and the
complete residual enclosure. A ball-arithmetic evaluation alone without
these source/node identities is not a proof of (10).

## 6. Falsification and alternative checks

A fixed midpoint gamma operator is bounded. It cannot supply the unbounded
high-frequency growth of the original gamma form and must not replace the
true core in the high-floor theorem. The approximation in (7) is only for
the specified regular trial rows. Likewise, a zero finite Fourier residual
does not imply R=0; (11) uses the full spatial norm.

Dropping the residual reverses the needed order: the exact two-dimensional
form `w^2+4wv+v^2` has positive X=0 trial value v^2, but Schur value -3v^2.
The complete residual is essential. Dropping the signed prime or odd pole
would change the source. Fixed-window small errors do not prove cofinal signs.

An alternative error proof bounds each source cell separately and sums its
positive first moments. The present proof telescopes those moments before
bounding them by 5. These are two descriptions of the same argument, not
independent proof review. No execution or numerical evidence is claimed here.

## 7. Declaration-level provenance and evidence

This is a local consequence of the canonical gamma/translation declarations
and elementary integral inequalities, not a new formalization of an external
paper's global positivity theorem. No theorem-level novelty claim is made.

| Declaration | Mathematical statement / source |
| --- | --- |
| `kernel_mul_lag_le_damped` | (4), `Real.add_one_le_exp` and literal `parityKernel 0`. |
| `lagMoment`, `lagMoment_integrable` | Finite actual weighted first moment, with integrability proved. |
| `lagMoment_nonneg`, `lagMoment_le_five` | (5), an explicit primitive and outward upper bound. |
| `translate_add_apply` | The existing measure-preserving physical translations compose exactly. |
| `translate_difference_norm_le` | First inequality in (6), with original `TranslationSlope`. |
| `symmetricDifference_lipschitz` | Second inequality in (6). |
| `middleRow`, `cellWeight`, `panelRow` | Actual integrals and finite source-weighted row. |
| `cellWeight_eq_tail_sub` | (3), pinned interval-integral/tail identity. |
| `middle_sub_panel` | Exact panel error identity before taking norms. |
| `panel_error_le` | Relative-width per-panel first-moment estimate. |
| `midpointRow`, `middleRow_eq_sum` | Finite assembly and exact source-integral telescoping. |
| `relativeMesh_row_error_le` | (2), complete physical row bound, all trial inputs satisfying (1). |
| `near_plus_mesh_error_le` | The original near row plus the full middle error, before support restriction. |

Inspected Mathlib revision `d13f23b723b8a846827a245b89c10fc7d3f11612`:
`MeasureTheory/Integral/IntervalIntegral/Basic.lean`, blob
`2504147e2230a26eb804b0898004d0186c4e36a1`, especially
`integral_smul_const`, `sum_integral_adjacent_intervals`, `integral_Ioi_sub_Ioi`.
The physical translation source is `WeilTranslationCutoffs.lean`, blob
`0f9bea10933135edb5b792284a443a53d500e21b`. The preceding cutoff candidate
supplies exact source tails and the near-row estimate; it is not promoted to
verified merely by this import. All source dependencies retain their status.

Prior-art comparison dated November 18, 2026: weighted midpoint estimates
follow the standard integrated Lipschitz argument; no general numerical
quadrature or Riesz theorem is claimed novel. Rump, *Verification methods:
rigorous results using floating-point arithmetic*, Acta Numerica 19 (2010),
287-449, Sections 10.4 and 12, provides methodology comparison only. The
canonical Weil source provenance remains CCM arXiv:2511.22755v1 (3.19)-(3.20)
and the source-local records. No external paper theorem is imported as an axiom.
Prior-art completeness and novelty: UNASSESSED.

Lean `leanprover/lean4:v4.34.1`; root imports and pins unchanged.
Status: SOURCE_PROOF_CANDIDATE. Elaboration, expected signatures, kernel replay,
transitive axiom audit, certified arithmetic and independent review: NOT_RUN.
The source-specific Bochner row/form return, sine translation-slope supplier,
interval evaluator for (11), genuine high floor on the chosen split, a passing
signed (10), and its cofinal existence remain separately identified obligations.
The new Lean file contains proof candidates for the actual-kernel row bounds, not those missing signs.
