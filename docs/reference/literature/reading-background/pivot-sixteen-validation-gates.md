# Pivot-sixteen canonical-tent validation gates

**Evidence status (2026-10-23): SOURCE_ONLY.** This is a verification specification, not a kernel acceptance receipt. No Lean/Lake executable was available in the current authoring runtime. Do not promote any new theorem to `GRWTSK.lean` until compiled, trust-zero and independently replayed, with complete transitive axiom/declaration audit and literal receipts in `grwtsk/noeaaeue`.

## Mathematical stages (explanatory, NOT an import order)

The original A–H letters label *mathematical obligations*, **not** a topological module execution order. In particular, `CanonicalSquareTentSixteenPivot` (old B) imports `CanonicalSquareTentStrictRatioBridge` (old F), which imports `CanonicalSquareTentCofactorZeroSign` (old F); that in turn imports `CanonicalSquareTentMixedWeightClassification` (old G). A `lake build` ordering based on A–H is incorrect. Do not use the original table as an executable sequence.

| Mathematical phase | Scope | Mathematical acceptance frontier |
|---|---|---|
| Moment and rank suppliers | Actual canonical tents and two moment rows | existing rank, correction and mixed-coordinate suppliers |
| Pivot geometry | Strict pointwise gaps on (9,16), (16,25) | pivot support and monotone reciprocal weight |
| Analytic gap | Nonnegative and integrable gaps on `Set.Ioi (0:ℝ)` | repaired integrability source, then positive-integral proof |
| Moment/cofactor bridge | Strict integral → strict moment ratio → cofactor nonvanishing | sign and ratio results with actual hypotheses |
| Exceptional coordinate classification | One exceptional weight; real/complex sign; right-half-plane recovery | inherited full analytic and linear-algebra closure |
| External analytic interpretation | Weil admissibility, density, positivity or RH | NOT supplied; separate unresolved obligations |

## Audited import edges and pinned source frontier

The following edges were read directly from the **current source at the time of this audit**, not inferred from theorem prose. An arrow `X → Y` means module X **imports** Y, so Y must be available before X can elaborate. Blob pins below are **file content hashes**, not a claim of kernel acceptance or a freeze of the entire repository.

```text
NonnegativeWeightRecovery → ExceptionalWeightRealAxis
ExceptionalWeightRealAxis → ExceptionalWeightCast
ExceptionalWeightCast → ExceptionalWeightSign
ExceptionalWeightSign → ExceptionalWeightNonzero, SixteenMomentGaps
ExceptionalWeightNonzero → ActualExceptionalWeight
ActualExceptionalWeight → SixteenMomentGaps, MixedWeightClassification
SixteenMomentGaps → SixteenGapIntegralPositive, StrictRatioBridge
SixteenGapIntegralPositive → SixteenGapIntegrability
SixteenGapIntegrability → SixteenPivot
SixteenPivot → StrictRatioBridge
StrictRatioBridge → CofactorZeroSign
CofactorZeroSign → MixedWeightClassification, BombieriMomentRankObstruction
MixedWeightClassification → MixedCoordinateExactness
MixedCoordinateExactness → MixedCoordinateRepair
MixedCoordinateRepair → RepairSufficiency, ThreeTentMomentKernelLine
RepairSufficiency → RepairNecessity, ThreeMomentUniqueDecoder
RepairNecessity → RedundantObservation
RedundantObservation → ThreeMomentUniqueDecoder, Logic.InformationLoss.AugmentedRepairCriterion
ThreeMomentUniqueDecoder → ThirdCoordinateInformationLoss, Logic.InformationLoss.FactorizationUniqueReconstruction
ThirdCoordinateInformationLoss → InformationLossBridge, ThreeTentMomentKernelLine, Logic.InformationLoss.FactorizationFiberCompleteness
ThreeTentMomentKernelLine → CorrectedArithmeticGram
CorrectedArithmeticGram → ThreeTentMomentCorrection
ThreeTentMomentCorrection → BombieriMomentRankObstruction
BombieriMomentRankObstruction → BombieriMomentObstruction
BombieriMomentObstruction → WeilTransportObstruction
WeilTransportObstruction → Polarization, WeilCriterion
Polarization → ZetaApproximation
ZetaApproximation → CanonicalSpectralPort, CriticalStripGapReport, WeilApproximatePositiveLimit
WeilCriterion → CriticalStripGapReport
CriticalStripGapReport → CriticalStripAtlas
```

