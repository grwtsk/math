# Elementary original-source squarefree sieve and strong Gaussian heat radius no-go

Date: 2026-11-02. Repository: grwtsk/math. Direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Existing Mathlib and mathematical authorship preserved.

## Mathematical result and status

This increment converts the previous classical squarefree-density obstruction into an elementary finite source-counting argument. It uses the TRUE original integer n, pinned Mathlib ArithmeticFunction.moebius, original signed causal pickupResponse, original closed endpoint inventory 1..floor(exp T), and the existing sourceHeatRadius(s,n)=abs(mu(n))*(1-exp(-s*(log n)^2)). No arithmetic coefficient, squareful zero, source birth, original signed mixed Gram or canonical RH target is replaced.

For the fixed strong Gaussian heat s>=1, define S_T as all true original squarefree source integers n with 1<=n<=floor(exp T) and T-6<=log(n)<=T-4. Let K(T)=card(S_T). For T>=7 and physical u in [T-2,T], the original-source finite argument establishes:
  abs(mu(n))=1 for n in S_T;
  sourceHeatRadius(s,n)>=1/2;
  pickupResponse(n,u)>=4*exp(-T/2);
  radiusWave(sourceHeatRadius s,T,u)>=2*K(T)*exp(-T/2);
  sourceHeatRadiusEnergy(s,T)>=8*K(T)^2*exp(-T).
These positive-radius inequalities do NOT assert the signed source errorWave itself is large; signs and original mixed terms may cancel in the actual error wave.

The remaining quantity K(T) is controlled by an elementary finite sieve, without the asymptotic squarefree density 6/pi². Every nonsquarefree n>=1 has an actual prime square divisor. The union of genuine original-index sets of multiples of d², d>=2, covers the nonsquarefree source indices, allowing overlaps. Pinned Mathlib directly provides the exact cardinality of positive multiples in (0,N]: Nat.Ioc_filter_dvd_card_eq_div N p = N / p. An elementary finite reciprocal telescope gives
  sum_(d=2)^N 1/d² <= 3/4.
Therefore, for all N>=0,
  Q(N)=card{1<=n<=N:Squarefree n}>=N/4.
This does not require PNT, Mertens, RH, classical squarefree-density error terms or an unproved stochastic independence hypothesis.

Put A=floor(exp(T-6)), B=floor(exp(T-4)). Actual squarefree integers in (A,B] belong to S_T. The finite quarter-density and trivial Q(A)<=A yield
  K(T)>=B/4-A >= beta*exp(T)-1/4,
where beta=exp(-4)/4-exp(-6)>0. The inequality beta>0 follows from exp(2)>4 via elementary exponential positivity. With c=beta/2>0 and T0=max(7,log(1+1/(4c))), every T>=T0 has K(T)>=c*exp(T).

The consequent source-specific fixed-heat positive-radius bound is
  sourceHeatRadiusEnergy(s,T)>=8*c²*exp(T)
for all s>=1, T sufficiently large. Therefore, on any fixed AffineFrequent G,
  NOT SubexponentialOn (fun T=>sourceHeatRadiusEnergy(s,T)) G.
This is a mathematical no-go for the POSITIVE error-radius method at strong fixed heat; it is NOT a no-go for more delicate signed arithmetic cancellation and NOT a proof or disproof of RH. The earlier strong-heat observation source still has its O(T) signed HEATED energy bound, which cannot be transferred to the unsmoothed original using a subexponential positive radius at fixed strong heat.

## Four additive Lean SOURCE PROOF CANDIDATES, not native acceptance

1. MoebiusGaussianStrongHeatSquarefreeShell.lean, Git blob aff41beda52bd996c91dcda73df6fdc940af989d. Eight public theorem candidates, two private helpers, one definition. Exact squarefree shell, source mu abs=1, physical terminal interval response and positive radius lower.
2. MoebiusGaussianStrongHeatSquarefreeNoGo.lean, Git blob 92fa557892b95cbc540d033a99e4fc1f5f1df687. Three public theorem candidates and one definition. Explicit genuine shell-density proposition; count-to-exponential radius bound; AffineFrequent cofinality; non-subexponential no-go conditional on shell density.
3. MoebiusElementarySquarefreeSieveSource.lean, Git blob aac5b8dae1e98c5f1101b6eec79c356ca18b15a8. Eight public theorem candidates, two private helpers and three definitions. Finite reciprocal-square sieve, actual nonsquarefree prime-square cover, pinned exact positive multiple count, Q(N)>=N/4.
4. MoebiusGaussianStrongHeatUnconditionalNoGo.lean, Git blob cf76838c87886e0a737b943f8abccac8e2dc2843. Eight public theorem candidates and three definitions. True floor/log shell inclusion, beta>0, K(T)>=c*exp T and a source-level candidate for the unconditional fixed-heat positive-radius no-go.

