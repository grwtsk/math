# Heat-flow compression, sofic accounting, and zero-height obstructions

Subsequent verification (2026-10-23): see **HEAT-COMPRESSION-VALIDATION-20261023**
in [paper-to-formalization references](paper-to-formalization-references.md)
for the exact checked source blobs, successful strict build, fresh trust-zero
replay, transitive axiom audit and external receipt paths. Historical source-only
statuses below describe the authoring run; analytic and code-existence premises
remain unresolved.


## Status and scope

This note records the sources and the exact formal boundary for
`GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean`.

- Source commit: `62c11bdfdf247ecef272e0ea539f133ce3de94a9`
- Base `grwtsk/math` commit: `264f4e6e60b7877489f92fd72cbeb473873c47c7`
- Branch: `formalize/heat-flow-compression-sofic-obstruction`
- Verification status: `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`
- Root status: not imported by `GRWTSK.lean` pending pinned elaboration, fresh
  kernel replay, and transitive axiom audit.

The formal file does **not** claim that the de Bruijn--Newman heat flow is a
Huffman algorithm. It turns that proposal into an explicit hypothesis and then
proves its exact logical consequences. It also does **not** prove that any
zeta-zero ordinate is irrational or transcendental. The correct adjective is
*transcendental*.

## Source record

### Rodgers--Tao heat-flow argument

- Title: *The De Bruijn--Newman constant is non-negative*
- Authors: Brad Rodgers and Terence Tao
- Year: 2018 preprint; published version 2020
- Stable identifier: arXiv:1801.05914
- Stable URL: https://arxiv.org/abs/1801.05914
- Exact result/method used here: the paper defines the de Bruijn--Newman heat
  deformation `H_t`, proves the complementary inequality `Λ ≥ 0`, and obtains
  a contradiction from the zero dynamics that would follow from `Λ < 0`,
  including an excessively rigid local-equilibrium regime incompatible with
  known zero statistics.
- Hypotheses actually imported into this GRWTSK module: none. The heat-flow
  paper motivates the word `process` and the contradiction pattern only.
- Corresponding declarations:
  - `HuffmanLikeCover`
  - `readout_bound_to_process_of_huffmanLikeCover`
  - `no_huffmanLikeCover_of_process_collision`
- Formal status: **analogy/interface only**. No PDE, `H_t`, zero ODE, or
  de Bruijn--Newman constant is defined in the module.

### Huffman coding

- Title: *A Method for the Construction of Minimum-Redundancy Codes*
- Author: David A. Huffman
- Year: 1952
- Stable identifier: DOI 10.1109/JRPROC.1952.273898
- Stable URL: https://doi.org/10.1109/JRPROC.1952.273898
- Exact result/method used here: lossless decoding and prefix freedom are used
  as the structural model. Huffman's probability-weighted optimality and
  minimum expected code length are **not** used.
- Corresponding declarations:
  - `IsPrefix`
  - `PrefixFree`
  - `LosslessPrefixCode`
  - `LosslessPrefixCode.encode_injective`
  - `LosslessPrefixCode.factorsThrough_encode`
- Formal status: **proved abstract coding lemmas**, subject to Lean
  verification. This is “Huffman-like,” not a formalization of Huffman's
  optimality theorem.

### OpenAI quasi-Riemann-hypothesis release

- Title: *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane
  `Re(s) > 7/8`*
- Author: OpenAI
- Year: 2026
- Stable release identifier:
  `OAI:The-Quasi-Riemann-Hypothesis-September-30-2026`
- Stable source snapshot: `openai/math` commit
  `1581d4cbdd69a0faf34b2089614fe2a814316a6a`
- Stable URL:
  https://github.com/openai/math/tree/1581d4cbdd69a0faf34b2089614fe2a814316a6a/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026
- Exact upstream Lean declaration:
  `OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re` in
  `lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean`
- Upstream theorem shape: for `s : ℂ`, `(7 / 8 : ℝ) < s.re` implies
  `riemannZeta s ≠ 0`.
- Corresponding GRWTSK declarations:
  - `ZeroFreeRightOf`
  - `ThreeQuarterRefinement.seedSevenEighths`
  - `ThreeQuarterRefinement.seed_zeroFree`
