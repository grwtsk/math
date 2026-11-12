# Complete finite principal parts on the actual Weil rectangle

Attribution: grwtsk contributors. Date: 2026-11-11 (America/Los_Angeles).
Inspection base: `4363be401abeff44c5620dc3be90f757731c84c9`.
Coordination: math#1801, scope comment 6815897022.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
MSC2020: primary 11M41; secondary 11M06, 30E20.
Maintained source: [WeilRectangleRegularization.lean](../WeilRectangleRegularization.lean).

## Evidence and exact scope

SOURCE_PROOF_CANDIDATE. The argument below is a written mathematical proof;
the accompanying Lean bodies have NOT been elaborated or kernel-replayed.
Transitive axiom audit, independent review and repository-wide checks: NOT_RUN.
Imported source candidates retain their existing status. No claim of checked
formalization, arithmetic sign, RH/GRH, or program completion is made.
Novelty: UNASSESSED. These are classical local-to-global analytic arguments.

This increment constructs a holomorphic remainder after subtracting the COMPLETE
finite principal part of the actual weighted completed source on a rectangle.
It also proves, at source-candidate level, that the remainder's oriented
four-edge integral is zero. The next integral normalization is NOT silently
imported from a topological winding number: the general rectangular integral
of 1/(s-a), and the linearity/assembly with the actual source integrals, remain
separate formal obligations. The old centered-square integral is not that theorem.

## Objects and quantifiers

Let N>0 and chi be a primitive complex Dirichlet character of level N. Use the
unchanged analytically continued LFunction and completedLFunction; write them
as L_chi and Lambda_chi. The latter includes the gamma factor, but NO additional
N^(s/2). Its genuine functional equation uses chi inverse.

For T>0 the closed domain is

    R_T = {s : -1 <= Re(s) <= 2, -T <= Im(s) <= T}.

The canonical heightWindow consists of original open-strip zeros rho with
|Im(rho)|<T, counted once as LOCATIONS. Every coefficient uses the separately
proved positive analytic order m_chi(rho)=zeroMultiplicity chi rho. This order
is not the cardinality of the window, an eigenvalue multiplicity or a residue
of Lambda itself. No simplicity or exclusion of real/central zeros is imposed.

Let Z_T be the image of that finite window in C. For uniform treatment of the
exceptional points, S_T={0,1} union Z_T. The two endpoint slots carry zero
coefficients for N!=1 and negative pole coefficients for N=1. They are not
additional zeros. For an entire W put

    c(a) = m_chi(a)*W(a),              a in Z_T,
    c(0) = -W(0), c(1) = -W(1),       N=1,
    c(0) = c(1) = 0,                 N!=1.

The generic theorem assumes that Lambda_chi is nonzero at every point with
|Im(s)|=T. The actual-source consumer DISCHARGES this using the existing
source-selected heights. Its quantifier order is

    for every primitive chi, there exists T:Nat->Real,
    n+2<T_n<n+3 for every n,
    for every admissible f and support radius A, for every n, there exists G_n.

There is no supplied zero enumeration, analytic remainder, gamma estimate,
source-growth estimate or contour identity among the final consumer premises.
The generic helper's horizontal nonvanishing premise remains explicit.

## 1. Close the two half-plane boundary gaps

The Euler argument alone yields nonvanishing only for Re(s)>1. To exclude
zeros on Re(s)=1, use Michael Stoll's pinned theorem
LFunction_ne_zero_of_one_le_re, whose exceptional alternative is
chi!=1 OR s!=1. At such s, the already proved gamma regularity for Re(s)>0
and the exact completion product give Lambda_chi(s)!=0.

For a completed zero s away from 0 and 1, this implies Re(s)<1. Suppose
Re(s)<=0. Then u=1-s has Re(u)>=1 and u!=1. The same closed-half-plane theorem
applied to chi inverse gives Lambda_(chi inverse)(u)!=0. Both the conductor
power and root number are nonzero, proved before cancellation. The exact
functional equation at u then makes Lambda_chi(s) nonzero, a contradiction.
Thus 0<Re(s)<1. In this strip the gamma factor is nonzero, so the original
LFunction vanishes. This proves completed_source_zero_in_open_strip without
RH/GRH, a projected zero coordinate, or a series outside convergence.

