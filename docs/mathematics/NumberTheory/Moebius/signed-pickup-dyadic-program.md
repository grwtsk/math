# Signed pickup: the explicit dyadic target and assembled certificates

Local mathematical attribution: grwtsk contributors.

Baseline: `grwtsk/math` commit `7a6f1142dfe6ee66bfd79600158695c00b7a4fc6`.
The new source commit and exact blobs are pinned in
`docs/verification/NumberTheory/Moebius/PickupSignedCertificate/verification.toml`.

**Classification:** source proof candidates for exact identities, transport and
coverage; conditional RH consumers. No unconditional arithmetic growth witness
or unconditional RH theorem is supplied. Compilation, fresh kernel replay and
complete transitive axiom auditing are NOT_RUN.

## 1. Keep the existing arithmetic source

Write X(T) for `GRWTSK.RiemannHypothesis.CCC.pickupCross T` and E(T) for
`GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature.endpointSum T`.
The original closed integer inventory, both off-diagonal orientations, Mobius
signs, diagonal deletion and physical-time integration remain unchanged.
The existing source theorem gives |E(T)-X(T)| <= 1/4 for every T >= 0.
This is approximation control, not an estimate for E or X themselves.

The actual coefficients a_N, b_N, c_N remain `coefficient0`, `coefficient1`,
`coefficient2` in `PickupCellQuadratic`. They come from the five actual moments,
not chosen coordinates or fitted model parameters.

## 2. Construct the fixed grid and expose the finite target

`ArithmeticGridSubexponential` constructs the next grid point using
floor(T/q)+1 for each fixed q>0. Its coverage constants are a=1, b=q, T0=0.
No monotonicity of the signed observation is assumed.

`AllGridUpper` and `EventualGridUpper` put the positive rate before the
constant and the eventual starting index. The explicit finite-prefix
allowance is sum_{j<j0} max(0,f(jq)); it is used only to absorb finitely many
values. The observation is not replaced by its absolute value.
`allGridUpper_iff_subexponentialOn` identifies this sequence estimate with
the existing real-time good-scale predicate.

`PickupDyadicEndpoint` specializes q=log 2 and proves:

- `exp_dyadicTime` and `dyadic_cutoff`: exp(j log 2)=2^j and the natural cutoff
  is exactly 2^j, without a numerical floor convention.
- `dyadic_rate`: exp(delta * j log 2)=2^(delta*j).
- `full_birth_formula`: the physical endpoint chord equals the explicit
  five-moment expression below.
- `endpoint_dyadic_eq_birthSum`: the last birth cell has zero width, leaving
  exactly the positive births N<2^j. At j=0 the sum is empty.

The finite expression uses u_N=1/sqrt(N), v_N=1/sqrt(N+1):

    B_N = (a_N-c_N*u_N*v_N)*log(1+1/N)
          + 2*(b_N+c_N*(u_N+v_N))*(u_N-v_N).

The product of inverse square roots is retained in factored form. This is
exactly the same chord coefficient; no new estimate or sign assumption is
introduced by the notation. `dyadicBirthSum j` is the range-indexed sum of
B_(k+1) for k<2^j-1.

The named, unresolved arithmetic proposition is

    DyadicBirthBound :=
      forall delta>0, exists C>=0, forall j:N,
        dyadicBirthSum(j) <= C * 2^(delta*j).

It is equivalent to the exact endpoint version. A rate-dependent finite
initial segment is absorbed by `dyadicBirthBound_of_eventual`.

## 3. Combine existing upper certificates without double-counting

The existing sources provide these different certificates for X(T):

    U_curve(T) = canonicalUpper(T,depth)
    U_prime(T) = absoluteCross(T) - 2*primePairCredit(T,primes)
    U_packet(T) = D.tail(height(T),T)
                  + model.gramConstant(T)*coefficientBudget(model,T)
                  + model.error(T).

The packet tail and model error are signed. The Gram constant and coefficient
budget do not receive separate growth assumptions in this program.

`PickupSignedCertificate.jointUpper` is exactly

    U(T) = min(min(E(T)+1/4, min(U_curve(T),U_prime(T))), U_packet(T)).

Pointwise source validity retains every original guard:

1. T>=0 and every selected prime is prime.
2. height(T)>=1.
3. The actual `signedSettlement D height T` is at most the packet synthesis
   norm squared plus `model.error T`.
4. `PacketModel` retains positive weights, its weighted Gram row bounds and
   the original finite packet inventory. `ExactDecomposition` retains its
   source identity.

`cross_le_jointUpper` applies the existing `cross_le_endpointHybridUpper`
and `HSSCP04.CCCAdapter.cross_le_packetJointUpper`. It does not assert that
an arbitrary model reconstructs the Mobius source.
`jointUpper_refinement_le` preserves monotone curve/prime refinement while
holding the source, packet comparison and endpoint observation fixed.

The source sandwich is

    E(T)-1/4 <= X(T) <= U(T) <= E(T)+1/4.