- Formal status: **not imported or reproved here**. The GRWTSK structure takes
  the `7/8` stage as an explicit field. Upstream verification does not imply
  verification of this GRWTSK adapter.

### Recent Tao-hosted discussion of quasi-RH and zero proportions

- Title: *Simple and critical zeros of the Riemann zeta-function*
- Author: Caroline Turnage-Butterbaugh; guest post hosted and introduced by
  Terence Tao
- Date: 22 October 2026
- Stable URL:
  https://terrytao.wordpress.com/2026/10/22/simple-and-critical-zeros-of-the-riemann-zeta-function/
- Exact point used: the post distinguishes the fixed zero-free half-plane
  supplied by the quasi-RH release from results about the proportion of simple
  critical zeros. It does not present heat flow as compression and does not
  claim irrationality or transcendence of ordinates.
- Corresponding formal declarations: none directly. The separation is recorded
  in the hypotheses of `ThreeQuarterRefinement` and
  `grh_zero_height_transcendental_of_nonsofic`.
- Formal status: **expository context only**.

## Formal dependency map

### 1. Lossless process accounting

`HuffmanLikeCover process` means that some binary lossless prefix code factors
through `process`. From this explicit premise,
`readout_bound_to_process_of_huffmanLikeCover` proves that every readout factors
through the process. Therefore an equal-process/different-readout witness
refutes the cover via `no_huffmanLikeCover_of_process_collision`.

This is the precise version of “recover the zero height from a process.” The
missing analytic supplier is an actual heat-flow trace together with the
left-invertibility/factorization proof.

### 2. Sofic obstruction

`SoficThrough state trace` is deliberately relative to an explicit finite type
`State` and profile `state : X → State`. The theorem
`not_soficThrough_of_collision` says that one pair with equal finite state and
different trace refutes that presentation.

This is a finite-state factorization obstruction, not yet a full formalization
of sofic subshifts, labeled graph languages, follower sets, or entropy.

### 3. Irrationality and transcendence

`HeightArithmetic` keeps the predicates “rational” and “algebraic” explicit and
requires only that rational values are algebraic. The theorem
`transcendental_of_algebraic_implies_sofic_of_nonsofic` proves:

1. algebraic height implies the selected trace is sofic;
2. the selected trace is not sofic;
3. therefore the height is not algebraic.

`grh_zero_height_transcendental_of_nonsofic` additionally assumes a predicate
form of GRH and concludes critical-line placement together with relative
transcendence and irrationality. The theorem makes the logical separation
visible: **GRH alone does not imply transcendence of zero ordinates**.

The unresolved suppliers are:

- a standard real-number instantiation of `HeightArithmetic`;
- a definition of the zero trace;
- algebraic ordinate `→` sofic trace;
- non-soficity of every selected zero trace.

Until those are proved, no arithmetic conclusion about actual zeta-zero
ordinates follows.

### 4. The `7/8` seed and the `3/4` refinement limit

`ThreeQuarterRefinement` contains all of the following as explicit fields:

- the `7/8` seed;
- a sequence of boundaries strictly above `3/4` and cofinal immediately above
  `3/4`;
- a valid zero-free theorem at every stage;
- overhead and budget functions;
- asymptotically negligible overhead relative to the positive budget.

`ThreeQuarterRefinement.limit_zeroFree` uses only the stagewise zero-free
supplier and cofinality to prove the strict half-plane `Re(s) > 3/4`. It does
not exclude a zero on `Re(s) = 3/4`. The asymptotic-cost field is deliberately
not used to create analytic estimates; it is accounting data only.

Consequently, the module does not refine the upstream `7/8` result by itself.
It identifies exactly what a genuine refinement theorem must supply.

## Declaration-to-claim table