All short names above except the three `Logic.InformationLoss.*` modules have the common prefix `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTent` when they begin with a square-tent name, except `CanonicalSpectralPort`, `WeilCriterion`, `CriticalStripGapReport`, `CriticalStripAtlas`, and `WeilApproximatePositiveLimit`, which live in `GRWTSK.NumberTheory.Zeta.Riemann`. The last displayed tree is a **verified direct-edge frontier, not an exhaustive transitive closure**: deeper imports from `CanonicalSpectralPort`, `WeilApproximatePositiveLimit`, `CriticalStripAtlas`, `CanonicalSquareTentInformationLossBridge` and the information-loss modules, as well as Mathlib transitive dependencies, are not yet recursively enumerated. Consequently **no executable topological check order is certified**. Finish enumerating these remaining leaves at a single immutable Git commit, detect cycles/missing imports, then compute the topological order and only then authorize any local executor to run it.

| Exact file in the audited frontier (suffix `.lean`) | Git blob |
|---|---|
| `CanonicalSquareTentBombieriMomentRankObstruction` | `e522772381075f125453ef2ba6b30e63d2873910` |
| `CanonicalSquareTentSixteenPivot` | `82e715bf59227af85bd7671a6622d39581fd4021` |
| `CanonicalSquareTentStrictRatioBridge` | `7d1e19add59931dcf3b4a8a67014ce41746b5513` |
| `CanonicalSquareTentCofactorZeroSign` | `840b048afafdc0da58c7ef6d04c771cf0b918e76` |
| `CanonicalSquareTentMixedWeightClassification` | `52005eb0adcf8d1bbb15555ac10930ae8ecfefd1` |
| `CanonicalSquareTentSixteenGapIntegrability` **REPAIRED** | **`67c0e627e31059f7af8eeae2f19fb74957e9e7e1`** |
| `CanonicalSquareTentSixteenGapIntegralPositive` | `f7dcb7fbadb5f332a36ca6d2b1a416638c119ee2` |
| `CanonicalSquareTentSixteenMomentGaps` | `388e2ee9a51815129cf5265fcce8ae074bdd30c3` |
| `CanonicalSquareTentActualExceptionalWeight` | `e07c96e1d0980b199f70ba6097ede9f5f5b046dc` |
| `CanonicalSquareTentExceptionalWeightNonzero` | `b4ce00b06a66dfbb5e247edb9b6b842eeaf5f94f` |
| `CanonicalSquareTentExceptionalWeightSign` | `4136b544689de28ba6b44cef0d5ff81b7d5c8326` |
| `CanonicalSquareTentExceptionalWeightCast` | `f7d2c0b5514f508f17687958f60de686d7c686dd` |
| `CanonicalSquareTentExceptionalWeightRealAxis` | `ca1c91a7a51bdde0c9f391cdd5950d9e7aa7ddcb` |
| `CanonicalSquareTentNonnegativeWeightRecovery` | `a3a9aed57e145a5ca202e83e0a8803ceaed9aa34` |
| `CanonicalSquareTentMixedCoordinateExactness` | `b9155109556059541638be90b28b2b075f715600` |
| `CanonicalSquareTentMixedCoordinateRepair` | `ae11a6e4490fa6f0a2d4819b43c277439ca8bd3c` |
| `CanonicalSquareTentRepairSufficiency` | `2ee4d6d925580960af5e536f7db6aecab1f4a56b` |
| `CanonicalSquareTentRepairNecessity` | `f52cbb3777afe4f90a9c14fede472d1ee1c3f013` |
| `CanonicalSquareTentRedundantObservation` | `0a3693d1a1a0832f322c8379863d6e616619ca60` |
| `CanonicalSquareTentThreeMomentUniqueDecoder` | `db38127cc402436f6e2e07bf3af012de4c3a5513` |
| `CanonicalSquareTentThirdCoordinateInformationLoss` | `ebfa664d3b8fb4ecd3f70c3ee6a989c3d14e485f` |
| `CanonicalSquareTentThreeTentMomentKernelLine` | `a534923a97e826d487b0fae02398556733c45b81` |
| `CanonicalSquareTentCorrectedArithmeticGram` | `4ce2dc2dc3bcf1c651d88a315a3b0cbb9d09d589` |
| `CanonicalSquareTentThreeTentMomentCorrection` | `644be0606ac195f35c8409f8877a707edb2aa457` |
| `CanonicalSquareTentBombieriMomentObstruction` | `cc9ed5b34159242ac69eb569f80e1ea7b420fa53` |
| `CanonicalSquareTentWeilTransportObstruction` | `2c25cac04fe5575ac0242349a2dcc5592d19f0bb` |
| `CanonicalSquareTentPolarization` | `f33d5f402160bc141115c450f1488c103e9cf131` |
| `CanonicalSquareTentZetaApproximation` | `9c756e008461e4686981a48d305207931e8f63ad` |
| `WeilCriterion` | `29d8c4f1c741ab25f6abd136a3c3c2eb900da69a` |
| `CriticalStripGapReport` | `aa606a5279e8bb135718df6e160e64e6bc30793b` |

