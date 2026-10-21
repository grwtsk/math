# Exact source seed binding for the existing cell-275/base-16 witness

Owner #135; finite arithmetic supplier #194; canonical/prime consumer #261.
Parent `224a103d93f264fb5282408599b3f9584ef49924`, tree
`22386dc809d0c7487354283e50265ffccd06d126`.
Mathlib remains `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** This increment supplies closed
proof scripts for ONE literal inverse-power leaf. The scripts have not been
elaborated. They are not an accepted Lean computation or a complete contour-cell,
block, zero-count, zero-location, or prime certificate. All 38 original block
obligations and every inherited trust obligation remain.

## 1. Close the existing premise instead of changing its meaning

The preceding `HeightFifteenSquareWitness` records eight states for seven rounded
squares at cell275/base16, but its actual initial-state binding and source guard
were supplied through the explicit premise `SourceReady`. Those definitions and
conditional theorems remain unchanged.

The new `HeightFifteenSeedBinding.seed_binding` has type exactly that old
`SeedBinding`; `source_ready` has type exactly that old `SourceReady`, with no
caller-supplied hypothesis. `leaf_checked` composes it with the old seven transition
scripts. This is a closed SOURCE proof composition, not evidence that Lean has
accepted any of those declarations. In particular no Python result is imported
as a theorem, axiom, success flag, external value table or native truth oracle.

All original candidate geometry, parameters, plans, source formulas, square
states, error allowances, historical targets and public imports are preserved.
The exact center is 1/4+(248819/16384)i; base16 uses scale4,16+16 logarithm terms,
80 bits,7 squarings and16 exponential Taylor terms. Cell275 is a contour index,
not the location or ordinal number of a zeta zero.

## 2. Bind the complete logarithm before the exponential seed

The old atanh formula, with mantissa16/2^4=1, gives the exact unrounded ball

    log center = 40889372415589810883810816 / 14747723702258348925112275,
    log radius = 1 / 20383222077370251.

The center is the complete sixteen-term lower sum multiplied by FOUR. The radius
is the complete corresponding fourfold remainder; the mantissa contribution is
zero. No actual-log value is queried to establish these finite rational facts.

At D=2^80=1208925819614629174706176, the derived rounded logarithm ball is

    midpoint = 3351854093488004906387806 / D,
    imaginary midpoint = 0,
    radius = 59309850 / D.

Both floors and the radius ceiling are justified by explicit half-open rational
windows. The full displacement of the unrounded center is added before the
radius is rounded upward. The analytic interpretation as an enclosure of the
actual log16 is inherited from the original source theorem, not from agreement
with a transcendental library.

`IntegerSeedWindows` supplies exact rounding lemmas. For a fixed rational q and
integer a, `a <= D*q < a+1` identifies floor(D*q). For error numerator e,
`e-1 < D*q <= e` identifies ceil(D*q). The strict endpoints cannot be interchanged.
The general seed theorem fixes the actual polynomial and full error expression;
it does not certify a convenient proposed seed merely because its decimals look
reasonable. An arithmetic window does not itself supply analytic semantics.

## 3. The seed is the original sixteen-term Taylor polynomial

The derived exponent is w=-c*ell.mid, not a separately labeled parameter. The
scaled exponent w/128 is the exact rational pair

    -1675927046744002453193903 / 309485009821345068724781056,
    -417002491843795946401253750557 / 1267650600228229401496703205376.

`seed_value` targets the exact coordinates of sum_(j<16) (w/128)^j/j! through the
maintained Taylor definition and its existing state-fold equality. The printed
rational coordinates are claims proved by a finite `norm_num` script, not values
accepted without comparison. No per-term rounding or changed factorial appears.
The polynomial is unchanged, including its sixteen-term convention.

The complete initial error is the OLD expression

    delta = 2*(mag(w)/128)^16/16!,
    errorInput = delta + mag(seed-roundedSeed).

The rational windows identify the existing state exactly:

    (1137924180955076615628762,
     -388441655045270929983695,
     2823).

In units of 1/D, the tail contributes about2821.5785754075982 and the seed
coordinate displacement about0.789007780416567, summing to about2822.3675831880146.
These decimals are explanatory only; the guards use exact rationals. Omitting the
Taylor tail would give error integer1. Omitting the seed displacement would give
2822, not2823. The full radius window and a negative control retain this distinction.
The signed imaginary floor is not truncation toward zero.

The original semantic guard is separately derived: the center has nonnegative
real part, the literal dyadic scale is valid, and mag(w)/(128*17)<=1/2. These are
not inferred from the appearance or validity of the seven successor states.

## 4. Keep all seven transitions and the final original-log sensitivity

The existing seven literal inequality proofs and `tail_checked` are reused
unchanged. Their terminal state is still

    (-181521583712071944411114,
      576563373775500064707160,
      361563).

This radius is only the rounded-exponential error. The final inverse-power error
still includes the original logarithm uncertainty:

    ceil(361563 + mag(c)*59309850) / D = 915910313 / D.

The new final ceiling window preserves this exact value. The complete old power
ball is therefore

    midpoint = (-181521583712071944411114
                 + 576563373775500064707160*i) / D,
    radius   = 915910313 / D < 1/10^15.

Its radius is approximately7.576232537510e-16. Neither361563/D nor zero may be
substituted for it. `original_evaluator_checked` targets the SAME old guarded
evaluator, and `power_enclosed` targets the ORIGINAL complex power16^(-c).
`requested_tolerance_checked` separately uses the whole radius. No assertion is
made that this power is zero, that c is a zeta zero, or that one leaf supplies the
source jet, complete contour cell or any of the38 original block equalities.

## 5. Fresh evidence is bounded to this one leaf

Normal and optimized Python runs each pass13,422 exact assertions with byte-
identical reports. Of these13,230 concern generic signed floor/ceiling windows;
the remaining192 concern the one literal input, its source snapshot, logarithm,
Taylor polynomial, seed windows, seven transitions, final ball and delivered
numeric literals. Counts reuse inputs across properties, not independent proofs.

The diagnostic reconstructs the center from the original sixteen mesh blocks
and checks the exact prior candidate/pilot Git blob identities. It compares the
atanh polynomial through independent direct-power and recursive-power formulas;
all Taylor prefixes through direct powers, binomial powers and Horner evaluation;
and the full result with the prior rational model. All eight literal states match.
A plus/minus-one mutation in each initial/log window and each of the21 successor
fields rejects. Missing/extra rows, wrong counts, invalid scale/domain and the
invented small initial error also reject. No floating value determines acceptance.

No fresh complete source-jet, full cell, block, contour or count computation was
performed. No logarithm, exponential, zeta-library call, root finder or external
zero inventory is used. The diagnostic shares the original elementary rational
source specification; its comparisons do not independently prove the analytic
suppliers or qualify Lean's compiler, parser, kernel or runtime.

## 6. Acceptance is still required

The new finite polynomial and window scripts may require elaboration, tactic,
reduction-depth or resource-budget repairs. Their closed source statements are
not accepted theorem receipts. Every inherited seven-step proof, actual-log and
complex-power theorem, generated declaration, exact type and transitive import/
axiom/native dependency still requires pinned acceptance and independent review.

The exact leaf is one of38,064 unique inverse-power inputs. All38 original block
obligations remain open. No historical target is edited to conceal its earlier
status. The next complete computation must compose every required leaf with all
ordered finite-jet arithmetic, actual-source tails, shared image checks and signed
count refinement, not sum reported PASS labels.

No Lean/Lake invocation or installation, worker/build/replay request, execution-
hold release, public-root change, merge or issue-state change occurs. An accepted
finite-height count would still not supply arbitrary-height RH, omitted-divisor
tails or strict every-interval prime margins. No such claim is made.
