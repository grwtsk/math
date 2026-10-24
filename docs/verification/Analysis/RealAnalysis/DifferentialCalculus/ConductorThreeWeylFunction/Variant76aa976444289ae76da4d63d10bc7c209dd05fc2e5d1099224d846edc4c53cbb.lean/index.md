# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ConductorThreeWeylFunction.Variant76aa976444289ae76da4d63d10bc7c209dd05fc2e5d1099224d846edc4c53cbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a494dc925a4f3d3380a1c3ff2276f17edb07770d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant76aa976444289ae76da4d63d10bc7c209dd05fc2e5d1099224d846edc4c53cbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant76aa976444289ae76da4d63d10bc7c209dd05fc2e5d1099224d846edc4c53cbb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant76aa976444289ae76da4d63d10bc7c209dd05fc2e5d1099224d846edc4c53cbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a494dc925a4f3d3380a1c3ff2276f17edb07770d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant76aa976444289ae76da4d63d10bc7c209dd05fc2e5d1099224d846edc4c53cbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant76aa976444289ae76da4d63d10bc7c209dd05fc2e5d1099224d846edc4c53cbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductorThreeWeylFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant76aa976444289ae76da4d63d10bc7c209dd05fc2e5d1099224d846edc4c53cbb.lean/declarations/conductorthreeweylfunction--effc5a7a750feaea58e41397.md) | 44 | `declaration-track:effc5a7a750feaea58e4139777f48f7cc786ebbd09d1fa42f9c43594662e4353` |
| 2 | `theorem` | [conductorThreeWeylFunction_eq_lambdaLogDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant76aa976444289ae76da4d63d10bc7c209dd05fc2e5d1099224d846edc4c53cbb.lean/declarations/conductorthreeweylfunction-eq-lambdalogderiv--0ebedc4c4c58f6989162f7b0.md) | 50 | `result-track:0ebedc4c4c58f6989162f7b0973a8994f4d648c5c996ce39c92cbdaf85a96080` |
| 3 | `def` | [conductorThreePrimeWeylCandidate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant76aa976444289ae76da4d63d10bc7c209dd05fc2e5d1099224d846edc4c53cbb.lean/declarations/conductorthreeprimeweylcandidate--30252a0c4cebe88682bae996.md) | 73 | `declaration-track:30252a0c4cebe88682bae9960f96892b275cf4894b2dc89797042139cf227525` |
| 4 | `def` | [ConductorThreePrimeSideWeylFormula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant76aa976444289ae76da4d63d10bc7c209dd05fc2e5d1099224d846edc4c53cbb.lean/declarations/conductorthreeprimesideweylformula--86b945b9decaac38adc4761e.md) | 83 | `declaration-track:86b945b9decaac38adc4761eb933f0934a4b4a040ed59c2115eeade790bf111f` |
| 5 | `def` | [GRHIffConductorThreeWeylHerglotz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant76aa976444289ae76da4d63d10bc7c209dd05fc2e5d1099224d846edc4c53cbb.lean/declarations/grhiffconductorthreeweylherglotz--358bdcf5ae33aab73f7337bd.md) | 91 | `declaration-track:358bdcf5ae33aab73f7337bd6636fd64955535fbf0dca0c23ecc3aa4636caa29` |
| 6 | `theorem` | [weylFunction_herglotz_iff_kernelPositive_of_representation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant76aa976444289ae76da4d63d10bc7c209dd05fc2e5d1099224d846edc4c53cbb.lean/declarations/weylfunction-herglotz-iff-kernelpositive-of-representation--3b3ffc9b15e10a43d14b5e66.md) | 99 | `result-track:3b3ffc9b15e10a43d14b5e66de93ba954a0ca8b3481b9d585afd00b1782b12a0` |
| 7 | `theorem` | [grh_iff_weylKernelPositive_of_obligations](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ConductorThreeWeylFunction/Variant76aa976444289ae76da4d63d10bc7c209dd05fc2e5d1099224d846edc4c53cbb.lean/declarations/grh-iff-weylkernelpositive-of-obligations--c410e472e296725cce9cd09a.md) | 113 | `result-track:c410e472e296725cce9cd09a9a64aeb9b06520cff88a917664c1bbc6a20d5cfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