**Historical distinction:** `CanonicalSquareTentSixteenGapIntegrability` old blob `7df554fa8fff56c912bd4a6b100f032ef8bc73da` was superseded by repaired blob `67c0e627e31059f7af8eeae2f19fb74957e9e7e1` at source commit `c0ff10b964b4e305925814c8cc5ff8250e11c8a5`. Both declarations still concern `Set.Ioi (0:ℝ)` with no changed statements. Earlier verification issues are historical source pins, not current build evidence.

## Follow-up import audit: deeper project frontier (2026-10-23)

The following **additional source edges were read from GitHub**; this extends, but does not close, the pinned import DAG. The `CanonicalSquareTentInformationLossBridge → CanonicalSquareTentBombieriMomentInformationLoss → CanonicalSquareTentWeilTransportObstruction` route also demonstrates why the information-loss and spectral branches must be included in the same dependency audit, rather than treating them as independent validation jobs.

| Source module | Blob SHA | Direct project imports (all under `GRWTSK.`) |
|---|---|---|
| `NumberTheory.Zeta.Riemann.CanonicalSpectralPort` | `32e1bf3064601486ea3385fe9e5e76bf1de14962` | `NumberTheory.Zeta.Riemann.CanonicalTentAtomStage`, `NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort` |
| `NumberTheory.Zeta.Riemann.WeilApproximatePositiveLimit` | `d0353549f353fbbad96cbf07f4b8274bd7542644` | `NumberTheory.Zeta.Riemann.WeilPositiveLimitCore` |
| `NumberTheory.Zeta.Riemann.CriticalStripAtlas` | `4a471e2c9b167b7600147b85bfa052b18a8e5442` | `NumberTheory.Zeta.Riemann.Hypothesis` |
| `NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge` | `6872d5305e9ce50387434fde6a92784866896783` | `Logic.InformationLoss.FactorizationFiber`, `NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss` |
| `NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss` | `9a2435d9c74b89ce1434c45bade1aa9beaa6cead` | `NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram`, `NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction` (also directly imports `Mathlib.Tactic`) |
| `NumberTheory.Zeta.Riemann.CanonicalTentAtomStage` | `42791483907b8fa287fc2bcdac1f85030a934393` | `NumberTheory.Chebyshev.HigherPrimePowerSource`, `NumberTheory.Zeta.Riemann.CanonicalTentLedger` |
| `NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort` | `ffc603c70c7ebebfa57a02e788e69a1669ddbaf8` | `NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt`, `NumberTheory.Zeta.Riemann.QuadraticTraceCriterion` |
| `NumberTheory.Zeta.Riemann.WeilPositiveLimitCore` | `c7f56149ec8d1dd8abed6c7fe9dc6d0f9f0b6006` | `Analysis.ErrorBounds.FiniteResidualTelescope`, `NumberTheory.Zeta.Riemann.ArithmeticFeature`, `NumberTheory.Zeta.Riemann.Hypothesis` |
| `NumberTheory.Zeta.Riemann.Hypothesis` | `6fe545d161e3166d4fd7b2a5dc5cb117c418e261` | none; direct Mathlib import `Mathlib.NumberTheory.LSeries.RiemannZeta` |
| `Logic.InformationLoss.FactorizationFiber` | `3f58f67ffca2894a7350fecfd78a9fa65b9bc9fd` | none; direct Mathlib import `Mathlib.Logic.Function.Basic` |
| `Logic.InformationLoss.AugmentedRepairCriterion` | `fa60e69e2a170c8b588227aab97d359adf04586e` | `Logic.InformationLoss.FactorizationUniqueReconstruction` |
| `Logic.InformationLoss.FactorizationUniqueReconstruction` | `53916cc045ae969b09d86729f294cfd96561e6e6` | `Logic.InformationLoss.FactorizationDecoderUniqueness` |
| `Logic.InformationLoss.FactorizationFiberCompleteness` | `384f7ead3e902659ba1f592bb3fa2a8be9278f65` | `Logic.InformationLoss.FactorizationFiber` |

