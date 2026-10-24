# Verification target: GRWTSK.Algebra.LinearAlgebra.Convolution.Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e48c334e65eaf452e316a4b0834834fec7c0b18",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e48c334e65eaf452e316a4b0834834fec7c0b18`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean.json)

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
| 1 | `instance` | [convMul](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convmul--be42336c236fc2f26bde614c.md) | 56 | `declaration-track:be42336c236fc2f26bde614cdae54c5ca08cd6e04faa70fbd20ae68a3781f74a` |
| 2 | `lemma` | [convMul_def](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convmul-def--2fa0439697fc1bbb3a405672.md) | 59 | `result-track:2fa0439697fc1bbb3a405672add0c9f92ec4bb56145a1e18ae076ad80c0e0eb4` |
| 3 | `lemma` | [convMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convmul-apply--bbc423f14d98a6fccbb44156.md) | 63 | `result-track:bbc423f14d98a6fccbb44156b823722a1b10453ff60f56c336a38f346226a78d` |
| 4 | `lemma` | [_root_.Coalgebra.Repr.convMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/root-coalgebra-repr-convmul-apply--6f20392b19d48ef8c9ad6971.md) | 66 | `result-track:6f20392b19d48ef8c9ad69719603d050ff088b644d89582917dace0c1f3f8737` |
| 5 | `instance` | [convNonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convnonunitalnonassocsemiring--cda07eb0e60524e452b2c48e.md) | 72 | `declaration-track:cda07eb0e60524e452b2c48e000f4c4ea6270fa7203c1533fc3d78173c95b129` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/instance--9c2f53fc6b83b7291a96451c.md) | 78 | `declaration-track:9c2f53fc6b83b7291a96451c1c8f18c252ae3fe07e29ccba1f56c0714bc2c8cc` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/instance--dd45db4c29dad923cf5cb208.md) | 82 | `declaration-track:dd45db4c29dad923cf5cb208bf650060c5383450a214d1ab3bc61c42803323e2` |
| 8 | `lemma` | [toSpanSingleton_convMul_toSpanSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/tospansingleton-convmul-tospansingleton--d78602d9fe80ac1f46dd28b5.md) | 86 | `result-track:d78602d9fe80ac1f46dd28b598042d408f95bcdd6f88c3df221a56c65945d51e` |
| 9 | `theorem` | [_root_.TensorProduct.map_convMul_map](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/root-tensorproduct-map-convmul-map--99b873c3524debb941e0148a.md) | 90 | `result-track:99b873c3524debb941e0148a658faf58575f3059c82ecf8559ee4bdcdf6ed18b` |
| 10 | `instance` | [convNonUnitalNonAssocRing](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convnonunitalnonassocring--5a3b54e72903aefdf714d2f0.md) | 109 | `declaration-track:5a3b54e72903aefdf714d2f02181bff5fcf22f7b2105bb16baf9183b1d77f411` |
| 11 | `lemma` | [nonUnitalAlgHom_comp_convMul_distrib](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/nonunitalalghom-comp-convmul-distrib--fd1e076d1f42383525771110.md) | 117 | `result-track:fd1e076d1f42383525771110bb5fccc29be7a5148d7f3b0b8ea4aa016d6505cd` |
| 12 | `lemma` | [convMul_comp_coalgHom_distrib](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convmul-comp-coalghom-distrib--2adc246a0b93a9f12ac25e19.md) | 124 | `result-track:2adc246a0b93a9f12ac25e190fd1edd8448debb5fed6cd1dee8f9f635306a4ea` |
| 13 | `instance` | [convNonUnitalSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convnonunitalsemiring--0b1b5cec2e3711883d957dce.md) | 132 | `declaration-track:0b1b5cec2e3711883d957dcef552509bfc526930bc0ee003fdf719c61517abf8` |
| 14 | `instance` | [convNonUnitalRing](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convnonunitalring--70fb7e2a4b23acf8c09f618c.md) | 154 | `declaration-track:70fb7e2a4b23acf8c09f618ccee5bebd14555c6494cddbf35dbca164f4b4c8c3` |
| 15 | `lemma` | [algHom_comp_convMul_distrib](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/alghom-comp-convmul-distrib--0f12226a41e1115770c9b192.md) | 164 | `result-track:0f12226a41e1115770c9b192d1d3311555a91a9c33644f166316cdf17d769f88` |
| 16 | `instance` | [convOne](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convone--20e65afb75c634f684cfe2a9.md) | 174 | `declaration-track:20e65afb75c634f684cfe2a95115b094dd216c9851a3061a7e6a6aaabfa6253b` |
| 17 | `lemma` | [convOne_def](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convone-def--469804ff8991a8d676ac434a.md) | 176 | `result-track:469804ff8991a8d676ac434a502ae2cc78b26539c66682ee04e48686db2a5743` |
| 18 | `lemma` | [convOne_apply](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convone-apply--1ec8659b3f403c7510d438f9.md) | 178 | `result-track:1ec8659b3f403c7510d438f935fa6bd32b369433a2440e9112f39e5588149d90` |
| 19 | `instance` | [convSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convsemiring--8a01800cabbaed10ecbd8476.md) | 182 | `declaration-track:8a01800cabbaed10ecbd8476ed0c88ab13555d428201f3f7915797b6b0b5b4fb` |
| 20 | `instance` | [convAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convalgebra--44ef047473ac0e49245b0f55.md) | 187 | `declaration-track:44ef047473ac0e49245b0f55d4c678cf102695bf2c48dcc913552507eec545fd` |
| 21 | `lemma` | [convAlgebraMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convalgebramap-apply--a483770ac590c9256ea81686.md) | 192 | `result-track:a483770ac590c9256ea81686d482935e415feae1b0a71660612dbb41d9485365` |
| 22 | `instance` | [convCommSemiring](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convcommsemiring--28660534f522775b8ca18730.md) | 203 | `declaration-track:28660534f522775b8ca18730e261edc7f58b4554436ba2f747421c7ebfacdb2a` |
| 23 | `instance` | [convRing](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convring--239e075e5c605d2fb8cf8e34.md) | 212 | `declaration-track:239e075e5c605d2fb8cf8e345e31efe878d5d5a6b22c2c127b6b064ef155e9a4` |
| 24 | `instance` | [convCommRing](../../../../../mathematics/Algebra/LinearAlgebra/Convolution/Variant96f31f6de02efcbbe5abc8bb0ba6248e777e2a9e8e32e9b3d3b299cdd49165d8.lean/declarations/convcommring--9d5a291c9ad993e80cb0a14a.md) | 221 | `declaration-track:9d5a291c9ad993e80cb0a14a08855932e72652b661aaa777d5bbeb5d9786073d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
