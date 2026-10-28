# Source-synchronized graph refinement from RS observations and arithmetic moments

Local mathematical attribution: grwtsk contributors.

Reviewed base: grwtsk/math@c3b054a75d42c7cf8ff8fddbc43fa27fa5d5e1f0.
New results are SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay and
transitive axiom inspection are NOT_RUN. Older evidence retains its exact scope.

## Existing mathematics applied

- Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement: actual encoder/decoder,
  exact source coverage, node-change transport, its composition, source_error_bound,
  and the codeword_error_invisible control.
- Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge:
  arithmetic-moment actions and transport_naturality on every genuine graph path.
- NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra:
  Dirichlet-convolution zeta and Mobius inverses, before prime enumeration.
- NumberTheory/Zeta/Riemann/ScrewKernelRefinement: the literal finite zero-bin
  function, multiplicities, rotated coordinate and signed payload (g(t-u),g(t),g(-u)).
- CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich: lower, actual,
  upper relations and path transport. OrderedControl deliberately did not bind
  payloads to edges; the new observation sandwich constructs that comparison.
- NumberTheory/Primes/RadicalLogEntropy.sum_log_primeFactors: the attached older
  cast/log target already has its source proof; it is not reopened.
- NumberTheory/Zeta/Riemann/CertifiedZeroHeight: exact same-height interval
  intersection, decimal-floor stopping, and the distinct total-count requirement.

The existing SynchronizedSchurJet source was also inspected. Its path theorems
already preserve actual effective pencils, supplied jet coefficients, and both
involutions. The new arithmetic coding theorem complements this algebra; it
DOES NOT derive missing analytic jet bounds from RS symbols or identify every
moment sheaf with that analytic jet sheaf.

## 1. Moment operators survive changes of evaluation nodes

For a source code E:X->Y, D:Y->X with D E=id, define Pi=E D. For the actual
rational arithmetic-moment representation A(a), define Ahat(a)=E A(a) D.

The new source proves:

    Pi^2=Pi,
    Ahat(a) Ahat(b)=Ahat(a*b),
    Ahat(1)=Pi,
    Ahat(mu) Ahat(zeta)=Ahat(zeta) Ahat(mu)=Pi.

Here a*b is Dirichlet convolution. Pi is not generally the ambient identity,
not an asserted orthogonal projector and not an empirical barycenter.
Retain r=y-Pi(y). Then D(r)=0 and Ahat(mu) Ahat(zeta)y+r=y exactly.
A coherent error E(e) instead changes the decoded source by e; a syndrome
annihilating the code space cannot discover that error by itself. Independent
source bounds, moments or enclosures remain necessary.

For the existing moment-sheaf path restriction R:s->t, use

    That=E_t R D_s.

The already proved path naturality gives

    That Ahat_s(a)=Ahat_t(a) That

for every arithmetic moment a. Decode(That(y))=R(D_s(y)). A noninjective R is
not made invertible by this formula. A changing finite vertex inventory still
needs its actual embedding/coarsening map; common matrix dimensions do not suffice.

## 2. A target-specific improvement: two quadratic samples

The existing encoder samples P_x(z)=x0+z*x1+z^2*x2. Its actual screw consumer is
L(x)=x0-x1-x2. Therefore, when two declared nodes are exactly 0 and 1,

    L(x)=2 P_x(0)-P_x(1).

If their actual sample errors are bounded by e0,e1, then

    |2 y0-y1-L(x)| <= 2 e0+e1.

The other two received symbols are retained for audits but need not be controlled
for this scalar theorem. This removes full-payload reconstruction as a premise of
this readout. It does not assert error-correction from two corrupted samples.
For nodes (0,1,2,3) and the decoder using the first three samples, L D=(2,-1,0,0);
the scalar bound is sharp for aligned errors e0 and -e1. A bound 3 max_i(e_i) can
therefore be replaced by 2 e0+e1 for that readout. This is not a dominance claim
for every decoder or every norm.

For arbitrary node sets the existing bound is retained unchanged:

    e_B = ||L D_B|| delta_B + sum_i ||L D_i|| epsilon_i.

Coverage is the exact sum of the actual source payloads. All child errors,
aggregate seam, decoder conditioning and source multiplicities remain visible.
The two new zero-bin graph constructors APPLY these respective inequalities to
zeroBinFunction, not to a fitted polynomial asserted to be zeta.

