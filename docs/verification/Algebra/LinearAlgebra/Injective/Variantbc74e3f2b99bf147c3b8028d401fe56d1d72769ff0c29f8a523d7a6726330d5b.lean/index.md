# Verification target: GRWTSK.Algebra.LinearAlgebra.Injective.Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "065854b94aab1689ac4ae5a99212a1e22d9e6bf0",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `065854b94aab1689ac4ae5a99212a1e22d9e6bf0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Injective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearPMap` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.TypeMax` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module.Injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/module-injective--8b60b5553c674debefa97d02.md) | 65 | `declaration-track:8b60b5553c674debefa97d02536566afdd71653705716f4ae14c46c000860925` |
| 2 | `theorem` | [Module.injective_object_of_injective_module](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/module-injective-object-of-injective-module--018eea49a49c548990a2469b.md) | 72 | `result-track:018eea49a49c548990a2469b5e35f7bda5e9b92678cc1898a526368373dbe779` |
| 3 | `theorem` | [Module.injective_module_of_injective_object](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/module-injective-module-of-injective-object--20648557604e889a7df86ae0.md) | 79 | `result-track:20648557604e889a7df86ae093b6fa09a71e6eefa63bd348c7fa6bd096f3fd8f` |
| 4 | `theorem` | [Module.injective_iff_injective_object](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/module-injective-iff-injective-object--b5889afc8cf91ac27fd0b157.md) | 90 | `result-track:b5889afc8cf91ac27fd0b157ab0aebc1b5027a407af8d682be17d2ce61eabd6e` |
| 5 | `def` | [Module.Baer](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/module-baer--0f751d2131f675263797a2c5.md) | 99 | `declaration-track:0f751d2131f675263797a2c5f824ea34f13b813c37ec762c7c19e53b6c135952` |
| 6 | `structure` | [ExtensionOf](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionof--49b48e0ca44cd575137b9421.md) | 113 | `declaration-track:49b48e0ca44cd575137b9421c6e58374b311dc6d22bc827527b7cb5c5bdbaf5c` |
| 7 | `theorem` | [ExtensionOf.ext](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionof-ext--235a11b13b39911d1819ebf4.md) | 124 | `result-track:235a11b13b39911d1819ebf44093678f248f92e9dfcb115a239853eb60fcc73c` |
| 8 | `theorem` | [ExtensionOf.ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionof-ext-iff--f460717786397a7eaf37aee2.md) | 135 | `result-track:f460717786397a7eaf37aee2355db12ab3a8aa3c9ee9c4725fd3da6c69e8b56d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/instance--68e3e5d44d1061d46cae86b1.md) | 145 | `declaration-track:68e3e5d44d1061d46cae86b107f7ca08db969616b07d91c21b760cf46f5ac711` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/instance--5ce50eaa59aef16fc7ec1f38.md) | 157 | `declaration-track:5ce50eaa59aef16fc7ec1f38816004f21181f88b3e8a95c23c56c138018038b8` |
| 11 | `theorem` | [chain_linearPMap_of_chain_extensionOf](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/chain-linearpmap-of-chain-extensionof--909f37a7b3adfaaf255f182f.md) | 175 | `result-track:909f37a7b3adfaaf255f182f6f1c0781184e26bf978a3ec1bb564f49d2144cdb` |
| 12 | `def` | [ExtensionOf.max](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionof-max--0576d17b38a27c89a4123d69.md) | 184 | `declaration-track:0576d17b38a27c89a4123d69dd9e6d077b21ea5186cc2b09cd50eb1169fdfd05` |
| 13 | `theorem` | [ExtensionOf.le_max](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionof-le-max--763e7711636005b2dcf76846.md) | 208 | `result-track:763e7711636005b2dcf76846ec2b91d44b7e645c1a0fc897e385b088a9105da4` |
| 14 | `instance` | [ExtensionOf.inhabited](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionof-inhabited--f39e180189e6454a91b79d1f.md) | 218 | `declaration-track:f39e180189e6454a91b79d1f35baf9ef4b0ab40a3316350289ba778b10e5c28b` |
| 15 | `def` | [extensionOfMax](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmax--d6893693bf7d559726336bc2.md) | 245 | `declaration-track:d6893693bf7d559726336bc26e4884c2e0ac7da4a90b1b5625f45cfa52ad1439` |
| 16 | `theorem` | [extensionOfMax_is_max](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmax-is-max--d287b89c7650e7e7b841a1ba.md) | 251 | `result-track:d287b89c7650e7e7b841a1ba0d617b4e04e01f7a46da10d54afc66601ebbf222` |
| 17 | `def` | [supExtensionOfMaxSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/supextensionofmaxsingleton--7698006e9780f1017cbed212.md) | 261 | `declaration-track:7698006e9780f1017cbed2127191b1689d8b10d38bbdae49f6d8577f76166ad2` |
| 18 | `theorem` | [extensionOfMax_adjoin.aux1](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmax-adjoin-aux1--fb22c436d88cb61b1d97dd09.md) | 266 | `result-track:fb22c436d88cb61b1d97dd09a8677db540b005c4a4e7573943c6551f86ea0017` |
| 19 | `def` | [ExtensionOfMaxAdjoin.fst](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmaxadjoin-fst--045a6816fa4d0404adbb6a6e.md) | 279 | `declaration-track:045a6816fa4d0404adbb6a6e61dee4a440d2fe1e5ae066a67d9271b7d7555ce9` |
| 20 | `def` | [ExtensionOfMaxAdjoin.snd](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmaxadjoin-snd--e7193876411f664e68b419a2.md) | 286 | `declaration-track:e7193876411f664e68b419a23bc7bc8723a1fdae672d53c2aa8c8c125f2d179f` |
| 21 | `theorem` | [ExtensionOfMaxAdjoin.eqn](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmaxadjoin-eqn--77f6e2dad9bf8d8cf646ccb8.md) | 291 | `result-track:77f6e2dad9bf8d8cf646ccb8d8dd31ba81024cb98179c5cdfff4ed70cc18b9d6` |
| 22 | `def` | [ExtensionOfMaxAdjoin.ideal](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmaxadjoin-ideal--d2b23934f1d681f6ee92dec2.md) | 301 | `declaration-track:d2b23934f1d681f6ee92dec2c191d5df3b64756c81846b145faeaafd20333e26` |
| 23 | `def` | [ExtensionOfMaxAdjoin.idealTo](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmaxadjoin-idealto--2b9ea6eef2f2f91c3d5d4007.md) | 307 | `declaration-track:2b9ea6eef2f2f91c3d5d40073b9fc9e612ec9142af4aa55f9ab5c4d862415b72` |
| 24 | `def` | [ExtensionOfMaxAdjoin.extendIdealTo](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmaxadjoin-extendidealto--37319dbec77e359c1b837f17.md) | 324 | `declaration-track:37319dbec77e359c1b837f17ba7570be26b30c36137afab256278c6e39466f52` |
| 25 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_is_extension](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmaxadjoin-extendidealto-is-extension--8d37525f4274b822e68fd446.md) | 329 | `result-track:8d37525f4274b822e68fd44623a45ef334615ee0e3042f4cfccaa1b4f9ea6c2f` |
| 26 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_wd'](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmaxadjoin-extendidealto-wd--70bfb53d7eede3c8cc2891ec.md) | 336 | `result-track:70bfb53d7eede3c8cc2891ecb4ea53228df883797e8a916bb2e9bc2cfc728e94` |
| 27 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_wd](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmaxadjoin-extendidealto-wd--9e9e27af53689e24fdc15922.md) | 349 | `result-track:9e9e27af53689e24fdc1592240acc5d92d3435e243f754e83bd82cdb10ad2f15` |
| 28 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_eq](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmaxadjoin-extendidealto-eq--773210b038c2db5cb1d02f07.md) | 358 | `result-track:773210b038c2db5cb1d02f07b13e894bf3541fbabaab157f6d1d054af4d0cf0d` |
| 29 | `def` | [ExtensionOfMaxAdjoin.extensionToFun](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmaxadjoin-extensiontofun--28cff5ce21e669863c85a38e.md) | 369 | `declaration-track:28cff5ce21e669863c85a38ee88d71ef37ebcc8d3eb4f05f5fbc472fca1e3c7c` |
| 30 | `theorem` | [ExtensionOfMaxAdjoin.extensionToFun_wd](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmaxadjoin-extensiontofun-wd--bd5a0dee929bcd112362378b.md) | 376 | `result-track:bd5a0dee929bcd112362378b8eb32578ea65dd83196a1d1f8ff1e9dd30b1fb55` |
| 31 | `def` | [extensionOfMaxAdjoin](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmaxadjoin--2824d1f23f321ee3f0167a67.md) | 402 | `declaration-track:2824d1f23f321ee3f0167a675f4af7c2ededcd4a396eb019c662b123922d00d2` |
| 32 | `theorem` | [extensionOfMax_le](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmax-le--9202e4e5c61adfeb7d225414.md) | 436 | `result-track:9202e4e5c61adfeb7d225414acd74dff00ac3285a4d1a46140397570412c4e2c` |
| 33 | `theorem` | [extensionOfMax_to_submodule_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/extensionofmax-to-submodule-eq-top--d8c5a237bbcc7f1ee7d198df.md) | 446 | `result-track:d8c5a237bbcc7f1ee7d198dfb010bc4a534cff44620c486425b421b6cdf2da1d` |
| 34 | `theorem` | [injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/declarations/injective--56390592d8f2609604c89040.md) | 458 | `result-track:56390592d8f2609604c8904003372cbbdc11f22cc7089ff131bb13bc47b50377` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
