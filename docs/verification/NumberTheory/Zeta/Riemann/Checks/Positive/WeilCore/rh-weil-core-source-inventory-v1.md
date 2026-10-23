# Weil core: exact authored-source inventory v1

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED / NOT_ADMITTED.

This is a static mathematical acceptance specification, not an executable inventory
parser, build request, operational receipt, or authority to release F06. It names
authored source objects and their exact source ranges. It does not claim that these
objects have elaborated, or that this is the complete generated Lean environment.

## Source and scope

Selected parent: `a54f36222f782114e22def5d3987a1e5d22e36c3`, tree
`369ca3c9533cd4c6b9a1a7b05b695b19d06330f5`. Source inspection began at
`1686a17f2b45b5eb2c08823a4867f27c1ed0dc0f`, whose actual parents include
`093da2fa92e0d2121890e7ebbc66c6a3deff6269`. The later main comparison is
13 commits ahead with no change to the seven selected files, dependency pins or
inherited reconciliation specification. All concurrent main additions are retained.
History integration is not Lean or kernel acceptance. The containing commit governs replay.
A later commit must be rebound explicitly, even when this inventory file is unchanged.

Explicit target: `GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.WeilCore`.

The inventory covers seven local source files, 1,671 lines, 118 explicitly named
declaration commands, nine anonymous examples, 155 explicitly written structure
fields, and 29 explicitly written inductive constructors. These categories are
not counts of accepted theorems, generated constants, axioms, or passing tests.

All imports, declaration bodies and proof scripts are unchanged from the parent.
The sole Lean-file edit is the two-line doc comment for PolarizedPositiveGramLimit:
it now points to the implemented converse in WeilPolarization instead of calling
polarized convergence strictly stronger. Parent WeilPositiveLimit blob:
`b47dfd2fe92dd5be05326d1b90005bb2d0674fc8`; candidate blob appears below.
This documentation repair changes no convergence hypothesis or theorem conclusion.

Pinned `lean-toolchain` is `leanprover/lean4:v4.33.0`, blob
`025e59548e48cf71f2744154e2890beefe30a258`. Retain the entire dependency lock
`lake-manifest.json`, blob `1f2e3e2d66253933a410e981eb359a9b454aae0b`, including
all nine package entries; Mathlib revision is
`db584cd6d46c92f209a44c0f1c829460d327499d`.

## Exact local files

All paths are under `GRWTSK/NumberTheory/Zeta/Riemann/`. Names in the graph use
the corresponding `GRWTSK.NumberTheory.Zeta.Riemann.` module prefix.

| File | Candidate Git blob | Lines | Named commands | Examples |
|---|---|---:|---:|---:|
| `Hypothesis.lean` | `6fe545d161e3166d4fd7b2a5dc5cb117c418e261` | 24 | 2 | 0 |
| `CriticalStripAtlas.lean` | `e1907972a28b40f3a4228c6c0de9037ead3681e2` | 448 | 37 | 0 |
| `CriticalStripGapReport.lean` | `aa606a5279e8bb135718df6e160e64e6bc30793b` | 305 | 21 | 0 |
| `WeilCriterion.lean` | `29d8c4f1c741ab25f6abd136a3c3c2eb900da69a` | 299 | 23 | 0 |
| `WeilPositiveLimit.lean` | `7378bab85bd9dbe7b4e2babcc1dae67ef06e8300` | 282 | 15 | 0 |
| `WeilPolarization.lean` | `c6d89e8f916e691a8e150770b2edb7ebcc551b11` | 267 | 20 | 0 |
| `Checks/Positive/WeilCore.lean` | `96392efb5ed7cf77263e5a977fc81195eaff9af6` | 46 | 0 | 9 |

## Header import boundary

The six explicit local edges form this complete source-header chain for the selected
files. The graph is not an elaborated dependency or transitive trust closure.

