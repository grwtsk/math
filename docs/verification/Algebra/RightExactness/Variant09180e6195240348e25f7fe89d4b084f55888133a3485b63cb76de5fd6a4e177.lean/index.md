# Verification target: GRWTSK.Algebra.RightExactness.Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64f840108666754bc713e9eaa353006c83f90c0c",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/index.md) · [Full source](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64f840108666754bc713e9eaa353006c83f90c0c`.

Source path: `GRWTSK/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [le_comap_range_lTensor](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/le-comap-range-ltensor--f987ad24b4bde3331d0d9ce8.md) | 106 | `result-track:f987ad24b4bde3331d0d9ce84be0f0b880e5c1ab61d2fd1eb47dea4ad8189c5e` |
| 2 | `lemma` | [le_comap_range_rTensor](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/le-comap-range-rtensor--b39e224a7477fd39b6b3fb0b.md) | 111 | `result-track:b39e224a7477fd39b6b3fb0b646cd3ba924a3faf6a8517713123c6886e5ad32a` |
| 3 | `theorem` | [LinearMap.lTensor_surjective](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/linearmap-ltensor-surjective--491f1eb643acbb2dccf58b6c.md) | 120 | `result-track:491f1eb643acbb2dccf58b6c3dcfb1ddbde060dfbcd975fd69b4d6b6d8d24c35` |
| 4 | `theorem` | [LinearMap.lTensor_range](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/linearmap-ltensor-range--9afc40a629b06e815e270679.md) | 133 | `result-track:9afc40a629b06e815e270679e2f6e282c0c8b35aa3bf9e40b4576710b8bad3e2` |
| 5 | `theorem` | [LinearMap.rTensor_surjective](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/linearmap-rtensor-surjective--06d692abec9db6c215a352e3.md) | 145 | `result-track:06d692abec9db6c215a352e39d244c9dfd307df975345fb306a4defe98bdf291` |
| 6 | `theorem` | [LinearMap.rTensor_range](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/linearmap-rtensor-range--9022fc2aceb2b3487a94f807.md) | 158 | `result-track:9022fc2aceb2b3487a94f8079bb7e36152eca07c166e422eb264600a5e06d724` |
| 7 | `lemma` | [LinearMap.rTensor_exact_iff_lTensor_exact](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/linearmap-rtensor-exact-iff-ltensor-exact--98a5d08ff322fb212b2c1863.md) | 169 | `result-track:98a5d08ff322fb212b2c1863dc9f846e4fc8becfd4d5d4cf928a09dd04330079` |
| 8 | `theorem` | [TensorProduct.map_surjective](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/tensorproduct-map-surjective--f3f9a5ec8e9f0518549abf6d.md) | 181 | `result-track:f3f9a5ec8e9f0518549abf6de5f17d979b58321d86e4207f666b52c8727a8220` |
| 9 | `def` | [lTensor.toFun](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/ltensor-tofun--257df3bb2653ff944dc64edf.md) | 198 | `declaration-track:257df3bb2653ff944dc64edf024c073930ba1cb95ca7a9c258c2bd496a76886d` |
| 10 | `def` | [lTensor.inverse_of_rightInverse](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/ltensor-inverse-of-rightinverse--1f69f2b717f73cfe46858874.md) | 205 | `declaration-track:1f69f2b717f73cfe46858874fd2ef1696678b12043074bb0a7c206b135aa7086` |
| 11 | `lemma` | [lTensor.inverse_of_rightInverse_apply](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/ltensor-inverse-of-rightinverse-apply--f05b74c72495d35d85550b54.md) | 223 | `result-track:f05b74c72495d35d85550b546d53ed549221fd2281ffdfbcd4ec8d71b0ff90fc` |
| 12 | `lemma` | [lTensor.inverse_of_rightInverse_comp_lTensor](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/ltensor-inverse-of-rightinverse-comp-ltensor--455304eb30d23336087c6c10.md) | 239 | `result-track:455304eb30d23336087c6c10926d8f4e10791e7de6680fa5d491113f8a1f5ba8` |
| 13 | `def` | [lTensor.inverse](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/ltensor-inverse--32737b405d32ecba082c4171.md) | 250 | `declaration-track:32737b405d32ecba082c417197d987df6ea0bcdd34c8caa7147dc171f0731d43` |
| 14 | `lemma` | [lTensor.inverse_apply](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/ltensor-inverse-apply--789bc05671750b3ab480b8ae.md) | 254 | `result-track:789bc05671750b3ab480b8aea0a8c0e7e2bd175344ab50f0978cb04962979bea` |
| 15 | `lemma` | [lTensor.inverse_comp_lTensor](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/ltensor-inverse-comp-ltensor--a7415e51e40da435a11e7019.md) | 259 | `result-track:a7415e51e40da435a11e70191e9ec08392efbf4f2940d844bbe8fecb3487dd91` |
| 16 | `def` | [lTensor.linearEquiv_of_rightInverse](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/ltensor-linearequiv-of-rightinverse--40e59a04afdda81d8c0b45ef.md) | 268 | `declaration-track:40e59a04afdda81d8c0b45ef02c5f1444021e8198d45e5b0d5358018c6283b9d` |
| 17 | `def` | [lTensor.equiv](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/ltensor-equiv--3e46606da621c08333e2cb48.md) | 284 | `declaration-track:3e46606da621c08333e2cb48679b8b63a7630f9b298a82b3fe5281c858f73bff` |
| 18 | `theorem` | [lTensor_exact](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/ltensor-exact--37b0d50088327a2f88d3667d.md) | 290 | `result-track:37b0d50088327a2f88d3667d9aab7524143cd0db085cab704ed19688367928b2` |
| 19 | `lemma` | [lTensor_mkQ](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/ltensor-mkq--58c9caaf96a83d6b32831c52.md) | 299 | `result-track:58c9caaf96a83d6b32831c52385e7472810cbde6b947caab5b240f5025ba043a` |
| 20 | `def` | [rTensor.toFun](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/rtensor-tofun--cec1fdb50e2c91928a383f17.md) | 305 | `declaration-track:cec1fdb50e2c91928a383f17d2eb1ef5711b56490d3ab8f5c3d16cad28135a86` |
| 21 | `def` | [rTensor.inverse_of_rightInverse](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/rtensor-inverse-of-rightinverse--486c2d5ac3daeda8e22441ca.md) | 312 | `declaration-track:486c2d5ac3daeda8e22441ca2d1027dddfde367a107a1f6f3d450ff7bf42e226` |
| 22 | `lemma` | [rTensor.inverse_of_rightInverse_apply](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/rtensor-inverse-of-rightinverse-apply--3d8c59a876d2c5ebcac9bfc2.md) | 330 | `result-track:3d8c59a876d2c5ebcac9bfc209def74091876319fcec5e2fdee018be0acf9f13` |
| 23 | `lemma` | [rTensor.inverse_of_rightInverse_comp_rTensor](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/rtensor-inverse-of-rightinverse-comp-rtensor--11e4d4d11e0893b76483bbcd.md) | 346 | `result-track:11e4d4d11e0893b76483bbcd85b9df81110b58962eefcaad824c5377fb5a5803` |
| 24 | `def` | [rTensor.inverse](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/rtensor-inverse--2f956451a05f4a160e5f3f9c.md) | 357 | `declaration-track:2f956451a05f4a160e5f3f9cda214bef553cda4981b110afb07cec5155514636` |
| 25 | `lemma` | [rTensor.inverse_apply](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/rtensor-inverse-apply--908ea04ddec1b06c86ab0173.md) | 361 | `result-track:908ea04ddec1b06c86ab01734b4a3199d410f633ed23d433cd4a5d9c95a574e8` |
| 26 | `lemma` | [rTensor.inverse_comp_rTensor](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/rtensor-inverse-comp-rtensor--b5ef4f1360d3391b2a91618b.md) | 366 | `result-track:b5ef4f1360d3391b2a91618b2449f5f42d188a6f6eaa215c118ad7b0c837ca3e` |
| 27 | `def` | [rTensor.linearEquiv_of_rightInverse](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/rtensor-linearequiv-of-rightinverse--2169654950c51a3b668e9bab.md) | 375 | `declaration-track:2169654950c51a3b668e9babed0705e872e301bfa992fa4ac35065ec2b5dd3ed` |
| 28 | `def` | [rTensor.equiv](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/rtensor-equiv--220f3fa3fb11f33dcc1fb138.md) | 391 | `declaration-track:220f3fa3fb11f33dcc1fb138b3b72e79348400ebe85552c91945dcb1ce248e66` |
| 29 | `theorem` | [rTensor_exact](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/rtensor-exact--9d3b4dbcdcaf734ed24b8346.md) | 397 | `result-track:9d3b4dbcdcaf734ed24b834674dc086252652b87e85850027f20fc75f2f6bb2f` |
| 30 | `lemma` | [rTensor_mkQ](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/rtensor-mkq--02f0e03f38b7b72c2994a9d1.md) | 402 | `result-track:02f0e03f38b7b72c2994a9d1b517ecba98cb4aba2984689c66949ea6f02b1282` |
| 31 | `lemma` | [LinearMap.ker_tensorProductMk](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/linearmap-ker-tensorproductmk--09346ab4f078ba6f6b436654.md) | 408 | `result-track:09346ab4f078ba6f6b4366546b941ae79e14b9b9de463f4cc64512305e246c3e` |
| 32 | `theorem` | [TensorProduct.map_ker](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/tensorproduct-map-ker--5037f8d9af64e43141c01f9d.md) | 425 | `result-track:5037f8d9af64e43141c01f9d0bd84cc55a5bba9d614d3ffe39f3999903c32ca4` |
| 33 | `lemma` | [Ideal.map_includeLeft_eq](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/ideal-map-includeleft-eq--da9933fb0c427331de118a42.md) | 452 | `result-track:da9933fb0c427331de118a42af8446dc6942c57b288f98fc00c6f974bbd9e91b` |
| 34 | `lemma` | [Ideal.map_includeRight_eq](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/ideal-map-includeright-eq--e16b029ab44f41dcb3e5d5c4.md) | 517 | `result-track:e16b029ab44f41dcb3e5d5c40c89cf454e7992b3c4f1db2f25cb6a4cf2e071ae` |
| 35 | `lemma` | [Algebra.TensorProduct.lTensor_ker](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/algebra-tensorproduct-ltensor-ker--e37c287e841590f414a99c6f.md) | 590 | `result-track:e37c287e841590f414a99c6ffb8a2ac9da659508c23b1a887ad0f0326ad0fc51` |
| 36 | `lemma` | [Algebra.TensorProduct.rTensor_ker](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/algebra-tensorproduct-rtensor-ker--5f949374ffee1e0e53c33862.md) | 601 | `result-track:5f949374ffee1e0e53c33862025ddabb79ee262c4ba2be8df7603c584f1ab54b` |
| 37 | `theorem` | [Algebra.TensorProduct.map_ker](../../../../mathematics/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean/declarations/algebra-tensorproduct-map-ker--41272a66cf3717318f0c5752.md) | 613 | `result-track:41272a66cf3717318f0c57526aff2a54f86071d713bce6f4ff71966d6a527d52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
