# Spin optimization, inverse-radius losses and counting at the dyadic pickup

Local mathematical attribution: grwtsk contributors.

Baseline: grwtsk/math 3416000fb7c1075a7bb9554d5b84ff36ea92c8a1.
Upstream inspection: openai/math 7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a.
Status: SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and transitive
axiom audit NOT_RUN. This increment does not prove DyadicBirthBound.

## Exact arithmetic application of the spin machinery

Use the existing ordered sourcePairs(T), including both orientations, the closed
integer cutoff, zero Mobius labels and the original diagonal deletion. Put
w_mn = |signedAtom(T,m,n)| and A(T) = sum w_mn = absoluteCross(T).
Let s_mu(n) be the Boolean sign of moebiusReal(n). Zero has a sign label but
zero interaction weight. Define the ORDERED weighted cut

    K_T(s) = sum_(m,n in sourcePairs(T)) w_mn * 1[s(m) != s(n)].

The existing SpinCutEnergy.spin and cutIndicator algebra, together with the
actual causal responseGram_nonneg theorem, gives

    X(T) = A(T) - 2 K_T(s_mu).

This is not inferred from positive semidefiniteness. Both pair orientations
are included in K, so it is twice the usual once-per-undirected-edge cut.
No additional factor of two may be dropped. No Gaussian coupling law is assumed.

For ANY trial spin s, define the two actual finite expressions

    H_T(s) = A(T) - 2 K_T(s),
    R_T(s) = 2 (K_T(s) - K_T(s_mu)).

Then X(T) = H_T(s) + R_T(s), exactly. The same identity holds after averaging
both terms over the SAME normalized finite law. Thus a normalized circuit
measurement law can be used once its finite configuration map is supplied.
Its optimization result does not eliminate R. If K_T(s) >= K_T(s_mu), the
optimized H_T(s) is a LOWER energy and R_T(s) is nonnegative.
Neither R alone nor H alone is required to have subpower growth: estimate their
complete signed sum. This preserves potential cancellation rather than imposing
an unnecessarily stronger near-optimality requirement on Mobius.

The exact omitted prime-pair credit is also identified:

    signedUpper(T,P) - X(T) = 2 (K_T(s_mu) - primePairCredit(T,P)).

Under the existing prime guards, primePairCredit <= K_T(s_mu). This links the
previous arithmetic cancellation to the FULL source cut, without charging any
credit twice or asserting a new asymptotic estimate.

The new theorem dyadicBirthBound_iff_source_half_cut identifies the precise
alternative terminal arithmetic objective:

    forall delta>0, exists C_delta>=0, forall j,
      K_(j log 2)(s_mu) >= A(j log 2)/2 - C_delta * 2^(delta*j).

The only cost in returning to the endpoint sum is the existing quarter-unit
curvature allowance. An optimizer certificate for SOME assignment does not
establish this statement about the fixed source assignment.

## What the OpenAI spin result supplies and what it does not

The inspected manuscript uses iid standard Gaussian couplings and
h_(n,J)(s)=n^(-1/2) sum_(i<j) J_ij s_i s_j. Its positive optimum is
lim_n E[max_s h_(n,J)(s)]/n. It chooses deterministic finite QAOA words for a
desired accuracy before the thermodynamic limit, and then takes depth p to
infinity. Sign, disorder, normalization and limit-order transports are needed
before applying that result to the deterministic positive weights above.

The actual selected Lean solution OAI.SKValue.value_consequences gives scalar
Parisi value and finite Gaussian approximation consequences conditional on an
admissible minimizer and diffusion. The scope note explicitly does NOT assert
QAOA circuit-energy convergence. Existing GRWTSK finite QAOA locality and cost-
cone results must not be promoted to all-graph or actual-Mobius optimality.

PickupScaleTransport.extensive_error_iff records the exact normalization cost:

    exp(T_j) * e_j <= C exp(delta*T_j)
      iff e_j <= C exp((delta-1)*T_j).

A fixed per-spin accuracy, or a statement that normalized error tends to zero
without the required rate, is not the requested total arithmetic error bound.
The depthTail controls separately show that pointwise finite-depth convergence
at each index does not give uniform outer-index control.

## Kakeya: the compatible exponent, with all transport costs retained

The inspected OAI solution kakeya_maximal states, for FIXED dimension d>=2,
for every eta>0, a constant uniform over 0<rho<=1 and admissible L^d inputs:

    ||M_rho f||_(L^d sphere) <= C_(d,eta) rho^(-eta) ||f||_(L^d).

For rho_j=exp(-a*T_j), a>0 fixed, rho_j^(-eta)=exp(a*eta*T_j).
The new radius_loss theorem proves this conversion. The radius allowance
consumer applies it to the ACTUAL signed spin-and-return expression.
The finite-depth/radius consumer chooses p after the requested delta and before
the uniform constant and tested j. It allows an additional rate r(p) tending
to zero; choosing r(p)<=delta/2 and eta=delta/(2a) pays the final rate.

This does not construct the actual arithmetic-to-geometric map. A successful
supplier must price input norms, point/discrete readout from a sphere L^d norm,
angular multiplicity, clustering, support changes, dimension-dependent
constants and the full signed return. Taking dimension to infinity does not
make constants uniform. A union-volume LOWER bound cannot silently become an
upper bound for X. The inspected GRWTSK projective tube-volume theorem retains
its genuine physical off-diagonal overlap premise; it is not a replacement
for that supplier.

## ETH: exact computation is a different resource from magnitude

Here ETH denotes the Exponential Time Hypothesis, not eigenstate thermalization.
The inspected exact_count_and_sat solution acts on canonical bounded-width CNF
inputs with all-prefix polynomial visited space. The scope note gives time
(L+1)^(O_k(1)) * 2^(O_k(n (log log n)^2 / sqrt(log n))). These n and L are the
actual encoded variable count and bit length, not automatically j or 2^j.

The new cutCNF(a,b) is the literal width-two formula
(a OR b) AND (NOT a OR NOT b). weightedCNFCut_eq and cross_eq_weightedCNF identify
its weighted evaluation on the FIXED source assignment with the same pickup.
No source coefficient or real Gram weight has been replaced by a SAT count.
A counting implementation still needs certified arithmetic labels, weight
encoding/enclosures, a parsimonious reduction and its complete size/precision
cost. The old observed-endpoint epsilon*T+1/4 allowance remains available.

Even a runtime 2^o(j) would be a computation bound, not a bound on the returned
number: a tautological CNF can have 2^n satisfying assignments with an (n+1)-bit
count. Subexponential time in n=2^j is not subpower in 2^j. A linear-in-j variable
encoding with subexponential-in-j polynomial input-length overhead would be
useful for finite verification, but no such reduction or all-j arithmetic
invariant is claimed here.

## Integration and remaining witness

New sources:
- GRWTSK.NumberTheory.Moebius.PickupSpinCutComparison
- GRWTSK.NumberTheory.Moebius.PickupScaleTransport

Only existing GRWTSK/Mathlib dependencies are imported. No admitted comparator
challenge, research axiom, root import or dependency version is introduced.
All new arithmetic consumers remain conditional on their displayed quantitative
hypotheses. The exact target remains PickupDyadicEndpoint.DyadicBirthBound,
equivalently SourceCutHalfBound. The historical reflected compact-source route
is unchanged. Upstream source inspection is not a native/comparator audit.

Paper/source correspondence is in the adjacent literature supplement
spin-kakeya-sat-dyadic-correspondence.md. The large central literature ledger is
preserved unchanged; adding its cross-reference is explicitly pending.