At primitive levels N!=1, chi!=1: otherwise its conductor is 1 and primitivity
would force N=1. The completion is therefore entire. Its value at 1 is nonzero
by the same right-boundary theorem using chi!=1. The inverse character is also
nonprincipal, and the functional equation at 1 proves nonvanishing at 0.
Both real points are thus analytic units. This excludes neither a real strip
zero nor a central zero at 1/2.

## 2. Prove that the finite singularity set is complete

The canonical DirichletZeroMultiplicity source already derives finite height
windows from compact zero finiteness and source nonvanishing, rather than
assuming an enumeration. Reuse that exact window and its multiplicities.

Take s in R_T outside S_T. It is not 0 or 1, so the completion is analytic near
s. If it vanished, step 1 would give a CriticalStripZero at the same complex
location. Rectangle membership gives |Im(s)|<=T. Equality contradicts the
horizontal nonvanishing premise. Hence |Im(s)|<T, so the canonical window
contains that zero, and its image belongs to S_T: a contradiction.

This proves actual analyticity and nonvanishing at EVERY nonsingular point of
the closed rectangle. No finite sampling, numerical localization or artificial
critical-line hypothesis is used. In addition, every member of S_T is strictly
inside R_T when T>0: endpoint heights are zero, and each window zero has strict
height bound and real part in (0,1). Thus every point of all four contour edges
lies outside S_T, including all corners and both real-axis crossings.

## 3. Construct analytic weighted local principal parts

At a window zero rho, the existing source factorization gives

    logDeriv(Lambda_chi)(s) = m_chi(rho)/(s-rho) + A_rho(s)

on a punctured neighborhood, with A_rho analytic near rho. This is stronger
than a scaled-limit coefficient. At zeta's two poles the actual signed local
factorizations have order -1, so BOTH logarithmic coefficients are -1, even
though the residues of Lambda itself at 0 and 1 have opposite signs. At
non-zeta levels, step 1 supplies an analytic logarithmic derivative at both
endpoint slots and the coefficient is zero.

Multiplication by W changes the regular part as well as the coefficient. For
any local coefficient c at a, write

    W(s)*(c/(s-a)+A(s))
      = c*W(a)/(s-a) + c*dslope(W,a,s) + A(s)*W(s).

The divided difference has its derivative value at a and is analytic there.
The existing FinitePoleSubtraction.principal_part_mul proves this identity.
Its right-multiplication convention is converted using commutativity in C,
not by conjugating W or replacing it by a norm square. This construction
supplies weighted analytic principal parts at all members of S_T.

## 4. Finite subtraction, without assuming a regular remainder

Apply the existing finite_pole_subtraction theorem to the actual function
F(s)=W(s)*logDeriv(Lambda_chi)(s), the complete finite set S_T, and coefficients
c(a). Its off-set regularity premise is discharged by steps 1-2 and entire W;
its local analytic-part premise is discharged by step 3.

The theorem constructs G by successive point updates at the removed centers.
Outside S_T it agrees with F minus the finite rational principal part, and it
is analytic on a neighborhood of each point of R_T. Values assigned by the
field operations to F at the original singularities are never used to assert
continuity or compute a residue.

The image of a subtype has no collisions. Further, no strip zero equals 0 or 1.
Using these facts, weil_principal_sum_eq identifies the rational sum exactly:

    sum_(a in S_T) c(a)/(s-a)
      = sum_(rho in heightWindow(T)) m_chi(rho)*W(rho)/(s-rho)
        - delta_(N=1) * (W(0)/s + W(1)/(s-1)).

The algebraic equality is valid as an equality of total functions, but its use
as a principal-part formula is RESTRICTED to s outside S_T. Thus

    W(s)*Lambda'_chi(s)/Lambda_chi(s)
      = G(s) + sum_rho m_chi(rho)*W(rho)/(s-rho)
        - delta_(N=1)*(W(0)/s+W(1)/(s-1))                 (1)