```text
Checks.Positive.WeilCore -> WeilPolarization -> WeilPositiveLimit
  -> WeilCriterion -> CriticalStripGapReport -> CriticalStripAtlas -> Hypothesis
```

The exact direct upstream imports are:

- Hypothesis: `Mathlib.NumberTheory.LSeries.RiemannZeta`.
- CriticalStripAtlas: `Mathlib.Analysis.Complex.Basic`, `Mathlib.Tactic`.
- WeilCriterion: `Mathlib.Tactic`.
- WeilPositiveLimit: `Mathlib.Analysis.InnerProductSpace.Basic`, `Mathlib.Tactic`.

There are four distinct direct upstream modules. Their own imports, elaborator
extensions, tactic dependencies and generated declarations are not enumerated here.
In particular, the broad Mathlib.Tactic import is not a small or empty trust scope.

## Authored declarations

All names below have the prefix `GRWTSK.RiemannHypothesis.`. File labels use the
path prefix above. Ranges are 1-based inclusive source lines in the exact listed
blob. Each range covers the written declaration and body; surrounding namespace
and section-variable commands in that same blob remain part of its source context.
An unchanged name or range without the matching blob is insufficient evidence.
These are source signatures and proof scripts, NOT elaborated kernel types.

### Hypothesis.lean

| Kind | Name without common prefix | Source lines |
|---|---|---|
| def | `Target.Statement` | 17-19 |
| theorem | `Target.statement_eq_mathlib` | 22-22 |

### CriticalStripAtlas.lean

| Kind | Name without common prefix | Source lines |
|---|---|---|
| structure | `NoncommutativeHeightRoot` | 44-55 |
| def | `NoncommutativeHeightRoot.commutatorAt` | 60-63 |
| def | `NoncommutativeHeightRoot.coordinateHeight` | 66-69 |
| def | `NoncommutativeHeightRoot.heightAt` | 72-74 |
| theorem | `NoncommutativeHeightRoot.heightAt_eq_coordinateHeight` | 76-79 |
| structure | `CriticalStripChart` | 85-98 |
| def | `CriticalStripChart.rootHeight` | 103-107 |
| theorem | `CriticalStripChart.coordinate_height_eq_root` | 110-116 |
| def | `CriticalStripChart.Overlaps` | 119-123 |
| structure | `CoordinateTransition` | 129-136 |
| theorem | `CoordinateTransition.height_preserving` | 142-150 |
| structure | `ChartTransition` | 156-161 |
| theorem | `ChartTransition.height_preserving` | 166-174 |
| inductive | `LocalRHStatus` | 179-185 |
| structure | `LocalRHProfile` | 189-197 |
| def | `LocalRHProfile.ofEquivalence` | 202-209 |
| def | `LocalRHProfile.ofSufficient` | 212-221 |
| def | `LocalRHProfile.ofNecessary` | 224-233 |
| def | `LocalRHProfile.neutral` | 236-246 |
| def | `LocalRHProfile.inconsistent` | 249-257 |
| theorem | `LocalRHProfile.iff_rh_of_equivalent` | 260-263 |
| structure | `CriticalStripAtlas` | 272-296 |
| def | `CriticalStripAtlas.GlobalStatement` | 301-304 |
| def | `CriticalStripAtlas.GapFree` | 307-310 |
| def | `CriticalStripAtlas.ForwardGap` | 313-317 |
| def | `CriticalStripAtlas.ReverseGap` | 320-324 |
| theorem | `CriticalStripAtlas.localStatement_iff_rh` | 327-331 |
| theorem | `CriticalStripAtlas.globalStatement_iff_rh` | 335-343 |
| theorem | `CriticalStripAtlas.overlap_statement_trans` | 347-353 |
| structure | `VerticalStep` | 359-365 |
| def | `VerticalStep.refl` | 370-375 |
| def | `VerticalStep.trans` | 378-384 |
| structure | `TopologicalEquivalence` | 390-397 |
| structure | `StructuredHomotopy` | 401-407 |
| structure | `RingChartHomomorphism` | 410-411 |
| structure | `HolomorphicChartMap` | 415-418 |
| structure | `TopologicalToAnalyticTransport` | 425-446 |