Remaining unexpanded project imports now include `HigherPrimePowerSource`, `CanonicalTentLedger`, `PrimePowerVonMangoldt`, `QuadraticTraceCriterion`, `FiniteResidualTelescope`, `ArithmeticFeature`, `FactorizationDecoderUniqueness` and their descendants. Full Mathlib closure has not been enumerated. **No executable topological order is certified**, and this audit does not establish a cycle-free complete graph. All original mathematical phases remain pending as written. The repaired `CanonicalSquareTentSixteenGapIntegrability` blob is `67c0e627e31059f7af8eeae2f19fb74957e9e7e1`, superseding `7df554fa8fff56c912bd4a6b100f032ef8bc73da`, with the exact same theorem signatures and `Set.Ioi (0:ℝ)` domains.

**Evidence remains SOURCE_ONLY / COMPILATION NOT_RUN / FRESH_KERNEL NOT_RUN / TRANSITIVE_AXIOMS NOT_RUN.** Do not promote, merge, force push, dispatch an unapproved executor or use Railway. Retain the staged mathematical proof phases and all no-root-import requirements.

## Import frontier continuation: seven previously unexpanded modules

Read-only source inspection expanded **seven** previously listed frontier modules. Direct project imports and exact current Git blobs:

| Source module (under `GRWTSK.`) | Blob | Direct project imports |
|---|---|---|
| `NumberTheory.Chebyshev.HigherPrimePowerSource` | `09f03ceadff5ee82e489d3856cad0161c8a4bbac` | `NumberTheory.Chebyshev.QuadraticIntervals`, `NumberTheory.Chebyshev.HigherPrimePowers`, `Analysis.ErrorBounds.FiniteSquareBudget` |
| `NumberTheory.Zeta.Riemann.CanonicalTentLedger` | `4268cff7be7f96cb877d9d622c4a09d9afd98376` | `NumberTheory.Chebyshev.CanonicalTentExplicitFormula`, `NumberTheory.Chebyshev.TrivialZeroTentSeries`, `NumberTheory.Zeta.Riemann.PrimePowerExplicitFormulaSource` |
| `NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt` | `1df05e21d7d7cd5c9988ff843cf0bd0821e2f5b7` | `NumberTheory.ArithmeticFunctions.PrimePowerAtoms` |
| `NumberTheory.Zeta.Riemann.QuadraticTraceCriterion` | `2dc31b0967cf232a485f2b8a72724925a713b50f` | `Algebra.Polynomial.ConjugateQuartic`, `NumberTheory.Zeta.Riemann.ZeroDefinitions` |
| `Analysis.ErrorBounds.FiniteResidualTelescope` | `dd122f399d065fea679ead86adb760d177b91026` | none (Mathlib.Tactic) |
| `NumberTheory.Zeta.Riemann.ArithmeticFeature` | `84540b576ea99ab0a08ccb13dd3073d861598813` | none (Mathlib.Tactic) |
| `Logic.InformationLoss.FactorizationDecoderUniqueness` | `4c568562742645c0bb1b8ae8d9ef89968a32918a` | `Logic.InformationLoss.FactorizationFiberCompleteness` |

