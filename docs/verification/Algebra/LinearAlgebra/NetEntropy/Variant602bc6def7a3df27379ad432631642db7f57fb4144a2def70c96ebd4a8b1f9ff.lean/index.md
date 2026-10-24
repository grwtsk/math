# Verification target: GRWTSK.Algebra.LinearAlgebra.NetEntropy.Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b33af122a73027f6721a0e16d69f4d50bb08206",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b33af122a73027f6721a0e16d69f4d50bb08206`.

Source path: `GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean.json)

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
| 1 | `def` | [IsDynNetIn](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/isdynnetin--ac462a5e7ac2b8d4e864fca7.md) | 77 | `declaration-track:ac462a5e7ac2b8d4e864fca7be82ef23c397c46cef42e8e34404b4c82c2032cb` |
| 2 | `lemma` | [IsDynNetIn.of_le](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/isdynnetin-of-le--b54c5abe516670b8e9c571ad.md) | 80 | `result-track:b54c5abe516670b8e9c571ad96190e051fdd15b47661fcb4a8a99ddc0dfa5b9c` |
| 3 | `lemma` | [IsDynNetIn.of_entourage_subset](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/isdynnetin-of-entourage-subset--580cf05f30a71a9f7fe8796e.md) | 83 | `result-track:580cf05f30a71a9f7fe8796e4c9a216e8bfbd444a55d769d0a7b5c40098b81fb` |
| 4 | `lemma` | [isDynNetIn_empty](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/isdynnetin-empty--5138ff16433e62d4c4c4660c.md) | 87 | `result-track:5138ff16433e62d4c4c4660c3494ffdffd5a108210867d91b882b5173cc0ad32` |
| 5 | `lemma` | [isDynNetIn_singleton](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/isdynnetin-singleton--a9d1d52e93cdb3b18476a3ea.md) | 89 | `result-track:a9d1d52e93cdb3b18476a3ea822951b1387e1292112f9600900acfbfab7b213e` |
| 6 | `lemma` | [IsDynNetIn.card_le_card_of_isDynCoverOf](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/isdynnetin-card-le-card-of-isdyncoverof--8b6eec2f98f8cfe92644092c.md) | 96 | `result-track:8b6eec2f98f8cfe92644092c4445408c442dfbc082ad6271c6a8baa42a28f64e` |
| 7 | `def` | [netMaxcard](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netmaxcard--7a527002c7a27cf18d6095ad.md) | 110 | `declaration-track:7a527002c7a27cf18d6095adb351569af854386e23870e6454c11710200eba22` |
| 8 | `lemma` | [IsDynNetIn.card_le_netMaxcard](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/isdynnetin-card-le-netmaxcard--293352b187a5703cb6ef0d67.md) | 113 | `result-track:293352b187a5703cb6ef0d67b4895b03bce96472b01a1721f89c2100a904e8ca` |
| 9 | `lemma` | [netMaxcard_monotone_time](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netmaxcard-monotone-time--633fe48da7791fd6dbf21e8f.md) | 117 | `result-track:633fe48da7791fd6dbf21e8f71f98dbff269bd5eaa5371b021c5c99f168fd72b` |
| 10 | `lemma` | [netMaxcard_antitone](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netmaxcard-antitone--7400fd17987e05f9beed7825.md) | 121 | `result-track:7400fd17987e05f9beed7825810868774e75b327d5926d221096ce22f2ade165` |
| 11 | `lemma` | [netMaxcard_finite_iff](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netmaxcard-finite-iff--192c0adfc8934e24115624db.md) | 125 | `result-track:192c0adfc8934e24115624dbe4481542773b24d7a50440a1e9fa1140b4e80fd7` |
| 12 | `lemma` | [netMaxcard_empty](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netmaxcard-empty--c6dc5189533855cd7d313331.md) | 161 | `result-track:c6dc5189533855cd7d313331d3d5ec77fec18bc2a24081d1d32d4fde6e70d92e` |
| 13 | `lemma` | [netMaxcard_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netmaxcard-eq-zero-iff--3a1de29925c1c9a62a444345.md) | 168 | `result-track:3a1de29925c1c9a62a4443455a356e489db0c40076be0b26b2a0ac34bee2d61a` |
| 14 | `lemma` | [one_le_netMaxcard_iff](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/one-le-netmaxcard-iff--d674a170086588fb4568ac1f.md) | 179 | `result-track:d674a170086588fb4568ac1f76fcd14497e81a747b14c816d734af0fd38a7743` |
| 15 | `lemma` | [netMaxcard_zero](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netmaxcard-zero--42d1edc6422c2c8880447985.md) | 184 | `result-track:42d1edc6422c2c888044798593b82bc1371bbfee9e12784d774c7ffe6066eea1` |
| 16 | `lemma` | [netMaxcard_univ](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netmaxcard-univ--406b9b81b49165270ca6ce61.md) | 192 | `result-track:406b9b81b49165270ca6ce613ab4a3a4e7cd0ae04b048ce68fad72baef3f14dd` |
| 17 | `lemma` | [netMaxcard_infinite_iff](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netmaxcard-infinite-iff--f5b9a9ddc163825879a285d0.md) | 200 | `result-track:f5b9a9ddc163825879a285d090bbc2f1214ce8d9d8f712574b13278b80438955` |
| 18 | `lemma` | [netMaxcard_le_coverMincard](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netmaxcard-le-covermincard--cbedb7490d2420a20f41e3aa.md) | 216 | `result-track:cbedb7490d2420a20f41e3aa58ae8439e9d1dd133c2a5ded1f5bf204423d694b` |
| 19 | `lemma` | [coverMincard_le_netMaxcard](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/covermincard-le-netmaxcard--ea6e63fcd1c4ac75ee0d636f.md) | 227 | `result-track:ea6e63fcd1c4ac75ee0d636fa5108b9d893cc27ab6d1c0a6d49801894da4d083` |
| 20 | `def` | [netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyentourage--5ad058a4a86760e2ad2b7e55.md) | 261 | `declaration-track:5ad058a4a86760e2ad2b7e559c7e8d304aa364f8cc00361f6534c42a882eeafb` |
| 21 | `def` | [netEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyinfentourage--89b615f7e85fad9c2c24f4e6.md) | 267 | `declaration-track:89b615f7e85fad9c2c24f4e63e572d1c21c9279809f9e96a37911096e165dc91` |
| 22 | `lemma` | [netEntropyInfEntourage_antitone](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyinfentourage-antitone--d9387d5723f7e0fc771606d4.md) | 270 | `result-track:d9387d5723f7e0fc771606d4ade7a00fdd11cc560fc38ebdf26da3a58a3ca696` |
| 23 | `lemma` | [netEntropyEntourage_antitone](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyentourage-antitone--7fa571568070a025a561b09d.md) | 274 | `result-track:7fa571568070a025a561b09de67f06491e09fc8b754288a8901db6cb1b4612f3` |
| 24 | `lemma` | [netEntropyInfEntourage_le_netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyinfentourage-le-netentropyentourage--291dd7ad725f8517bd009bde.md) | 278 | `result-track:291dd7ad725f8517bd009bde073c6d18c260f8bb3682b2f40fc9d7e7a79ed4a3` |
| 25 | `lemma` | [netEntropyEntourage_empty](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyentourage-empty--0fc6af5282826ddf78d2dc13.md) | 283 | `result-track:0fc6af5282826ddf78d2dc13782c752ebf911e392fd1e907aef5a46c4a2b05fe` |
| 26 | `lemma` | [netEntropyInfEntourage_empty](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyinfentourage-empty--3e8fc165988c52e738c9519b.md) | 289 | `result-track:3e8fc165988c52e738c9519b96985ed4a2c97142cb74bceaf59f6081cbd72735` |
| 27 | `lemma` | [netEntropyInfEntourage_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyinfentourage-nonneg--7ff3136fe7e54bfe50340702.md) | 292 | `result-track:7ff3136fe7e54bfe50340702d95a49193eb21f6e339bef5c0a7b37e84da105fd` |
| 28 | `lemma` | [netEntropyEntourage_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyentourage-nonneg--28c0c3c3875982bc809d4597.md) | 301 | `result-track:28c0c3c3875982bc809d4597c1abec576adbabf0aaba7990504facd6d6e98f9a` |
| 29 | `lemma` | [netEntropyInfEntourage_univ](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyinfentourage-univ--6827b80e15f8e0a8c91d47d4.md) | 305 | `result-track:6827b80e15f8e0a8c91d47d4f6336e8dac165e2fc9845d89fba23d637d3fd2cf` |
| 30 | `lemma` | [netEntropyEntourage_univ](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyentourage-univ--825eeb03426c33db826f5644.md) | 310 | `result-track:825eeb03426c33db826f56441f29b6e5dd7236ded7261380436bf70f0096df7b` |
| 31 | `lemma` | [netEntropyInfEntourage_le_coverEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyinfentourage-le-coverentropyinfentourage--bbafb50c9e119d5a49a1ab1a.md) | 315 | `result-track:bbafb50c9e119d5a49a1ab1aa50e70dc2f17e76b58f6b3c1ac9a8aa12d73c64a` |
| 32 | `lemma` | [coverEntropyInfEntourage_le_netEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/coverentropyinfentourage-le-netentropyinfentourage--ec06427a27e727e759682dbc.md) | 319 | `result-track:ec06427a27e727e759682dbc6c2ae8db4161349c6db184921c56f1b5d9f48c2d` |
| 33 | `lemma` | [netEntropyEntourage_le_coverEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyentourage-le-coverentropyentourage--4e216931c9950897700e4a6b.md) | 324 | `result-track:4e216931c9950897700e4a6bfa1af7821fb6fa019899becb191f4f15141ed260` |
| 34 | `lemma` | [coverEntropyEntourage_le_netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/coverentropyentourage-le-netentropyentourage--0d459a41ac3f537a9022a34d.md) | 328 | `result-track:0d459a41ac3f537a9022a34da709fae2bef0ae929819daef84597325e28f11b1` |
| 35 | `theorem` | [coverEntropyInf_eq_iSup_netEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/coverentropyinf-eq-isup-netentropyinfentourage--8b143fc469bf93f02de2ca1d.md) | 340 | `result-track:8b143fc469bf93f02de2ca1dbe5ed05746c54d1a29d1998a8a42b2c28947bb67` |
| 36 | `theorem` | [coverEntropy_eq_iSup_netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/coverentropy-eq-isup-netentropyentourage--a6079bd27cf5b208704da9db.md) | 355 | `result-track:a6079bd27cf5b208704da9dbd0b0bed603887b733b9906970f18d72de1003bf1` |
| 37 | `lemma` | [coverEntropyInf_eq_iSup_basis_netEntropyInfEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/coverentropyinf-eq-isup-basis-netentropyinfentourage--a3b95a9f1dd0b34f9c99c902.md) | 366 | `result-track:a3b95a9f1dd0b34f9c99c902baefcac0400c789086140728fc4e78fc7f88010d` |
| 38 | `lemma` | [coverEntropy_eq_iSup_basis_netEntropyEntourage](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/coverentropy-eq-isup-basis-netentropyentourage--036646d6386e72e114fcda0e.md) | 376 | `result-track:036646d6386e72e114fcda0e296ca9fe16c6986d1772012ba7f99219a06ccea5` |
| 39 | `lemma` | [netEntropyInfEntourage_le_coverEntropyInf](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyinfentourage-le-coverentropyinf--709ba2aaa7d4efdbc42fb93a.md) | 386 | `result-track:709ba2aaa7d4efdbc42fb93a76bcc69d99f207dae6cfd1ea0f0d6dbc29b574fb` |
| 40 | `lemma` | [netEntropyEntourage_le_coverEntropy](../../../../../mathematics/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/declarations/netentropyentourage-le-coverentropy--c2f20327cf737bb6c4d8311a.md) | 391 | `result-track:c2f20327cf737bb6c4d8311aeaa1d2adc7fd3f3ddd9e2f8de37be4074ede4bc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
