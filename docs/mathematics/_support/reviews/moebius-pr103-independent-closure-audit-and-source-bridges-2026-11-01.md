# PR103 independent source-closure audit and Lean proof candidates for the original Möbius arithmetic return

Local attribution: grwtsk contributors. Date: 2026-11-01.
Source-specific mathematical analysis and draft formalization assistance: OpenAI ChatGPT.

## Executive disposition — source audit, NOT independent kernel acceptance

This review responds to a request to independently verify merged PR103, implement the classical zero-free-to-Mertens bridge and close the original complete signed-core inequalities in Lean. The bounded work **does not meet the full requested verification acceptance**, but it carries out a pinned independent submission-source audit, implements concrete dependent Lean proof candidates, and isolates exactly the remaining substantial mathematical/formal premises. The source-level audit does not replace fresh compilation and full transitive kernel replay.

The external proof under audit is GTimG/QuasiRiemannTracker PR #103, merged Git commit
`8b1a0167c8e324099884152181e3fb2206510e88`, Git tree
`96df06518b3a18921cf1e6ce1d6966eaa037a474`, submission directory
`submissions/2026-11-01-closest-fraction-contact/src/`, exact Git tree
`884a35c3587cdaf1f73dd8d904d5b259659b5199`.
Its top-level theorem is `Candidate.bound`, source file
`submissions/2026-11-01-closest-fraction-contact/src/Candidate/Main.lean`,
Git blob `808d04cec892449707d23e81f94179e2738fdf1a`. The theorem states
`DirichletCharacter.LFunction χ s ≠ 0` for every positive modulus q,
character χ and s with
`Re(s)>theta0`, except the principal-character pole `χ=1 ∧ s=1`.
The exact source-boundary is

    theta0 =
    2804966284017490358030969257914123810640482798488248385236764587735806455694206308975383836842958115341512355256943573632654341
      /
    3211614609922119834694179379888743028634953588197852962423516288191911449231164741438582626063161096341458934143644085157872271
    ≈ 0.873381966613207519929026778642.

The submitted end-point delegates to `Qrh.PositiveGap.bound` through
`Candidate/Local/Qrh/PositiveGap/BestEndpoint.lean` (blob
`f10432357d29670effde475b951a8af275f32d6a`); its finite source
`Candidate/Local/Qrh/PositiveGap/SourceComposition.lean` (blob
`d063b79acd04ce1f78484c9c3b00d1e3c0b1fb89`) is also inspected.

### Exact independent source inventory and inspection performed

A fresh GitHub Git-tree read of the pinned submission, not a moving branch,
returned 252 tree entries with `truncated=false`, including **237 Lean
source blobs**. Each of the 237 Lean blobs was fetched and inspected, in
non-overlapping increasing lexicographic groups of 16 (last group 11).
Source text was scanned for `sorry`, `admit`, `axiom`,
`unsafe`, `opaque`, `native_decide`, `implemented_by`,
`skipKernelTC`, `run_cmd`, `initialize`, `addDecl`,
and `extern`. The only flagged token was `opaque` at
`Candidate/Local/Qrh/PR98Improvement/RepairedFirstFrame.lean`
line 36, blob `6cab4d2fe1a2339108e64900029c99a387da6d94`, in a
**source comment** about keeping generated enumerations opaque.
No `sorry`, `admit` or `axiom` tokens occurred in any of the
237 submitted Lean texts.

This is an independent **lexical submitted-file audit**, not a Lean parser,
proof-term elaborator, kernel replay, or complete transitive declaration audit.
The submitted modules import earlier `Submissions.*` sources, including
`Submissions.openai_baseline`,
`Submissions.hailey_collet_1252270103`,
`Submissions.arvi_selected_leaf` and
`Submissions.arvi_repeated_marks_on_sil_face_20261025`.
Those modules and pinned Mathlib and external dependencies form a larger
import closure; the 237 submitted-file scan does NOT establish that all
imported declarations have permissible transitive axioms or that all 237
modules successfully compile together.

