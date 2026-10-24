# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogDeriv.Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bafbf351b589f77a7fb76aa7585caa830c9766eb",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bafbf351b589f77a7fb76aa7585caa830c9766eb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.Deriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isOpenMap_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/isopenmap-exp--7e37e19dce06f9d52fe75bb7.md) | 32 | `result-track:7e37e19dce06f9d52fe75bb7d02ae1ed78c1c8daa2547a435415cef454b27674` |
| 2 | `def` | [expPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/exppartialhomeomorph--14b6028d37e27a6d941c13e9.md) | 38 | `declaration-track:14b6028d37e27a6d941c13e94ce7d2fa4d70fc113813ed152cd4d83d57cefd80` |
| 3 | `theorem` | [hasStrictDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/hasstrictderivat-log--7e71c4afbcbadd09802be92d.md) | 59 | `result-track:7e71c4afbcbadd09802be92d94d27804d09cbc0b586f465405b2d991a867e1fc` |
| 4 | `lemma` | [hasDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/hasderivat-log--e261a84e5dc38b7297f472f8.md) | 64 | `result-track:e261a84e5dc38b7297f472f8110806abbe4f83f86a4d74256a3a946403607a0e` |
| 5 | `lemma` | [differentiableAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/differentiableat-log--2bed60e5fb7d9a210556cd08.md) | 68 | `result-track:2bed60e5fb7d9a210556cd086b1b6e8633b435db4b1fc7511a5c14cb804ff1ae` |
| 6 | `theorem` | [hasStrictFDerivAt_log_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/hasstrictfderivat-log-real--08a347a33b03181c8e5ff066.md) | 72 | `result-track:08a347a33b03181c8e5ff066d93829752731c4fcd0502cafd87fb36cc2fc3165` |
| 7 | `theorem` | [contDiffAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/contdiffat-log--5f68e7465c4ab400b83d3306.md) | 76 | `result-track:5f68e7465c4ab400b83d33067e8fad1ef9a53a1fd2d4c75e212af8432964f62b` |
| 8 | `theorem` | [HasStrictFDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/hasstrictfderivat-clog--fb74a7d6354a0975cbb9f253.md) | 90 | `result-track:fb74a7d6354a0975cbb9f2534749bc4bd0958047d11fcf69805e813d4fb10039` |
| 9 | `theorem` | [HasStrictDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/hasstrictderivat-clog--c8baf04f20738cab9293e17c.md) | 94 | `result-track:c8baf04f20738cab9293e17cce5bbbed5bcebccee3af5870c2ffabb2e7541b33` |
| 10 | `theorem` | [HasStrictDerivAt.clog_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/hasstrictderivat-clog-real--a3a12daa41bc70ab862fd67b.md) | 98 | `result-track:a3a12daa41bc70ab862fd67b4eac77d1bf0292f7ba1f1a7a34ed689bbd61d3f3` |
| 11 | `theorem` | [HasFDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/hasfderivat-clog--eada7f85aba42f5aca2e4350.md) | 102 | `result-track:eada7f85aba42f5aca2e43501d1521bffd7d7fad5ea29b295907a7e493ca6c8c` |
| 12 | `theorem` | [HasDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/hasderivat-clog--d990788ddd41e051722341db.md) | 106 | `result-track:d990788ddd41e051722341db751bd4763944887daf5eddf8fb324d7dd2e664bb` |
| 13 | `theorem` | [HasDerivAt.clog_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/hasderivat-clog-real--7f2a54fdd9b29825d53f42e9.md) | 110 | `result-track:7f2a54fdd9b29825d53f42e960646e93217b0aaa0261cc1645af28f830db53db` |
| 14 | `theorem` | [DifferentiableAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/differentiableat-clog--9b2a084e07b5bea076047462.md) | 115 | `result-track:9b2a084e07b5bea076047462417054e29c52e5e81b7ba738607c1abb773c7ff3` |
| 15 | `theorem` | [HasFDerivWithinAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/hasfderivwithinat-clog--36d4507389493766448d0bd1.md) | 119 | `result-track:36d4507389493766448d0bd17d376c47272f9fb68bfc528faffec576a88bb0fb` |
| 16 | `theorem` | [HasDerivWithinAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/hasderivwithinat-clog--9355dad637f336e4dec07d7f.md) | 124 | `result-track:9355dad637f336e4dec07d7f0673780e0916b29ff97023b7a725b664d90d0431` |
| 17 | `theorem` | [HasDerivWithinAt.clog_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/hasderivwithinat-clog-real--c63c72e1cec4d2d9991da25e.md) | 129 | `result-track:c63c72e1cec4d2d9991da25e3c93a52742457b5480937acc74f19cf8aad92d64` |
| 18 | `theorem` | [DifferentiableWithinAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/differentiablewithinat-clog--d7bd9f1e6388fd07fe2cc53a.md) | 135 | `result-track:d7bd9f1e6388fd07fe2cc53a9af08b035b1826eedb9de5103c95fd7b121cbfa0` |
| 19 | `theorem` | [DifferentiableOn.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/differentiableon-clog--a61b94adc2bf79f6031889c1.md) | 140 | `result-track:a61b94adc2bf79f6031889c1e50f713209ce4ca861573f3475ff983f34cf5b8b` |
| 20 | `theorem` | [Differentiable.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/differentiable-clog--e75c55e89fe371ff7a95504c.md) | 144 | `result-track:e75c55e89fe371ff7a95504cc9e8d1d12a87d7b8bab5fd2772fd36b8e62363a9` |
| 21 | `lemma` | [Complex.deriv_log_comp_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantdb8e44f084dbaed60fef89c11e1ced886d798804fa454223388f150ce6b36680.lean/declarations/complex-deriv-log-comp-eq-logderiv--fb38795e19f3588df708d4fe.md) | 150 | `result-track:fb38795e19f3588df708d4fe209b6802d906cde6d872ee9bee1339726bab5c6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
