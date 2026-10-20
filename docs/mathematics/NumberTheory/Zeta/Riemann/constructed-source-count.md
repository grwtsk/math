# Source-derived rational values and a closed finite-input count interface

Owner #135; numerical supplier #194; canonical/prime consumer #261.
Parent `d39dd4203fb5ef306b095eac37784201a05e8882`, tree
`8f9501d705c19e0752e5372973fea08e6e7089ce`. Mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** Every new and inherited Lean
script remains unelaborated. This increment constructs the source-value supplier
that the previous finite contour consumer still required. It does not execute
the Lean checker, evaluate the complete large contour, or establish its count.
All prior functions, hypotheses, errors, targets, constants and public-root imports
remain unchanged. The new files give a more specialized constructed-input route.

## 1. Replace a value oracle with an actual finite construction

The preceding `RationalRectangleCount.count_eq_of_evaluate` had two substantive
inputs: genuine actual-source `Enclosures` and a successful finite evaluation.
The new route computes every patch value from the literal rational center and
natural numerical parameters. No source-value midpoint or radius is a field of
its `Plan`. Thus a caller cannot certify fictitious F(c) metadata by passing only
geometry and winding tests.

The construction reuses the SAME normalized source F, with F(s)=(s-1)zeta(s)
away from one and F(1)=1. No alternative zeta definition, sampled analytic truth,
root finder, database label, new axiom or source approximation equality is added.
The complete analytic error chain remains the inherited one, not a Python oracle.

## 2. Construct every inverse power from its base and resolution

`RationalPowerValue.Resolution` contains a dyadic scale, two logarithm term
counts, dyadic precision, squaring count and Taylor term count. The generic leaf
checks Re(s)>=0, the existing EXACT dyadic scale guard for t>=1, and the divided
Taylor admissibility inequality. It computes the rounded real log enclosure
ell from the old atanh implementation and forms w=-s*ell.mid using named complex
multiplication, not coordinatewise pair multiplication.

The old log-center theorem gives ell.mid.im=0 and ell.mid.re>=0. These facts
DERIVE Re(w)<=0; a separately declared exponent or sign flag is not trusted.
The magnitude bound is also computed from that same w.

The old `RationalRoundedExp.trace` constructs the exact rational Taylor seed,
its rounded coordinates, and every subsequent square and coordinate residual.
Its existing `trace_checked` theorem supplies all required seed, square and
length checks under the scalar guard. The new proof does not substitute a scalar
condition for the correctness of an arbitrary externally provided trace.

All inherited uncertainty remains:

    delta=2*(mag(w)/2^s)^M/M!,
    E_0=up(delta+seedResidual),
    E_(j+1)=up(2*E_j+E_j^2+squareResidual_j),
    E_power=up(E_s+mag(parameter)*E_log).

Shared log(2) error is still multiplied by its exact scale; the full lower-endpoint
log remainder and coordinate displacement survive rounding. The nonlinear E_j^2
and every local square error survive reconstruction. Log input error is charged
once along the true exponential, not lost on division by 2^s or counted twice.
The result encloses ORIGINAL t^(-s), not just exp at the approximate log.

An accepted guard says that the allowance is sound, NOT that it is small. In
particular M=0 is a valid coarse two-unit Taylor error when the scalar guard
holds. The controls distinguish that from requested precision and nonvanishing.

## 3. Complete finite normalized-source assembly

`RationalPoleValue.Parameters` supplies cutoff N, extraCorrections p, precision,
log terms, squarings and Taylor terms. The implemented correction count is p+1,
exactly matching the inherited source-tail theorem: p=0 means ONE correction.
The actual-source guard requires Re(c)>0 and N>=1, and checks every base in 1..N.
This is a sufficient domain; the fact that F is entire does not enlarge the
Mellin-source estimate to Re(c)=0 or negative real parts.

The scale for each integer base is computed by Nat.log2, but its exact power
inequalities are STILL checked. No general correctness or optimality theorem
for a scale search is assumed. Bases are their positions in the complete finite
range; there are no independently supplied labels, omissions, duplicate base
records, stored logs or free inverse-power accuracy hypotheses.

The existing pole-free finite assembler consumes these derived leaves, every
positive-base term, the inclusive endpoint and all Bernoulli/Pochhammer
corrections. It retains the minus-half endpoint convention, rounded prefix
arithmetic, product-of-radii terms and final displacement charges.

For m=2(p+1), B=mag(c), and the existing coefficient-sum majorant M_m, the OLD
source-value allowance is computed exactly as

    E_source=mag(c-1)*M_m*product_(j<m)(B+j)
                 / [m!*(m-1)*N^(m-1)].

It is added to the finite value-ball radius. Its source interpretation comes
from the inherited periodic-Bernoulli residual, not agreement with sampled zeta.
N>=1 and m>=2 protect the meaningful denominator before analytic use. The source
ball is not defined as merely the finite model's ball.

`evaluate_sound` targets Holds(output,F(c)) from finite success alone. A separate
`checkWithin` retains the full source radius and a nonnegative requested tolerance.
The generated derivative ball is ONLY for the finite model. A pointwise source
value remainder is not differentiated and does not enclose the actual F'(c).

At the removed pole, cutoff one and an exact base-one leaf compute the exact
ball (1,0) with radius zero. The proof follows the normalized finite-source
identity; it neither evaluates singular zeta(1) nor treats raw zero times a
totalized pole as the correct source value. At other cutoffs the generated pole
value may have rounding/log uncertainty despite the exact analytic identity.