The external PR's author reports successful local compilation of the 237
modules in 207 seconds, standard `#print axioms Candidate.bound` results,
and 450 local tests. This is **author-reported local evidence** rather than
an independently retained, source-bound full-closure replay receipt in this
investigation. No claim of duplicate independent native build is made.

### Repository CI and admission evidence: important negative distinction

A direct GitHub REST query of
`/repos/GTimG/QuasiRiemannTracker/commits/8b1a0167c8e324099884152181e3fb2206510e88/check-runs`
found two **successful** checks attached to the exact merge:
`test` and `deploy`, GitHub Actions run `41306300583`,
job IDs `124847274018` and `124848132799`.
A read of their job steps confirmed tests for Node dependencies,
catalogue generation, `npm run check`, browser tests and the
production website, plus deployment. No Lean/Lake compile, independent
kernel replay, complete transitive axiom audit or theorem type replay
appears in either job. This resolves an ambiguity left by the
`fetch_commit_workflow_runs` query (which filters PR-triggered
workflows and had returned no result): **there were successful CI checks,
but they were not Lean theorem-verification checks**.

The exact repository
`verifier/local-results.json` at the submitted merge, blob
`e669c0d7e82f1387275b0fde09968de4ade1b415`,
and a later current-main read contain no PR #103 admission entry.
The exact `verifier/pins.json`, blob
`b7eedfd0f87a8686787cb78da1bf4d342277bf44`,
pins `leanprover/lean4:v4.34.1`,
the external OAI baseline `openai/math@fd4aeeb2ee4fc729c18d98444fed42fd0529eeeb`,
the independent challenge SHA256, and the lean4export revision.
A signed Git merge is provenance, not a Lean kernel certificate; a
successful Node CI build is not a native proof check.

**PR103 acceptance conclusion:** SUBMITTED_SOURCE_AUDIT_PASS /
MERGED_THEOREM_TYPE_MATCHED / AUTHOR_LOCAL_BUILD_REPORTED /
INDEPENDENT_FULL_IMPORTED_CLOSURE_REPLAY_NOT_RUN /
FRESH_KERNEL_NOT_RUN / COMPLETE_AXIOM_AUDIT_NOT_RUN /
OFFICIAL_PR103_ADMISSION_NOT_EVIDENCED. No source-bound
full-closure acceptance is asserted or implied.

## 2. Locally new Lean mathematical source bridges

Two additive subject-local Lean SOURCE_PROOF_CANDIDATE modules were authored,
preserving all old definitions and hypotheses:

1. `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ClosureAndCausalBridges.lean`,
   exact source Git blob `4e291485b9a6e203ca8c46ab540de684f1895464`.
2. `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103CompleteCoreConsumer.lean`,
   exact source Git blob `c45a849f6f3481cb44045fcca0ecaea66302015b`.

New conditional adapter `PR103DirichletStatement` duplicates the **exact
external Candidate.bound** as a Prop with explicit q, χ, s, strict
re-bound and pole guard, but is NOT introduced as a theorem or axiom.
The source theorem
`PR103_mod_one_zeta_of_exact_candidate` has a written proof using
Mathlib `DirichletCharacter.LFunction_modOne_eq` to obtain the
previous `ExternalPR103ZetaNonvanishing`. The adapter retains the
source pole guard at s=1 and does not confuse modulus one with arbitrary
principal characters.

Theorems `complex_finite_abel`,
`originalComplexMobiusDirichlet_abel` and
`complexOriginalMertensPrefix_eq_real` encode exact finite complex
summation by parts for the **actual** `moebiusReal n` coefficients,
including all squareful zero terms, the true upper successor boundary
and both finite sums. A complex power `n^(-s)` is applied to the actual
positive integer index; no analytic continuation or asymptotic estimate
is claimed by this algebraic identity.

The theorem `original_integer_to_real_Mertens_power` has a
source-specific proof body: an actual integer estimate on
`finiteMertensPrefix N`, `N≥1`, at exponent `theta≥0`, implies
the EXACT unchanged `mertensPrefix x` bound for all real x≥1
with `N=floor x`, using original `finiteMertensPrefix_eq_source`
and monotonicity of real powers. There is NO exponent inflation,
rounding convention change or hidden negative-integer support.

