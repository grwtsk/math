# Adaptive finite-sine growth versus off-critical zeros

**Attribution:** grwtsk contributors. **Date:** 2026-11-12, America/Los_Angeles.
**Mathematical consumer:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilAdaptiveAllModeGrowth.lean.
**Scope:** manual, conditional Lean source; NOT a proof of RH or Dirichlet GRH.

## 1. Correction: the finite cutoff is chosen after the root

The existing WeilCofinalSubexponentialBridge.lean fixes one dimension M_j for every stage T_j, then assumes both the all-vector lower inequality and the negative witness occur within exactly that dimension. Its **conditional theorem is logically valid**, but the written off-critical-zero Fourier construction first produces a negative smooth test at a given T and only subsequently chooses a sufficiently large sine cutoff M to preserve its negative margin. The cutoff can depend on the zero, target rate, T, character, and approximation constants. No universal preselected dimension schedule is supplied by that argument.

The new premise NativeAllModeLower quantifies over every natural matrix dimension M at each stage j:

    forall j M x, quadratic(A(T_j,M),x) >= -B_j * sum_i x_i^2.

Its source matrices are precisely the inherited zetaSineMatrix and primitivePairSineMatrix. For zeta they include BOTH signed pole moments, every active von Mangoldt prime power and the correct archimedean gamma term. The primitive nonprincipal pair retains parity, conductor and actual character weights. The lower inequality is not proved by constructing an arbitrary positive model; it remains the explicit arithmetic premise.

AdaptiveExponentialWitness allows, for every sufficiently large j, a new M_j and Euclidean-unit vector x_j with

    quadratic(A(T_j,M_j),x_j) <= -c*exp(a*T_j).

The theorem all_mode_returns_fixed_cutoffs proves compatibility with the former fixed-family interface. No converse is claimed.

### Hostile comparison: a moving negative mode

For j>=1, define a consistent sequence of finite principal compressions of a diagonal operator with diagonal entries 1 everywhere except at zero-indexed coordinate i=j, whose value is -2^j. The old preselected dimension M_j=j sees the matrix I_j (strictly positive); the next dimension j+1 sees a negative eigenvalue -2^j. This persists while M_j tends to infinity. A proof that controls only each preselected M_j therefore cannot bound a root-dependent larger cutoff. A Python standard-library diagnostic checked the exact integer construction, its principal-compression compatibility and both signs at all j=1,...,256: **768 exact checks PASS**. This is a countermodel to the missing quantifier inference, NOT a zeta/Dirichlet Weil counterexample.

## 2. Mathematical theorem: quantitative growth obstruction

Fix a nonnegative rate sigma, and positive T_j tending to infinity. Suppose B_j>=0 and, for each epsilon>0, eventually

    log(1+B_j) <= (sigma+epsilon)*T_j.

The code's LogRateUpperBudget expresses the latter in an explicit eventual-threshold form and records cofinality and nonnegative B_j. Given ANY a>sigma and c>0, choose epsilon=(a-sigma)/2. For sufficiently large T_j,

    T_j > 2*abs(log c)/(a-sigma).

Consequently

    log(1+B_j) <= (sigma+epsilon)*T_j
               < a*T_j - abs(log c)
               <= a*T_j + log c.

Exponentiation yields 1+B_j<c*exp(a*T_j), and in particular B_j<c*exp(a*T_j). This is the proved eventual_dominance_above_rate step, including small c.

Now suppose a zero at displacement b>0 supplies, for EVERY a with 0<a<2*b, some c>0 and adaptive exponentially negative native sine vectors at all sufficiently large T_j. If 2*b>sigma, choose a=(sigma+2*b)/2. The all-mode lower bound then gives B_j>=c*exp(a*T_j), contradicting the displayed eventual upper estimate. Hence

    2*b <= sigma.