## 3. Returned observations construct the sandwich

Let a_v be an actual observation, ahat_v its return and e_v a proved error bound.
An independently justified guard retains source, domain, sector and transport
compatibility. For tolerance tau(u,v), define

    lower: guard and |ahat_u-ahat_v|+e_u+e_v <= tau,
    actual: guard and |a_u-a_v| <= tau,
    upper: guard and |ahat_u-ahat_v| <= tau+e_u+e_v.

Triangle inequalities prove lower subset actual subset upper. Nearby values or
equal radicals are not proofs of the guard. The middle is an ACTUAL relation,
not a search score. These are finite observation comparisons, not automatically
same-zero identifications.

Two certificates for the SAME middle relation combine by

    lower_new=lower_1 union lower_2,
    upper_new=upper_1 intersection upper_2.

Every actual edge remains admitted and upper_new minus lower_new is contained
in the preceding unresolved relation. This cumulative update remains safe even
when a new observed center moves. Smaller radii alone, without enclosure or
common-source proofs, do not justify pruning an earlier candidate.

## 4. Radical data bind support, not multiplicity or zero identity

Under primeFactors(q) subset primeFactors(r), the existing radical identity gives

    log(rad(r))-log(rad(q))
      = sum_{p in primeFactors(r) minus primeFactors(q)} log(p).

It prices precisely new DISTINCT prime support. Repeated prime powers have zero
increment in this observation, but their exponents, square-divisibility tests,
retained winding, arithmetic signs and spectral multiplicities are not removed.
For example rad(6)=rad(12), while mu(6) differs from mu(12).

The rational arithmetic moments here are operators for Dirichlet convolution.
They are not implicitly power sums of numerical zero ordinates. Any selected
spectral moment must supply its own source/readout identification. Likewise,
radical entropy is not prime-density cancellation or an independent zero count.

## 5. Where zeros actually need refinement

For a cell C with center c, suppose |z-c|<=r on C, a certified sample fhat(c)
has error eta, and the ACTUAL source has |f(z)-f(c)|<=K|z-c| on C with K>=0.
The new finite comparison proves

    eta+K*r < |fhat(c)|  =>  f has no zero anywhere in C.

The source includes the literal f=riemannZeta specialization, with all three
suppliers explicit. No certified numerical zeta samples or variation bounds
are manufactured by that wrapper. The analytic domain and pole handling must
justify the variation premise. If a polynomial/Schur jet supplies the model,
its analytic remainder, normalization and transport errors must all enter eta.

The useful refinement test is the COMPLETE margin |fhat(c)|-eta-K*r.
Nonpositive margin means unresolved, not proof of a zero. Reduce the dominant
returned sample error, split the spatial cell, improve the genuine variation
bound, or strengthen independent moment constraints as appropriate. A child
with more interpolation nodes but worse decoder norm need not improve eta.

For an existing certified zero, same-source interval intersection gives an actual
smaller admissible height set. The new synchronized_height_digits theorem calls
the existing common_digit consumer; it does not infer same-zero identity from
an overlap chain. Bounded completeness still needs the existing exact count and
multiplicity agreement. No new zero-height interval or all-scale RH estimate is
computed in this increment.

The older pickup and reflected-source analytic RH returns are preserved. A
screw-source comparison is not silently identified with pickupCross or the
reflected compensated observable. These modules add a reconstruction/refinement
connection rather than another analytic return or a Hermitian-positivity argument.

## Source organization and provenance

- Analysis/OperatorTheory/SpectralTheory/Sheaf/CodedMomentTransport.lean
- CombinatoricsAndDiscreteMathematics/GraphTheory/ObservationSandwich.lean
- NumberTheory/Zeta/Riemann/ScrewRefinementLocalization.lean

These extend the existing subject hierarchy and reuse the exact sources above.
No new external-paper analytic theorem is imported. Existing literature entries
and upstream licenses remain unchanged; no historical influence is inferred.
Public-root imports and dependency pins are unchanged. The passive verification
manifest binds the new source commit and all 39 lexical declarations. Operational
tests and receipts remain outside math. Connector-configured Git identity is not
claimed to be a custom author/committer override.
