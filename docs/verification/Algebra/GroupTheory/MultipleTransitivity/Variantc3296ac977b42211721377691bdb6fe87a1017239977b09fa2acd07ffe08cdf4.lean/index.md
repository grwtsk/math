# Verification target: GRWTSK.Algebra.GroupTheory.MultipleTransitivity.Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ef92d0cdf83f804be1f6ecfd29e1a2cdf279e8e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ef92d0cdf83f804be1f6ecfd29e1a2cdf279e8e`.

Source path: `GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean.json)

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
| 1 | `def` | [Function.Injective.mulActionHom_embedding](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/function-injective-mulactionhom-embedding--99169378f58617996f7b14a8.md) | 87 | `declaration-track:99169378f58617996f7b14a8c5257462b9e4537deb9376dfd752fe64efc37d62` |
| 2 | `theorem` | [Function.Injective.mulActionHom_embedding_apply](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/function-injective-mulactionhom-embedding-apply--dfd580a9c152322ec7691eeb.md) | 93 | `result-track:dfd580a9c152322ec7691eebb83a79ac349d5957b77cb6544e533f65514c334a` |
| 3 | `theorem` | [Function.Injective.mulActionHom_embedding_isInjective](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/function-injective-mulactionhom-embedding-isinjective--8076629de7aa05e0231cc726.md) | 98 | `result-track:8076629de7aa05e0231cc7264df01fccd3c3f7c2f42f333f3f465e251ec81de7` |
| 4 | `theorem` | [Function.Bijective.mulActionHom_embedding_isBijective](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/function-bijective-mulactionhom-embedding-isbijective--1d96ed83dc7c32b2bab91fb7.md) | 107 | `result-track:1d96ed83dc7c32b2bab91fb753c9ca3861d896f9adaa1ed97a8cfe403325b92e` |
| 5 | `abbrev` | [IsMultiplyPretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ismultiplypretransitive--ab2484d7343ec31901c0ffd0.md) | 128 | `declaration-track:ab2484d7343ec31901c0ffd002a667908888b526178bec44fc13cdbf4af8c45b` |
| 6 | `theorem` | [isMultiplyPretransitive_iff](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ismultiplypretransitive-iff--73ef30f6e70adcc0348697a0.md) | 131 | `result-track:73ef30f6e70adcc0348697a07e4dd0a3e43a3c6f6fa299916cf2e48557bd32be` |
| 7 | `theorem` | [IsPretransitive.of_embedding](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ispretransitive-of-embedding--456702672bcc12c21a0c9a35.md) | 144 | `result-track:456702672bcc12c21a0c9a35b324098b7ff68afdf9d60f84331751c692ab20cc` |
| 8 | `theorem` | [IsPretransitive.of_embedding_congr](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ispretransitive-of-embedding-congr--fc4e90b5a1e003888337fd1c.md) | 161 | `result-track:fc4e90b5a1e003888337fd1cf2475172d0a256ff42c05e809e54326c527d84b0` |
| 9 | `theorem` | [is_zero_pretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/is-zero-pretransitive--142b1b77f808b1b67404da86.md) | 170 | `result-track:142b1b77f808b1b67404da86bc31159503406cb09d5b8e168521af3c7b9c06bf` |
| 10 | `theorem` | [is_zero_pretransitive'](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/is-zero-pretransitive--c89ad4337e52c1eb9282afe5.md) | 175 | `result-track:c89ad4337e52c1eb9282afe5e4f5b6a063b7f9c68802886b4f4860f037aebcae` |
| 11 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.FunctionInjectiveMulActionHomEmbedding.Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.MulActionHom.oneEmbeddingMap](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/root-grwtsk-algebra-grouptheory-functioninjectivemulactionhomembedding-v--543e870595b1873b0b50532c.md) | 186 | `declaration-track:543e870595b1873b0b50532cc6b30125b0f4e6bcc71088dd3b7f49b880371e33` |
| 12 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.FunctionInjectiveMulActionHomEmbedding.Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.MulActionHom.oneEmbeddingMap_bijective](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/root-grwtsk-algebra-grouptheory-functioninjectivemulactionhomembedding-v--879f0ec11cc1cd1a9134abfd.md) | 192 | `result-track:879f0ec11cc1cd1a9134abfd83d96ce1872ab6b7560f7ffd0a729df6a256040c` |
| 13 | `theorem` | [oneEmbedding_isPretransitive_iff](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/oneembedding-ispretransitive-iff--3e24e72781560700dbdabb89.md) | 198 | `result-track:3e24e72781560700dbdabb896a7ed99c34e32717e4c6997d52e588887766eee4` |
| 14 | `theorem` | [is_one_pretransitive_iff](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/is-one-pretransitive-iff--c96b1dba67fbb22c9774c6d3.md) | 204 | `result-track:c96b1dba67fbb22c9774c6d391850aeecd43f8991506095ae931515d9e6c7bd8` |
| 15 | `theorem` | [is_two_pretransitive_iff](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/is-two-pretransitive-iff--daa2b60e49b979b518204355.md) | 216 | `result-track:daa2b60e49b979b5182043550d1501aea39e9757b749a4d8770542a4e86e8192` |
| 16 | `theorem` | [isPretransitive_of_is_two_pretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ispretransitive-of-is-two-pretransitive--2db65d46611ae075ae123093.md) | 238 | `result-track:2db65d46611ae075ae123093044defa7c9968902cb52e87b13d3cc338685fd82` |
| 17 | `theorem` | [isPreprimitive_of_is_two_pretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ispreprimitive-of-is-two-pretransitive--479057693c20e3358046fd48.md) | 249 | `result-track:479057693c20e3358046fd48d379a0e9f6b23db35c338f71e751505afa38685c` |
| 18 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.FunctionInjectiveMulActionHomEmbedding.Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.MulActionHom.embMap](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/root-grwtsk-algebra-grouptheory-functioninjectivemulactionhomembedding-v--d22e7336dec9e79fe5593a22.md) | 278 | `declaration-track:d22e7336dec9e79fe5593a2265b0e81d9468c59db9ddd7ed0b842027e1521ce0` |
| 19 | `theorem` | [isMultiplyPretransitive_of_le'](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ismultiplypretransitive-of-le--89999d4dfdddec70d5d3c007.md) | 294 | `result-track:89999d4dfdddec70d5d3c00710546821397b2f44fd9aa2008bc742fdd0f68e3e` |
| 20 | `theorem` | [isMultiplyPretransitive_of_le](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ismultiplypretransitive-of-le--f8198ad06d9ac075e17ad2b9.md) | 311 | `result-track:f8198ad06d9ac075e17ad2b9a1aba12e29032eadf00a96afeee7137e973a1fce` |
| 21 | `theorem` | [isPretransitive_iff_of_conj](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ispretransitive-iff-of-conj--a99183aae2b73dfabb17750b.md) | 327 | `result-track:a99183aae2b73dfabb17750bdd1908ea5226ba85bbdb2cb3e04fd07e40ed7110` |
| 22 | `theorem` | [isPretransitive_iff](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ispretransitive-iff--3ccfc711171dede8e1396f2a.md) | 333 | `result-track:3ccfc711171dede8e1396f2afcdb5d5b4817bbecb92b4a661f857dad8e337c09` |
| 23 | `theorem` | [isMultiplyPretransitive_iff_of_conj](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ismultiplypretransitive-iff-of-conj--ab5da03360148609d1a35136.md) | 340 | `result-track:ab5da03360148609d1a35136e74bc95ffb20563150f9e13f11a2ebd3e626082f` |
| 24 | `theorem` | [isMultiplyPretransitive_iff](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ismultiplypretransitive-iff--290377025e86b044617fca5d.md) | 347 | `result-track:290377025e86b044617fca5d7f7061ee7f5b2e7f46636901d26b982ba4ac3ce3` |
| 25 | `theorem` | [isMultiplyPretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ismultiplypretransitive--9f8da52747ee39f9308768a0.md) | 359 | `result-track:9f8da52747ee39f9308768a09bc4f576abcc077bff5fff0554896c61f69e5c75` |
| 26 | `theorem` | [isMultiplyPretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ismultiplypretransitive--b3fd60f77dec2a7f98104131.md) | 399 | `result-track:b3fd60f77dec2a7f98104131cf443f88064bfa11cf4bf76c787d19953b157e89` |
| 27 | `theorem` | [isMultiplyPretransitive'](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ismultiplypretransitive--fc6d2c05c44b511d031b865c.md) | 425 | `result-track:fc6d2c05c44b511d031b865c42ecfa64069743a37994d285ad4e149b6c735717` |
| 28 | `theorem` | [IsMultiplyPretransitive.index_of_fixingSubgroup_mul](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ismultiplypretransitive-index-of-fixingsubgroup-mul--4669304d6ee36aac54ca39ce.md) | 446 | `result-track:4669304d6ee36aac54ca39ced30fd46c93ef18811c9e65511c81a07659da6569` |
| 29 | `theorem` | [IsMultiplyPretransitive.index_of_fixingSubgroup_eq](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ismultiplypretransitive-index-of-fixingsubgroup-eq--1b8e586e0c0056eb09639836.md) | 503 | `result-track:1b8e586e0c0056eb096398360781ba3fbff417bb1a6db44907fe9a274921de2b` |
| 30 | `theorem` | [exists_smul_eq_embedding](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/exists-smul-eq-embedding--18f3a5961cf06eaccab61842.md) | 522 | `result-track:18f3a5961cf06eaccab61842a9361f285eb44d56e47cd8e2962c4d3ab9e1c6d4` |
| 31 | `theorem` | [isMultiplyPretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ismultiplypretransitive--783d5da2e6b97ac94c6c9785.md) | 529 | `result-track:783d5da2e6b97ac94c6c97854a95b1157dcb0e5ea866dd61907286779426a88c` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/instance--d9aa61604e27858ca40d126c.md) | 535 | `declaration-track:d9aa61604e27858ca40d126c9ccca80af63e62d35b0ad6b8d6d8155f4c9adf58` |
| 33 | `theorem` | [eq_top_of_isMultiplyPretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/eq-top-of-ismultiplypretransitive--2c1fede5ee4d66b2301e7b40.md) | 540 | `result-track:2c1fede5ee4d66b2301e7b401d770154d40fa494700e3392f1c57a6cbeded690` |
| 34 | `theorem` | [isMultiplyPretransitive](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ismultiplypretransitive--b826bdfd8009e5d1c47725f6.md) | 585 | `result-track:b826bdfd8009e5d1c47725f64622f6d8846b9ea687ef35ed41f2bd066504dd52` |
| 35 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.FunctionInjectiveMulActionHomEmbedding.Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.IsMultiplyPretransitive.alternatingGroup_le](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/root-grwtsk-algebra-grouptheory-functioninjectivemulactionhomembedding-v--ffe323ec7003a0c9f7b66260.md) | 610 | `result-track:ffe323ec7003a0c9f7b662609d4ca4c6a07ceb5cd6c149291eaf77bf831bdeb3` |
| 36 | `theorem` | [isPretransitive_of_three_le_card](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ispretransitive-of-three-le-card--e5c3f960187382f09854e1b4.md) | 636 | `result-track:e5c3f960187382f09854e1b4e42e6cf95903b5a35c2a1c77a14f76b2bae830fb` |
| 37 | `theorem` | [isTrivialBlock_of_isBlock](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/istrivialblock-of-isblock--9f46a563b1e0ee22f2612cd1.md) | 647 | `result-track:9f46a563b1e0ee22f2612cd16976c506b570d20f9737645cdbf3150caa9aa448` |
| 38 | `theorem` | [isPreprimitive_of_three_le_card](../../../../../mathematics/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/declarations/ispreprimitive-of-three-le-card--d74c82aeae4aa045ea13b1b4.md) | 665 | `result-track:d74c82aeae4aa045ea13b1b42fbee632c0072c0e61728c2d1602a98ca7860488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
