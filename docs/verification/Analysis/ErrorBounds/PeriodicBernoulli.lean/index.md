# Verification target: GRWTSK.Analysis.ErrorBounds.PeriodicBernoulli

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00e86f3c36823ce4ec2de71f75c78414a55d02bc",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/PeriodicBernoulli.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00e86f3c36823ce4ec2de71f75c78414a55d02bc`.

Source path: `GRWTSK/Analysis/ErrorBounds/PeriodicBernoulli.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/PeriodicBernoulli.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.BernoulliPolynomials` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [majorant](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/majorant--6017f300c166abf25cd06602.md) | 25 | `declaration-track:6017f300c166abf25cd066026b4cd60421be53a96f08b45b5c9171e8ea037571` |
| 2 | `def` | [value](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/value--1ba82740930ef95b0aa62b4a.md) | 31 | `declaration-track:1ba82740930ef95b0aa62b4a6ef69032d43cb086ff22b141e7a542fc871bf459` |
| 3 | `def` | [periodic](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/periodic--865a05760f84da12e085ec14.md) | 34 | `declaration-track:865a05760f84da12e085ec144f51544ebc280498a44a91a84f99f62f4c5296a6` |
| 4 | `theorem` | [value_expansion](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/value-expansion--0fca0baccc5dae2e361c3b77.md) | 36 | `result-track:0fca0baccc5dae2e361c3b77bc9a0e26d54a06f6f5e5f6e4cf21ee31f1194a08` |
| 5 | `theorem` | [majorant_nonneg](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/majorant-nonneg--6ffdee2d8c0f2b58a3b5c607.md) | 42 | `result-track:6ffdee2d8c0f2b58a3b5c607fbf2a237184f77275bd644c40c8e6cd7dc47d8f0` |
| 6 | `theorem` | [abs_value_le](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/abs-value-le--3a839c11e175d23ff9db7ebf.md) | 46 | `result-track:3a839c11e175d23ff9db7ebf9b9792de3847a9b3f3dbb6305a359d8b0d25ffd3` |
| 7 | `theorem` | [abs_periodic_le](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/abs-periodic-le--7be03e07e65a7d051e213a01.md) | 61 | `result-track:7be03e07e65a7d051e213a01b7fccf6cbe27a96f6765119c1ecea71ca2354708` |
| 8 | `theorem` | [continuous_value](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/continuous-value--2dceea87edd465307993ef7f.md) | 64 | `result-track:2dceea87edd465307993ef7f5789199e1a2bfeeae17e1b03ebbcdb2c4803932c` |
| 9 | `theorem` | [measurable_periodic](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/measurable-periodic--1a2460c6d2f648aacf1c4466.md) | 68 | `result-track:1a2460c6d2f648aacf1c446603a7e5b5bf98d83960fd0d0727a8976efe969ac9` |
| 10 | `theorem` | [hasDerivAt_value_succ](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/hasderivat-value-succ--29ba4abca4a057fdbec4294d.md) | 72 | `result-track:29ba4abca4a057fdbec4294de49d83b3d64b2ae79cbfcd971c5fcf5cd3a071b0` |
| 11 | `theorem` | [value_zero](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/value-zero--a826dcfbb4f7f90af7effae8.md) | 77 | `result-track:a826dcfbb4f7f90af7effae80bc64c81af4405644a2a511fc115fab847909da3` |
| 12 | `theorem` | [value_one](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/value-one--a3980061260c90e3c61f0d36.md) | 83 | `result-track:a3980061260c90e3c61f0d3675af8915ccfc5e3ccf79e70bede83da69984b556` |
| 13 | `theorem` | [value_first](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/value-first--cbca459e722c0dfaa2cd07c4.md) | 88 | `result-track:cbca459e722c0dfaa2cd07c449e215c9bed3ad77049d922cef4cf36e538b1990` |
| 14 | `theorem` | [periodic_first](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/periodic-first--0213a6d17c4b97dcf4241f32.md) | 91 | `result-track:0213a6d17c4b97dcf4241f32085a5b3ae779ab65c636c99de4d1689c26f2e366` |
| 15 | `theorem` | [periodic_on_cell](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/periodic-on-cell--2872d245aa7245df0ed7eee8.md) | 95 | `result-track:2872d245aa7245df0ed7eee828c01c65b0c5fae5af0e637ad930cd531c2327b7` |
| 16 | `theorem` | [seam](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/seam--b7f93708a3274c225bc71ef8.md) | 102 | `result-track:b7f93708a3274c225bc71ef8b44f73849895b4b7316f6f5474f82630d8673718` |
| 17 | `theorem` | [first_seam_control](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/first-seam-control--cf9cebfcd741db5efd923340.md) | 106 | `result-track:cf9cebfcd741db5efd923340a582c239943b028977bccb641ce51f97e37798f5` |
| 18 | `theorem` | [sixteenth_majorant](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/sixteenth-majorant--ac941872084db3895268e231.md) | 108 | `result-track:ac941872084db3895268e2310d737596a2ac72ee310e3b3bf21ce04cb1f0b7f7` |
| 19 | `theorem` | [sixteenth_majorant_le](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/declarations/sixteenth-majorant-le--eed55099a652f897304c7857.md) | 110 | `result-track:eed55099a652f897304c78579369b9d7c57e67b774d0feea4cace37639747379` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
