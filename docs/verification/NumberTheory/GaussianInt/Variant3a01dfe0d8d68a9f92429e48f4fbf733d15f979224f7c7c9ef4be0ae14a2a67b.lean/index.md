# Verification target: GRWTSK.NumberTheory.GaussianInt.Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0b231e497cba142ff28799eca450bb4b952471a",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0b231e497cba142ff28799eca450bb4b952471a`.

Source path: `GRWTSK/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean.json)

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
| 1 | `abbrev` | [GaussianInt](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/gaussianint--6dcd75f3e11ecfc760bf47d6.md) | 58 | `declaration-track:6dcd75f3e11ecfc760bf47d638f562f14a492a918fa2e92b47cbe5aca89da1f4` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/instance--dd05be9133495ad98abfbb51.md) | 65 | `declaration-track:dd05be9133495ad98abfbb5100cea9335a66986faeffe7cace51e1fcc4b892e9` |
| 3 | `instance` | [instCommRing](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/instcommring--8f1425971adaa192369525e1.md) | 68 | `declaration-track:8f1425971adaa192369525e177f8d76cea20379cbda466e2e808aeb5f7896abf` |
| 4 | `def` | [toComplex](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex--6c50832c78bb5a3505557dd5.md) | 76 | `declaration-track:6c50832c78bb5a3505557dd593658d50e8f979b32c849a3799c5c3733d0a10b8` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/instance--488d86848b2b0efe0077246a.md) | 81 | `declaration-track:488d86848b2b0efe0077246a5e78077b15a4cc74458ce16e1b698141e3408049` |
| 6 | `theorem` | [toComplex_def](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-def--7207a50426d7dc3fe6d041c8.md) | 84 | `result-track:7207a50426d7dc3fe6d041c8b995bc0c8bb49a88f5f9c60ce300e11bf9716abf` |
| 7 | `theorem` | [toComplex_def'](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-def--8cc4542cd819270e5964fbfb.md) | 87 | `result-track:8cc4542cd819270e5964fbfbc7e7a7d45ca6929adb2d519944abe6d12c9c1639` |
| 8 | `theorem` | [toComplex_def₂](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-def--73526758d228e495f663615b.md) | 89 | `result-track:73526758d228e495f663615bdd3b048cb534b52e3655bd62f2577f3d42f1dcaf` |
| 9 | `theorem` | [intCast_re](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/intcast-re--120809215781bd2ea176ec38.md) | 93 | `result-track:120809215781bd2ea176ec38330ce37898f8fded4006e35b1f083e8c776713c5` |
| 10 | `theorem` | [intCast_im](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/intcast-im--82db7438cd0c97659cd1a764.md) | 96 | `result-track:82db7438cd0c97659cd1a764bfed9ed018662c50450ddf18ffa8f889b01cdbc4` |
| 11 | `theorem` | [re_toComplex](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/re-tocomplex--c4abcb002a532d58462f1202.md) | 99 | `result-track:c4abcb002a532d58462f12029bbff8e4b37636d6b97f4032e82314ee2bcc9ab3` |
| 12 | `theorem` | [im_toComplex](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/im-tocomplex--01d64482f7de9f4d8ac50d3b.md) | 102 | `result-track:01d64482f7de9f4d8ac50d3b6a01792a3d5c7219cbbf1a83e8cfdcc967fb794d` |
| 13 | `theorem` | [toComplex_add](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-add--967f5319057073b8d0b4be77.md) | 104 | `result-track:967f5319057073b8d0b4be777db9f34eae087e98045bd82a9c27f902a5800dc3` |
| 14 | `theorem` | [toComplex_mul](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-mul--421862e900e11eae54f0e4af.md) | 107 | `result-track:421862e900e11eae54f0e4afafd86d079e53828bf53493debdb7c983e52c1eeb` |
| 15 | `theorem` | [toComplex_one](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-one--e9012dfd79f20f61648bbf77.md) | 110 | `result-track:e9012dfd79f20f61648bbf774482f6214595ced11c3ac3aa8e1dfcd99a857f22` |
| 16 | `theorem` | [toComplex_zero](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-zero--0ab02fb20f3c9a2336291ec1.md) | 113 | `result-track:0ab02fb20f3c9a2336291ec1ff68ae512e08547d5c546d22cbdf89ea3d08ede3` |
| 17 | `theorem` | [toComplex_neg](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-neg--5f35acf679fdef518b748dc4.md) | 116 | `result-track:5f35acf679fdef518b748dc4b379360abdae821304fb56c0af661aa7d5fa7fbf` |
| 18 | `theorem` | [toComplex_sub](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-sub--3e61eedfc148f51f42473a1e.md) | 119 | `result-track:3e61eedfc148f51f42473a1e4fc60f03801280ee7301bdef8e0370a1a75683ed` |
| 19 | `theorem` | [toComplex_star](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-star--3ea352a629f7a9397c079834.md) | 123 | `result-track:3ea352a629f7a9397c0798345a77040d96397a35fe22914e4055b4620e4865c4` |
| 20 | `theorem` | [toComplex_inj](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-inj--9985eed169c046a1251c581b.md) | 128 | `result-track:9985eed169c046a1251c581b4a69866b71abbbfaf5a87f7e7edec9cd4685a30a` |
| 21 | `lemma` | [toComplex_injective](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-injective--938a353be90e19d665ea4a2e.md) | 131 | `result-track:938a353be90e19d665ea4a2eb667cfac9ad550250d46d00d3d9cfaab5d868c38` |
| 22 | `theorem` | [toComplex_eq_zero](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-eq-zero--d4e665af367b717d4e085887.md) | 135 | `result-track:d4e665af367b717d4e08588751258758f8cac7e89cda89a7c048cb4a1a7c5669` |
| 23 | `theorem` | [intCast_real_norm](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/intcast-real-norm--6bd989b9b0ce94a9f7626e49.md) | 139 | `result-track:6bd989b9b0ce94a9f7626e4930b53529b8662422e8a743ce4dccca97e8a1fcf7` |
| 24 | `theorem` | [intCast_complex_norm](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/intcast-complex-norm--cd0b73f635c6b9b0e896ce6f.md) | 143 | `result-track:cd0b73f635c6b9b0e896ce6f14e7af19019e8447a88c4098bef46b8d1c7667df` |
| 25 | `theorem` | [norm_nonneg](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/norm-nonneg--888371fa5c61b523eb8211f4.md) | 146 | `result-track:888371fa5c61b523eb8211f4781ec3af6bf2ec2254190458b06a11954c9a0ed1` |
| 26 | `theorem` | [norm_eq_zero](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/norm-eq-zero--effc15efb1424930b4fec80a.md) | 150 | `result-track:effc15efb1424930b4fec80a2aa232ae11b49202fd4d28c778e14f678b96073c` |
| 27 | `theorem` | [norm_pos](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/norm-pos--62e69e08e7ddfae8897b84be.md) | 152 | `result-track:62e69e08e7ddfae8897b84bef7bcd3807db89178092b80897764456a84fa57f1` |
| 28 | `theorem` | [abs_natCast_norm](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/abs-natcast-norm--19d602d2e608f9cae174e72d.md) | 155 | `result-track:19d602d2e608f9cae174e72dc97a06847cfc219cb9b89f78bc5b96395b6f0807` |
| 29 | `theorem` | [natCast_natAbs_norm](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/natcast-natabs-norm--5c6065c420012b453f017c93.md) | 158 | `result-track:5c6065c420012b453f017c937a7d33e6696127b6506c0ff1dde4af4fb87bf664` |
| 30 | `theorem` | [natAbs_norm_eq](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/natabs-norm-eq--d3855bfe604bcaaff2e845f5.md) | 162 | `result-track:d3855bfe604bcaaff2e845f5e936e94f87c531b3fd191c87db458e1d85fa9dc0` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/instance--8d113b7d09f4b63a976d4221.md) | 168 | `declaration-track:8d113b7d09f4b63a976d422100eee4dee8a26ea8aea19ae885c10df3b14db5b9` |
| 32 | `theorem` | [div_def](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/div-def--1039428cdc55bf1f8cc7d088.md) | 174 | `result-track:1039428cdc55bf1f8cc7d088ee4d9f2249aa08ed68e924c7e16cebf853d50283` |
| 33 | `theorem` | [toComplex_re_div](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-re-div--95ecfe483506a6907ae58743.md) | 178 | `result-track:95ecfe483506a6907ae58743d0570d426dc17626a9576cd8421a257d32e6da45` |
| 34 | `theorem` | [toComplex_im_div](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/tocomplex-im-div--a1b7746eba5044e6d18b78a8.md) | 182 | `result-track:a1b7746eba5044e6d18b78a8ca5ff0e62e2ad607042c451c62088bebaef8e7b6` |
| 35 | `theorem` | [normSq_le_normSq_of_re_le_of_im_le](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/normsq-le-normsq-of-re-le-of-im-le--ce43bacb4ea1725eebd477e3.md) | 186 | `result-track:ce43bacb4ea1725eebd477e3accefcea3fc82fd3633c904382fbb4025145e096` |
| 36 | `theorem` | [normSq_div_sub_div_lt_one](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/normsq-div-sub-div-lt-one--baa8fd4e79921e066b0439f3.md) | 191 | `result-track:baa8fd4e79921e066b0439f3188f39816676a517474c77bdba399a1846f5fa8a` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/instance--5f97fdb167018c83072416f2.md) | 206 | `declaration-track:5f97fdb167018c83072416f26deef82ab90abd18a0539cce641da4ed19ef8cf5` |
| 38 | `theorem` | [mod_def](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/mod-def--d3e55647fdd548884387d2b2.md) | 209 | `result-track:d3e55647fdd548884387d2b23691704796ac81dea33786b9dbf0a1d9f3d6bcb2` |
| 39 | `theorem` | [norm_mod_lt](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/norm-mod-lt--9cd7109113c890162f05127d.md) | 212 | `result-track:9cd7109113c890162f05127d7e4710cef81355ad1be4d4cb47662a5a9980677d` |
| 40 | `theorem` | [natAbs_norm_mod_lt](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/natabs-norm-mod-lt--f5c57730888a7422fa6106fe.md) | 223 | `result-track:f5c57730888a7422fa6106fef8e24303ffc03195cb531cec11e651cfd1b630ac` |
| 41 | `theorem` | [norm_le_norm_mul_left](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/norm-le-norm-mul-left--a1bd192fea0ffab63a787b70.md) | 227 | `result-track:a1bd192fea0ffab63a787b70f227b5683c95ac5e2227748d97e0bdc14669d956` |
| 42 | `instance` | [instNontrivial](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/instnontrivial--9ebd6146608fd5e28b18be99.md) | 234 | `declaration-track:9ebd6146608fd5e28b18be992c6f2aeb3b5fbf5b1c057fb181569fe0b494ecba` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/instance--152a7e6365eaadcdeb996a1f.md) | 237 | `declaration-track:152a7e6365eaadcdeb996a1f48c60eff69025d512e7226698be386adf1ef64c7` |
| 44 | `theorem` | [sq_add_sq_of_nat_prime_of_not_irreducible](../../../../mathematics/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/declarations/sq-add-sq-of-nat-prime-of-not-irreducible--09f044855462cfbf4fb1cbe3.md) | 251 | `result-track:09f044855462cfbf4fb1cbe360b55e1717ffe431ea85a37bf721a6c715045725` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