## 4. Supply every contour Enclosures premise internally

A `ConstructedRectangleCount.Plan` contains only center, inner radius, outer
radius and the source-value numerical parameters. `record` computes its value
ball. `checkPlans` requires n>0, exactly n plans and source-validity for every
position. Default accessors have no evidential meaning outside these lengths.
`edgeAt_records` proves that the SAME plan supplies both literal center and value.

`enclosures_of_checkPlans` then derives the old `RationalPoleContour.Enclosures`
for every generated record. Repeated centers and zero-width mesh cells are
allowed only with all the original per-position records and checks intact.

The composite calls the UNCHANGED constructed-mesh count evaluator with those
records and the literal image list. It retains strict box geometry, all perimeter
marks, every patch/tube margin and endpoint test, image chart tests, complete
coverage, signed traversal, homotopy transport and canonical analytic orders.
Its theorem target now has ONE substantive proof premise:

    ConstructedRectangleCount.evaluate(T,n,marks,plans,image)=some k
       ==> (MirrorCountingRectangle.count(T):Int)=k.

No independent Enclosures, boundary exclusion, traversal equation, logarithm,
source/divisor equality, imageIndex=k or upper-count premise is left in this
specialized theorem. This does NOT weaken the old generic theorem: its analytic
premises are supplied by the generated-value proofs, not simply deleted.
A negative output is incompatible with a sound accepted result, not replaced
by its absolute value or truncated to a natural number.

At T=15, a successful some1 would feed the existing exact-pair consumer. Such a
complete target success has NOT been constructed. Eliminating an oracle from
the implication is not the same as providing its finite numerical witness.

## 5. Concrete local evidence and the remaining mesh cost

The old nine-cell small pole square is reused. Its values are now GENERATED from
cutoff1/one correction rather than supplied as exact-one balls. Source controls
recover the identical old records and some0. Missing even a zero-width cell's
plan, changed image values, false source domains and target-geometry reuse reject.
All these Lean decisions remain unexecuted source scripts.

A new literal pilot lies on the LEFT side of the actual target rectangle:

    c=1/4+(113/8)i, N=81, eight corrections,
    32+32 log terms, 32 Taylor terms, seven squarings, 160 bits.

Source candidates construct its full source ball, target radius below 10^(-16),
and a strict normalized-source patch with inner radius 1/10000 and outer radius
1/8. The same computed ball FAILS the patch gate at inner radius 1/1000. The
composed theorem targets nonvanishing throughout that ONE closed disk without
an external value premise. Its large finite decisions have NOT run in Lean and
may need reduction-budget/proof-script repairs. This disk is not a full contour.

The independent rational calculation gives a value radius about
4.082714800070e-18 and strict patch slack about 1.587168061912 at radius1/10000.
Ten complete positive-base pilot evaluations cover selected target-boundary
locations, including corners and the removed pole. They are POINT pilots,
not a coverage claim or a verified numerical count. The largest model source
radius among them is below 2.001e-17.

The variation cost remains separate from arithmetic precision. For a fixed outer
radius S and source ball (v,e), put g=max(|Re(v)|,|Im(v)|)-e>0 and C=sourceBound(c,S).
With 0<=R<S, elementary exact algebra rewrites the old strict patch condition as

    C*R/(S-R)<g  iff  R<g*S/(C+g).

At the left-side pilot this threshold is about 2.127955650055e-4. Equality REJECTS.
Shrinking a value radius already near 4e-18 cannot materially change this threshold;
the dominant restriction is the inherited conservative Cauchy variation bound.
This is a local, fixed-S sufficient-budget calculation, not a global minimum,
a necessary analytic cell width or a resource lower bound for every algorithm.
The next implementation can construct an adaptive mesh under this bound or derive
a sharper whole-disk variation estimate; it must not relax the existing margin.

## 6. Evidence and acceptance boundaries

8,960 independent exact-rational assertions passed in EACH normal and optimized
Python mode, with byte-identical reports and explicit exceptions in both. The
checks cover small constructed-source cases, 810 complete target-pilot leaves,
5,670 local square residuals, rational source-tail accounting and strict radius
thresholds. Counts reuse inputs across properties and include 23 directed controls;
they are not counts of independent analytic proofs or certified zeros.

1,724 ORDINARY comparisons at 100 decimal digits passed, with diagnostic slack
1e-85 and no recorded excess over the stated allowances. They compare actual
zeta-derived normalized values, finite models, finite derivatives, logs and powers.
Forty nearby probes test variation ONLY AT THOSE POINTS. These are not outward
interval certificates, uniform derivative proofs or a substitute for source
elaboration. No root finder, zero database or complete contour was used.

Python is a separate implementation. Its caches, arithmetic iteration and runtime
have no formal compiler/parser/refinement status. Diagnostic code and the ten
full leaf inventories remain outside the pure mathematical repository. The
reference expression's large exact finite reductions have no established time,
stack or memory bound. In particular validity is not a practical precision guarantee.

Pinned elaboration, possible repairs, all predecessor declarations and generated
members, exact types, complete import/axiom/native-dependency coverage, all large
finite decisions and independent acceptance remain mandatory. No Lean/Lake,
worker/build/replay request, execution-hold release, merge or issue closure occurs.
The remaining numerical supplier is a successful COMPLETE target mesh/image/plan
inventory. K(15)<=1, a completed finite zero inventory, universal prime margins,
Legendre and RH are not established by this increment.