The previously unproved original physical-time calculus gate
`PickupVelocityPowerEnergyTransfer` receives an actual Lean proof
candidate `pickupVelocityPowerEnergyTransfer_source_proof`.
Its dependencies are the existing actual
`pickupVelocity_intervalIntegrable`, `wholePickup_continuous`,
`intervalIntegral.abs_integral_le_integral_abs`,
`intervalIntegral.integral_mono_on`,
`setIntegral_mono_on`, and the exact real exponential primitive.
For any positive rho, C≥0, and actual source velocity
`|pickupVelocity u|≤C exp(rho*u)` on u≥0, it derives

    |wholePickup(t)| <= (C/rho) exp(rho*t)
    pickupEnergy(T) <= C²/(2*rho³) exp(2*rho*T),

the same exact intended `PickupVelocityPowerEnergyTransfer`
proposition, with the true physical-time signed primitive squared as a
whole. The accompanying proof `polynomialExponentialAbsorption_source_proof`
uses the pinned Mathlib `Real.quadratic_le_exp_of_nonneg`
to establish, for a>0, T≥0,

    T <= exp(a*T)/a
    T² <= 2 exp(a*T)/a².

These are **real Lean theorem proof bodies**, not merely future target
definitions. However no runnable local Lean compiler existed at
this invocation, so syntax/elaboration/expected type/kernel acceptance
remain NOT_RUN. A written proof body is NOT itself a kernel verdict.

## 3. True original complete-core consumer, with unproved source premise explicit

The second new source module proves a finite/real-rate absorption
candidate `full_original_core_fixed_rate_of_energy` using the
PREEXISTING original source-specific
`FullOriginalProfileTwoSidedBudgetTarget` **as an explicit hypothesis**.
The hypothesis is from
`MoebiusCompleteSignedProfileClassicalPNT.lean`,
Git blob `4b6f0f6c77f0e5fa5e8e3330dbdb233253628dac`,
and its complete written ordinary mathematical source proof. The
hypothesis says for all T≥0 and 1/2≤rho<1,

    |profileCore rho T|
      <= pickupEnergy T+4T²
         +16T(1+T)exp(T/2)
         +(64T+4T²)exp(rho*T).

The code pays the original full diagonal and each signed excluded
packet by actual positivity, the exponential-series bounds, and the
single **rate-dependent, scale-independent** scalar allowance

    geometricScalarAllowance(rho,rate)
      =8/rate²
       +16/(rate−1/2)+32/(rate−1/2)²
       +64/(rate−rho)+8/(rate−rho)²

at every strict `rate>rho` and `rate>1/2`.
Neither the old prime-bank credit nor any positive source correlation
is double-subtracted. Both original ordered orientations, original
squareful zeros and every true index cutoff remain in
`profileCore rho T`; no positive kernel is substituted.

The candidate
`PR103_full_original_core_rate` proves from the
EXACT external `PR103DirichletStatement`, the still-unproved classical
`ZeroFreeToMertensPowerBridge` and the still-unproved Lean
`FullOriginalProfileTwoSidedBudgetTarget`:

    FixedRateUpper
      (fun T => |profileCore (7/10) T|)
      (1867/2500).

The candidate
`PR103_complete_original_endpoint_rate` proves from the exact
PR103 external statement and the classical contour proposition:

    FixedRateUpper endpointSum (1867/2500).

Unlike earlier wrappers, neither new theorem needs an independent
`hcalc : PickupVelocityPowerEnergyTransfer` argument, since the
first module now supplies its proof candidate. These are CONDITIONAL
statements at the exact original source, not unconditional assertions
that the external theorem or contour theorem has been proved in Lean.

