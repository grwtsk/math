# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Reverse.Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0531dc47cc4ec4a77daa3f39a2784fbf1c826f6",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0531dc47cc4ec4a77daa3f39a2784fbf1c826f6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.TrailingDegree` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.EraseLead` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [revAtFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/revatfun--159d9a9e4f28c2e90aa5e3e1.md) | 33 | `declaration-track:159d9a9e4f28c2e90aa5e3e143d483d5912659c544a5a5bea54ef1cfbbbdf322` |
| 2 | `theorem` | [revAtFun_invol](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/revatfun-invol--24aa18a09db0dd43eee97322.md) | 36 | `result-track:24aa18a09db0dd43eee97322482715851fe9ab1bd2b804c3993f983883a2eb55` |
| 3 | `theorem` | [revAtFun_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/revatfun-inj--675d8cf87d472ff313e69efc.md) | 45 | `result-track:675d8cf87d472ff313e69efc5be53f5dc500b7b80d9d6ba63847dba51e90cb23` |
| 4 | `def` | [revAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/revat--2737147f260576adc7af775c.md) | 53 | `declaration-track:2737147f260576adc7af775c69131526ef3171c2f4d796044179a46fe5f30dd7` |
| 5 | `theorem` | [revAtFun_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/revatfun-eq--eae2623411c739bb06d7678e.md) | 59 | `result-track:eae2623411c739bb06d7678e20b00bec0eb9c2cb1f94d93b3bdabc31367d9544` |
| 6 | `theorem` | [revAt_invol](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/revat-invol--21a619958c30ffb78fd03d10.md) | 63 | `result-track:21a619958c30ffb78fd03d107bac4b215a48e2455a44da2d79ff84c760f7e02c` |
| 7 | `theorem` | [revAt_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/revat-le--6b3eb49510a83e3dbc7d2d4d.md) | 67 | `result-track:6b3eb49510a83e3dbc7d2d4d9f99692813f77f281cffd58388b33c806bee233e` |
| 8 | `lemma` | [revAt_eq_self_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/revat-eq-self-of-lt--0f04ce0b6c3bc0f0adcbc238.md) | 70 | `result-track:0f04ce0b6c3bc0f0adcbc238f8d5d5d04e137ac848499d254e8b59ae1b965230` |
| 9 | `theorem` | [revAt_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/revat-add--01ac5de0224fb78dd9cca809.md) | 72 | `result-track:01ac5de0224fb78dd9cca809d64cf8654f0ae01a64978fd2aace332e48934c86` |
| 10 | `theorem` | [revAt_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/revat-zero--b9b74783f739550a2e05570c.md) | 80 | `result-track:b9b74783f739550a2e05570c3b3e02df7fc44aadee5d7dab0e4b0c2a20f079f8` |
| 11 | `def` | [reflect](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect--73042f04e2bc74bb19fcfa67.md) | 88 | `declaration-track:73042f04e2bc74bb19fcfa6797fe7d443e0f252342786e26beac9c8609b85ad3` |
| 12 | `theorem` | [reflect_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-support--13ae6b01fe0690ccbf84dcdd.md) | 91 | `result-track:13ae6b01fe0690ccbf84dcdd174c1f3246c38323fc551614e34aafa62d6ae32f` |
| 13 | `theorem` | [coeff_reflect](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/coeff-reflect--ade262507c7b7a9015f26162.md) | 98 | `result-track:ade262507c7b7a9015f2616226031444e1b8eb51d8dab5f21046f1d89ad8f862` |
| 14 | `theorem` | [reflect_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-zero--c68574a8cedda5e3e8a0ade8.md) | 107 | `result-track:c68574a8cedda5e3e8a0ade8fa8e691237f68800a58835df834686538ff84768` |
| 15 | `theorem` | [reflect_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-eq-zero-iff--28d88b5a4857bd2ebf97dd4a.md) | 111 | `result-track:28d88b5a4857bd2ebf97dd4a65c14cd8c005485cf04923eac1657f086c5bb936` |
| 16 | `theorem` | [reflect_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-add--76c31b9ee08416576d641b04.md) | 115 | `result-track:76c31b9ee08416576d641b04a47ca191439944c59d53ce91c28fcc5eef624593` |
| 17 | `theorem` | [reflect_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-c-mul--7ef3b3a748e8db74c5defa1f.md) | 120 | `result-track:7ef3b3a748e8db74c5defa1f8d5d8b1067e229be20dd1e228adebb024d7d1a61` |
| 18 | `theorem` | [reflect_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-c-mul-x-pow--476e362d69034b96d550c43e.md) | 124 | `result-track:476e362d69034b96d550c43e6f9efed1bdb8ae46ad90fc057088923e62225df7` |
| 19 | `theorem` | [reflect_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-c--b5ef0f809ad7e4cb3e74b9cd.md) | 136 | `result-track:b5ef0f809ad7e4cb3e74b9cdd48d0ece93435d55230e284aefbf295adfacc758` |
| 20 | `theorem` | [reflect_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-monomial--33b9d4e16e5965209a86ee03.md) | 140 | `result-track:33b9d4e16e5965209a86ee035386d41c82e819faf18692339d80acd7eb24e361` |
| 21 | `lemma` | [reflect_one_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-one-x--a6cce748700b4c747521d9cf.md) | 143 | `result-track:a6cce748700b4c747521d9cf0eaafa4a9dbeb7a536a470055b62697dfe860570` |
| 22 | `lemma` | [reflect_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-map--d242d54823a9bac6d6e68f23.md) | 146 | `result-track:d242d54823a9bac6d6e68f23e6f1c73212de46308ddad0bff97b5d22063dcd11` |
| 23 | `lemma` | [reflect_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-one--7eb8f5b92273213259fcdf0b.md) | 151 | `result-track:7eb8f5b92273213259fcdf0b6c59ef4f4f3f171b55ca278ae6a0ddcbd2c8719b` |
| 24 | `theorem` | [reflect_mul_induction](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-mul-induction--8b45705f9ae9d580dd643399.md) | 154 | `result-track:8b45705f9ae9d580dd64339934ef3c412288a0b7a68851694e67048d35b19809` |
| 25 | `theorem` | [reflect_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-mul--cf1b9b3a708cb9f55a2b0c69.md) | 192 | `result-track:cf1b9b3a708cb9f55a2b0c6983fdc49c8974c1b20c6c39161d647d81570dfec3` |
| 26 | `theorem` | [eval₂_reflect_mul_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/eval-reflect-mul-pow--db33218594f66230da4332c7.md) | 200 | `result-track:db33218594f66230da4332c75e58108b08172904a9b38014cfcd895e6b8f6cb6` |
| 27 | `theorem` | [eval₂_reflect_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/eval-reflect-eq-zero-iff--a94ad9669f9efb5627d2085c.md) | 213 | `result-track:a94ad9669f9efb5627d2085ccfba6d96ec459ad15b0dce993c71ad2a9c750686` |
| 28 | `def` | [reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse--72cf9916990328ea95d2eedb.md) | 227 | `declaration-track:72cf9916990328ea95d2eedb58b8f42d528639a91ac7925a1734a5ac19a4cd30` |
| 29 | `theorem` | [coeff_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/coeff-reverse--e4473ee49c62cf9e7bb98432.md) | 230 | `result-track:e4473ee49c62cf9e7bb98432e83773bac09eefceafd7aada4dc874cb34a49017` |
| 30 | `theorem` | [coeff_zero_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/coeff-zero-reverse--28d96d09840cd4512c468206.md) | 234 | `result-track:28d96d09840cd4512c46820676ea98276808ea90472e005d8263c3ab24950e6e` |
| 31 | `theorem` | [reverse_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-zero--d6fc9236ffdef73c25333a82.md) | 238 | `result-track:d6fc9236ffdef73c25333a8233b26bc6c57fd2fd9f3cb525587e6f3305011ca3` |
| 32 | `theorem` | [reverse_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-eq-zero--6b7b68611714fb6be6912407.md) | 242 | `result-track:6b7b68611714fb6be691240757e7c4d583222b74267353aeb787ab8e0d697aec` |
| 33 | `theorem` | [reverse_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-natdegree-le--eb9b8b795954c0263087493a.md) | 244 | `result-track:eb9b8b795954c0263087493ada32be6bfc2660404f13184f7a639f4383666f4d` |
| 34 | `theorem` | [natDegree_eq_reverse_natDegree_add_natTrailingDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/natdegree-eq-reverse-natdegree-add-nattrailingdegree--08fde7540c094bd0d6a04219.md) | 251 | `result-track:08fde7540c094bd0d6a0421995227bacd92fa75f9c47f5d271490cf17948ba56` |
| 35 | `theorem` | [reverse_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-natdegree--d63517bf1787298ff5929979.md) | 265 | `result-track:d63517bf1787298ff59299795c97ea785670e2bc6deafef37aded7186ccb3897` |
| 36 | `theorem` | [reverse_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-leadingcoeff--33824f027563057851d7fa3e.md) | 268 | `result-track:33824f027563057851d7fa3e7ce6a2851ea5523417e144c8e9df1591f0d4e7b6` |
| 37 | `theorem` | [natTrailingDegree_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/nattrailingdegree-reverse--753dcde314a735f7e137104f.md) | 272 | `result-track:753dcde314a735f7e137104f1ac43cf796b06e8fdf9991e902517d7dff8269cb` |
| 38 | `theorem` | [reverse_trailingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-trailingcoeff--f475446e754ac4107b75ef1f.md) | 276 | `result-track:f475446e754ac4107b75ef1f8d42e8d36b2f9bb493d43520c81ab72f6d5e7820` |
| 39 | `theorem` | [reverse_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-mul--2d6563f8cceeb3645dd20388.md) | 279 | `result-track:2d6563f8cceeb3645dd20388fe9fcfc593ae1f82db603d3780e64d723cd8facf` |
| 40 | `theorem` | [reverse_mul_of_domain](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-mul-of-domain--674e6cba64ae4dc65cffc1ff.md) | 285 | `result-track:674e6cba64ae4dc65cffc1ffe35e0e5d2e67d86408433dfd1856fccfe5021576` |
| 41 | `theorem` | [trailingCoeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/trailingcoeff-mul--4c385a0e4983d7c9bfeb7e80.md) | 293 | `result-track:4c385a0e4983d7c9bfeb7e809a58731a5a9d780c128dba279e18a44d5c09a3cc` |
| 42 | `theorem` | [coeff_one_reverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/coeff-one-reverse--a2bee1a8544acf7f1f18fccd.md) | 299 | `result-track:a2bee1a8544acf7f1f18fccd521b573b8597a2f8ad9d61675e783146f203ac42` |
| 43 | `lemma` | [reverse_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-c--86819244f11ab9bb5c9fa8a3.md) | 307 | `result-track:86819244f11ab9bb5c9fa8a395793198e6e9efc9ff478f16b5bafd0c265f5ba1` |
| 44 | `lemma` | [reverse_mul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-mul-x--5fa8e89e2e3e0568c5af73b8.md) | 311 | `result-track:5fa8e89e2e3e0568c5af73b81dd3a3e40c596f5a11d649fc1c01e6411605b0e0` |
| 45 | `lemma` | [reverse_X_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-x-mul--8b23fd72701885c43731adf8.md) | 317 | `result-track:8b23fd72701885c43731adf8eba29993f633c7ca3888032216423133a94ddca7` |
| 46 | `lemma` | [reverse_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-mul-x-pow--4054ef0c7b1bd993691a6f52.md) | 320 | `result-track:4054ef0c7b1bd993691a6f52e51b0280f485710276bc298fd59a1b0f6259c0b3` |
| 47 | `lemma` | [reverse_X_pow_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-x-pow-mul--fbaad9b9fed9bea57b716b56.md) | 325 | `result-track:fbaad9b9fed9bea57b716b5681b0915ae4fa08c6523a18ac7527083e7ae7662c` |
| 48 | `lemma` | [reverse_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-add-c--06db74c1c3917dff5dcdc1bc.md) | 328 | `result-track:06db74c1c3917dff5dcdc1bc4988f481ba79d6789423f4505562d59017ef6458` |
| 49 | `lemma` | [reverse_C_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-c-add--fe34436fed6b11904f51000c.md) | 332 | `result-track:fe34436fed6b11904f51000c7e157360835e6fa1025e173071c2067c6e1e7177` |
| 50 | `theorem` | [eval₂_reverse_mul_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/eval-reverse-mul-pow--b7f4152414d2f3176e30680c.md) | 340 | `result-track:b7f4152414d2f3176e30680ca28b94cc232f8c36263b39e9adc6b663266bf257` |
| 51 | `theorem` | [eval₂_reverse_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/eval-reverse-eq-zero-iff--bccbb74b22ac33f7332d1677.md) | 345 | `result-track:bccbb74b22ac33f7332d1677d2324fa0cec1aad773eac423d7c4a8f694f2dd29` |
| 52 | `theorem` | [reflect_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-neg--6d56ef25764f8cc39fe5a56b.md) | 358 | `result-track:6d56ef25764f8cc39fe5a56bc676da6d93e7a3852ec84291844b60a05b4c5a0b` |
| 53 | `theorem` | [reflect_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reflect-sub--0ad0320c77b1538594033e8f.md) | 362 | `result-track:0ad0320c77b1538594033e8fad7079e976978709163f869ad009b5e22fdaab49` |
| 54 | `theorem` | [reverse_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Reverse/Variantc2387f10ffd4262a1a90810680d3eb18b10d7711dbb3888f5bc5c20d8c8fda64.lean/declarations/reverse-neg--e3c012e63c5187a97844be16.md) | 366 | `result-track:e3c012e63c5187a97844be16bef44320d4b6735b921f0ea406a103b3fa8d15ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