### CriticalStripGapReport.lean

| Kind | Name without common prefix | Source lines |
|---|---|---|
| inductive | `AtlasGapKind` | 27-46 |
| inductive | `GapDisposition` | 51-58 |
| def | `GapDisposition.IsOpen` | 63-66 |
| structure | `SourceBinding` | 71-75 |
| def | `SourceBinding.Matches` | 80-86 |
| structure | `AtlasGap` | 92-99 |
| def | `AtlasGap.IsOpen` | 104-105 |
| def | `HasOpenGap` | 110-111 |
| def | `LocalRHProfile.HasForward` | 116-117 |
| def | `LocalRHProfile.HasReverse` | 120-121 |
| theorem | `LocalRHProfile.status_eq_equivalent_of_hasForward_hasReverse` | 125-134 |
| structure | `ChartAuditEntry` | 143-171 |
| theorem | `ChartAuditEntry.carrier_nonempty` | 177-182 |
| theorem | `ChartAuditEntry.neutral_reports_both_directional_gaps` | 185-206 |
| theorem | `ChartAuditEntry.sufficient_reports_reverse_gap` | 209-221 |
| theorem | `ChartAuditEntry.necessary_reports_forward_gap` | 224-236 |
| theorem | `ChartAuditEntry.equivalent_closes_directional_gaps` | 239-247 |
| structure | `AtlasGapReport` | 252-259 |
| def | `AtlasGapReport.CoversAll` | 264-268 |
| def | `AtlasGapReport.DirectionalGapsDischarged` | 272-278 |
| theorem | `AtlasGapReport.gapFree_of_directionalGapsDischarged` | 283-301 |

### WeilCriterion.lean

| Kind | Name without common prefix | Source lines |
|---|---|---|
| structure | `WeilTestSpace` | 30-39 |
| abbrev | `WeilTestSpace.Vector` | 44-47 |
| def | `WeilTestSpace.binding` | 50-55 |
| structure | `WeilHermitianForm` | 62-75 |
| def | `WeilHermitianForm.diagonal` | 80-84 |
| def | `WeilHermitianForm.PositiveDiagonal` | 87-91 |
| structure | `WeilCriterionSource` | 97-104 |
| structure | `WeilPositivityImpliesRH` | 107-113 |
| structure | `RHImpliesWeilPositivity` | 116-122 |
| structure | `WeilPositivityIffRH` | 125-131 |
| def | `WeilPositivityIffRH.toForward` | 136-143 |
| def | `WeilPositivityIffRH.toReverse` | 146-153 |
| def | `WeilPositivityImpliesRH.localProfile` | 158-163 |
| def | `WeilPositivityIffRH.localProfile` | 166-171 |
| theorem | `negativeWitness_of_not_rh` | 176-189 |
| theorem | `not_positiveDiagonal_of_negativeWitness` | 192-199 |
| theorem | `not_rh_of_negativeWitness` | 202-209 |
| structure | `PositiveNormalizationTransport` | 213-227 |
| theorem | `PositiveNormalizationTransport.sourcePositive_of_repoPositive` | 233-250 |
| theorem | `PositiveNormalizationTransport.rh_of_repoPositive` | 253-264 |
| def | `PositiveNormalizationTransport.toCriterion` | 268-282 |
| theorem | `positiveScalar_preserves_nonnegative` | 287-290 |
| theorem | `negativeScalar_reverses_positive` | 294-297 |

### WeilPositiveLimit.lean