The code's displacement_le_budget_rate is the exact real-variable theorem. Applying it with b=Re(s)-1/2 for zeta on the actual rightCriticalStrip bounds the rightward displacement. Applying it with b=abs(Re(s)-1/2) for a primitive nonprincipal Dirichlet character on offCriticalStrip bounds BOTH sides without a false same-character reflection. At sigma=0 these bounds contradict positive displacement, returning respectively to the existing Mathlib RiemannHypothesis and the project's DirichletCriticalLine. dirichlet_grh_of_adaptive_all_mode_budgets invokes the existing dirichletGRH_iff_primitive and keeps a separate principal primitive sector supplier.

## 3. Unproved arithmetic and analytic suppliers (precisely typed)

1. **Uniform arithmetic source lower budget:** establish the actual all-M lower inequality at cofinal supports with log(1+B_j)/T_j tending to zero, preserving all prime powers, gamma/parity/conductor terms and the zeta pole. Local short-window positivity does not establish this. In particular the latest live main at the initial source read (9b0b9e2a9af15411aed0d3648b82c8783c881e2d) reports improved all-character positivity through physical support length 3/4, not an unbounded-window result.
2. **Actual zero -> adaptive native sine witness:** make the root selector, inverse Fourier transform, signed full explicit formula, compact cutoff, weighted continuity and sine-density/projection estimates exact at the same character and support. The written zeta lower-growth source proves a continuous off-line amplification implication with exponent 2*b*(1-theta) (for any theta in (0,1)), but its full analytic source-to-sine return has not been kernel checked. The character extension is an independently required sector-specific bridge.
3. **Principal-sector return:** for full Dirichlet GRH, keep the primitive principal case separate from the no-pole paired nonprincipal formula, reusing the actual completed zeta and Euler factors as appropriate.
4. **Formal validation:** compile at the exact pinned Lean/Mathlib revision, kernel-check, audit transitive axioms, and independently review the source-identification arguments. These steps have NOT been run.

The two primary proof premises are not discharged by putting them in a structure. This development is an explicit conditional implication, not a new equivalent-positive operator, an RH proof or a GRH proof.

## 4. Sources, comparison, and assurance

- Mathematical source: *Odd Weil lower growth, amplification of a hypothetical off-line zero, and the missing RH estimate* (2026-11-05), source unit src.lower-growth in the supplied Noeaaeue 07-GLOBAL-RH-GRH-ROUTES.md, especially Sections 3--7.
- Native repository: WeilOddSineProjection.lean (literal pole-inclusive zeta and primitive paired-character finite sine matrices); WeilOddRootProjection.lean (written selector, compactification and projection); CriticalStripCores.lean, ConditionalZeroFree.lean, PrimitiveDirichletCriticalLine.lean (existing unchanged root predicates and inducing-character reduction); WeilCofinalSubexponentialBridge.lean (prior fixed-M scalar bridge).
- Primary literature: Connes--Consani--Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1 (3.19)--(3.20); Alain Connes, arXiv:2602.04022v1 §4.1; the odd-test theorem of Yoshida, as reported in Masatoshi Suzuki, arXiv:2606.09096v3 §1.1. Reusing these is not a claim of new priority.

**Assurance:** COMPLETE_WRITTEN_SCALAR_ARGUMENT; MANUAL_LEAN_SOURCE_CANDIDATE; SYNTHETIC_INTEGER_HOSTILE_MODEL_RUN_PASS; LEAN_ELABORATION_NOT_RUN; FULL_BUILD_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN; ALL-WINDOW_SOURCE_SIGN_NOT_PROVED; OFFLINE_TO_NATIVE_SINE_WITNESS_NOT_PROVED; RH_NOT_PROVED; DIRICHLET_GRH_NOT_PROVED; NOVELTY_UNASSESSED. No root imports, original matrices, dependency pins or workflows are modified.

Canonical grwtsk/noeaaeue proof-automation skill lookup returned HTTP 404 on main revision 7a904d11fb4d9495afd8bec89f108eeb1d686f10, and verified ~/.agents/skills / ~/.codex/skills local copies were absent. No dependent proof automation, messaging, scheduling, remote verifier or Noe runtime was invoked. Ordinary source drafting and authenticated Git publication do not constitute kernel checking.
