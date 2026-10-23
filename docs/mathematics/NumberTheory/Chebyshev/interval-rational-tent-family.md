# Checked tent families, direct sensitivity, and finite-source transport

Owner #194; consumers #189/#261 under #257. Additive extension of draft #274.
Parent `b2de5f032b919b92aa5123d77ec3372e2137c919`, tree
`1236624acb5f8fbd4564bc03823c861de2cea4ea`.
Mathlib remains `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** All new and inherited Lean
scripts are unelaborated proof candidates. No binary, runtime, parser or actual
zeta inventory is qualified. No originality claim is made for the elementary
finite error propagation or the positive-weight sensitivity argument.

## 1. The same tent, now a multiplicity-weighted family

Reuse the normalized weight and its existing integral-defined transform:

    w(t)=max(0,1-|t-x|/h),
    M(x,h,z)=integral_(x-h)^(x+h) w(t) exp((z-1)log(t))dt.

The previous direct midpoint rule computes the positive integrated cell masses
and checks one complete tent transform. The new RationalTentFamily reuses that
checker, the existing RationalMellinFamily.Member record type, and the existing
RationalFiniteSum arithmetic checker. It does not redefine the tent, count,
correction, multiplicity concept or unweighted interval-family target.

The external ordered records contain a natural key, rational complex center c_j,
and positive natural multiplicity m_j. All members share the external rational
geometry x,h, with h>0 and x-h>1. Each evaluation matches its external key and
contains its own positive half-cell count and complete two-half tent trace.
Every member is checked, including both halves and every node. Its center must
satisfy the inherited Re(c_j)<=1 domain. Different resolutions are permitted.

Exact lengths, unique keys and positional key agreement prevent missing, extra
or reordered evaluations from being silently accepted. Equal centers with
different keys are retained. Keys do not establish analytic provenance; in
particular different keys need not denote different actual source zeros.

## 2. Values, errors and every weighted update

For each accepted local output V_j, let E_j be the full computed tent allowance:
its discretization, every log/exponential node error and its internal weighted
sum. The family forms the EXACT rational terms m_j V_j and allowance sum m_j E_j.
The unchanged finite-sum checker then checks J+1 accumulator values, J radii,
zero initialization and every local residual against A_j+m_j V_j.

It follows in the source draft that

    |sum_j m_j M(x,h,c_j)-A_J| <= sum_j m_j E_j + sum_j r_j.

Rounded multiplication as well as addition is covered by each outer residual.
The complete imaginary component is checked by the rational Euclidean ball
test. Inner tent accumulation and outer family accumulation are distinct;
neither is dropped or counted twice. Cancellation of computed values does not
justify cancellation, independence, or root-sum-square combination of bounds.

checkWithin compares this entire rational allowance to an external nonnegative
tolerance. referenceTrace constructs both half-node lists for every member and
all outer prefix sums; reference_checked targets acceptance at every admitted
set of resolutions satisfying the actual log-scale and Taylor guards. It does
not assume a passing family witness. Requested-precision completeness and
practical resource bounds remain separate.

## 3. A direct coordinate estimate using the tent mass

For t>1, Re(z),Re(v)<=1, the inherited parameter derivative gives

    d/dz exp((z-1)log(t)) = exp((z-1)log(t))*log(t),
    |d/dz exp((z-1)log(t))| <= log(t).

The half-plane is convex, so the source derives

    |density(z,t)-density(v,t)| <= log(t)|z-v|.

Integrating separately on the two nonnegative affine tent pieces, and using
their exact masses h/2,h/2, yields

    |M(x,h,z)-M(x,h,v)| <= h log(x+h)|z-v|.

This uses the true mass h, not support length 2h. It avoids four separately
amplified interval bounds and needs no numerical call at z+1. Zero and minus
one are ordinary parameters of the integral: no singular quotient is substituted.
There is no imaginary-height factor in this parameter-sensitivity bound on the
selected half-plane. The earlier SPATIAL quadrature error still contains
q=|Re(z)-1|+|Im(z)| and h^2/N; these are different error channels.

For the same finite weights and indices, source coordinate enclosures give

    |sum_j m_j M(rho_j)-sum_j m_j M(c_j)|
      <= h log(x+h) sum_j m_j radius_j.

Both actual and center real parts must satisfy the domain. A tiny coordinate
radius does not repair an incorrect multiplicity, omitted source, or changed
observable.

## 4. Rational upper bound, but no fabricated coordinate certificate

RationalTentEnclosure reuses RationalLogEnclosure at the EXACT endpoint b=x+h.
With a valid dyadic scale and positive resolutions it computes

    L_plus = logCenter(b)+logRadius(b) >= log(b).

It checks exactly J nonnegative coordinate radii and computes

    E_coordinates = h L_plus sum_j m_j radius_j,
    E_total = E_coordinates + E_family.

The new checkWithin tests E_total<=epsilon in rational arithmetic. Its soundness
theorem additionally requires separately PROVED actual coordinate enclosures
and Re(rho_j)<=1. The Boolean tests do not examine a noncomputable rho_j or prove
that an approximate box contains an actual zero. Their finite arithmetic checks
price independently justified coordinate uncertainty; they do not establish it.
The log upper bound is computed, not an unverified caller-supplied sensitivity.

## 5. Exact finite-source correspondence, not labels

reindexed_source_sound accepts a finite source type I, its parameter map and
actual natural multiplicity map, and an equivalence

    {j // j in range(J)} equiv I.

It also requires exact agreement of the indexed parameters and multiplicities
with that source under the equivalence. Reindexing the finite sum then gives the
same requested tolerance for the SOURCE sum, rather than only the supplied list.
For a canonical application, I may be the subtype of the independently defined
complete finite-height head. That head and the equivalence are NOT constructed
here. External numerical records still need independent source identification,
true analytic multiplicities, complete selected-height coverage and coordinate
certification. An injective but nonsurjective map may omit a source; a surjective
but noninjective map may duplicate one. Unique record keys prove neither property.

This is finite-source transport, not a global explicit formula or a divisor-tail
bound. An empty record list can certify an empty finite sum, but cannot supply an
equivalence to a nonempty canonical source type.

## 6. Controls and resource distinctions

Two distinct keys at c=1 with multiplicities 2,3 on x=3,h=1 give output 5 at zero
family allowance. This reuses the tent's mass one, not the unweighted interval's
length two. For the nonconstant c=0 example, the same weights require five times
the preceding single-tent allowance: the family accepts tolerance 5 and rejects
1 even though each member accepts 1. These allowances need not be actual errors.

With radii 1/10,1/5 at those two keys and one-cell log grids at b=4, L_plus=2.
The coordinate allowance is exactly 8/5, including multiplicities; it is charged
even when the selected actual parameters happen to equal their centers. The
finite precision check accepts 8/5 but rejects 4/5. That is not evidence of a
positive lower bound on numerical error. Negative/missing radii and invalid
endpoint log scales fail. Separate controls reject duplicate keys, zero weights,
missing/extra/reordered members, changed geometry, and false or imaginary
accumulator defects. Synthetic nonbijective maps cannot be source equivalences.

## 7. Acceptance and next application

The isolated root is QuadraticIntervalRationalTentFamilyCore. The static target
inherits the exact preceding tent target and all earlier obligations. Selected
name/blob catalogs do not replace exact public types, generated structure and
decision declarations, full transitive imports/axioms or independent acceptance.
No Lean/Lake build, worker action, F06 release, merge or issue closure is attached.

Pinned elaboration/repairs and transitive trust review remain mandatory. The next
application must instantiate the finite-source correspondence for actual selected
zeros, with certified coordinates and multiplicities, and combine the SAME tent
sum with the independently established source/correction/tail identities. Useful
precision at all arithmetic stages requires resource allocation across every
channel. Parser correctness, operational size limits, rounded-input transport
and generated-code qualification remain outside this pure mathematics increment.
Neither accurate finite sums nor the new coordinate estimate supplies favorable
prime margins. No new prime-distribution estimate, Legendre or RH claim is made.