| Kind | Name without common prefix | Source lines |
|---|---|---|
| structure | `PositiveGramFamily` | 32-43 |
| def | `PositiveGramFamily.gram` | 48-56 |
| def | `PositiveGramFamily.diagonal` | 59-67 |
| theorem | `PositiveGramFamily.diagonal_nonnegative` | 70-80 |
| structure | `DiagonalPositiveGramLimit` | 85-97 |
| theorem | `DiagonalPositiveGramLimit.positiveDiagonal` | 102-113 |
| theorem | `DiagonalPositiveGramLimit.riemannHypothesis` | 117-127 |
| structure | `PolarizedPositiveGramLimit` | 133-145 |
| def | `PolarizedPositiveGramLimit.toDiagonal` | 150-169 |
| theorem | `PolarizedPositiveGramLimit.riemannHypothesis` | 172-182 |
| structure | `DiagonalErrorBound` | 188-204 |
| theorem | `DiagonalErrorBound.tendsto_diagonal` | 209-225 |
| def | `DiagonalErrorBound.toLimit` | 228-241 |
| theorem | `no_positiveGramLimit_at_negativeWitness` | 246-262 |
| theorem | `nonnegative_limit_of_approximately_nonnegative` | 266-280 |

### WeilPolarization.lean

| Kind | Name without common prefix | Source lines |
|---|---|---|
| def | `WeilPolarization.combine` | 32-33 |
| theorem | `WeilPolarization.of_real_diagonal` | 37-57 |
| theorem | `WeilPolarization.combine_sub` | 60-65 |
| theorem | `WeilPolarization.norm_combine_le` | 68-84 |
| theorem | `WeilHermitianForm.ofReal_diagonal` | 94-98 |
| theorem | `WeilHermitianForm.polarization` | 101-107 |
| theorem | `PositiveGramFamily.gram_polarization` | 118-135 |
| theorem | `DiagonalPositiveGramLimit.tendsto_polarized` | 147-164 |
| def | `DiagonalPositiveGramLimit.toPolarized` | 167-173 |
| theorem | `DiagonalPositiveGramLimit.toPolarized_family` | 175-176 |
| theorem | `DiagonalPositiveGramLimit.toPolarized_comparisonId` | 178-179 |
| theorem | `DiagonalPositiveGramLimit.toPolarized_toDiagonal` | 182-185 |
| theorem | `PolarizedPositiveGramLimit.toDiagonal_toPolarized` | 195-198 |
| def | `WeilPolarization.limitEquiv` | 205-213 |
| def | `DiagonalErrorBound.polarizedError` | 224-227 |
| theorem | `DiagonalErrorBound.polarizedError_nonnegative` | 229-234 |
| theorem | `DiagonalErrorBound.polarized_comparison` | 237-246 |
| theorem | `DiagonalErrorBound.polarizedError_tendsto_zero` | 249-256 |
| def | `DiagonalErrorBound.toPolarized` | 259-260 |
| theorem | `DiagonalErrorBound.toPolarized_family` | 262-263 |

## Explicit fields and constructors

Names here are written members of the named source declaration, not an invented
list of generated projection/recursor constants. Each `name@line` locates a field
or constructor in the corresponding module table and exact blob. Inherited fields,
parent projections, generated constructors, recursors, eliminators, equation lemmas
and deriving-generated instances still need actual environment enumeration.

### CriticalStripAtlas.lean

`NoncommutativeHeightRoot` (fields): `sourceId@46, revision@47, coordinate@48, representation@49, dirac@50, operatorHeight@51, image_noncommutative@52`.

`CriticalStripChart` (fields): `carrier@88, anchor@89, anchor_mem@90, coordinate@91, coordinate_eq_root@92, localStatement@93, sourceId@94, revision@95, normalizationId@96, source_eq_root@97, revision_eq_root@98`.

`CoordinateTransition` (fields): `forward@133, coordinate_transport@134`.

`ChartTransition` (fields): `statement_iff@161`.

`LocalRHStatus` (constructors): `equivalent@180, sufficient@181, necessary@182, neutral@183, inconsistent@184`.

`LocalRHProfile` (fields): `status@190, forward@191, reverse@194, contradiction@197`.

