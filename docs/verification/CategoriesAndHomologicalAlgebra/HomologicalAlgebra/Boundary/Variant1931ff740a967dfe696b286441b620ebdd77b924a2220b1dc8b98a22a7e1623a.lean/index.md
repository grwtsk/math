# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Boundary.Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "494578335c26f753f67c60f860e82f98dd7b9c93",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `494578335c26f753f67c60f860e82f98dd7b9c93`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalComplex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BoundaryGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/boundaryge--462b77b458bf3241e2eda20e.md) | 52 | `declaration-track:462b77b458bf3241e2eda20ed33571e4911a95315cd5902a618f31cc59a840dd` |
| 2 | `lemma` | [boundaryGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/boundaryge--0b6e0782a74091cc54102e96.md) | 55 | `result-track:0b6e0782a74091cc54102e967ee8944aaa853bb18fce7a728eeca3206c9128b7` |
| 3 | `lemma` | [not_boundaryGE_next](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/not-boundaryge-next--51127f99ba253e18d100c2d0.md) | 63 | `result-track:51127f99ba253e18d100c2d0fff892d0ed9f36c5d761f4f0ce132170d1d85ee4` |
| 4 | `lemma` | [not_boundaryGE_next'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/not-boundaryge-next--97cbb2ea0c79560196b2e2d2.md) | 70 | `result-track:97cbb2ea0c79560196b2e2d23744c85663c1aeaba5a012952b6616834288b8bd` |
| 5 | `lemma` | [BoundaryGE.notMem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/boundaryge-notmem--e238160b47d6fb1aa3636464.md) | 78 | `result-track:e238160b47d6fb1aa3636464814906a9cabc5d8448900f3252004b47b80fc7f6` |
| 6 | `lemma` | [prev_f_of_not_boundaryGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/prev-f-of-not-boundaryge--7e8ef058d2c7a06b01ceabea.md) | 84 | `result-track:7e8ef058d2c7a06b01ceabea16e7ebd47dafec8e46b92bee305c7337d7b9881b` |
| 7 | `lemma` | [BoundaryGE.false_of_isTruncLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/boundaryge-false-of-istruncle--1e4ecb0d478c8748458adb0a.md) | 100 | `result-track:1e4ecb0d478c8748458adb0a921c4874abf99337831d29daf5ba29fb7aa06b41` |
| 8 | `def` | [BoundaryLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/boundaryle--0639b46e028faad967ccb52c.md) | 107 | `declaration-track:0639b46e028faad967ccb52c17f3f4b202651a1550f3f178d770ac2f19e6fd21` |
| 9 | `lemma` | [boundaryLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/boundaryle--4f6dcba0dbaa7f9269695091.md) | 110 | `result-track:4f6dcba0dbaa7f92696950918d302b372b6982da376b66842d12fbb9e962f162` |
| 10 | `lemma` | [not_boundaryLE_prev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/not-boundaryle-prev--211c5a734272d7b830e6e222.md) | 118 | `result-track:211c5a734272d7b830e6e222ef01830b2404ab46f8030d33ae0a6d994108150d` |
| 11 | `lemma` | [not_boundaryLE_prev'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/not-boundaryle-prev--ab9458ad28e4ca5e33626c5c.md) | 125 | `result-track:ab9458ad28e4ca5e33626c5c26af8130222190b06174fbee981495bf02192a32` |
| 12 | `lemma` | [BoundaryLE.notMem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/boundaryle-notmem--6b4f4891d6bb22f28487de16.md) | 133 | `result-track:6b4f4891d6bb22f28487de16f68a5e73a37216a0a54927992c1e0563ee645eac` |
| 13 | `lemma` | [next_f_of_not_boundaryLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/next-f-of-not-boundaryle--b77aef0a38f58313474fc473.md) | 139 | `result-track:b77aef0a38f58313474fc47313ddf40e63688cff3f15ada040c03158ab014447` |
| 14 | `lemma` | [next_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/next-f--b95a23ad6973b721a06ffe56.md) | 154 | `result-track:b95a23ad6973b721a06ffe560937adc31791d514560a0fe779027b0bed77fca8` |
| 15 | `lemma` | [prev_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/prev-f--aec4be8aa41812b1dc1713c7.md) | 165 | `result-track:aec4be8aa41812b1dc1713c7dc3ff5a0e22a7993b29225acf3fd83a2becab02b` |
| 16 | `lemma` | [BoundaryLE.false_of_isTruncGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/boundaryle-false-of-istruncge--0137bee979fe199e3bc3e2c5.md) | 169 | `result-track:0137bee979fe199e3bc3e2c5e2ae0b4c41828ed326d3ea352359b3ce3c5c3071` |
| 17 | `lemma` | [op_boundaryLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/op-boundaryle-iff--b316cef9c76944ab70305dda.md) | 173 | `result-track:b316cef9c76944ab70305ddac3bf2a45ac4ff8760682e9c995cf04747c5c89fd` |
| 18 | `lemma` | [op_boundaryGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/op-boundaryge-iff--120744c08dfdecd888f412c2.md) | 174 | `result-track:120744c08dfdecd888f412c22b811d5ac6c67208bd6ab955354ff3cd6fce0bad` |
| 19 | `lemma` | [boundaryGE_embeddingUpIntGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/boundaryge-embeddingupintge-iff--1e990b1bba10f83aa4ac101e.md) | 178 | `result-track:1e990b1bba10f83aa4ac101e6e37d82fa363eff37fa6b57b73a6bd089847dc6a` |
| 20 | `lemma` | [boundaryLE_embeddingUpIntLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/declarations/boundaryle-embeddingupintle-iff--e550f373596cd649bc9e6e66.md) | 194 | `result-track:e550f373596cd649bc9e6e667c6ddc6e40e55ee59ef1d70c9d2be1cd0b235fdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