Additional direct Mathlib imports are `Mathlib.NumberTheory.Chebyshev` (HigherPrimePowerSource), `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` and `Mathlib.Tactic` (PrimePowerVonMangoldt), `Mathlib.Topology.Order.Basic` (QuadraticTraceCriterion), and `Mathlib.Tactic` for CanonicalTentLedger, FiniteResidualTelescope and ArithmeticFeature.

**New project frontier:** `QuadraticIntervals`, `HigherPrimePowers`, `FiniteSquareBudget`, `CanonicalTentExplicitFormula`, `TrivialZeroTentSeries`, `PrimePowerExplicitFormulaSource`, `PrimePowerAtoms`, `ConjugateQuartic`, and `ZeroDefinitions` and their descendants. This is a partial direct-edge expansion, **not an exhaustive closure, cycle check, or executable topological order**. The repaired `CanonicalSquareTentSixteenGapIntegrability` blob remains `67c0e627e31059f7af8eeae2f19fb74957e9e7e1` (historical superseded `7df554fa8fff56c912bd4a6b100f032ef8bc73da`); its statements and `Set.Ioi (0:ℝ)` domains are unchanged.

Retain explanatory-only A–H phases, unfinished strict integral and independent Weil/RH mathematical obligations, and **SOURCE_ONLY / COMPILATION NOT_RUN / FRESH_KERNEL NOT_RUN / TRANSITIVE_AXIOMS NOT_RUN**. No root import/merge, Railway, force push or unauthorized executor dispatch.

## Import frontier continuation: nine additional project modules

Read-only GitHub source inspection extended the project DAG by nine modules. The table records exact file blobs and **direct GRWTSK imports**, not transitive Lean/kernel validation.

| Source module (under `GRWTSK.`) | Git blob | Direct project imports |
|---|---|---|
| `NumberTheory.Chebyshev.QuadraticIntervals` | `29ffefcbeef17d9118f16268a42d5d8e5fd35114` | `NumberTheory.Chebyshev.CorrelationPairing` |
| `NumberTheory.Chebyshev.HigherPrimePowers` | `255cfee7611bd21bb58f47e217ec2a14d1afe355` | `NumberTheory.Chebyshev.PowerOccupancy` |
| `Analysis.ErrorBounds.FiniteSquareBudget` | `fbfd45fb3e82f019adc243338a9c3c4222e5a704` | none |
| `NumberTheory.Chebyshev.CanonicalTentExplicitFormula` | `2172502e9be474731d409b31a2b2d288a770ba24` | `NumberTheory.Chebyshev.CanonicalTentAbsolute`, `NumberTheory.Chebyshev.TentSelectedResidueLimit` |
| `NumberTheory.Chebyshev.TrivialZeroTentSeries` | `86361f98a33d3b2f79e79d7679a04cd1490c69be` | `NumberTheory.Zeta.Riemann.TrivialZeroResidues`, `NumberTheory.Chebyshev.TentResidueContributions`, `Analysis.Real.TentRationalCorrection` |
| `NumberTheory.Zeta.Riemann.PrimePowerExplicitFormulaSource` | `d4b3ba1c722726a33fe9e3306809d8633ba2c8b2` | `NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt`, `NumberTheory.Zeta.Riemann.ArithmeticFeature` |
| `NumberTheory.ArithmeticFunctions.PrimePowerAtoms` | `ca25892174bf9e483025f5126f1de1041fc89f07` | `NumberTheory.ArithmeticFunctions.PrimeExponentScaleTopology` |
| `Algebra.Polynomial.ConjugateQuartic` | `3b19fa113f9493c2ef98f791507ae351ea927c20` | none |
| `NumberTheory.Zeta.Riemann.ZeroDefinitions` | `3768bab2649a6ae19e4973bf2ee2dfe41bfe3fe9` | `Analysis.Complex.CriticalReflection` |

