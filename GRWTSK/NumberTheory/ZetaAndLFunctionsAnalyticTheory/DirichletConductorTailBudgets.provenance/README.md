# RP-OC-07: rational fourth-moment tails and concrete residual coverage

Local attribution: grwtsk contributors. Date: 2026-11-11. Owning layer: 06; conditional GRH consumer: 07. MSC2020: 11M26, 11M41, 65G30.
Coordination: [math#1804](https://github.com/grwtsk/math/issues/1804), [math#1807](https://github.com/grwtsk/math/issues/1807), [research#50](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/50).

## Exact sources and dated comparison

The maintained formal source is ONLY grwtsk/math. Inspection base: `8d7c8b8084caa6ff3cf6b254da449042617519f8`. Lean `v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The publication commit and reconciled parent are recorded in issue #1804, not predicted here.

| Module | Git blob SHA-1 | SHA-256 |
|---|---|---|
| `DirichletConductorTailBudgets.lean` | `61bc2b7103bc2c00037133e89bcde403a3461b21` | `39f8fdc31698c7dbdd239fd0455404c6f2983c167cebe2ee3110525f8771fc0b` |
| `DirichletConductorIntervalCoverage.lean` | `cac7c7c73a45c427db112b4ed7c3e67d60595b0f` | `c18685efb3f7580716f94fc2e28cf6ce94d5d97542ce1b4ab39133affc54ff33` |

Motivating written source: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0, November 10, 2026, section 20.3 / RP-OC-07. These are local standard consequences, not theorems claimed to occur verbatim in the monograph. No novelty is asserted; a novelty status is not promoted.

The existing research note is [DCU-T1](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/9364603bb5453e3d71f4739ef04ba609fa541504/research/06-weil-spectral/source-exact-cofinal-transfer/dirichlet-conductor-uniform-v1.md), SHA-256 `5ee31c36bbf282a56e6a9870d91974fc23653f49c4ef3d9a35895c5f9ecf14b8`. Its source meaning, evidence status and existing obligations are unchanged. The new result is about its EXACT displayed envelope at exponent four, not a completed Lean formalization of its arithmetic zero-tail theorem.

Directly inspected local dependencies at the inspection base:

- DirichletConductorProfileBounds.lean, blob `de5e4060dcc86e920cb0b8da85f544828126c831`: exact U_s, normalized ceiling and actual conductor arithmetic comparison.
- RationalEnclosureCertificates.lean, blob `521686ced291fdd04b3e214ce6489bd07dc0410a`: rational Packet, complete row penalty, unchanged intervalCheck, all-real-vector bound and full complex realification.
- IntervalMatrixCertificateConsumer.lean, blob `7668b669587dfe32b410b65ace02a67a508a53e1`: source/packet binding, unknown preservation, and arbitrary-accuracy nonneg_of_certified_packets.
- WeilFiniteEnclosureReturn.lean, blob `2cb02d8e884f5059e53105224ef2b0e828a9d35c`: original all-source finite-enclosure coverage return. The new consumer restricts only its certificate supplier, not its arithmetic target or full source domain.
- Existing Program 7 DirichletConductorCertificateReduction, Program 2 WeightedConjugatePairing and Program 10 DenseNonnegativeApproximation are reused without changes or promotion of their candidate status.

The primary upstream real-power API inspected is [mathlib Pow/Real.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Pow/Real.lean), blob `6e3f62550a758e94a1d513133cd744406b319e41`. Mathlib retains its authorship and Apache-2.0 license. No upstream proof text or third-party PDF is copied.

Program 6's new Hermite real-root converse and Program 8's finite product multiplicity/source-return records were also compared. They provide different finite-divisor information; neither gives a full omitted Weil tail. They are not asserted to supply the missing count-to-tail comparison here. Incomplete GitHub code search returned no matches even for known paths; no exhaustive absence or novelty claim is based on it.

## Complete primary argument

Write L=log(4) and C=log((T+2)/2). For T>=4, L>=1, 0<=C<=T/2, and

`normalizedTailCeiling(4,T) = 4/T^3 * ((1+C/L)/3 + 1/(9*L))`

`<= 4/T^3 * (4/9+T/6) = (2/3+16/(9*T))/T^2 <= 10/(9*T^2)`.

The previous normalized envelope theorem therefore gives the same bound on U_4(q,T)/log(2q), for EVERY real q>=2. At an integer H define the exact rational b(H)=10/(9*H^2). It decreases for positive H. At H_k=4*2^k, b(H_k)=(5/72)*4^(-k)<=2^(-k). Given epsilon>0, choose k with 2^(-k)<epsilon. The same H_k controls every q>=2 and every later integer height. This is uniform normalized envelope decay with an explicit schedule; no hidden asymptotic constant is used.

For a true matrix F, a truncated head J, rational head packet P and rational nonnegative test weights w_i, suppose the head is enclosed and the ACTUAL full-head error is bounded by w_i*w_j*U_4(q,H)/log(2q). The triangle inequality gives

`|F_ij-P.center_ij| <= P.radius_ij + b(H)*w_i*w_j`.

Thus tailPacket adds that exact radius and leaves center, tolerance and metric unchanged. The extra radius is symmetric and nonnegative, and its i-th row cost is b(H)*w_i*sum_j(w_j). The existing checker charges the complete row-diagonal penalty, not just an uncorrected finite center. No new PSD decision rule is defined.

A normalized matrix must be returned to the original arithmetic source with its positive scale. The scaled consumer uses log(2q)*Q_F(x)<=Q_original(x) and concludes `Q_original(x)>=-epsilon*log(2q)*Q_metric(x)`. It does NOT infer Q/log(2q)<=Q from an unknown sign. The filtered global consumer likewise retains an explicit positive source scale before the matrix-to-original comparison.

For a negative head with real part at most -eta, the full value has negative real part only when its ENTIRE error is strictly less than eta. The same b(H) yields that sufficient budget through the existing signed-pairing error theorem. No negative arithmetic value is exhibited.

## Boundaries and hostile cases

H=0 is inadmissible despite totalized field division. q=1 is not in the uniform tail theorem. Fixed-support weights may grow with support and test complexity; uniformity in q does not imply uniformity in growing support. The comparison with actual zeros must retain multiplicities, both height signs, strip displacement and any exceptional real zeros. A head list must be complete in its claimed domain before a zero-tail comparison can be supplied.

The principal pole-inclusive sector remains inside residual interval coverage. For complex matrix tests the existing realification retains all imaginary couplings; positivity on only real coefficients is insufficient. Empty frames and singular reconstruction metrics are not rejected merely for degeneracy, but cannot establish an absent original-source comparison. Exact packet and source binding, fixed metric, all codes and all accuracies remain essential. At head=-1, full=0 and error=eta=1, equality of budgets does not certify strict negativity.

The BMOR counting theorem, Stieltjes/count-to-tail identity, Fourier-to-source comparison, actual interval arithmetic evaluator, source model/dense test construction, full completed explicit formula, and residual universal positivity remain unresolved. No RH/GRH, arithmetic realization or novelty claim is made.

## Evidence and exact-source reproduction

`SOURCE_PROOF_CANDIDATE`. The checked-in objects are symbolic Lean proof scripts and theorem-local provenance, with no new numerical experiment, third-party binary or random seed. Static token/UTF-8/declaration/hash and Git publication observations are recorded in issue #1804; they are not parsing or proof evidence. Elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review and runtime refinement: `NOT_RUN`.

From a clean math checkout at the published commit recorded in the issue, retain the toolchain and lake-manifest pins. The targeted command is:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletConductorTailBudgets \
  GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletConductorIntervalCoverage
```

This command was NOT run. Expected verification goal: both targets elaborate, followed by source-bound fresh kernel replay and a transitive axiom audit over the exact import closure; no successful outcome is asserted. The eleven public declarations named by the individual records are the audit targets. Imported source candidates retain their prior status.

Canonical Noe proof skill access was retried at `0126ba445446dea25047a89884df1adf6b10251a` and returned 404; dependent execution was stopped. Ordinary source authoring and GitHub publication continue under current policy. No root imports, dependency pins, source policies, claim statuses or trail weights are changed by this milestone.
