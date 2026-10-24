# Verification target: GRWTSK.Algebra.Over.Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0b445ca3c355c6af50c4f8ef90c96ddca6211d5",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/index.md) · [Full source](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0b445ca3c355c6af50c4f8ef90c96ddca6211d5`.

Source path: `GRWTSK/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Algebraic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeff_zero_mem_comap_of_root_mem_of_eval_mem](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/coeff-zero-mem-comap-of-root-mem-of-eval-mem--4751a5b28b2b89859012f863.md) | 44 | `result-track:4751a5b28b2b89859012f8632cfa4873d9c7d2864b76d47d5a7bbfea4db23a2c` |
| 2 | `theorem` | [coeff_zero_mem_comap_of_root_mem](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/coeff-zero-mem-comap-of-root-mem--8234c1417774f176d197f5fb.md) | 51 | `result-track:8234c1417774f176d197f5fbc62a870c1c772c40d0ff893e9298e4fa00264dd1` |
| 3 | `theorem` | [exists_coeff_ne_zero_mem_comap_of_non_zero_divisor_root_mem](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/exists-coeff-ne-zero-mem-comap-of-non-zero-divisor-root-mem--2483589224d4cbd746793a07.md) | 56 | `result-track:2483589224d4cbd746793a0743d3ed7bf731685dfe62d8f6dc9603db92e77ad4` |
| 4 | `theorem` | [injective_quotient_le_comap_map](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/injective-quotient-le-comap-map--4e542a25376ac86db93ba585.md) | 77 | `result-track:4e542a25376ac86db93ba585e9093487e736b8e10cd49e1687790d73779963f1` |
| 5 | `theorem` | [quotient_mk_maps_eq](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/quotient-mk-maps-eq--9a21734b47f60a4a293ee93d.md) | 101 | `result-track:9a21734b47f60a4a293ee93db69b5fbc4423ee8b6faab2dc573f10560970aa59` |
| 6 | `theorem` | [exists_nonzero_mem_of_ne_bot](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/exists-nonzero-mem-of-ne-bot--b43da54ce5f25a93d285483f.md) | 116 | `result-track:b43da54ce5f25a93d285483ffea43357af4dcf5597be224c3b993a07e12c33de` |
| 7 | `theorem` | [comap_eq_of_scalar_tower_quotient](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/comap-eq-of-scalar-tower-quotient--cec8322ecb236e50ed53ba9f.md) | 139 | `result-track:cec8322ecb236e50ed53ba9ffd56378744fb1f098cf5fa21239b120fb0a98be3` |
| 8 | `def` | [Quotient.algebraQuotientOfLeComap](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/quotient-algebraquotientoflecomap--0a85784feb686e8995aa8b59.md) | 153 | `declaration-track:0a85784feb686e8995aa8b59386ac80a88bae496a79e3117435e00c8959eafc3` |
| 9 | `instance` | [Quotient.algebraQuotientMapQuotient](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/quotient-algebraquotientmapquotient--7cc53ac0d8031c5c95d9758c.md) | 158 | `declaration-track:7cc53ac0d8031c5c95d9758c2b347302785d536318810e75352f19a13d37b1aa` |
| 10 | `theorem` | [Quotient.algebraMap_quotient_map_quotient](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/quotient-algebramap-quotient-map-quotient--9048d75a04b88fa3f511935b.md) | 163 | `result-track:9048d75a04b88fa3f511935bfa479c5788dc3d74bee6a5e1f9137dd7f402018c` |
| 11 | `theorem` | [Quotient.mk_smul_mk_quotient_map_quotient](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/quotient-mk-smul-mk-quotient-map-quotient--e395bc66f7128f486be2b226.md) | 170 | `result-track:e395bc66f7128f486be2b226b401450534a2ee52c78c40daf6e9afc12b7532dd` |
| 12 | `instance` | [Quotient.tower_quotient_map_quotient](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/quotient-tower-quotient-map-quotient--912cf21be289cf1718bf18fd.md) | 175 | `declaration-track:912cf21be289cf1718bf18fdd6a08bfb917fb41257ceecfe3f9fd9387be7ce8d` |
| 13 | `instance` | [QuotientMapQuotient.isNoetherian](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/quotientmapquotient-isnoetherian--ec08aed13482e964381e2bee.md) | 182 | `declaration-track:ec08aed13482e964381e2bee035c8268e3f171ee4e386c862cfa0034878ceab2` |
| 14 | `theorem` | [exists_coeff_ne_zero_mem_comap_of_root_mem](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/exists-coeff-ne-zero-mem-comap-of-root-mem--0fa5665c145f2ea0a0430eeb.md) | 195 | `result-track:0fa5665c145f2ea0a0430eebeecc2b53548c9b3396d8a4518da276b9625b0571` |
| 15 | `theorem` | [exists_coeff_mem_comap_sdiff_comap_of_root_mem_sdiff](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/exists-coeff-mem-comap-sdiff-comap-of-root-mem-sdiff--f8d463a0ee45cc0e6bd4be45.md) | 202 | `result-track:f8d463a0ee45cc0e6bd4be45384787a07c7537043eed152395a62d16b9027da6` |
| 16 | `theorem` | [comap_lt_comap_of_root_mem_sdiff](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/comap-lt-comap-of-root-mem-sdiff--4916ca585841bc385bb023d4.md) | 224 | `result-track:4916ca585841bc385bb023d4e3d4463340b0d2cbdfed9bbef0836cb81c2c6eed` |
| 17 | `theorem` | [mem_of_one_mem](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/mem-of-one-mem--7583bfa60512e07303f57420.md) | 231 | `result-track:7583bfa60512e07303f57420d9b3c4c157be509c393a5d0f22230893289b3cfa` |
| 18 | `theorem` | [comap_lt_comap_of_integral_mem_sdiff](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/comap-lt-comap-of-integral-mem-sdiff--3c39fc99e6957b11a1cd1bbc.md) | 235 | `result-track:3c39fc99e6957b11a1cd1bbc80b60120a679fca679feb308b53d77f63d326d60` |
| 19 | `theorem` | [comap_ne_bot_of_root_mem](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/comap-ne-bot-of-root-mem--0bc45edbad2e09d20af0d195.md) | 249 | `result-track:0bc45edbad2e09d20af0d19503743a3d3696161ae3ce8fe39d08df4768e90450` |
| 20 | `theorem` | [isMaximal_of_isIntegral_of_isMaximal_comap](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/ismaximal-of-isintegral-of-ismaximal-comap--a16a219e1469f8d35c335489.md) | 255 | `result-track:a16a219e1469f8d35c335489c4e65b556b35227104a8aefc013107bd1e58a270` |
| 21 | `theorem` | [isMaximal_of_isIntegral_of_isMaximal_comap'](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/ismaximal-of-isintegral-of-ismaximal-comap--4d814f1f4db36fa7815148a4.md) | 263 | `result-track:4d814f1f4db36fa7815148a487c53c3e0e9559cff47185e27f4bc7dc56dcf55d` |
| 22 | `theorem` | [comap_ne_bot_of_algebraic_mem](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/comap-ne-bot-of-algebraic-mem--c55f030145725879e313a74e.md) | 270 | `result-track:c55f030145725879e313a74ef4b8a18c3941dd5befcfce53c7e0dea1550b1caa` |
| 23 | `theorem` | [comap_ne_bot_of_integral_mem](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/comap-ne-bot-of-integral-mem--eea63452b7f1cc9f6101d22c.md) | 276 | `result-track:eea63452b7f1cc9f6101d22c90d7d835ad097affcf99298ce736bd4266af2a47` |
| 24 | `theorem` | [eq_bot_of_comap_eq_bot](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/eq-bot-of-comap-eq-bot--14fbd9cee33dc11fb593fdb9.md) | 281 | `result-track:14fbd9cee33dc11fb593fdb9193f7a9ac40e04958b416441e4e0a66cea558bd9` |
| 25 | `theorem` | [isMaximal_comap_of_isIntegral_of_isMaximal](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/ismaximal-comap-of-isintegral-of-ismaximal--1653e98bc26c09b3872d7238.md) | 289 | `result-track:1653e98bc26c09b3872d7238cb05f8bb886127ab59bee49997f787f6d545e671` |
| 26 | `theorem` | [isMaximal_comap_of_isIntegral_of_isMaximal'](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/ismaximal-comap-of-isintegral-of-ismaximal--4745aacb2ea010e11058fe17.md) | 298 | `result-track:4745aacb2ea010e11058fe172600d9fe3b48d7e36ca7c366eb29ffd7f9c03875` |
| 27 | `theorem` | [IsIntegralClosure.comap_lt_comap](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/isintegralclosure-comap-lt-comap--7ccb6a64529e0e02f9ca0432.md) | 309 | `result-track:7ccb6a64529e0e02f9ca04320485633770ac636b05435f7a8a70ca5542735ff4` |
| 28 | `theorem` | [IsIntegralClosure.isMaximal_of_isMaximal_comap](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/isintegralclosure-ismaximal-of-ismaximal-comap--14cc0f79b21cb8569dbf9e12.md) | 315 | `result-track:14cc0f79b21cb8569dbf9e1264b70a5bcbe97f8f004a1c2bc058ac0d8a6c6d10` |
| 29 | `theorem` | [IsIntegralClosure.comap_ne_bot](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/isintegralclosure-comap-ne-bot--f3bb318d31cfd46ea7faa652.md) | 322 | `result-track:f3bb318d31cfd46ea7faa652f85ab5809faae44cbb8e36e9028f4e15a443e9a0` |
| 30 | `theorem` | [IsIntegralClosure.eq_bot_of_comap_eq_bot](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/isintegralclosure-eq-bot-of-comap-eq-bot--c5e7a1861e2ccfa0f942bb08.md) | 328 | `result-track:c5e7a1861e2ccfa0f942bb0832c9e9748cd93b906e0022695d2c7d3c023f7d12` |
| 31 | `theorem` | [IntegralClosure.comap_lt_comap](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/integralclosure-comap-lt-comap--75ca79a14f3e419ba8433a76.md) | 336 | `result-track:75ca79a14f3e419ba8433a76f81b418db43828e79f7370f368100b8fd2d67da8` |
| 32 | `theorem` | [IntegralClosure.isMaximal_of_isMaximal_comap](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/integralclosure-ismaximal-of-ismaximal-comap--62416a70e14560aa9ad7d817.md) | 342 | `result-track:62416a70e14560aa9ad7d8175e824e13acfe8d053ef8f735433a51996927a085` |
| 33 | `theorem` | [IntegralClosure.comap_ne_bot](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/integralclosure-comap-ne-bot--028286572a8540b938cf4722.md) | 351 | `result-track:028286572a8540b938cf4722786dcc260baa9e918a0a1858940220bb758960bb` |
| 34 | `theorem` | [IntegralClosure.eq_bot_of_comap_eq_bot](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/integralclosure-eq-bot-of-comap-eq-bot--26443705eb498b0631eabc43.md) | 356 | `result-track:26443705eb498b0631eabc4330819ea2c8210b4cfc63158aa92c6a84c56a33e9` |
| 35 | `theorem` | [exists_ideal_over_prime_of_isIntegral'](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/exists-ideal-over-prime-of-isintegral--1f638196c0a9098895bc49e6.md) | 363 | `result-track:1f638196c0a9098895bc49e65e55f523429d48fa8a52184b7466c7ea264e684a` |
| 36 | `theorem` | [exists_ideal_over_prime_of_isIntegral](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/exists-ideal-over-prime-of-isintegral--d81586e14f723e11027699b2.md) | 391 | `result-track:d81586e14f723e11027699b2668ce2217d10381d983618b8fc0ef02bbf5c7ab6` |
| 37 | `theorem` | [exists_ideal_over_maximal_of_isIntegral](../../../../mathematics/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/declarations/exists-ideal-over-maximal-of-isintegral--819d093e4471297aa9341214.md) | 413 | `result-track:819d093e4471297aa934121465d27d8e5addaa8d840e5e982668cb515debd89e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
