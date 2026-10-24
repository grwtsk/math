# Verification target: GRWTSK.Algebra.LinearAlgebra.Convolution.Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1066ab2ac9cfb5898d5aa0e9d6662ed58060fb5",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1066ab2ac9cfb5898d5aa0e9d6662ed58060fb5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [convMul](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convmul--76393b901a95ba5343952300.md) | 64 | `declaration-track:76393b901a95ba5343952300c2617d33e2d00e65985f803313fa6dd559691234` |
| 2 | `lemma` | [convMul_def](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convmul-def--971a28a29b04c2cc496cf740.md) | 67 | `result-track:971a28a29b04c2cc496cf7400f60955a6c0ff6311141dddc8615e545d57adf34` |
| 3 | `lemma` | [convMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convmul-apply--9b1e44be2b4f96c946a7b60c.md) | 71 | `result-track:9b1e44be2b4f96c946a7b60ce98bf9b199a90054353ed77676df70fa26dc95e3` |
| 4 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.ConvMulDef.Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.Coalgebra.Repr.convMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/root-grwtsk-algebra-linearalgebra-convmuldef-variant96f31f6de02efcbbe5ab--1b33f3c0cc14d45cb7c8c25f.md) | 74 | `result-track:1b33f3c0cc14d45cb7c8c25f1ccccc57aea3212c2d51a78894ede3b96556cfaf` |
| 5 | `instance` | [convNonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convnonunitalnonassocsemiring--af2fb95ed22e379ff7419a17.md) | 80 | `declaration-track:af2fb95ed22e379ff7419a1784540eb02bae7d65e39f07616bb4609c4361cded` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/instance--b0cfef6754df082acff41627.md) | 86 | `declaration-track:b0cfef6754df082acff41627d14d62b1366aa2c207342d786a3bd0a155192230` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/instance--b39f7bd844a47716736cc410.md) | 90 | `declaration-track:b39f7bd844a47716736cc41040910c98788a7083c9c1da2b29cafb34100e20c6` |
| 8 | `lemma` | [toSpanSingleton_convMul_toSpanSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/tospansingleton-convmul-tospansingleton--cca82031aaacd8a94c2f8bf6.md) | 94 | `result-track:cca82031aaacd8a94c2f8bf6d39993cd3c76b927bc11b9e10f3361ed24c24aae` |
| 9 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.ConvMulDef.Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.TensorProduct.map_convMul_map](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/root-grwtsk-algebra-linearalgebra-convmuldef-variant96f31f6de02efcbbe5ab--f9150bcf7083426a29d96f5d.md) | 98 | `result-track:f9150bcf7083426a29d96f5d8b805c6d2091d4f9e2e01f0e02baa83c52da1be0` |
| 10 | `instance` | [convNonUnitalNonAssocRing](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convnonunitalnonassocring--b4e0dd4a013444299047cac0.md) | 117 | `declaration-track:b4e0dd4a013444299047cac0bf2d4d2c7a2187529a5352ca02aa8c8acae0dcab` |
| 11 | `lemma` | [nonUnitalAlgHom_comp_convMul_distrib](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/nonunitalalghom-comp-convmul-distrib--971a3158834aebd538013529.md) | 125 | `result-track:971a3158834aebd538013529378ef8d82090dcedbaba3ade47fc3fbcc0f565e0` |
| 12 | `lemma` | [convMul_comp_coalgHom_distrib](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convmul-comp-coalghom-distrib--cae7cb7b4b68bb86d6185f93.md) | 132 | `result-track:cae7cb7b4b68bb86d6185f93be952ccc1874da793cd28962b3b2f1a8eddaf575` |
| 13 | `instance` | [convNonUnitalSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convnonunitalsemiring--68ae4881db14d7c2035d0043.md) | 140 | `declaration-track:68ae4881db14d7c2035d0043dc3afcfc29c8095e3ef23289cc51b332e49dc77d` |
| 14 | `instance` | [convNonUnitalRing](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convnonunitalring--02cda4529284713470037947.md) | 162 | `declaration-track:02cda4529284713470037947f9302177aade26b3e740c34c5a78768d3749d785` |
| 15 | `lemma` | [algHom_comp_convMul_distrib](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/alghom-comp-convmul-distrib--2e91cc6a8ccb2c2020b8355e.md) | 172 | `result-track:2e91cc6a8ccb2c2020b8355e7acd7209f29e53058ac562e2f714617e9f0b7a39` |
| 16 | `instance` | [convOne](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convone--95e4aa173c0dfdd1e79ca058.md) | 182 | `declaration-track:95e4aa173c0dfdd1e79ca058ba8b120cb35a78101596fbe1425f6361947ba46a` |
| 17 | `lemma` | [convOne_def](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convone-def--be508ead1a5d4150ea2e3b30.md) | 184 | `result-track:be508ead1a5d4150ea2e3b30a97eef312713b35503708e9555c7019718ae831b` |
| 18 | `lemma` | [convOne_apply](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convone-apply--6e7f0d640d91f16a4028a106.md) | 186 | `result-track:6e7f0d640d91f16a4028a1062652a2a0ddad7381f7e8bca009ee246aa4c29739` |
| 19 | `instance` | [convSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convsemiring--45dcd0149b38ee84c371e911.md) | 190 | `declaration-track:45dcd0149b38ee84c371e911c31b439fb57e7d379522f56ee8eefa214fbc8118` |
| 20 | `instance` | [convAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convalgebra--529c87f61d95d076d2fa019c.md) | 195 | `declaration-track:529c87f61d95d076d2fa019c7f578f9e89c07e416671c1cf4e388f4e75837063` |
| 21 | `lemma` | [convAlgebraMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convalgebramap-apply--4f8c713b78142066af74d9ac.md) | 200 | `result-track:4f8c713b78142066af74d9ac890a12410902a74437449d5c2fefcda2383a6be7` |
| 22 | `instance` | [convCommSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convcommsemiring--ed18a243b06d70071ad3bb4c.md) | 211 | `declaration-track:ed18a243b06d70071ad3bb4cb93fad87bf8475b5f6438aa0985f79ffe4407837` |
| 23 | `instance` | [convRing](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convring--a59521c089a5b54dd4c98ed1.md) | 220 | `declaration-track:a59521c089a5b54dd4c98ed161c47795e43f79956f8e7ac4e15a97c01f62a41f` |
| 24 | `instance` | [convCommRing](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/declarations/convcommring--3f23813f07deecf147b8e643.md) | 229 | `declaration-track:3f23813f07deecf147b8e64385b749a4f4c972f97d80f6ce7808ce074346f367` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
