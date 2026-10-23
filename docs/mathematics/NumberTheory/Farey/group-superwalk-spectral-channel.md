# Farey group superwalk and spectral channel: bounded formalization

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent source: GRWTSK.NumberTheory.Farey.ResolvableQuintic (verification issue #1086).
This note is mathematical source commentary, not compilation or a proof receipt.

## Source-identified action

For the existing Cell I=(a,b,c,d), with positive denominators and bc=ad+1, use

    F(I) = [[c,a],[d,b]] in GL_2(Z).

Its determinant is +1. The existing Farey mediant operations are **exactly**
F(leftChild I)=F(I)L and F(rightChild I)=F(I)R for the unipotent shears

    L=[[1,0],[1,1]], R=[[1,1],[0,1]].

Their inverses have integral entries. Chronological words act on the right:
F(walk(I,w))=F(I) wordUnit(w), and wordUnit(u++v)=wordUnit(u)wordUnit(v).
The action on the positive Farey-cell carrier is a *positive free-monoid*
action; the full GL2(Z) unit group acts on frames, not on all positive
Farey cells. Never infer an inverse Farey-cell operation from the group
inverse.

The words LR and RL differ:

    LR=[[1,1],[1,2]], RL=[[2,1],[1,1]].

In particular tr(LR)=3, det(LR)=1. A two-step hyperbolic return is possible
even though each isolated generator is unipotent. This does not identify
any infinite spectral operator or its spectral gaps.

The existing ResolvableQuintic source says a positive quadratic multiplier
preserves the oriented cubic sign-resolution property. The new word-level
corollary carries that exact predicate at any SOURCE Farey walk cell, without
adding polynomial roots, a quintic solvability statement or global coverage.

## Precise channel obstruction

On the native complexified 2-plane, the simultaneous commutant of the
opposed generators L and R consists only of scalar matrices:

    P L = L P and P R = R P  ->  P = P(0,0) I.

Proof: commuting with L forces P(0,1)=0 and P(1,1)=P(0,0);
commuting with R forces P(1,0)=0. If P is also idempotent, its scalar
a satisfies a^2=a over C, hence a=0 or a=1.

This is a genuine negative representation result: there is no nonzero proper
spectral projector invariant under BOTH native Farey generators on C^2.
A nontrivial channel must change the representation, enlarge the carrier,
restrict to a return/monodromy subgroup, or relax simultaneous invariance.

## Spiral claims and missing supplier

A complex scalar channel for a selected return would give
z_n = z_0 lambda^n, and lambda=r exp(i theta) would trace a logarithmic
spiral when r differs from 1 and a consistently lifted angle is present.
The Farey algebra alone supplies NEITHER that eigenchannel nor a radial
and angular normalization. Even a positive trace-three finite block is not
a full spectral realization, operator-limit theorem, or arithmetic return.

The next *separate* supplier should select an actual return word, establish
its complex eigenline or spectral projector, specify an independent angular
channel, and prove a source-preserving observation and its gauge restrictions.
This must retain any continued-fraction/irrational-frequency, Farey-sign,
and elliptic/arithmetic adapters as separately declared premises.

## Exact return-only spectral channel (new bounded supplier)

Module: `GRWTSK.NumberTheory.Farey.ReturnSpectralChannel`.
Status: source-level Lean proof candidate, NOT_RUN, NOT_KERNEL_AUDITED.

The two-step Farey word `[Turn.left, Turn.right]` is connected to
`GroupSuperwalk.frame_walk` by `farey_return_frame`: for every **actual**
source cell `I` its child frame is `frame I * (leftUnit * rightUnit)`.
This proves provenance of the ordered return, not simply an assigned matrix.

The same elementary shears over the reals give

    H = [[1,1],[1,2]],   H^2 = 3 H - I.

The two roots are `lambda_plus = (3+sqrt(5))/2 > 1` and
`lambda_minus = (3-sqrt(5))/2`. Source proves their sum is 3,
product is 1, and they are distinct. Set `s=sqrt(5)>0` and

    P_plus = [[(s-1)/(2s),1/s],[1/s,(s+1)/(2s)]].

The source proof candidates `returnProjector_idempotent`,
`returnProjector_proper`, `returnProjector_commutes`, and
`returnProjector_eigen` claim the explicit identities

    P_plus^2=P_plus,   P_plus != 0,   P_plus != I,
    [P_plus,H]=0,      H P_plus = lambda_plus P_plus.

`expandingProjector_iterate` states for every natural n:

    H^n P_plus = (lambda_plus)^n P_plus.

These identify a proper **selected-return eigensector** of the actual
Farey representation. It is not invariant under both generators L and R;
the earlier `native_invariant_projector_trivial` no-go requires that
strictly stronger simultaneous equivariance.

The positive real eigenvalue supplies **radial expansion without
intrinsic phase rotation**. A nonconstant angular channel, its
observation map, relevant gauge/normalization, and compatibility with
the continued-fraction/Farey arithmetic carrier are all still missing.
No claim is made about spirals drawn from empirical data, Schrödinger
spectra or a zeta/RH divisor.

The source is elementary two-by-two linear algebra applied directly to
the repository Farey construction, NOT the import of any external paper
theorem or a historical attribution claim.

## Hostile controls

- Inverting a Farey shear need not preserve the positive Farey-cell domain.
- LR != RL: chronological order cannot be silently commuted.
- Frame columns are in right,left order; using left,right gives determinant -1.
- Exact quadratic*cubic sign transport is not polynomial root completeness.
- Neither L nor R individually supplies the two-step trace-three growth.
- The simultaneous commutant on C^2 has no nontrivial projector.
- An arbitrarily chosen complex projection is not an equivariant channel.
- An enlarged/return channel is not refuted by the native 2-plane no-go.
- Projective winding or displayed spirals do not prove a uniform exponent.
- No finite Farey word, SL2 matrix, or spiral is an RH/zeta spectral bridge.

## Trust and replay

Read and qualify the upstream Farey module first (#1086). For the new
modules use the repository-pinned Lean 4.33.0 and Mathlib lock; run warning-clean
individual and joint builds, fresh kernel checks of each exact module and
their dependency closure, and declaration-level transitive axiom/unsafe/native
audit, bound to the final exact main commit. Do not count source text, a
passive TOML request, or a successful unrelated public-root build as acceptance.