at every nonsingular point, in particular along all four edges. No zero-free
normalization factor has been discarded; its contribution is retained in G.

## 5. The remainder's actual rectangle integral

Analyticity of G on R_T implies continuity and complex differentiability there.
Each affine edge restriction is continuous on its compact parameter interval,
hence interval-integrable. This regularity is established before using the
pinned Cauchy-Goursat rectangle theorem. Its exact orientation gives

    integral_-1^2 G(x-iT) dx - integral_-1^2 G(x+iT) dx
      + i*integral_-T^T G(2+iy) dy
      - i*integral_-T^T G(-1+iy) dy = 0.                 (2)

The bottom runs rightwards, right edge upwards, top leftwards, and left edge
downwards. Horizontal dz is dx; vertical dz is i*dy. The formal source adapts
mathlib's unordered closed intervals to R_T using T>=0 and -1<=2. No punctured
or discontinuous raw remainder is passed to Cauchy-Goursat.

Equation (2) does not evaluate the rational terms in (1). To finish the finite
residue theorem one still needs the general rectangle integral of 1/(s-a)
for each interior a and then linearity with genuine edge integrability. A
centered-square calculation or a topological index equal to one does not by
itself supply this missing general integral comparison.

## 6. Return to the original test and explicit zeta

For canonical Admissible f supported in [-A,A], A>=0, use EXACTLY

    C_f(r)=integral conjugate(f(t))*f(t+r) dt,
    W_f(s)=integral C_f(r)*exp((s-1/2)r) dr.

WeilContourWeight supplies entire analyticity of this W_f. The same weight
retains the full reflected Fourier pairing at each original complex zero,
not a projection to the ordinate and not an off-axis absolute square.
The completed-source height theorem supplies nonvanishing at sigma+i*T_n
and sigma-i*T_n for every real sigma, before selecting any test. Splitting
according to the sign of Im(s) turns this into the |Im(s)|=T_n premise above.
The bounds n+2<T_n<n+3 also give T_n>0, so every boundary point is outside S_T.

The final zeta theorem uses completedLFunction_modOne_eq literally. It retains
-W_f(0)/s and -W_f(1)/(s-1). Neither pole-neutral condition is imposed. The
canonical inverse-character arithmetic convention and all conductor/gamma
normalizations are unchanged. Prime-power inversion, compensated archimedean
integration, the infinite explicit formula and all-test positivity are NOT
consequences of this finite regularization step alone.

## Falsification and independent-evidence boundary

The following exact rational-function fixture tests signs and multiplicities,
not the arithmetic assertions. Set a=1/3+i/2, b=2/3-i/2,

    F(s)=(s-a)^2*(s-b)^3/(s*(s-1)),  W(s)=1+s+s^2.

Subtract the principal part

    2*W(a)/(s-a)+3*W(b)/(s-b)-W(0)/s-W(1)/(s-1).

The regular remainder is exactly 3*s+14/3-i/2. Its correctly oriented rectangle
integral is zero. Replacing multiplicities 2,3 by 1,1 leaves poles; reversing
the sign of the pole at 1 leaves a pole; omitting W's divided difference gives
the wrong regular remainder. These failures identify specific invalid shortcuts.
The test function here is a polynomial fixture, NOT a compact-support Fourier
weight or a counterexample to RH/GRH. Two algebraic checks are not independent
proofs of the analytic source theorem.

Other checks in the written argument: the closed-half-plane input cannot be
replaced by strict Euler nonvanishing; boundary-only nonvanishing does not prove
whole-rectangle analyticity; endpoint coefficient zero does not make a pole an
analytic unit; and zero residue alone does not rule out a higher-order pole.
Our local weighted construction uses the actual simple principal-part equality.

## Individual source provenance