Total 27 public theorem candidates, four private candidates and eight definitions. Every declaration is a SOURCE PROOF CANDIDATE, not an accepted kernel-checked theorem. The unconditional proof is mathematically elementary but its Lean tactics and pinned APIs still require native elaboration.

## Pinned exact upstream sources inspected

Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612 with Lean toolchain leanprover/lean4:v4.34.1.
- Mathlib/Data/Nat/Squarefree.lean, blob 134c9312d612a92d7ff35ff3d124e55204bd7904: Nat.squarefree_iff_prime_squarefree.
- Mathlib/NumberTheory/ArithmeticFunction/Moebius.lean, blob 05f76c89adb09318abbec6ada574be955267b03d: abs_moebius_eq_one_of_squarefree.
- Mathlib/Data/Nat/Factorization/Basic.lean, blob 33ebfe9b25f9b23edaea0893f627d77efb54f86a: Nat.Ioc_filter_dvd_card_eq_div N p, the exact positive multiple count.
- GRWTSK original MertensPrimitive, positive radius response, strong-heat signed evolution and conditional RH good-scale consumers remain the original sources.

## Independent finite tests and limitations

Shell preflight: /mnt/data/moebius_strong_heat_squarefree_shell_preflight_20261102.py, SHA256 1d9841939fb7b5be6dc9c21aed589f7ad841b7c2ceee90db0f2ab31d1b3e805d, results /mnt/data/moebius_strong_heat_squarefree_shell_preflight_20261102.json, SHA256 d92604369ad4aae4b67ee48e66a8497fef51b0b42a3530809771bf666724247e, 1440 passing assertions.

Sieve and shell bridge preflight: /mnt/data/moebius_strong_heat_elementary_sieve_preflight_20261102.py, SHA256 0d3f9048374c8cb8dfd15b80aa226f5f127ffd21a138029980e773f7ad108de4, results /mnt/data/moebius_strong_heat_elementary_sieve_preflight_20261102.json, SHA256 c33299ab4013fe362ccebc34a376e0cd2ed35974e96c1c9df0c8c8d067099302, 2404 passing assertions.

Combined 3844 finite checks (original cutoff through N=524288, s in {1,2,5} for strong heat). Numeric tests use exact finite integer squarefree/divisor data and finite real calculations, not certified interval bounds, unbounded asymptotic proofs or Lean kernel execution. In the largest sampled original source shell K=5049.

## Required trusted acceptance and negative controls

Native Lean/lake/elan are unavailable locally. All four new modules have static balanced delimiter checks and no authored sorry, axiom, or unsafe declarations. This DOES NOT imply parsing, elaboration, kernel verification or absence of transitive axioms.

Compilation NOT_RUN, expected types NOT_RUN, independent kernel replay NOT_RUN, transitive axiom audit NOT_RUN. At the exact published commit, verify:
- All four source leaves, transitive imports and 27 public theorem statements with warning-as-error on pinned toolchain.
- Nat.squarefree_iff_prime_squarefree, abs_moebius_eq_one_of_squarefree, Nat.Ioc_filter_dvd_card_eq_div, Nat.cast_div_le and finite union/cardinality API.
- The elementary reciprocal-square telescope and Q(N)>=N/4, including N=0 and N=1; no false independence of overlapping square divisors.
- Real logarithmic shell floor conversions with original index n, genuine squarefree source, terminal T>=7, actual two-time-unit causal interval and bound at exact births.
- Strict beta positivity, c>0, threshold T0, all large original T and fixed AffineFrequent G chosen before exponent epsilon=1/2.
- Strong heat s>=1 separate from physical u and T; positive radius squared before integration; original signed error may cancel and is NOT bounded below by this argument.
- Complete kernel replay, transitive axiom/sorryAx/opaque/private/generated/unsafe dependencies and provenance; reject unverified source names or missing imports.

No root GRWTSK.lean promotion, toolchain pin changes, runner, CI, scheduler, external system or Noe production mutations are authorized by passive publication. The canonical Riemann Hypothesis is OPEN.
