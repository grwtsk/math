# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Abs.Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82de259794b10c43e4898158a75311c35395bd0b",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82de259794b10c43e4898158a75311c35395bd0b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiffAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/contdiffat-abs--5da7d090b7cbd2f2581eaf7c.md) | 34 | `result-track:5da7d090b7cbd2f2581eaf7cc3ae80e9567abc3e2b9cec8750cf7b8d59616cd4` |
| 2 | `theorem` | [ContDiffAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/contdiffat-abs--4baf70a48011f56019b800c4.md) | 36 | `result-track:4baf70a48011f56019b800c4ea1e224b6f43e2c062355cc287f058db7f488e00` |
| 3 | `theorem` | [contDiffWithinAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/contdiffwithinat-abs--205b1c9d62128948b2928413.md) | 39 | `result-track:205b1c9d62128948b292841345cd31c04fc9cdaaabe153898842bff3182e5f72` |
| 4 | `theorem` | [ContDiffWithinAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/contdiffwithinat-abs--0972986dabec8445cdaa8df5.md) | 42 | `result-track:0972986dabec8445cdaa8df583305e24c376d743e0c71cae7f06c9afe8157b92` |
| 5 | `theorem` | [contDiffOn_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/contdiffon-abs--320140337a2be0a57053f31c.md) | 46 | `result-track:320140337a2be0a57053f31cd21c5f0beaf45209d8eddd2346faeec0c5256a6a` |
| 6 | `theorem` | [ContDiffOn.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/contdiffon-abs--9fe0d9cf7d4b54e0ad9acc19.md) | 49 | `result-track:9fe0d9cf7d4b54e0ad9acc194660d4b3ae51b6955f4cf38fec05509c8d1651aa` |
| 7 | `theorem` | [ContDiff.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/contdiff-abs--da1e4f2af89c38e6ea679f9c.md) | 52 | `result-track:da1e4f2af89c38e6ea679f9c82a4b4b607ba90d7706524d3ca66c51010653c40` |
| 8 | `theorem` | [hasStrictDerivAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasstrictderivat-abs-neg--805313bb435ecbabf60fb570.md) | 55 | `result-track:805313bb435ecbabf60fb5703a4d6b4b8a09711218a361c01130a67ee381be24` |
| 9 | `theorem` | [hasDerivAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasderivat-abs-neg--e1e339632811617ef1480e7f.md) | 60 | `result-track:e1e339632811617ef1480e7f62bd9c3cec406fc29507994dcc37fc8b1268bae4` |
| 10 | `theorem` | [hasStrictDerivAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasstrictderivat-abs-pos--1375dadd698be810a2f5323d.md) | 63 | `result-track:1375dadd698be810a2f5323d9013862eed03e5e85dc2e40d6344ae30d8629e8f` |
| 11 | `theorem` | [hasDerivAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasderivat-abs-pos--6a3c418760792c41e6567671.md) | 68 | `result-track:6a3c418760792c41e6567671a177aa77d63b5fb0f3db0e7849f5b8d27db7c8e0` |
| 12 | `theorem` | [hasStrictDerivAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasstrictderivat-abs--802b61c295df86971df32c3a.md) | 71 | `result-track:802b61c295df86971df32c3a97a5fbde8a5368b7c2f509b7ec82dedff4fa2ec6` |
| 13 | `theorem` | [hasDerivAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasderivat-abs--1c53242c036213e07101658f.md) | 77 | `result-track:1c53242c036213e07101658ff1c0d7e6c846462631dfef97d20ded1e71042cbd` |
| 14 | `theorem` | [HasStrictFDerivAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasstrictfderivat-abs-of-neg--7f0f1577ee1b2f791da951c9.md) | 80 | `result-track:7f0f1577ee1b2f791da951c9c9c23293211c894078fbda399d3877a95ca5d243` |
| 15 | `theorem` | [HasFDerivAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasfderivat-abs-of-neg--74acec3bef969a98bf30a9e7.md) | 86 | `result-track:74acec3bef969a98bf30a9e7b083bb81546479f851ef81b6f08a1acd88290700` |
| 16 | `theorem` | [HasStrictFDerivAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasstrictfderivat-abs-of-pos--c21b09db5135152b1dc848ee.md) | 92 | `result-track:c21b09db5135152b1dc848ee5dfa2f51422d828793edec2c511a0d82488daaf5` |
| 17 | `theorem` | [HasFDerivAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasfderivat-abs-of-pos--788e192105a7c33efc477115.md) | 98 | `result-track:788e192105a7c33efc477115ad119b22529a12a62205fc06890c599bed95081c` |
| 18 | `theorem` | [HasStrictFDerivAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasstrictfderivat-abs--765827301c8d49746612026f.md) | 104 | `result-track:765827301c8d49746612026f99d47e03c0875cb838443330859b176a9d75be09` |
| 19 | `theorem` | [HasFDerivAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasfderivat-abs--6096696f80cb40fdc61bc0fb.md) | 110 | `result-track:6096696f80cb40fdc61bc0fbf4e988919f02a0b8dfb81e16ec445bbf06ab15cf` |
| 20 | `theorem` | [hasDerivWithinAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasderivwithinat-abs-neg--1bc82352ef39202fbacefefb.md) | 116 | `result-track:1bc82352ef39202fbacefefb645888a791ea9e11c6d9e534a0db9d7b8c8dc6e2` |
| 21 | `theorem` | [hasDerivWithinAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasderivwithinat-abs-pos--e5890b1955fa89023ef6c62f.md) | 119 | `result-track:e5890b1955fa89023ef6c62fa0c389696b2b1eb118defd1e85f4d52db96d8135` |
| 22 | `theorem` | [hasDerivWithinAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasderivwithinat-abs--3468cd1d05b7f35c5826540a.md) | 122 | `result-track:3468cd1d05b7f35c5826540af84b8600bd51ef9e8fba015c2fe7d6be4186d843` |
| 23 | `theorem` | [HasFDerivWithinAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasfderivwithinat-abs-of-neg--22d2b93d505b446c9ee856a6.md) | 125 | `result-track:22d2b93d505b446c9ee856a66de65f9cd1dd01577913095def690f9817660190` |
| 24 | `theorem` | [HasFDerivWithinAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasfderivwithinat-abs-of-pos--bfb31d53521616b2dbf0cdc5.md) | 130 | `result-track:bfb31d53521616b2dbf0cdc56533b33ca306ead83901042a96b8948840fc4210` |
| 25 | `theorem` | [HasFDerivWithinAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/hasfderivwithinat-abs--a65addb5fc9773f342515b8e.md) | 135 | `result-track:a65addb5fc9773f342515b8e0568d1398128456cf021613b7132f1e6656853ac` |
| 26 | `theorem` | [differentiableAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiableat-abs-neg--49b85c66d4d15d85a5c7b133.md) | 139 | `result-track:49b85c66d4d15d85a5c7b1339825cd84d6ff42c73821af533fe2aafd951157af` |
| 27 | `theorem` | [differentiableAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiableat-abs-pos--bc9236984e0227e516bc8f79.md) | 142 | `result-track:bc9236984e0227e516bc8f799cd0be3be52c0627e1706296972f729a9ac084b0` |
| 28 | `theorem` | [differentiableAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiableat-abs--b63733fc16d0f006b192f27d.md) | 145 | `result-track:b63733fc16d0f006b192f27d8699a2944a04895665aa72f88a59ca4b6bba3908` |
| 29 | `theorem` | [DifferentiableAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiableat-abs-of-neg--e3042b74a46c1875c196d6ec.md) | 148 | `result-track:e3042b74a46c1875c196d6ec921c21bc97815fa7e2c9d6e5495c9bc13209b303` |
| 30 | `theorem` | [DifferentiableAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiableat-abs-of-pos--033e2e7a4a710ceaaa715210.md) | 151 | `result-track:033e2e7a4a710ceaaa715210ea6ca3eca37ed05fe23115797801b830322a6506` |
| 31 | `theorem` | [DifferentiableAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiableat-abs--b298d08480e6620c5f4d9da6.md) | 154 | `result-track:b298d08480e6620c5f4d9da687623444786a26f4325eb81f8a4168238b84b3b6` |
| 32 | `theorem` | [differentiableWithinAt_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiablewithinat-abs-neg--7e8b4907b104e37822d24674.md) | 157 | `result-track:7e8b4907b104e37822d24674af50b2cc5f7f006ddfe30bae09d53d572e3bce14` |
| 33 | `theorem` | [differentiableWithinAt_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiablewithinat-abs-pos--cff0b12c7462ce4b86b3e44d.md) | 160 | `result-track:cff0b12c7462ce4b86b3e44dd37a1108e2cff6d3d9ede70e663c8e3b35f3c201` |
| 34 | `theorem` | [differentiableWithinAt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiablewithinat-abs--b37ae8a3846af98cd2a04fa1.md) | 163 | `result-track:b37ae8a3846af98cd2a04fa1cb42f29410baa6fd5366fc232144fe5f1dc5b182` |
| 35 | `theorem` | [DifferentiableWithinAt.abs_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiablewithinat-abs-of-neg--86f8feca2223e04a42d415f4.md) | 166 | `result-track:86f8feca2223e04a42d415f4f258bc0e369b6c9ff563d2a40c77457e81ad46d4` |
| 36 | `theorem` | [DifferentiableWithinAt.abs_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiablewithinat-abs-of-pos--48bdc3b391769f56b0df6201.md) | 170 | `result-track:48bdc3b391769f56b0df620107a44cae6b9b8758a055642c3427624eca76c2e3` |
| 37 | `theorem` | [DifferentiableWithinAt.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiablewithinat-abs--657b75b9d7a77d0ee9df19c5.md) | 174 | `result-track:657b75b9d7a77d0ee9df19c5ad0dedd1c060d674965d4e097787ec52e884ed45` |
| 38 | `theorem` | [differentiableOn_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiableon-abs--f48514d6ea0d6648c15eb500.md) | 178 | `result-track:f48514d6ea0d6648c15eb50013d8b12a6bd83baba13de5fdbd58f09832d12272` |
| 39 | `theorem` | [DifferentiableOn.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiableon-abs--7b2e2b0411e204404dce7362.md) | 181 | `result-track:7b2e2b0411e204404dce736231b47a979562a7cbe6686cdfd2365e6c23d470e7` |
| 40 | `theorem` | [Differentiable.abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/differentiable-abs--de92b0fb3a4f17247a7dc8da.md) | 185 | `result-track:de92b0fb3a4f17247a7dc8da95b2e5dc3ed240b6c7d95c76b3209b3218578e2a` |
| 41 | `theorem` | [not_differentiableAt_abs_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/not-differentiableat-abs-zero--cfef6e83aae94ecd73b1f331.md) | 188 | `result-track:cfef6e83aae94ecd73b1f331e0500380262da1fcd50d72f9853f4dd162604c57` |
| 42 | `theorem` | [deriv_abs_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/deriv-abs-neg--5da2fd71d0ec7d01bddc78fe.md) | 198 | `result-track:5da2fd71d0ec7d01bddc78fe3e0c63d7917ed5153cc1fc707a5b74e9b4ae0cf1` |
| 43 | `theorem` | [deriv_abs_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/deriv-abs-pos--461d51021816e2afadb9cbec.md) | 200 | `result-track:461d51021816e2afadb9cbec54f9394a56b3506300f9629f9e6e47166b5c4ee1` |
| 44 | `theorem` | [deriv_abs_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/deriv-abs-zero--6bcaef792bbb73f86b907646.md) | 202 | `result-track:6bcaef792bbb73f86b907646d23419f4d1c155e2e6a9008199dc59dbe6a73e24` |
| 45 | `theorem` | [deriv_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Abs/Variant63a30c447b075add5d8db4b6ac73d8f32ba40f63fb10f23f7950e3404f4e2fd9.lean/declarations/deriv-abs--6f9822abd43236f7a5539348.md) | 205 | `result-track:6f9822abd43236f7a5539348bebbe150d47b2fa8730fc34894cf07c551942a18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