The numeric values are strictly correct:
`theta0≈0.873381966613207519929026778642`,
`theta=4367/5000=0.8734>theta0`,
and `2theta−1=1867/2500=0.7468<3/4`.
The precise full-geometric absorption gives a one-constant
fixed-grid bound when all hypotheses are supplied; it does NOT prove
all positive rates or RH.

## 4. What remains mathematically and formally unproved

The **classical zero-free-to-Mertens transfer**
`ZeroFreeToMertensPowerBridge` remains an UNPROVED LOCAL LEAN PROP:

    forall theta0<theta<1, theta>1/2,
      [actual zeta zero-free in Re s>theta0 away from pole]
      -> exists C>=0,
         forall u>=0,
           |M(exp u)|<=C exp(theta*u).

Its standard analytic proof must provide a genuine Perron/contour
and tail estimate for the ORIGINAL Dirichlet series of mu, with
sufficient vertical control of `1/zeta(s)` and smoothing/truncation.
The new complex finite Abel identity does NOT alone establish those
analytic hypotheses. Do not replace the required contour theorem
by a definition, an axiom, an assertion of nonvanishing alone with no
analysis, or an assumed RH-strength Mertens growth estimate.

The **original complete signed-core inequality**
`FullOriginalProfileTwoSidedBudgetTarget` is also UNPROVED IN LEAN.
Although its written complete mathematical proof is published, its
kernel proof must explicitly assemble the true finite 2/3-squarefree
orbit decomposition; full ordered twelve-edge internal Gram,
sixteen-edge odd-base packet, real birth/cutoff conditions, exact
short-gap/min-index/gcd exclusions, all retained positive and negative
terms, real-time integration and diagonal. The new consumer DOES NOT
discharge that premise; it makes downstream scalar work ready.

Independent **PR103 full-closure kernel verification** must bind the
complete submitted 237-module tree PLUS all imported upstream
`Submissions.*`, Mathlib/source pins, exact toolchain and proof term
of `Candidate.bound` and supporting declarations. Verify the
elaborated exact statement, #print axioms/transitive closure,
fresh independent kernel replay with configured independent checker,
and absence of unauthorized native/unsafe trust. Neither GitHub's
Node CI nor this lexical scan supplies those facets.

The actual newly authored two-module GRWTSK Lean compilation,
expected type checks, fresh kernel and transitive axiom audit are
likewise NOT_RUN. A failure or missing executable is not permission
to bypass Noe's managed native owner/holds with an improvised runner.

## 5. Publication and next acceptance criteria

Mathematical source belongs in GRWTSK's subject-local
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/`.
The separate passive verification JSON accompanying this review binds
the two new exact Git blobs, external PR103 submission tree,
original-source definitions, module/axiom surfaces, environment pins
and unresolved theorem list.

Expected checks, when a reviewed native host is explicitly available
and authorized:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPR103ClosureAndCausalBridges
    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPR103CompleteCoreConsumer
    lake env lean --trust=0 -DwarningAsError=true GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ClosureAndCausalBridges.lean
    lake env lean --trust=0 -DwarningAsError=true GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103CompleteCoreConsumer.lean
    lake env leanchecker --help

Determine exact supported independent replay flags from actual pinned
checker help rather than inventing a command. Record fresh importing-module
expected-type checks and transitive private/opaque/unsafe axiom closure.
In the external PR103 source, independently reproduce the author-build
and run exact-source independent checker with all upstream dependencies,
then publish a separate immutable receipt. The existing historical
verification statuses of other mathematical source files do NOT change.

**Pinned local environment:** `leanprover/lean4:v4.34.1`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Local source root imports and dependency versions are unchanged.
No external repo or Noe runtime/control state is mutated.

**STOP before proof promotion.** The source-level audit supports a
bounded disposition of PR103 “source-scan PASS / imported-kernel
verification BLOCKED”. The new Lean finite Abel, complex/floor,
mod-one, causal-calculus and full-core consumer proof bodies are
SOURCE_PROOF_CANDIDATES; the independent full PR103 kernel,
classical contour and original full-core source proof are pending.
The Riemann Hypothesis and the all-positive-rate arithmetic endpoint
remain OPEN.