| Declaration | What is proved in source | What remains external |
|---|---|---|
| `LosslessPrefixCode.encode_injective` | exact decoding implies injectivity | an actual heat-flow encoder |
| `LosslessPrefixCode.factorsThrough_encode` | every readout factors through an exact code | computability, optimality, probability model |
| `readout_bound_to_process_of_huffmanLikeCover` | conditional recovery from a process | proof that a Tao/Rodgers heat trace satisfies the cover |
| `no_huffmanLikeCover_of_process_collision` | one exact collision refutes the cover | a mathematically valid collision witness |
| `not_soficThrough_of_collision` | one equal-state/different-trace pair refutes a chosen finite-state presentation | non-soficity against every presentation |
| `transcendental_of_algebraic_implies_sofic_of_nonsofic` | the contradiction schema | algebraic-to-sofic and non-sofic suppliers |
| `grh_zero_height_transcendental_of_nonsofic` | GRH + both suppliers gives critical-line, irrational, transcendental height | GRH and both suppliers for actual zeros |
| `ThreeQuarterRefinement.limit_zeroFree` | all valid cofinal stages imply `Re(s) > 3/4` zero-free | every stagewise analytic estimate |

All declarations above were added at commit
`62c11bdfdf247ecef272e0ea539f133ce3de94a9`.

## Verification request

Pinned source commit:

```text
62c11bdfdf247ecef272e0ea539f133ce3de94a9
```

Pinned dependency snapshot:

```text
grwtsk/math base: 264f4e6e60b7877489f92fd72cbeb473873c47c7
mathlib: db584cd6d46c92f209a44c0f1c829460d327499d
```

Required commands from a fresh checkout of the pinned commit:

```bash
lake env lean GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean
lake build GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic
```

Then run a fresh kernel/axiom audit by importing the module into a temporary
file and applying `#print axioms` to at least:

```text
GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.readout_bound_to_process_of_huffmanLikeCover
GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.no_huffmanLikeCover_of_process_collision
GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.not_soficThrough_of_collision
GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.grh_zero_height_transcendental_of_nonsofic
GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.ThreeQuarterRefinement.limit_zeroFree
```

Expected checks:

- elaboration succeeds with the pinned toolchain;
- no `sorry`, `admit`, or undeclared axiom is introduced by this module;
- only the ordinary classical/propositional axioms already permitted by the
  imported dependency closure appear;
- the module remains outside `GRWTSK.lean` until these checks are recorded.

Actual result as of this note: no Lean executable was available in the current
runtime. Compilation, fresh kernel checking, and transitive axiom auditing are
therefore pending rather than claimed.


## 2026-10-23 arithmetic split refinement

Source refinement commit: `9db6cf032653fafc7c7c26eb22f7480bafa2d28b`.
Source blob for
`GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean`:
`71277213e4c6da281d53c56ef57b84eb68ac7730`.

This refinement separates the two arithmetic conclusions that were previously
packaged together under the GRH-facing theorem.

- `irrational_of_rational_implies_sofic_of_nonsofic` proves relative
  irrationality from exactly two suppliers: rational height implies the
  selected trace is sofic, and the selected trace is non-sofic. GRH is not a
  hypothesis.
- `zero_height_irrational_and_grh_transcendental_of_nonsofic` keeps that
  irrationality proof independent of GRH, then uses GRH only to obtain
  `onCriticalLine z`. A stronger algebraic-height-to-sofic bridge on the
  critical line plus non-soficity yields relative transcendence.

This is a logical bridge only. It does not prove rational-to-sofic,
algebraic-to-sofic, non-soficity of actual zeta-zero traces, GRH, or any
arithmetic property of an actual zero ordinate.

The source identities remain the same: Rodgers--Tao
(arXiv:1801.05914) is methodological context for the zero-dynamics process;
Huffman (DOI 10.1109/JRPROC.1952.273898) supplies the lossless-prefix-code
analogy; OpenAI's 30 September 2026 quasi-Riemann paper supplies the external
`7/8` zero-free boundary; Tao's October 2026 discussions supply expository
context for the significance of the `7/8` result and the need for a new idea
near the `3/4` barrier. No historical influence is inferred from these idea
matches.

Verification status for the new declarations: **NOT_RUN / NOT_KERNEL_AUDITED**.
Required fresh checks are:

```bash
lake env lean GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean
lake build GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic
```

The axiom audit must include the two new fully qualified declarations:

```text
GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.irrational_of_rational_implies_sofic_of_nonsofic
GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic.zero_height_irrational_and_grh_transcendental_of_nonsofic
```

Fresh elaboration, kernel replay, transitive axiom audit, and external replay
remain pending.
