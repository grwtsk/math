# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Ordinal.Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfed7a715b4387b6360c31df6584d5bb51eac559",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfed7a715b4387b6360c31df6584d5bb51eac559`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Char.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Char.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Grind` — import line 13; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Int.OfNat` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Simproc` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.UInt.Lemmas` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [numSurrogates](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/numsurrogates--d390fcbfbd82a891a392c089.md) | 42 | `declaration-track:d390fcbfbd82a891a392c089b3faa3519ff718ff5682c3a6706a9dd65d78f0ba` |
| 2 | `abbrev` | [numCodePoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/numcodepoints--f10c639c41484a9c26e0008e.md) | 47 | `declaration-track:f10c639c41484a9c26e0008e039e3df47b2c08055d52636ff7c51f65cd768e03` |
| 3 | `def` | [ordinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/ordinal--df81a8826b10747cd9f83759.md) | 57 | `declaration-track:df81a8826b10747cd9f837590e75ad60b1b1af21a34411a79a081449d61976f0` |
| 4 | `def` | [ofOrdinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/ofordinal--5bfe7357a79744577082523a.md) | 69 | `declaration-track:5bfe7357a79744577082523aa54b7485a262989198b7f6ee72136d3ae622d91b` |
| 5 | `def` | [succ?](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/succ--ca5fd2feaf0cc467342e158a.md) | 82 | `declaration-track:ca5fd2feaf0cc467342e158a88d6b1d31fb51828224a1ddea8342114b9b1bbbc` |
| 6 | `def` | [succMany?](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/succmany--2e75346660298161d511da9e.md) | 101 | `declaration-track:2e75346660298161d511da9e8cdbf8d1fdc6660bf0ef3c0602bbf49a8dfa4583` |
| 7 | `theorem` | [coe_ordinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/coe-ordinal--ea77496134e6e610392addc1.md) | 105 | `result-track:ea77496134e6e610392addc123d67f4ef9c15c3d882b64c233c032200f474f0e` |
| 8 | `theorem` | [ordinal_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/ordinal-zero--2c09d63f57c21651691bb1a8.md) | 114 | `result-track:2c09d63f57c21651691bb1a826657199326c3f00b4a99c833c9d7b995123072a` |
| 9 | `theorem` | [val_ofOrdinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/val-ofordinal--2fd693676c4e51e851626c6d.md) | 119 | `result-track:2fd693676c4e51e851626c6d53aed91243d8c5217c398625a5f9eb921f48a651` |
| 10 | `theorem` | [ofOrdinal_ordinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/ofordinal-ordinal--d54f2f897cf9a7320a6436de.md) | 128 | `result-track:d54f2f897cf9a7320a6436dee1271d5a02896ef6b7e81d85b13ac66bc8bcb2ba` |
| 11 | `theorem` | [ordinal_ofOrdinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/ordinal-ofordinal--cd5f1c596f10b1d4b1317c52.md) | 139 | `result-track:cd5f1c596f10b1d4b1317c52e8dd5ac7bc1c4e20e13eed0dbd2d92cfdae03950` |
| 12 | `theorem` | [ordinal_comp_ofOrdinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/ordinal-comp-ofordinal--d6879a793b977247f10d285c.md) | 153 | `result-track:d6879a793b977247f10d285ce1d4d2c1ca5afcc47378443013835bcc1d3faf46` |
| 13 | `theorem` | [ofOrdinal_comp_ordinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/ofordinal-comp-ordinal--48a975860cd18bcca1f59449.md) | 157 | `result-track:48a975860cd18bcca1f5944990b873fa4bfd8159c56cc54af969ce5fffdc7ca5` |
| 14 | `theorem` | [ordinal_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/ordinal-inj--43af7228da624831fcf8260a.md) | 161 | `result-track:43af7228da624831fcf8260a4fc77d8fdc84e40e1b3edf613aa9cdc9f3e88601` |
| 15 | `theorem` | [ordinal_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/ordinal-injective--dd42627a157745e5b33eb109.md) | 164 | `result-track:dd42627a157745e5b33eb109a1af1cac16679aedb0202430e738f116726d347c` |
| 16 | `theorem` | [ofOrdinal_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/ofordinal-inj--f45882712317e5f676163aa6.md) | 168 | `result-track:f45882712317e5f676163aa68476c7264bd51e053eb863914ef313f900806db4` |
| 17 | `theorem` | [ofOrdinal_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/ofordinal-injective--4f6ef096e7ef77a11f3b205a.md) | 172 | `result-track:4f6ef096e7ef77a11f3b205a1b3c6cdf9996d9a44cd1711f79b69b4dc24e6662` |
| 18 | `theorem` | [ordinal_le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/ordinal-le-of-le--ddaff2f0f2357b311c2b903a.md) | 175 | `result-track:ddaff2f0f2357b311c2b903a3c388ca6156460b2bcb77b0a9998637a5429cd6c` |
| 19 | `theorem` | [ofOrdinal_le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/ofordinal-le-of-le--b649bf3a1d58126d570a8678.md) | 180 | `result-track:b649bf3a1d58126d570a8678a485c063fa7f1d1c88c22cda62069c26ea048de2` |
| 20 | `theorem` | [le_iff_ordinal_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/le-iff-ordinal-le--c7a2dad2bf3515967c6028d1.md) | 195 | `result-track:c7a2dad2bf3515967c6028d136eaa5f612e9dd5664a89a82ec64774b5e0945c0` |
| 21 | `theorem` | [le_iff_ofOrdinal_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/le-iff-ofordinal-le--8e71aa0c9790308d0d8d02c7.md) | 198 | `result-track:8e71aa0c9790308d0d8d02c777d49d8649ce47b154da3377150bd9422aa368a6` |
| 22 | `theorem` | [lt_iff_ordinal_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/lt-iff-ordinal-lt--a2ab95751f12bacdb6dde3af.md) | 202 | `result-track:a2ab95751f12bacdb6dde3afd99b36170dcfe61c041b4d5a9293520d9d86f519` |
| 23 | `theorem` | [lt_iff_ofOrdinal_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/lt-iff-ofordinal-lt--8321ea57b3930bfc2719871d.md) | 205 | `result-track:8321ea57b3930bfc2719871d2b8c9c7e3e04b7ab067484cf7b5756450d85c1d2` |
| 24 | `theorem` | [succ?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/succ-eq--262862ec7ac0631c89723cd1.md) | 209 | `result-track:262862ec7ac0631c89723cd1eb794f9d9f8ac23284b8d922fd47cbbd45b2c0f3` |
| 25 | `theorem` | [map_ordinal_succ?](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/map-ordinal-succ--70cbdb8475db736a52141ee1.md) | 242 | `result-track:70cbdb8475db736a52141ee13c6f3c5bc9e26e6922331b5a30f3ca579a2a3a51` |
| 26 | `theorem` | [succMany?_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant499dbd87531a51bcf0c43a93f7df53b5e0a980008ca500bf7f636d4e99f1b2c1.lean/declarations/succmany-eq--ac1883f417cdbef409ded4c9.md) | 245 | `result-track:ac1883f417cdbef409ded4c93d845590816d0f7f2cd9a239b25f6da7676b88e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