Direct non-project imports include Mathlib components for ordered floors, arithmetic functions, harmonic bounds, complex analysis, polynomial evaluation, and infinite sums, plus `Lean.Elab.Tactic.NormCast`. These are source declarations, **not** a completed Mathlib closure.

**Next unexpanded project frontier:** `CorrelationPairing`, `PowerOccupancy`, `CanonicalTentAbsolute`, `TentSelectedResidueLimit`, `TrivialZeroResidues`, `TentResidueContributions`, `TentRationalCorrection`, `PrimeExponentScaleTopology`, and `CriticalReflection`, together with their descendants. Exact project path prefixes are provided by the fully qualified imports in the source files; do not infer executable order from the table layout.

All preceding hashes and history remain valid for their pinned sources, including repaired `CanonicalSquareTentSixteenGapIntegrability` blob `67c0e627e31059f7af8eeae2f19fb74957e9e7e1`, superseded blob `7df554fa8fff56c912bd4a6b100f032ef8bc73da`, unchanged declarations and `Set.Ioi (0:ℝ)` domain. Mathematical A–H phases are explanatory only. **Recursive closure remains incomplete; no cycle-free import DAG or executable topological check order is certified.** SOURCE_ONLY / COMPILATION NOT_RUN / FRESH_KERNEL NOT_RUN / TRANSITIVE_AXIOMS NOT_RUN. Retain all pending analytic/Weil obligations and strict stopping/no-merge/no-root-import/no-force-push/no-Railway/no-unauthorized-dispatch constraints.

## Required exact run protocol

1. Freeze a **single** actual commit on `main` after all source repairs. Record `git rev-parse HEAD`, `git ls-files`, `git hash-object` for each leaf, `lean-toolchain`, `lake env lean --version`, and the Mathlib entry in `lake-manifest.json`. Intended toolchain: Lean `v4.33.0`, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. Do not assume the running toolchain matches those pins.
2. **Do not run A–H as an execution sequence.** First complete the full pinned recursive import-DAG enumeration above, including external project and Mathlib imports; compute and review a dependency-first topological order. Only then run `lake build --wfail GRWTSK.NumberTheory.Zeta.Riemann.<Module>` for each applicable leaf in that computed order. Capture full stdout/stderr and actual exit codes. Stop advancing when any import, theorem, linter or type error occurs; fix only source with new commit and restart a fresh pinned run.
3. Re-run `lake env lean <relative/path.lean>` and audit direct theorem names via separate `#check` and `#print axioms` commands. Recursively enumerate *all* transitive GRWTSK and Mathlib declarations/axioms; check for `sorryAx`, `unsafe`, `opaque`, `axiom`, generated declarations and nonstandard assumptions. `#print axioms` alone is not a complete generated-declaration audit.
4. On the same immutable source/object tree run independently supported fresh-kernel checking with trust zero, and capture the actual invocation and status. An informational issue, `git` blob, or queued job is not a compiler/kernal receipt.
5. Store the exact evidence and runner process **outside the math repo** in `grwtsk/noeaaeue`. No Railway, no force push, no unauthorized remote dispatch, no root import before warning-clean acceptance.

## Mathematical scope boundary

Everything here concerns the finite three-tent coefficient model and two ordinary/reciprocal moment rows. Injectivity after a third arithmetic coordinate, exceptional weights, and cofactor signs do **not** establish a classical Guinand–Weil/Weil form, test-function admissibility, positivity, density, the Riemann hypothesis or any global analytic continuation theorem. The order/phase-retrieval analogy is explanatory rather than an imported paper theorem.
