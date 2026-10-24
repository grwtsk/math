# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt07.Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a66d3eba1308bd338147c127cce247b4ff778d6b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a66d3eba1308bd338147c127cce247b4ff778d6b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/cellkernel--b286537d270f25980b8467a6.md) | 14 | `declaration-track:b286537d270f25980b8467a6fbe89fd2205c8f157a7f78db6df09b39b00d8f16` |
| 2 | `def` | [cellDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/cellderivative--ea4c2774ed8cb4e27168e31a.md) | 15 | `declaration-track:ea4c2774ed8cb4e27168e31ae0dfff0cad69f91b1fed3ce1ab4c07789228ac90` |
| 3 | `def` | [derivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/derivativemajorant--fbd5012b0eeafb7d5b078837.md) | 16 | `declaration-track:fbd5012b0eeafb7d5b07883749b21a7b81f0a510d9eb21efa7f27bb38b03e8ce` |
| 4 | `theorem` | [cellKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/cellkernel-integrable--65c410490dc589c1ba36f23a.md) | 18 | `result-track:65c410490dc589c1ba36f23aef935ce9d28e69884c6910521e085cda344c64d7` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/cellderivative-integrable--67552556e64c0dcb996bf260.md) | 28 | `result-track:67552556e64c0dcb996bf260c64745472c22da4294ead20fafbed2c769d42897` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/cellkernel-hasderivat--f12885a4d5629e6ed4ceb5ae.md) | 39 | `result-track:f12885a4d5629e6ed4ceb5ae0aac46577720bff7b5c47704fb0e36accf13dc9e` |
| 7 | `theorem` | [cellDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/cellderivative-bound--9e268d21bd1963cff5b93f61.md) | 54 | `result-track:9e268d21bd1963cff5b93f613ef2f275d835f197bd8c427bbe273d00a5cac8b3` |
| 8 | `theorem` | [term_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/term-hasderivat--af3da307d70944cfcd938826.md) | 74 | `result-track:af3da307d70944cfcd9388264ae4baa0cad0e58c093008d15784b3169b3f4030` |
| 9 | `theorem` | [term_hasDerivAt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/term-hasderivat-one--ffd8a42822b98f840dfd060a.md) | 99 | `result-track:ffd8a42822b98f840dfd060a900bd31c530b47bafa345bdff324f5f9e449b785` |
| 10 | `theorem` | [derivativeMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/derivativemajorant-nonneg--2ea7c6d79e5a2a38239f1604.md) | 105 | `result-track:2ea7c6d79e5a2a38239f1604a1313d0d55a010f0596bad385641561762906da4` |
| 11 | `theorem` | [derivativeMajorant_le_pSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/derivativemajorant-le-pseries--f33eabc1661a1961e4c86614.md) | 110 | `result-track:f33eabc1661a1961e4c86614239adbd11dfa11fa4224bb1c8cf7ee262753c461` |
| 12 | `theorem` | [derivativeMajorant_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/derivativemajorant-summable--ccbea4959a89fe6883dd0d7b.md) | 132 | `result-track:ccbea4959a89fe6883dd0d7b9714e6422ee3f5085aa9db9b148e965dbf73fd25` |
| 13 | `def` | [termDerivValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/termderivvalue--f09da871082a5c5b2d5d97e0.md) | 140 | `declaration-track:f09da871082a5c5b2d5d97e0acd8549a934a582c0922d49450a923a2cd9f9dd3` |
| 14 | `theorem` | [termDerivValue_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/termderivvalue-bound--0e2377ac3bcf4d8be963c928.md) | 143 | `result-track:0e2377ac3bcf4d8be963c9289cb1fecd7794bb4ce5aaa2987b6ef72a62d7c811` |
| 15 | `theorem` | [termDerivValue_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/termderivvalue-one--3cf6545ad4d53b41a01d4187.md) | 152 | `result-track:3cf6545ad4d53b41a01d4187d931733b9d3d9e43186415c27987a144946a2b11` |
| 16 | `theorem` | [termTSum_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/termtsum-hasderivat--52606e5ec6f32d6946fcd4b3.md) | 156 | `result-track:52606e5ec6f32d6946fcd4b323ae2a3dbbbbded4ae552895aebeaf779fc5eadb` |
| 17 | `theorem` | [termTSum_hasDerivAt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant1c5f74a6870ee0f6a63afbd2401a26ac132e9d09552bf223bfef9d9ab968877c.lean/declarations/termtsum-hasderivat-one--c2210175fd1b2baa5153bace.md) | 164 | `result-track:c2210175fd1b2baa5153bacecb89c9d84745eb56d5ba5ada5600108de93043e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