`CriticalStripAtlas` (fields): `root@274, chart@275, cover@276, transition@277, identity_transition@279, inverse_transition@283, cocycle_transition@288, comparison@296`.

`VerticalStep` (fields): `height_mono@362, transport@364`.

`TopologicalEquivalence` (fields): `toFun@392, invFun@393, left_inverse@394, right_inverse@395, continuous_toFun@396, continuous_invFun@397`.

`StructuredHomotopy` (fields): `map@404, continuous_map@405, at_zero@406, at_one@407`.

`RingChartHomomorphism` (fields): `map@411`.

`HolomorphicChartMap` (fields): `domain@416, toFun@417, holomorphic@418`.

`TopologicalToAnalyticTransport` (fields): `topological@429, comparisonMap@430, homotopy@431, ringHomomorphism@432, holomorphicMap@433, sourceTopologicalCoordinate@434, targetTopologicalCoordinate@435, sourceRingCoordinate@436, targetRingCoordinate@437, topological_analytic_compatibility@438, ring_analytic_compatibility@442, proofTransport@446`.

### CriticalStripGapReport.lean

`AtlasGapKind` (constructors): `missingForwardImplication@28, missingReverseImplication@29, carrierVacuity@30, rootCoordinateMismatch@31, sourceMismatch@32, normalizationMismatch@33, missingOverlap@34, missingIdentityLaw@35, missingInverseLaw@36, missingCocycleLaw@37, missingVerticalStep@38, missingTopologicalEquivalence@39, missingHomotopy@40, missingRingHomomorphism@41, missingHolomorphy@42, missingCompatibilitySquare@43, missingReplayEvidence@44, refutedLocalStatement@45`.

`GapDisposition` (constructors): `unproved@52, refuted@53, unavailable@54, sourceMoved@55, notApplicable@56, discharged@57`.

`SourceBinding` (fields): `sourceId@72, revision@73, normalizationId@74`.

`AtlasGap` (fields): `chartId@93, kind@94, disposition@95, owner@96, obligation@97, binding@98`.

`ChartAuditEntry` (fields): `chartId@146, binding@147, binding_matches@148, forwardDeclaration@149, reverseDeclaration@150, suppliers@151, consumers@152, gaps@153, forward_declaration_present@154, reverse_declaration_present@157, forward_present_no_gap@160, reverse_present_no_gap@163, forward_absent_reported@166, reverse_absent_reported@169`.

`AtlasGapReport` (fields): `reportId@255, sourceRevision@256, required@257, required_nonempty@258, audit@259`.

### WeilCriterion.lean

`WeilTestSpace` (fields): `carrier@31, nontrivial@32, sourceId@33, revision@34, normalizationId@35, transformConvention@36, involutionConvention@37, topologyProfile@38, invalidationKey@39`.

`WeilHermitianForm` (fields): `toFun@65, map_add_left@66, map_smul_left@67, map_add_right@68, map_smul_right@69, hermitian@70, diagonal_im_zero@71, formId@72, sourceRevision@73, normalizationId@74, invalidationKey@75`.

`WeilCriterionSource` (fields): `binding@98, theoremId@99, theoremRevision@100, assumptionsProfile@101, invalidationKey@102, replayDisposition@103`.

`WeilPositivityImpliesRH` (fields): `source@111, source_binding_eq@112, proof@113`.

`RHImpliesWeilPositivity` (fields): `source@120, source_binding_eq@121, proof@122`.

`WeilPositivityIffRH` (fields): `source@129, source_binding_eq@130, proof@131`.

`PositiveNormalizationTransport` (fields): `transportId@220, toSource@221, scalar@222, scalar_positive@223, diagonal_eq@224, sourceRevision@226, invalidationKey@227`.

### WeilPositiveLimit.lean

`PositiveGramFamily` (fields): `map@38, sourceBinding@39, source_binding_eq@40, stageId@41, constructionProfile@42, invalidationKey@43`.

