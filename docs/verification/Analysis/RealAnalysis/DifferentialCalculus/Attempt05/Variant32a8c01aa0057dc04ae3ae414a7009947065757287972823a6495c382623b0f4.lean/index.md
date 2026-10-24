# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt05.Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4ce509ded07ed6ec73471f0d7ae701d03fb80ee",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4ce509ded07ed6ec73471f0d7ae701d03fb80ee`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiMellinSeven` — import line 6; external provider; requires a separately pinned dependency.
- `RootActualXiComplexLaplaceBudget` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exponential_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean/declarations/exponential-hasderivat--50de388608435d117a101dcd.md) | 29 | `result-track:50de388608435d117a101dcd4fa46281713ddb61b18e302669659469416c6f32` |
| 2 | `theorem` | [finite_abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean/declarations/finite-abel--df3a54e5e163518f66b8be6e.md) | 34 | `result-track:df3a54e5e163518f66b8be6e6f2f6d48f7e37ea634d245f9f61fa6b60db9da6e` |
| 3 | `theorem` | [exponential_density_transport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean/declarations/exponential-density-transport--60fb07deae01fd82c0c4d616.md) | 111 | `result-track:60fb07deae01fd82c0c4d616b096ae40a92600c5ae3a8bf27c1e77ed30cfdf44` |
| 4 | `theorem` | [actualXiDensityLaplace_eq_MellinSeven](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean/declarations/actualxidensitylaplace-eq-mellinseven--b37904db5916250c62a16c84.md) | 131 | `result-track:b37904db5916250c62a16c84ca2d67e41ea81a4be1504dc8f7f722257dd849e3` |
| 5 | `theorem` | [actualXiDensityLaplace_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean/declarations/actualxidensitylaplace-integrableon--de4a0fe911623fe017cf875b.md) | 141 | `result-track:de4a0fe911623fe017cf875b7868964fc6a0206a21d779a8f60e7923256b4aaa` |
| 6 | `theorem` | [actualXiComplexLaplace_finite_abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean/declarations/actualxicomplexlaplace-finite-abel--2d37136a4c7d2117df643c1c.md) | 153 | `result-track:2d37136a4c7d2117df643c1c6cc2a861b21261e3859e13960a30cd9e237eb4a0` |
| 7 | `theorem` | [actualXiComplexLaplace_boundary_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean/declarations/actualxicomplexlaplace-boundary-tendsto-zero--5309d93d8698feaf7d411ff3.md) | 187 | `result-track:5309d93d8698feaf7d411ff337f037dc8089ea69adc0b12c39d5e1e729addb09` |
| 8 | `theorem` | [actualXiComplexLaplace_mul_eq_MellinSeven](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean/declarations/actualxicomplexlaplace-mul-eq-mellinseven--f6b91faadf11c73f0046cedd.md) | 201 | `result-track:f6b91faadf11c73f0046cedd457da51450b190735851eb2bbe31047794bf5653` |
| 9 | `theorem` | [actualXiComplexLaplace_mul_eq_logDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant32a8c01aa0057dc04ae3ae414a7009947065757287972823a6495c382623b0f4.lean/declarations/actualxicomplexlaplace-mul-eq-logderivative--715d9f12f560c5cdc92f337c.md) | 219 | `result-track:715d9f12f560c5cdc92f337cbfdffd7712a27e4adadcd2f855185e517bb92368` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