Thus `jointUpper_endpoint_error` proves |E(T)-U(T)|<=1/4, and
`jointUpper_cross_slack` proves 0<=U(T)-X(T)<=1/2. The second constant is
one half, not one quarter. Independent negative credits are not subtracted
again from a certificate that already includes them.

## 4. Retain exact signed corrections and sieve return

`curvatureCorrection` is the prescribed sum of the actual c_N times the
physical curvature masses on canonical birth cells. It is not a freely
assigned residual. The new source compositions give

    E(T) = X(T) + curvatureCorrection(T)
         = unpairedCross(T,P) - primePairCredit(T,P)
           + curvatureCorrection(T)
         = sievedCross(P,T) + curvatureCorrection(T).

All unselected signed pairs remain in the complement. Sieve equality has
zero transport cost; curvature is bounded separately by the already proved
quarter-unit bound. `sievedCross_le_jointUpper` applies the same valid upper
certificate after a finite changing sieve.

The imported centered source also has the actual signed identity

    signedWrap = nonzeroFrequencyEnergy + windingMeanInflation
                 - 4*centeredVariance.

Its authoritative declaration is
`GRWTSK.NumberTheory.Moebius.CenteredSieveRecovery.signed_wrap_with_sieved_centers`.
The anchored authentic-centered source retains other-shift, omitted-factor
and boundary defects. These remain distinct from pickupCross until a
particular source-return comparison connects them. The new proof does not
use a freely chosen residual to force such a comparison, and does not claim
that preserving a centered variance proves its needed growth estimate.

## 5. Observation and graph branches remain source-bound

`observedJointUpper` optionally combines a certified observed endpoint
allowance with U(T). `cross_le_observedJointUpper` pays exactly epsilon*T+1/4
from errors at every endpoint actually used. No finite sampling experiment
is promoted to these all-endpoint hypotheses. The inherited RS construction
identifies the actual nodes; two samples do not decode a general quadratic.

The original endpoint and range observation sandwiches keep the same middle
relation and independent source guard. Their evidence intersection and
shrinking ambiguity statements are preserved through the unchanged imports.
No new assertion that a graph edge identifies a common zeta zero is made.
Residues, winding, nonunit strata, multiplicities and zero symbols remain in
their existing source return; lossless coding is not a rate estimate.

## 6. The complete conditional return

`joint_subexponential_iff_endpoint` proves equivalence on the SAME region G,
under the pointwise source guards. `dyadicJointBound_iff_endpoint` gives the
fixed-grid equivalence with +1/4 in each rate-dependent constant.
No individual curve, prime or packet estimate must dominate everywhere.

The explicit chain is

    DyadicJointBound + actual packet/prime guards
      -> DyadicEndpointBound <-> DyadicBirthBound
      -> SubexponentialOn endpointSum dyadicScales
      -> SubexponentialOn pickupCross dyadicScales
      -> existing diagonal payment and monotone-energy gap filling
      -> pickupEnergyAbscissa = 0
      -> _root_.RiemannHypothesis.

The coverage proof is supplied. The energy, Laplace and analytic return are
applied from the maintained source, not reproposed as assumptions.

`riemannHypothesis_of_joint_finite_cover` additionally supports a fixed finite
family with different Hilbert spaces, decompositions, heights and regions.
Only the union requires affine frequency; regional constants and thresholds
are combined using the existing finite-cover theorem. No uncontrolled growing
portfolio or rate-dependent change of the regions is smuggled into that theorem.

## 7. Remaining mathematical and verification obligations

The exact arithmetic witness `DyadicBirthBound` is NOT proved in these new
sources. Nor is a particular packet model and its all-scale source return
constructed here. Those are visible inputs, not new research axioms or fields
whose names imply they have been supplied. The generic combined certificate
has a fully proved source comparison once its actual guards are discharged.

This program formalizes the source-level reduction and assembly; it does not
turn the remaining arithmetic witness into an accepted theorem. Any supplier
claimed to close it must be instantiated on the original source, with its
coefficient mass, signed tails, normalization and exceptional costs intact.
A fixed positive power of the integer cutoff does not provide every positive
exponent. A bound polynomial in log(cutoff) would suffice, but is not asserted.

Fresh native verification must include the full imported/private/generated
closure, including pending issues #1405 and #1406, not only these final files.
The passive manifest inventories exact declarations, source blobs, toolchain,
dependency pins, commands, semantic checks, open obligations and rejection rules.
Lexical and finite diagnostics do not establish Lean parsing, elaboration,
kernel acceptance, a transitive axiom audit or an asymptotic estimate.
No remote execution is dispatched and no root imports or pins are changed.

The reflected compact-source Landau route is unchanged and is not identified
with pickupCross merely because both have RH consumers. The radical-logarithm
identity is not reopened or invoked as cancellation. No new external
paper-derived theorem is introduced; this is a composition of maintained
GRWTSK sources and pinned Mathlib APIs. Historical evidence retains its exact
original scope.

Content attribution is `grwtsk contributors`. The connector's commit action
uses its configured Git identity and does not expose an author/committer
override; no override is claimed. Operational scripts and diagnostic outputs
remain outside the math source tree.
