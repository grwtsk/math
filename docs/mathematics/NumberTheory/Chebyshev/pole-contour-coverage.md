# Exact contour coverage, rational image tubes, and a mirror-complete counting rectangle

Owner #135; numerical supplier #194; canonical consumer #261.
Parent `ef49c49cbf5cd810c91c22df8c4066b9e68e1be2`, tree
`4f42e42bb10ec9c6e594fbcc01a46b1f763b74a2`. Mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** New and inherited Lean scripts
have not been elaborated or accepted. No winding number, argument-principle
application, analytic regional upper count, complete numerical zero inventory,
or prime-distribution conclusion is supplied. Prior source, pins, targets,
public-root imports and literal local-zero constants remain unchanged.

## 1. The actual source and every consecutive edge

Reuse F=`CriticalStripHeightDescent.poleNormalizedZeta`: F(s)=(s-1)zeta(s)
away from one and F(1)=1. The previous source supplies its entire extension,
analytic-multiplicity correspondence and rational Cauchy patch gate.

The externally specified contour is an ORDERED list x_0,...,x_n. The new
`RationalPoleContour.check` requires n>0, exactly n+1 vertices, exactly n patch
records, and exact equality x_n=x_0. For each i<n, the record has a rational
center c_i, inner radius R_i, outer radius S_i and a source-value ball (v_i,e_i).
The existing patch guard must pass without weakening any of its conditions.
BOTH x_i and x_(i+1) must pass the exact squared Euclidean ball test for the SAME
closed disk Dbar(c_i,R_i). Radius signs and imaginary components are retained.

Convexity of that disk proves that the entire affine edge

    gamma_i(t)=(1-t)x_i+t*x_(i+1), 0<=t<=1,

lies in its checked patch. The union includes every consecutive edge, including
the last edge returning to x_0. Coverage is derived, not a user-supplied field.
`finiteCover` constructs the EXISTING `FiniteVariationCover` type, and its
existing nonvanishing theorem applies to the literal entire carrier.

The analytic enclosure |F(c_i)-v_i|<=e_i remains necessary. `assembledEdge` and
`enclosures_of_assemblies` compose the previous complete positive-base finite
jet and derived Bernoulli source remainder at the SAME centers, cutoffs and
correction counts. Every logarithm and inverse-power leaf proof survives. A
passing Boolean cannot validate a fictitious source value or an unproved report.

This is a coverage predicate, NOT a certificate of a simple Jordan curve,
nonzero enclosed area, orientation, absence of self-intersections, or interior
zero count. Reversed and degenerate closed chains are deliberately distinguished
from those additional obligations. There is no empty-contour shortcut.

## 2. A rational image polygon with a zero-avoiding deformation

Let M_i be the SAME sourced, whole-inner-disk Cauchy derivative bound computed
by the old patch gate. The new image radius is

    r_i=e_i+M_i*R_i.

It is recomputed from the actual rational record, not supplied independently.
The entire source edge is contained in Dbar(v_i,r_i), and the inherited strict
margin gives r_i < max(|Re(v_i)|,|Im(v_i)|) <= |v_i|. Hence this image disk avoids
zero. Both sample error and all-point variation occur exactly once.

A second external ordered list y_0,...,y_n is checked to have the same length
and y_n=y_0. BOTH y_i and y_(i+1) must lie in Dbar(v_i,r_i). Each shared image
vertex is therefore checked against BOTH incident edges, not separately chosen
for each edge. The y_i need not be exact F(x_i): the common disk supplies the
geometric connection, rather than a false exact-value assertion.

Convexity gives, for all t and lambda in [0,1],

    H_i(t,lambda)=(1-lambda)*F(gamma_i(t))
                  +lambda*((1-t)*y_i+t*y_(i+1)) != 0.

Every cell is continuous because the actual F is entire. The endpoint equations
are proved exactly:

    H_i(1,lambda)=(1-lambda)*F(x_(i+1))+lambda*y_(i+1)
                =H_(i+1)(0,lambda),

with the final/initial equality using BOTH checked closure equations. This is
free-loop deformation data: the base value can move. It is not falsely labeled
as a based-path homotopy with fixed endpoints.

The source supplies these continuous cells, the all-point nonvanishing and the
seam equations. It does NOT yet construct a Mathlib global quotient-loop
homotopy object, implement a winding number, prove a rational ray-crossing
algorithm correct, or apply an analytic argument principle. Those exact bridges
remain acceptance/application tasks. In particular, ordinary principal arguments
cannot simply be subtracted across branch jumps to obtain a count.

## 3. A complete actual-source positive control

The literal square has vertices

    (19/20,-1/20), (21/20,-1/20), (21/20,1/20),
    (19/20,1/20), (19/20,-1/20).

