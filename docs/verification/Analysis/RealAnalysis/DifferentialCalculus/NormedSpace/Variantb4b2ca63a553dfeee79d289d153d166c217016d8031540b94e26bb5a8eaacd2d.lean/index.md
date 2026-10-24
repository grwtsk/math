# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormedSpace.Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bf7ba342fbdaed598038e9c55d83c5f6df5b7ff",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bf7ba342fbdaed598038e9c55d83c5f6df5b7ff`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/conformalat--576d066b977c2fd201ef10d8.md) | 58 | `declaration-track:576d066b977c2fd201ef10d84e0720a7c3f8a9d269196da3f4be0a65bae1e8b2` |
| 2 | `theorem` | [conformalAt_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/conformalat-id--761e2a3e4468dace1af4b042.md) | 61 | `result-track:761e2a3e4468dace1af4b0420f65965ced175d6ba51f1d4217f248572b239a62` |
| 3 | `theorem` | [conformalAt_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/conformalat-const-smul--2e9a2f13a7a1dc2ce150d2cc.md) | 64 | `result-track:2e9a2f13a7a1dc2ce150d2ccb44fba6660da557a744300b360fc1ed5b4802071` |
| 4 | `theorem` | [Subsingleton.conformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/subsingleton-conformalat--27b6a0d96005e929b9b76874.md) | 68 | `result-track:27b6a0d96005e929b9b768749cac4b58b24a05c082f934760ada8edfb422a44f` |
| 5 | `theorem` | [conformalAt_iff_isConformalMap_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/conformalat-iff-isconformalmap-fderiv--646bc59f4ff37ae9c36ec771.md) | 72 | `result-track:646bc59f4ff37ae9c36ec771f0be699ce0ac9ef57b1a573c1ef9bdf772b70b78` |
| 6 | `theorem` | [differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/differentiableat--9b921d4ec5419492a9c1036b.md) | 85 | `result-track:9b921d4ec5419492a9c1036b5ae16a54a11c74def50fd23407252ce6fb9e8c5e` |
| 7 | `theorem` | [congr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/congr--4170b7c61d7f7a459a7a31ea.md) | 89 | `result-track:4170b7c61d7f7a459a7a31eaf648133ae29226891c97ed7f4ceb47712d4dd03e` |
| 8 | `theorem` | [comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/comp--33fe1cfea876fc743ad7c7e6.md) | 94 | `result-track:33fe1cfea876fc743ad7c7e6d20efbaef78b2932f54960dab64f5a354e21a27d` |
| 9 | `theorem` | [const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/const-smul--e29f61d7a4c73a887a67e12b.md) | 100 | `result-track:e29f61d7a4c73a887a67e12b866a6e2f2206f970b2b5f649db501cb9fce7ba8a` |
| 10 | `def` | [Conformal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/conformal--60ae7e49b0e8678b2479655b.md) | 111 | `declaration-track:60ae7e49b0e8678b2479655b18a05d67aec5b8ef9d30784a06182b45c208aeff` |
| 11 | `theorem` | [conformal_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/conformal-id--153165ca7f876769ce88f9b4.md) | 114 | `result-track:153165ca7f876769ce88f9b4f35ffe0251c6a81e22b3fd9463ef758e15cb0687` |
| 12 | `theorem` | [conformal_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/conformal-const-smul--696a05a3029b972c30a55029.md) | 116 | `result-track:696a05a3029b972c30a550296b622bc3052d543073da7a5b37debdebbab86321` |
| 13 | `theorem` | [conformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/conformalat--32a71a8974ff0f7c28d1e92b.md) | 121 | `result-track:32a71a8974ff0f7c28d1e92be0d2921cb436ceef46c83ca52b1ba2398350b302` |
| 14 | `theorem` | [differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/differentiable--29fe3e3a916d3faedea54d8b.md) | 124 | `result-track:29fe3e3a916d3faedea54d8b68f035ec7f379926ddf29008096c89d957dae549` |
| 15 | `theorem` | [comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/comp--8fecc3aeab0403d285290f22.md) | 127 | `result-track:8fecc3aeab0403d285290f227f2210a09adb61d188a5faa49324acabcdf4ba19` |
| 16 | `theorem` | [const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantb4b2ca63a553dfeee79d289d153d166c217016d8031540b94e26bb5a8eaacd2d.lean/declarations/const-smul--9f9a5700ff59bb4aef8a67a1.md) | 130 | `result-track:9f9a5700ff59bb4aef8a67a112582d5ad18d45f58147ef63fab41fa4b5bdf543` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
