# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Defs.Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07a1071ed4751cd5e535c41282593a7a55c472cf",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07a1071ed4751cd5e535c41282593a7a55c472cf`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AlgebraicIndependent](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/algebraicindependent--908e4d9793989c4bc78eb429.md) | 58 | `declaration-track:908e4d9793989c4bc78eb429d328aefe9810190716c5d23d6d9ad4888b01059f` |
| 2 | `abbrev` | [AlgebraicIndepOn](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/algebraicindepon--b97a745539343391ad2ec065.md) | 63 | `declaration-track:b97a745539343391ad2ec065d746a35148c2c75ddc07d7d8fb758f9329524f1f` |
| 3 | `theorem` | [algebraicIndependent_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/algebraicindependent-iff--ad5c6bed317e373a257a85c1.md) | 67 | `result-track:ad5c6bed317e373a257a85c183484412579c52be6ed4823a4a068a6ad7648a11` |
| 4 | `theorem` | [AlgebraicIndependent.eq_zero_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/algebraicindependent-eq-zero-of-aeval-eq-zero--a33b5b06d64c474aa02b10f4.md) | 72 | `result-track:a33b5b06d64c474aa02b10f4225ebffb57478758ce8f36d9dcd62f605cbe8950` |
| 5 | `theorem` | [algebraicIndependent_iff_injective_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/algebraicindependent-iff-injective-aeval--c37724d659ac8c34c954e7f6.md) | 76 | `result-track:c37724d659ac8c34c954e7f6e56031338e3481d18f9c670f6fa13280fb4676f4` |
| 6 | `theorem` | [of_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/of-comp--9040e82482f1fdc24b77466b.md) | 82 | `result-track:9040e82482f1fdc24b77466b58bd05df35c94be5c739f5b6ab29029593c338a4` |
| 7 | `theorem` | [comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/comp--7f594da9b983c8c5bbe22a4f.md) | 91 | `result-track:7f594da9b983c8c5bbe22a4fbf149d860cd30e070906fbb88267828a81658c64` |
| 8 | `theorem` | [coe_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/coe-range--e0afcda8c4d561020b07f132.md) | 95 | `result-track:e0afcda8c4d561020b07f132e0e502d3dcb01fa4a89d9927332e7e8573cf06bd` |
| 9 | `theorem` | [algebraicIndependent_equiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/algebraicindependent-equiv--775e73567516be62f2ad7699.md) | 102 | `result-track:775e73567516be62f2ad769980edcea788575699c930092eb6fd593a109c35b2` |
| 10 | `theorem` | [algebraicIndependent_equiv'](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/algebraicindependent-equiv--b31404cd67268e971164957f.md) | 107 | `result-track:b31404cd67268e971164957fa08a4161512bba18c674bc0e188e53b3f9e82de0` |
| 11 | `theorem` | [algebraicIndependent_subtype_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/algebraicindependent-subtype-range--d8132642634d972b367dba1a.md) | 111 | `result-track:d8132642634d972b367dba1a19061d22a2434f5580adb1a899090fa99995d912` |
| 12 | `theorem` | [algebraicIndependent_image](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/algebraicindependent-image--b765de642ec22470528ad476.md) | 117 | `result-track:b765de642ec22470528ad476525425115f45477d5b80f6a6096f2b11ea04644a` |
| 13 | `theorem` | [mono](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/mono--fd84c6e0fa5fb369ad1031f1.md) | 123 | `result-track:fd84c6e0fa5fb369ad1031f1e45ccbd3147e50dc7e7368422cd8eaad7d161c78` |
| 14 | `def` | [aevalEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/aevalequiv--a4f88cb4b4b88fa324c95158.md) | 135 | `declaration-track:a4f88cb4b4b88fa324c951586833cb1df187652cc7256c07b426144b746441e9` |
| 15 | `theorem` | [algebraMap_aevalEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/algebramap-aevalequiv--5908a6c259e10c3f87a1dd29.md) | 140 | `result-track:5908a6c259e10c3f87a1dd2955dea962377d22b0cf3f64947cc4e62b29e05bc9` |
| 16 | `def` | [repr](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/repr--94f5c06d3dc6e2f63772a760.md) | 146 | `declaration-track:94f5c06d3dc6e2f63772a760776dc9382418a0b8a86dce399111ae551c346f37` |
| 17 | `theorem` | [aeval_repr](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/aeval-repr--d393911abe00dd680e8b8b1e.md) | 150 | `result-track:d393911abe00dd680e8b8b1e36fd174276190bc5ff5e53052fa83ea0b3801267` |
| 18 | `theorem` | [aeval_comp_repr](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/aeval-comp-repr--2f2ebef79faf972b7d7bc503.md) | 153 | `result-track:2f2ebef79faf972b7d7bc5035c424335fcc96b10d86b55c3430d7fa55915a6d6` |
| 19 | `def` | [IsTranscendenceBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/istranscendencebasis--322c8f18e70b15be339e73f9.md) | 162 | `declaration-track:322c8f18e70b15be339e73f9a0e5f8b1ca876319ebcf488cf0192e56037931c1` |
| 20 | `theorem` | [isTranscendenceBasis_iff_maximal](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/istranscendencebasis-iff-maximal--4f4b2048561b89a941edef4a.md) | 166 | `result-track:4f4b2048561b89a941edef4a068d2f79fc2c9e4747477f22152d5cf4371e3871` |
| 21 | `theorem` | [isTranscendenceBasis_equiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/istranscendencebasis-equiv--87a8ecca68c9d6c0f0210d34.md) | 170 | `result-track:87a8ecca68c9d6c0f0210d344f17eebc8733a9cfbe6a031c769ece5d9c6a193c` |
| 22 | `theorem` | [isTranscendenceBasis_equiv'](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/istranscendencebasis-equiv--de23db00e14fe18af1828d41.md) | 176 | `result-track:de23db00e14fe18af1828d41ac313b985b1d33096884a537c3a988060badf64c` |
| 23 | `theorem` | [isTranscendenceBasis_subtype_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/istranscendencebasis-subtype-range--1a9853f047243fdd516e43db.md) | 180 | `result-track:1a9853f047243fdd516e43dbf8f98c76761cd8887f603da0febbb83d7594b41d` |
| 24 | `theorem` | [isTranscendenceBasis_image](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/declarations/istranscendencebasis-image--e1c0574005c574a039013ece.md) | 186 | `result-track:e1c0574005c574a039013ecef20c41fe1b56f0c0bdff1380454f9f3394e00f3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