`DiagonalPositiveGramLimit` (fields): `family@92, comparisonId@93, form_revision_eq@94, form_normalization_eq@95, tendsto_diagonal@96`.

`PolarizedPositiveGramLimit` (fields): `family@140, comparisonId@141, form_revision_eq@142, form_normalization_eq@143, tendsto_polarized@144`.

`DiagonalErrorBound` (fields): `family@195, comparisonId@196, form_revision_eq@197, form_normalization_eq@198, error@199, error_nonnegative@200, comparison@201, error_tendsto_zero@203`.

## Anonymous source examples

All nine occur in `Checks/Positive/WeilCore.lean`. Their line locations are source
locators only: no stable kernel declaration names are assigned or guessed here.

| Source locator | Lines |
|---|---|
| `example@19` | 19-19 |
| `example@20` | 20-20 |
| `example@22` | 22-23 |
| `example@25` | 25-26 |
| `example@28` | 28-29 |
| `example@31` | 31-32 |
| `example@34` | 34-35 |
| `example@37` | 37-39 |
| `example@42` | 42-44 |

## Conjunctive acceptance and invalidation

Retain the complete prior `docs/verification/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore/rh-mellin-atlas-reconciliation-v1.md`,
blob `27baa69ac4f1138dbdc7075b7ef04575276f1bd4`, and every manifest, control,
coverage, source, premise and trust requirement it retains. This inventory adds
explicit smaller-core source obligations; it does not replace the broader target
`GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.MellinAtlasIntegration` or the
inherited root-wide, atlas-fixture, analytic, Mellin, finite-power and polarization
checks. Those sources, imports and historical specifications are unchanged.

In particular, retain allowed axioms propext, Classical.choice and Quot.sound,
rejection of sorryAx and unreported native dependencies, exact-type/coverage
reconciliation, and explicit reporting of failures and unavailable checks.

I01: Bind every result to the containing commit/tree, both dependency-pin blobs,
all seven module blobs and the selected target. A parent or moving-ref result is
not a result for this candidate.

I02: Independently reconcile all authored declarations above plus the actual
generated environment: universe parameters, elaborated types, constructors,
projections, inherited fields, recursors, equation lemmas and deriving instances.
The absence of that inventory is UNAVAILABLE, not an empty generated set.

I03: Do not silently omit any of the nine anonymous source examples because they
lack stable names in this specification. Check their actual source-bound obligations.

I04: Preserve each explicit conditional premise, all-vector quantifier, complex
submodule, exact source/revision/normalization equality and supplied criterion.
Neither byte equality nor a smaller import graph supplies any of those premises.

I05: Reconcile all four direct Mathlib imports and their actual transitive
declaration/axiom and runtime dependencies. A lexical scan or source-header graph
is not the transitive audit; no missing audit may be read as zero axioms.

I06: Require exactly scoped terminal outcomes for every required module and
declaration. Missing, failed, not-run, unavailable or conflicting results cannot
be replaced by one core-root PASS or an old larger/smaller receipt.

I07: Small-core success establishes neither the combined target nor public-root
acceptance. All predecessor control descriptions and acceptance conditions remain
conjunctive. Historical comment/checksum statements refer to their old snapshots.

I08: Keep the demonstrated all-vector pointwise polarization equivalence separate
from finite diagonal samples, uniform-in-vector, operator-norm, trace-norm or
determinant convergence. The doc-comment correction is not a new proof or receipt.

## Evidence still required

Lean/Lake elaboration, exact kernel types, generated declarations, complete
dependency/trust audit, executed hostile controls and immutable external replay
are NOT_RUN or UNAVAILABLE here. Mathematical suppliers remain independent:
actual zeta Weil form and classical criterion, source-faithful arithmetic Gram
family, comparison-error decay, certified numerical evaluation and all-height
zero-exclusion covers. No RH/ABC result, issue closure, merge, worker action or
execution authority is supplied by this inventory.
