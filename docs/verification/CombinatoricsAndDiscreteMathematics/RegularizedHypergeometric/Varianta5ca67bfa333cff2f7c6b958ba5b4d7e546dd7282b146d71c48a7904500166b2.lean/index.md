# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RegularizedHypergeometric.Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38bfa10e46f812e298907e324621ca5c50f169e8",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38bfa10e46f812e298907e324621ca5c50f169e8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regularizedHGFunCoeff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedhgfuncoeff--04bafeee17377c5a6f57e8d3.md) | 75 | `declaration-track:04bafeee17377c5a6f57e8d3b1312ed1269bbe0720cbbeb49083700690e94e76` |
| 2 | `theorem` | [regularizedHGFunCoeff_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedhgfuncoeff-eq-zero-iff--4fcefa7135d833ff0b906823.md) | 81 | `result-track:4fcefa7135d833ff0b9068234e750fbfce8ad06156ee493767ec867ca8d86317` |
| 3 | `theorem` | [regularizedHGFunCoeff_eq_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedhgfuncoeff-eq-zero-right--fbcf9e568c0ac81947ce9dcd.md) | 89 | `result-track:fbcf9e568c0ac81947ce9dcd4617b9cbf8606980ebf3dc0b4d78a8ea89407652` |
| 4 | `theorem` | [regularizedHGFunCoeff_eq_zero_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedhgfuncoeff-eq-zero-left--34a7f8e94a91a33656c0a667.md) | 93 | `result-track:34a7f8e94a91a33656c0a66710d6be8371ea3448e504a0fd72e21d0567d21a3e` |
| 5 | `theorem` | [regularizedHGFunCoeff_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedhgfuncoeff-add-one--16a033a6a43b7a488a1e0fc8.md) | 100 | `result-track:16a033a6a43b7a488a1e0fc809951f491c9934f5fd19a79f30dbfe9106f53245` |
| 6 | `theorem` | [regularizedHGFunCoeff_add_one_div_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedhgfuncoeff-add-one-div-self--61c34c83505e28b7d45ed76c.md) | 122 | `result-track:61c34c83505e28b7d45ed76c5e7af1cbb5154ec9861fe0e7ba80ff8189fdaa67` |
| 7 | `theorem` | [multiset_prod_eq_pow_mul_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/multiset-prod-eq-pow-mul-multiset-prod--23c37bb27e916be7af530e58.md) | 133 | `result-track:23c37bb27e916be7af530e58e342bcfd011ad93bba25ae3fab4ca570648affdb` |
| 8 | `theorem` | [multiset_prod_div_multiset_prod_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/multiset-prod-div-multiset-prod-mul--1a818618757e39d5459d3374.md) | 141 | `result-track:1a818618757e39d5459d3374b9061f709cece2b853b41526d6fd397f00ca65fe` |
| 9 | `def` | [regularizedHGFunSeries](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedhgfunseries--3b3533900c04a37d5c442b3b.md) | 158 | `declaration-track:3b3533900c04a37d5c442b3ba84bd85455b0c0a2069200ba28d9b992682b0e5a` |
| 10 | `theorem` | [regularizedHGFunSeries_coeff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedhgfunseries-coeff--443ebdfa75975464c6784fef.md) | 162 | `result-track:443ebdfa75975464c6784fef182fff44e098729c7427fc9251c1166922cd5ffe` |
| 11 | `theorem` | [regularizedHGFunSeries_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedhgfunseries-eq-zero--0f81f907ee1ad66c28d9c23b.md) | 168 | `result-track:0f81f907ee1ad66c28d9c23b3127658ffb8037ee6db3d1a3031c013ca4172f80` |
| 12 | `def` | [regularizedHGFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedhgfun--b1b344299955b1320ff45b59.md) | 174 | `declaration-track:b1b344299955b1320ff45b5990496e47ad1d2dffcee3f8ea739b98db4a0bcad3` |
| 13 | `theorem` | [radius_regularizedHGFunSeries_eq_top_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/radius-regularizedhgfunseries-eq-top-of-finite--160fe208474719fec9f5e617.md) | 178 | `result-track:160fe208474719fec9f5e617bf170bf14deec497924a1cb69636c2eac06bf4d4` |
| 14 | `theorem` | [eventually_atTop_regularizedHGFunCoeff_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/eventually-attop-regularizedhgfuncoeff-ne-zero--93305fce1946d441cae44fa8.md) | 188 | `result-track:93305fce1946d441cae44fa825590f824dd1da3f7cf238cc469246d4a160b304` |
| 15 | `theorem` | [tendsto_multiset_prod_div_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/tendsto-multiset-prod-div-add-one--60f0ba57ec8d15e259f849aa.md) | 206 | `result-track:60f0ba57ec8d15e259f849aa30cd4f827a0381c9799902ff7d09cbcc947ba643` |
| 16 | `theorem` | [tendsto_multiset_prod_div_multiset_prod_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/tendsto-multiset-prod-div-multiset-prod-mul--fc5122c10ade1e885d1ab152.md) | 214 | `result-track:fc5122c10ade1e885d1ab15253272bfd66eff3ac8c2bb06183349fa3cce7e3f2` |
| 17 | `theorem` | [radius_regularizedHGFunSeries_eq_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/radius-regularizedhgfunseries-eq-top--d404a66f3f2fef771de30fb2.md) | 226 | `result-track:d404a66f3f2fef771de30fb273481fb47af74c3d258c0f47b2c6342807df31f4` |
| 18 | `theorem` | [radius_regularizedHGFunSeries_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/radius-regularizedhgfunseries-eq-one--f145f6e6268be718c6bd3867.md) | 253 | `result-track:f145f6e6268be718c6bd3867f2c386e56041eb842c70893003aee06e0417d495` |
| 19 | `theorem` | [radius_regularizedHGFunSeries_ge_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/radius-regularizedhgfunseries-ge-one--41d44e14ff6c9fb592ff6ee0.md) | 270 | `result-track:41d44e14ff6c9fb592ff6ee0558cd89f6febc6f1be58b1f3fc6c6976165cfc17` |
| 20 | `theorem` | [regularizedHGFunSeries_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedhgfunseries-zero-zero--33f1a3af7822f80f2c32f21a.md) | 282 | `result-track:33f1a3af7822f80f2c32f21a6874a945f00ee01d39114d52f877ccf7a236a1dd` |
| 21 | `theorem` | [regularizedHGFun_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedhgfun-zero-zero--cdf294a876062c65987aa7fe.md) | 289 | `result-track:cdf294a876062c65987aa7fe1506ca5ad76c6a52a90971277e338b59f654da89` |
| 22 | `def` | [regularizedGaussHGFunSeries](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedgausshgfunseries--7945996733e3dd7617c22e9b.md) | 299 | `declaration-track:7945996733e3dd7617c22e9b497b65d91e0004504a2181fe1e664d7b439cb105` |
| 23 | `def` | [regularizedGaussHGFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedgausshgfun--4b59442fde544ba3ea3d8868.md) | 303 | `declaration-track:4b59442fde544ba3ea3d88688c28ec8dd54891379182fb700a36d93f5e3eff75` |
| 24 | `theorem` | [regularizedGaussHGFunSeries_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedgausshgfunseries-symm--c479cd8e4cd4e5f84293f862.md) | 309 | `result-track:c479cd8e4cd4e5f84293f862fc796bf9e312e2ae194d77f6861f9fad301da6e2` |
| 25 | `theorem` | [regularizedGaussHGFun_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/regularizedgausshgfun-symm--8c5dd5d0d0d9ba0ade83381b.md) | 315 | `result-track:8c5dd5d0d0d9ba0ade83381b1f27fee626afc48083e6a2cebcb0d6fc8effd6d6` |
| 26 | `theorem` | [coeff_regularizedGaussHGFunSeries](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/coeff-regularizedgausshgfunseries--be1ce2d6d328006bc1618d99.md) | 320 | `result-track:be1ce2d6d328006bc1618d99f15131ca4c7d276a8cf6a1c44dd6dbb92e50b35a` |
| 27 | `theorem` | [Gamma_inv_mul_ordinaryHypergeometricSeries_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/gamma-inv-mul-ordinaryhypergeometricseries-eq--9d383e85717006f957be0d7d.md) | 325 | `result-track:9d383e85717006f957be0d7d28426791c807e4df66e3e7dc2cb7f8872da457eb` |
| 28 | `theorem` | [ordinaryHypergeometric_div_Gamma_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/ordinaryhypergeometric-div-gamma-eq--1c2f4e04d6d97e32a80ab2d8.md) | 333 | `result-track:1c2f4e04d6d97e32a80ab2d87560c36d6e5f792f5899130a9039325b18edb196` |
| 29 | `theorem` | [radius_regularizedGaussHGFunSeries_eq_top_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/radius-regularizedgausshgfunseries-eq-top-of-left--556c1f6989501c85e9155191.md) | 343 | `result-track:556c1f6989501c85e9155191168e8849c8796afc36cfb9d9ed4638ad16c4be02` |
| 30 | `theorem` | [radius_regularizedGaussHGFunSeries_eq_top_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/radius-regularizedgausshgfunseries-eq-top-of-right--94f026e33a80a582cd26d5df.md) | 349 | `result-track:94f026e33a80a582cd26d5df370fe4dded8c34bfd40d73075466fc6753cb63c5` |
| 31 | `theorem` | [radius_regularizedGaussHGFunSeries_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/radius-regularizedgausshgfunseries-eq-one--d0d1a4df6c003b5875e295b5.md) | 355 | `result-track:d0d1a4df6c003b5875e295b544c65a6b7eef2df3b4e26c4b7f52e2c723a9c590` |
| 32 | `theorem` | [radius_regularizedGaussHGFunSeries_ge_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Varianta5ca67bfa333cff2f7c6b958ba5b4d7e546dd7282b146d71c48a7904500166b2.lean/declarations/radius-regularizedgausshgfunseries-ge-one--399aeb503d07253d2ec83d70.md) | 360 | `result-track:399aeb503d07253d2ec83d70bf9b5815a2f5a416ab68ac2ca4945fa20983c362` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