Every public theorem and definition has its own adjacent Markdown record.
Private helpers are accounted for here: primitive_ne_one_of_level_ne_one uses
the definition of IsPrimitive and conductor_one; analyticAt_completed_source_off_endpoints
uses the continuation theorem on the open complement of {0,1}; stripZero_ne_zero
uses its original strict real-part hypothesis; completed_log_principal_at_endpoint
uses the two actual zeta factorizations or the proved non-zeta analytic units.

Primary formal sources (Apache-2.0) at the Mathlib pin:

- Michael Stoll, NumberTheory/LSeries/Nonvanishing.lean,
  LFunction_ne_zero_of_one_le_re; blob 789e0aae6e9378c8f5c8a7a07a905830e20b5433.
- David Loeffler and Michael Stoll, NumberTheory/LSeries/DirichletContinuation.lean,
  differentiableAt_completedLFunction, differentiable_completedLFunction,
  completedLFunction_modOne_eq, IsPrimitive.completedLFunction_one_sub;
  blob 89c72580697983d86706cff17ccbea2cee6475a3.
- Yury Kudryashov, Analysis/Complex/CauchyIntegral.lean,
  integral_boundary_rect_eq_zero_of_differentiableOn;
  blob aac86aa902e778812ce356a977d682cff3105b0f.

Canonical local inputs (MIT; grwtsk contributors) at the inspection base:

- FunctionsOfAComplexVariable/FinitePoleSubtraction.lean, principal_part_mul and
  finite_pole_subtraction; blob fb4dad9362807e52bc3635ebc68c20380dac0bdd.
  Its legacy GeneralTopology.LogarithmicPrincipalPart import exists at this base;
  it is NOT replaced or silently promoted to verified status by this increment.
- FunctionsOfAComplexVariable/LogarithmicPrincipalPart.lean,
  exists_analytic_remainder; blob 344feefcd90eb45479a3f887d157dfc4ca3df5a6.
- DirichletZeroMultiplicity.lean, CriticalStripZero, zeroMultiplicity,
  heightWindow, mem_heightWindow; blob ef9d9f861731f11e446dd59bd60c8896b1e5462d.
- DirichletLogarithmicResidues.lean, exact gamma completion, strip-zero principal
  parts and both signed zeta factorizations.
- DirichletWeilIntegrand.lean, rootNumber_ne_zero_from_completed_source and the
  actual dual-character convention; blob 4cdd68933d9bd8bf481d4b4ec4ace9689b967829.
- WeilContourWeight.lean, analyticOnNhd_correlation_contour_weight;
  blob aa53350b401764c081a0559833d7f840a5ecc847.
- DirichletCompletedHorizontalLogDerivative.lean,
  exists_horizontal_completedLFunction_logDeriv_bound;
  blob 4ca3d1fc73c6670a347f77943b403d10ad96a522.
- WeilHorizontalEdges.lean, preceding contour context and imported definitions;
  blob 296421b2cc36962787cbc5f167bbad7dec9e2dfc.

The source search found and reused the finite pole-subtraction construction,
finite actual height window, and the existing weight and boundary suppliers.
An exact-name search for weil_rectangle_regularization returned no result;
this is not a comprehensive absence theorem or a novelty determination.
No external paper proof is claimed to have been ported in this increment.

## Remaining obligation and reproduction

RP-OC-02's source-return contour component advances by complete finite
regularization and Cauchy-Goursat removal of its regular term. RP-OC-01/B inputs
are reused, not newly checked; A receives declaration provenance. RP-OC-03--10,
C--F and the four higher-realization extensions are unchanged. These are task
identifiers, not new frontier claim IDs. No completion marker changes.

Proposed, NOT EXECUTED:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRectangleRegularization

Then inspect all exact signatures and #print axioms for the public theorems and
imported closure, followed by fresh kernel replay and independent source review.
The current source publication does not provide these missing receipts. The
canonical proof-automation skill was inaccessible at Noe revision
8b50d43323f27bb13bdcae9f2e2b4a81c9895827; dependent execution stopped. Publication
and ordinary source-integrity observations are recorded in math#1801.