All four records use c=1, R=1/10, S=1/2 and the exact sourced ball (v,e)=(1,0).
The old gate computes C=3, M=15/2 and r=3/4<1. Both endpoints of every edge are
inside the inner disk. The rational image polygon is the constant list one.
The new source candidates compose the literal finite guard with the actual
identity F(1)=1 to exclude source zeros on the ENTIRE closed square and throughout
all deformation cells. There is no additional assumed source enclosure in this
example, but all Lean proof scripts remain unexecuted.

This small square is not a height-fifteen counting contour. Its construction
shows that the finite coverage/tube interface is not an always-rejecting checker.
The full conclusion is not inferred from point samples or a drawn outline.

Controls reject a missing or extra edge, a missing closing vertex, a bad last
edge, changed external geometry, either unclosed chain, an imaginary image escape,
negative radii, a zero Cauchy gap, and equality rather than a strict margin.
Fictitious exact value two at one can pass the finite guard; its actual-source
enclosure is explicitly disproved. A synthetic function s-1 has nonzero endpoints
with a zero at the edge midpoint. Another synthetic source s is nonzero on a
whole unit-square boundary but has an interior zero. These are not zeta-zero
records. Boundary nonvanishing alone therefore is not an upper count.

## 4. Avoid crossing Re(s)=0 by exact zero reflection

The old source bound requires Re(s)>0. A contour crossing Re(s)=0 cannot consume
it silently. The new `MirrorCountingRectangle` instead selects the OPEN rectangle

    Omega_T={s : 1/4<Re(s)<5/4, 0<Im(s)<T+1/4}.

At T=15 its top is 61/4=15.25. Both the interior and boundary are within the
sourced right half-plane. The positive target includes Im=T, but its reflected
representative lies STRICTLY below this buffered top. No zero at the original
closed height cutoff is lost.

Every positive-height canonical target z with Im(z)<=T has an actual canonical
representative

    rep(z)=z if Re(z)>=1/2, otherwise J(z)=1-conj(z).

The maintained zero symmetry gives rep(z), with unchanged imaginary part and
1/2<=Re(rep(z))<1. Thus rep(z) lies inside Omega_T. This is not a projection onto
the line and does not require RH. The map can identify an off-line reflected
pair; it is NOT asserted to be injective or multiplicity-count-preserving.

The regional head is a FILTER of the existing complete head at T+1/4, and its
count K(T) uses the same actual analytic multiplicities. K(T)<=1 would imply
uniqueness of a distinct regional point, since every canonical multiplicity is
positive. The inherited local line point rho lies in Omega_15. Therefore
rep(z)=rho for every positive target point. Because J(rho)=rho, applying J when
needed recovers z=rho. The old no-real-zero theorem and conjugation cover the
negative half. The new conditional source theorem obtains

    K(15)<=1 ==> heightHead(15)={rho,conj(rho)},

and the bounded line conclusion. It does not obtain its hypothesis. This
regional route avoids requiring a contour to include every possible left-side
point directly; actual symmetry supplies the missing regional comparison.
It also avoids an unjustified numerical factor-of-two count shortcut.

The bottom edge is source-zero-free by the maintained real-axis exclusion,
INCLUDING F(1)=1. The right edge Re=5/4 is source-zero-free by the unconditional
strip restriction. The pole lies on the bottom edge at t=3/4; replacing F by raw
zeta would need different meromorphic pole bookkeeping. The left and top edges
still require their all-point source bounds, and ALL winding/argument variation
and count-normalization obligations remain. No successful full trace for this
large rectangle is claimed or supplied. A top buffer may make the sufficient
regional bound stronger than the target-height statement.

## 5. Evidence and remaining boundary

9,245 exact-rational assertions passed in an independent Python model, with
identical normal and optimized-mode reports. Explicit exception checks remain
active under optimization. Categories reuse inputs and are not counts of zeros.
The model covers 300 rational disk geometries; 120 complete chains totaling 660
edges; synthetic polynomial source/deformation samples; 840 malformed mutations;
240 mirror-coordinate cases; and 96 symmetric weighted regional models. Only 32
of those 96 satisfy the regional upper premise, and all 32 give the expected
bounded support. The other 64 are not treated as accepted count certificates.
There are 25 coverage/tube directed controls, four mirror controls and four
synthetic ray-crossing controls. The latter illustrate different windings of
zero-free boundaries; they are NOT a formal winding implementation.

No transcendental calculation, actual zeta evaluation, root finder, actual-zero
inventory, analytic count enclosure or successful large counting-contour trace
is used. Python does not execute Lean. Finite samples do not prove the all-point
geometry or analytic statements. Diagnostics remain outside the math repository.

Pinned elaboration, proof-script repairs, inherited finite reductions and
independent exact-type/import/axiom review remain mandatory. The next counting
supplier needs a complete evaluated large contour, a verified global winding
comparison and argument principle for F, matching analytic multiplicities and
open regional boundaries, and the actual upper bound K(15)<=1. Neither the small
positive control nor the regional comparison constructs that bound. Canonical
zero-divisor tails, global prime-source identities and strict prime margins
remain independent. No execution hold, worker authority, issue disposition,
public-root import, Legendre conclusion or RH conclusion changes.
