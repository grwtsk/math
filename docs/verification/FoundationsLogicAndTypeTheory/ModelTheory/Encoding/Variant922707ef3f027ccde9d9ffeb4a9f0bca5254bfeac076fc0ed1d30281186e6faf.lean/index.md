# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Encoding.Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ac4fb1a268703e7335bde941cd936a6404bfe64",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ac4fb1a268703e7335bde941cd936a6404bfe64`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean.json)

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
| 1 | `def` | [listEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/listencode--e2b3e5676359a2b7cf16e9f9.md) | 64 | `declaration-track:e2b3e5676359a2b7cf16e9f91eec27ca04791b31390c2bbaf17b3e35458344bc` |
| 2 | `def` | [listDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/listdecode--37a2b3dda2c1cce7eebbd090.md) | 70 | `declaration-track:37a2b3dda2c1cce7eebbd090ac0c69ad79fe9af6dc46f9088447af079a054960` |
| 3 | `theorem` | [listDecode_encode_list](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/listdecode-encode-list--6414753a9adbb2fef89c217d.md) | 78 | `result-track:6414753a9adbb2fef89c217d4a2e62872e7d11240ea0133198d6b70f1749eb33` |
| 4 | `def` | [encoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/encoding--01ccae9506de850fd9ed54e2.md) | 104 | `declaration-track:01ccae9506de850fd9ed54e26d2e8b317d42b2bfa07cc776b6960d8d9ce8c8b6` |
| 5 | `theorem` | [listEncode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/listencode-injective--e82ab7d5590f22cafb532e5e.md) | 113 | `result-track:e82ab7d5590f22cafb532e5e83704724305a514fe66d22759f4f008aebf6ccc2` |
| 6 | `theorem` | [card_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/card-le--d464bf482390c5a966c48da3.md) | 117 | `result-track:d464bf482390c5a966c48da33a35d51266158716d7251e25e4365110e28a37e8` |
| 7 | `theorem` | [card_sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/card-sigma--0151cd7aff4fd969de11f966.md) | 120 | `result-track:0151cd7aff4fd969de11f9663fadbb6bca674d2d4cbbdf5a66f61016c2c34d8c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/instance--591c33e547baaf52ad14a036.md) | 151 | `declaration-track:591c33e547baaf52ad14a03689212c6c4ccf81fafd2922a11adf627969cbd189` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/instance--949569fc486ea5ad7e9134c7.md) | 157 | `declaration-track:949569fc486ea5ad7e9134c70f8d316ed4dab08f060dc73f8ee9bab266507503` |
| 10 | `instance` | [small](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/small--63223056acd4c7c896ea1732.md) | 162 | `declaration-track:63223056acd4c7c896ea173231915a90b6294ad8cde35f83b75f3e65badfd560` |
| 11 | `def` | [listEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/listencode--e314a378ab94a7fda137032e.md) | 170 | `declaration-track:e314a378ab94a7fda137032e6df15a0ee04a055bf7c8622d1d70617e04b0623c` |
| 12 | `def` | [sigmaAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/sigmaall--55fa1b6ba182e43bab3fda5b.md) | 181 | `declaration-track:55fa1b6ba182e43bab3fda5b4dd23e6c7592ee030ff49dbe5e5f51687b6b396f` |
| 13 | `lemma` | [sigmaAll_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/sigmaall-apply--97229e183c99cee3123d741f.md) | 187 | `result-track:97229e183c99cee3123d741fd269b56614eaf4834103d041b3f8ae3e706e7178` |
| 14 | `def` | [sigmaImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/sigmaimp--7648334949d421ff8d44ef90.md) | 192 | `declaration-track:7648334949d421ff8d44ef9022090f35ca6a4953b08897c3a7bd3e0a06674d20` |
| 15 | `lemma` | [sigmaImp_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/sigmaimp-apply--69a2187ac0650146fa5cf4e4.md) | 197 | `result-track:69a2187ac0650146fa5cf4e41cd55e8161f186a8eef317d967daa7db138b4944` |
| 16 | `def` | [listDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/listdecode--d0d7c732624b2cbbf181ca7d.md) | 202 | `declaration-track:d0d7c732624b2cbbf181ca7d961bf8729664f1fadc0871c1f54b5db0d6098a55` |
| 17 | `theorem` | [listDecode_encode_list](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/listdecode-encode-list--1d597c9f5f235fcec98341bc.md) | 223 | `result-track:1d597c9f5f235fcec98341bc5d1df9ca323799cf7d412e45e0e82e3aa223a8da` |
| 18 | `def` | [encoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/encoding--677f837afe22865a86884352.md) | 285 | `declaration-track:677f837afe22865a868843526885d39e81e46684fec11469d62d5bbc38998c51` |
| 19 | `theorem` | [listEncode_sigma_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/listencode-sigma-injective--726f29ad87983673f4aa103c.md) | 295 | `result-track:726f29ad87983673f4aa103c7258ca2870fc1463183df95a74e9415da7968801` |
| 20 | `theorem` | [card_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/card-le--113c7d79dbeb7dfd1b3abf09.md) | 299 | `result-track:113c7d79dbeb7dfd1b3abf09d472dd2cfa2bab2e0ce95d74c6012b5d4f5d33e3` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/instance--cdbc88f493f6758245f5ad0f.md) | 313 | `declaration-track:cdbc88f493f6758245f5ad0f703eceed6266543f53d7644aae3d8f98ecdcc1b9` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/instance--fbb77ad76009a7e20655b80a.md) | 318 | `declaration-track:fbb77ad76009a7e20655b80add9412621270666b331a2d79fe110a4294532c80` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/instance--531a56d16cf2d8000d2e5ed9.md) | 325 | `declaration-track:531a56d16cf2d8000d2e5ed966683fd16c1e978c862adf76a73672ea21e98b12` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variant922707ef3f027ccde9d9ffeb4a9f0bca5254bfeac076fc0ed1d30281186e6faf.lean/declarations/instance--634dd485f528c732cae2f2fe.md) | 330 | `declaration-track:634dd485f528c732cae2f2fef59d2d22ec31e1d48c43e13e44611bd21822514e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
