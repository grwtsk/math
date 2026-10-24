# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DivisibilityPacking.Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34bf5987e231c36cf4a9f04306be36aeb1ffe503",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34bf5987e231c36cf4a9f04306be36aeb1ffe503`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.QuotientRing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeSupport](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/primesupport--88b0131135442d61e3654e59.md) | 18 | `declaration-track:88b0131135442d61e3654e598101579275d5c1a9e8d90dcb2c4c00acfda61116` |
| 2 | `theorem` | [mem_primeSupport](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/mem-primesupport--17e704b0409c3914ec6aa09d.md) | 20 | `result-track:17e704b0409c3914ec6aa09d3bc2cd90f6dcfe19b27c16ed10e8628db1edeb3c` |
| 3 | `def` | [Modulus](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/modulus--72244d3e5046a9d55ed75b93.md) | 25 | `declaration-track:72244d3e5046a9d55ed75b939b8074d5c0efa70d3fddabc19cd32057f9ef848d` |
| 4 | `theorem` | [modulus_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/modulus-pos--102854ddadc80530b9ddbc98.md) | 27 | `result-track:102854ddadc80530b9ddbc98598e8c2dd4a3b6ee5fd5a422c4c8a7893bdaa1d4` |
| 5 | `instance` | [modulus_neZero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/modulus-nezero--fe6c0c6fb9c7a514b1078c0d.md) | 32 | `declaration-track:fe6c0c6fb9c7a514b1078c0d21c2593f30289bb591e312f326f40b20163cbf62` |
| 6 | `instance` | [prime_neZero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/prime-nezero--9f0bc521fc02838bbf1e2e87.md) | 34 | `declaration-track:9f0bc521fc02838bbf1e2e87b2f55c2db48168a4a7d006f8df5fa6a85491dcff` |
| 7 | `def` | [forbiddenResidues](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/forbiddenresidues--7153fd9915ec6f73dddf1afc.md) | 38 | `declaration-track:7153fd9915ec6f73dddf1afc8dc99c8d0b29137c5c84d023764fff6d15fbd458` |
| 8 | `def` | [localForbiddenCount](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/localforbiddencount--9df153c3b94b215641f9145b.md) | 42 | `declaration-track:9df153c3b94b215641f9145b8ac5036d7a87989675d6ef6bb9fc4a3522a470aa` |
| 9 | `theorem` | [localForbiddenCount_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/localforbiddencount-le--9dd9aee8eb78a63b78d012a0.md) | 44 | `result-track:9dd9aee8eb78a63b78d012a0f09591b81c2692d21840a8d8c254431e2e495e91` |
| 10 | `def` | [localReduction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/localreduction--3d34859ab1b954b23e7dac64.md) | 49 | `declaration-track:3d34859ab1b954b23e7dac64cce64acee53efcdc57fd48422e44418491e93a88` |
| 11 | `def` | [RawAdmissible](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/rawadmissible--ede361a8186781bd813a68c4.md) | 53 | `declaration-track:ede361a8186781bd813a68c418b3c563cecea24a9ae5093a6d34d9f25f560ef9` |
| 12 | `def` | [RawPacking](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/rawpacking--89fcfb3b9c1a023fd4ffefab.md) | 57 | `declaration-track:89fcfb3b9c1a023fd4ffefab0867d3bdc7061210dbb9c30d61b011e037487873` |
| 13 | `instance` | [rawPackingFintype](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/rawpackingfintype--4e137bbf4f83794c06415cc6.md) | 59 | `declaration-track:4e137bbf4f83794c06415cc67f8d2c3d4720355ec4743a3568446907225b3629` |
| 14 | `theorem` | [primeSupport_pairwise](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/primesupport-pairwise--ce90eed13b39b10059670f92.md) | 64 | `result-track:ce90eed13b39b10059670f9251d72f69ce45c1dbd0d6eb8a5403aa0ec669915b` |
| 15 | `def` | [residueEquiv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/residueequiv--2d3c3022b1c022b91a9f4b42.md) | 72 | `declaration-track:2d3c3022b1c022b91a9f4b4279d0c8bbdec4fdfa802ebd295ab5e0df13c27d42` |
| 16 | `theorem` | [residueEquiv_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/residueequiv-apply--04c1c640742341b2a83b94ef.md) | 77 | `result-track:04c1c640742341b2a83b94ef4f16aee45e52cbd5bdd0f1a3c0f058acfb7b0a0a` |
| 17 | `def` | [rawPackingEquiv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/rawpackingequiv--5ce5f8f7f9c7d00c883cd2d6.md) | 84 | `declaration-track:5ce5f8f7f9c7d00c883cd2d6283e17b27306871953974fd2c4477b4153dff0e4` |
| 18 | `theorem` | [rawPacking_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/rawpacking-card--857b3b58fb40dd43866261f2.md) | 94 | `result-track:857b3b58fb40dd43866261f27e0ab3e867697546c419d15b715f3974e2183ddf` |
| 19 | `def` | [rawDensity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/rawdensity--da98724288d5f400f1c49b90.md) | 103 | `declaration-track:da98724288d5f400f1c49b902e95d7c1c1f925fbf558902a217d3b64f6283224` |
| 20 | `theorem` | [rawPacking_density](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/rawpacking-density--0179eaad8c7acaf17fbd9a3c.md) | 106 | `result-track:0179eaad8c7acaf17fbd9a3c51adfbd6e7867070eee74ac886269a999cec505e` |
| 21 | `def` | [IntegerSurvivor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/integersurvivor--41f270de9369189a2805dd62.md) | 118 | `declaration-track:41f270de9369189a2805dd621c7f694df7bf31d14d76a7771d06bd22fdb8afe6` |
| 22 | `theorem` | [integerSurvivor_mono](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/integersurvivor-mono--b662220ae0f7595873ff9608.md) | 121 | `result-track:b662220ae0f7595873ff96089fca0d9beae569b11e1934c7cd820be7d5a3bc3e` |
| 23 | `theorem` | [integerSurvivor_iff_rawAdmissible](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/integersurvivor-iff-rawadmissible--3da4fcfb79cea4f78fae5ce8.md) | 129 | `result-track:3da4fcfb79cea4f78fae5ce8705fbc4e02ef87db53e9ff2a59d92fe483f0a08f` |
| 24 | `theorem` | [integerSurvivor_iff_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/integersurvivor-iff-product--a098d276f7e84eefb5c2b5dc.md) | 152 | `result-track:a098d276f7e84eefb5c2b5dc917050287c888221e21ebfdca7f326e4f07b7197` |
| 25 | `theorem` | [primeSupport_mono](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/primesupport-mono--54232b2b6b5693cca06c81b8.md) | 166 | `result-track:54232b2b6b5693cca06c81b8312d0d553f44e2f6f632a6a821ca0a8d358f7aca` |
| 26 | `theorem` | [modulus_dvd_of_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/modulus-dvd-of-le--c52ece1b434d5d7723d8ce9f.md) | 171 | `result-track:c52ece1b434d5d7723d8ce9f15b639fce3716c89c63e6785f2cbc86316f2e576` |
| 27 | `def` | [reduction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/reduction--b3cdacd1c7fad4d5ffa40ae5.md) | 175 | `declaration-track:b3cdacd1c7fad4d5ffa40ae54a1b6e36234a87e8d188d5b8df707a5f4cb50b56` |
| 28 | `theorem` | [localReduction_reduction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/localreduction-reduction--c859bcddf81e8ffe1d960e68.md) | 178 | `result-track:c859bcddf81e8ffe1d960e68a83683d4f5940081d43402fc8a23c7bd26876398` |
| 29 | `theorem` | [rawAdmissible_reduce_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/rawadmissible-reduce-iff--1baff3124a48ec4b4d60a1c2.md) | 186 | `result-track:1baff3124a48ec4b4d60a1c2fa6658969f613cedc189c5679121b9d38b87d01e` |
| 30 | `theorem` | [rawAdmissible_of_finer](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/rawadmissible-of-finer--4d78858904101c126c3dd2ec.md) | 193 | `result-track:4d78858904101c126c3dd2ec715d593303eeab9c57716ef3fb7b781f5803ddc7` |
| 31 | `theorem` | [singleton_forbidden_count](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/singleton-forbidden-count--8b446db22e2a15b0880df3d6.md) | 200 | `result-track:8b446db22e2a15b0880df3d63cdb722495a4f3475cbdb5fe2a27ec5c48bfba4b` |
| 32 | `theorem` | [singleton_density](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/singleton-density--0e46c2c6f31091683fdbf800.md) | 203 | `result-track:0e46c2c6f31091683fdbf800854c535d51979d6fcd282741319239631b34f33f` |
| 33 | `theorem` | [totient_prime_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/totient-prime-product--af782772def780c76abad8bb.md) | 207 | `result-track:af782772def780c76abad8bbf12e08f2ee274a483ec86f179fae280e357fa49d` |
| 34 | `theorem` | [singleton_card_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/singleton-card-totient--b0da38be423c2583446b7c5c.md) | 221 | `result-track:b0da38be423c2583446b7c5c5c4d5a0125ff2cc94774478aa33940151502f49d` |
| 35 | `theorem` | [singleton_density_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/singleton-density-totient--824d935ad248712e961b7f0f.md) | 228 | `result-track:824d935ad248712e961b7f0f341899a92f5d7be9d5282405350661de3c38553f` |
| 36 | `theorem` | [twin_forbidden_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/twin-forbidden-two--4987a86bd289c028c16d6389.md) | 233 | `result-track:4987a86bd289c028c16d6389860197824dc4c8466995d76a1556f2b44ab9ac55` |
| 37 | `theorem` | [twin_forbidden_large](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/twin-forbidden-large--a6dd1f6200dc6e3f92fd402c.md) | 237 | `result-track:a6dd1f6200dc6e3f92fd402ce49d67486cb321560abdbf9fd4dc636215ec71d4` |
| 38 | `theorem` | [twin_density](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/twin-density--71a127297549841120ce4179.md) | 243 | `result-track:71a127297549841120ce417973ae1bc33423c473ce72b8730f6c3f0c71233603` |
| 39 | `theorem` | [composite_raw_survivor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/composite-raw-survivor--c08af74c75f896e5fe233597.md) | 259 | `result-track:c08af74c75f896e5fe2335971a7e05fbefba7f0f0ea71cba9893e1c20d0e0924` |
| 40 | `theorem` | [visible_prime_raw_excluded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/visible-prime-raw-excluded--4a228ab24708684278c82f4e.md) | 264 | `result-track:4a228ab24708684278c82f4ebacbd2d353d7e4f64f68a553c8c0ed2efa59abe7` |
| 41 | `theorem` | [translated_prime_raw_excluded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/translated-prime-raw-excluded--b100e98b61b103ca81b4f893.md) | 269 | `result-track:b100e98b61b103ca81b4f893c5876ddb23ed3fc0a5c8d04f9caf0667265968c2` |
| 42 | `theorem` | [empty_support_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/empty-support-card--aa22a0223b7386be2d8f5e48.md) | 278 | `result-track:aa22a0223b7386be2d8f5e48b2e89a5f9d042428a4c3d618424361575dfa645b` |
| 43 | `theorem` | [twin_five_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/declarations/twin-five-card--3bc66651b5f884546b8ae1ae.md) | 283 | `result-track:3bc66651b5f884546b8ae1ae673a65eeddfc59e044204e59029b026bf42020ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
