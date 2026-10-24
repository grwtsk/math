# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a160c2f207c308b81b0121adedac6f24793dc3be",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a160c2f207c308b81b0121adedac6f24793dc3be`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Union` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Powerset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Lattice` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powerset--42a2934e17cb9066032e28e0.md) | 28 | `declaration-track:42a2934e17cb9066032e28e002c7160a979e00fe8ced1640ece6268e20b3210d` |
| 2 | `theorem` | [mem_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/mem-powerset--a67ed820877203243ac936d9.md) | 33 | `result-track:a67ed820877203243ac936d9de65270f18e134d359d83f2c8196cb94ea9af21b` |
| 3 | `theorem` | [coe_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/coe-powerset--07d767b17a4e904e57e57ee4.md) | 39 | `result-track:07d767b17a4e904e57e57ee4584486b9e903a07053ddefb310ffc50a099436fc` |
| 4 | `theorem` | [empty_mem_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/empty-mem-powerset--6dcdf4cda682716d85660dda.md) | 44 | `result-track:6dcdf4cda682716d85660dda360dbaf24a294bdeddd497bf2cb87f6322d6de8d` |
| 5 | `theorem` | [mem_powerset_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/mem-powerset-self--415b088766c98ce2e040706a.md) | 46 | `result-track:415b088766c98ce2e040706aeab6ebc075872f92867c6b6c522a34e14c68f21a` |
| 6 | `theorem` | [powerset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powerset-nonempty--e85844d66cc7ded43ca32f8a.md) | 49 | `result-track:e85844d66cc7ded43ca32f8a0c09bb6950f32226a61d1b5abd9294739c374de9` |
| 7 | `theorem` | [powerset_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powerset-mono--45499c753a07d960a0ad333c.md) | 53 | `result-track:45499c753a07d960a0ad333c40b63a6558e8109acc463c33b0744d95f7d3e1ec` |
| 8 | `theorem` | [powerset_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powerset-injective--7ccde923331adbe19ac87c47.md) | 57 | `result-track:7ccde923331adbe19ac87c47807e98f2a62adae5693da4e020534da3168d6f23` |
| 9 | `theorem` | [powerset_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powerset-inj--099d515354fa7210a5af1207.md) | 61 | `result-track:099d515354fa7210a5af12076373b4a51a4d10d600749000ce73aae0f905e27b` |
| 10 | `theorem` | [powerset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powerset-empty--e84af930b0b0b2df33707813.md) | 65 | `result-track:e84af930b0b0b2df33707813d781b004c7bfb56079ec88f9d9c8c89e50d2d1e8` |
| 11 | `theorem` | [powerset_eq_singleton_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powerset-eq-singleton-empty--eab56ac2acf323f2d04a3f30.md) | 69 | `result-track:eab56ac2acf323f2d04a3f3082d6469f97779d49e937f6cfb40b5423ed6cf00e` |
| 12 | `theorem` | [card_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/card-powerset--fa0eb8f6862907d7c0da12d0.md) | 74 | `result-track:fa0eb8f6862907d7c0da12d05c499bf5397f16d3c893697c23688371d37b6202` |
| 13 | `theorem` | [notMem_of_mem_powerset_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/notmem-of-mem-powerset-of-notmem--1cf06681a93ef7619ff58b88.md) | 77 | `result-track:1cf06681a93ef7619ff58b8857a182179a7ab6878fde1a6049bc78259c309b50` |
| 14 | `theorem` | [powerset_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powerset-insert--c019ea19b5ed9623293cae75.md) | 85 | `result-track:c019ea19b5ed9623293cae753b27f6ca927c66e7a9c12232fa27cb131f6f8405` |
| 15 | `lemma` | [pairwiseDisjoint_pair_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/pairwisedisjoint-pair-insert--a044cea4f3fcdc5787372094.md) | 101 | `result-track:a044cea4f3fcdc57873720945ee1f0631ad2a409d7b50f82b239d08af161eace` |
| 16 | `instance` | [decidableExistsOfDecidableSubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/decidableexistsofdecidablesubsets--1ca4135a10aeec3bc7f2c549.md) | 112 | `declaration-track:1ca4135a10aeec3bc7f2c5496418b485ed5a51cda3cb471405601340a5903af2` |
| 17 | `instance` | [decidableForallOfDecidableSubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/decidableforallofdecidablesubsets--3fdfef23d3b6f117f9abeba3.md) | 118 | `declaration-track:3fdfef23d3b6f117f9abeba328f715af3eaf24ae44325e3857c5a60cdcfb605d` |
| 18 | `instance` | [decidableExistsOfDecidableSubsets'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/decidableexistsofdecidablesubsets--e5aaf3819a25b9f1086f6685.md) | 124 | `declaration-track:e5aaf3819a25b9f1086f6685d06ab8be70eb85528bff7f657506c728d528c03e` |
| 19 | `instance` | [decidableForallOfDecidableSubsets'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/decidableforallofdecidablesubsets--db9e8ac328facb67f7a4fe21.md) | 129 | `declaration-track:db9e8ac328facb67f7a4fe2183a402ad9ee9f6a5cca6ac77032bc2aed5f0ae1c` |
| 20 | `def` | [ssubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/ssubsets--5e370ed6a7156ae5f4d6c80b.md) | 140 | `declaration-track:5e370ed6a7156ae5f4d6c80b19555daf0130fb780404ab1d5495b3ee47c01a2d` |
| 21 | `theorem` | [mem_ssubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/mem-ssubsets--2977b128196f9ddea5b4d04a.md) | 144 | `result-track:2977b128196f9ddea5b4d04a7d2187560445e9aa9a9f5e52c3287bab544e46e5` |
| 22 | `theorem` | [empty_mem_ssubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/empty-mem-ssubsets--e80be69ad06b876f78ab13b6.md) | 147 | `result-track:e80be69ad06b876f78ab13b6a15dfee0091fb78a30eef72691eb1fb6ca345be8` |
| 23 | `def` | [decidableExistsOfDecidableSSubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/decidableexistsofdecidablessubsets--b1ac07729cc62128b8fd9590.md) | 152 | `declaration-track:b1ac07729cc62128b8fd9590a6ad1ba4a1c2374103d5ca8d2a659af5a55a589f` |
| 24 | `def` | [decidableForallOfDecidableSSubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/decidableforallofdecidablessubsets--9cc0c4e882c3bc316a91f3a1.md) | 158 | `declaration-track:9cc0c4e882c3bc316a91f3a178aff48ef06c9605bb3fd3306630a40bab806d4b` |
| 25 | `def` | [decidableExistsOfDecidableSSubsets'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/decidableexistsofdecidablessubsets--6acc9aad0ec24b69a92ad84e.md) | 165 | `declaration-track:6acc9aad0ec24b69a92ad84e51b083bf97b255efc2dfb0a6aec7774f50c216cc` |
| 26 | `def` | [decidableForallOfDecidableSSubsets'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/decidableforallofdecidablessubsets--70cc7267a903ec4bbd2a6085.md) | 171 | `declaration-track:70cc7267a903ec4bbd2a60856a711f3f342e3d6ffe0a5ba100c6253f741ebd43` |
| 27 | `def` | [powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powersetcard--5fe31c40a44a26b98e5fa91a.md) | 182 | `declaration-track:5fe31c40a44a26b98e5fa91a338732538ab19bd4718998eebb84330b8e102ac5` |
| 28 | `lemma` | [mem_powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/mem-powersetcard--a362b5afd4f7f5891c7565cf.md) | 186 | `result-track:a362b5afd4f7f5891c7565cfc9a0849f3ab2a8d0bf9445fce8c611fca7d24a20` |
| 29 | `theorem` | [powersetCard_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powersetcard-mono--e26fb00f1dd6f6b1a7ba0637.md) | 190 | `result-track:e26fb00f1dd6f6b1a7ba0637562efbbec610f774b52067206c00a47f87b65959` |
| 30 | `theorem` | [card_powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/card-powersetcard--2f9eec1dd0e2cdaa45b6be5b.md) | 196 | `result-track:2f9eec1dd0e2cdaa45b6be5ba0678a14d79995c8813398588cb5689e0d9ac256` |
| 31 | `theorem` | [powersetCard_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powersetcard-zero--39531b2255dad01d4ff953ff.md) | 201 | `result-track:39531b2255dad01d4ff953ffb3a1eda050b2997628330fbb3c7bd2aa9fc14b68` |
| 32 | `lemma` | [powersetCard_empty_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powersetcard-empty-subsingleton--dd2aa6e5817207302e387ab0.md) | 208 | `result-track:dd2aa6e5817207302e387ab03d1842995a8d045e4faccb94d528bdef16e66ff9` |
| 33 | `theorem` | [map_val_val_powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/map-val-val-powersetcard--aa35fc228a7adb8878360b83.md) | 213 | `result-track:aa35fc228a7adb8878360b831c951daf65bc85fc1fc26983245f00df3efae60f` |
| 34 | `theorem` | [powersetCard_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powersetcard-one--d9d797df66f607c4d7d1837c.md) | 217 | `result-track:d9d797df66f607c4d7d1837c02c62fd6fe6b4a8ed22d014df5d799903379ce01` |
| 35 | `lemma` | [powersetCard_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powersetcard-eq-empty--d16f68738cb692364d10ca36.md) | 222 | `result-track:d16f68738cb692364d10ca36aeb4f832283412173f4771fc485a5b76c567d7d3` |
| 36 | `lemma` | [powersetCard_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powersetcard-card-add--82a613a7efd27f6261c62af8.md) | 227 | `result-track:82a613a7efd27f6261c62af862ca423a9a49d5e2d01369d7092e2b9d2b4086c3` |
| 37 | `theorem` | [powersetCard_eq_filter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powersetcard-eq-filter--2b5c41c6d0d3baea889912d3.md) | 230 | `result-track:2b5c41c6d0d3baea889912d3464f5ed289653b911fd87498186e09ded2d8e9c3` |
| 38 | `theorem` | [powersetCard_succ_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powersetcard-succ-insert--faf107a319c353be0bac15a6.md) | 235 | `result-track:faf107a319c353be0bac15a6d1b387d71a18028c1f381b0725d39a58e8b5af9c` |
| 39 | `lemma` | [powersetCard_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powersetcard-nonempty--dbe07c8e99df10bc9aa3930a.md) | 249 | `result-track:dbe07c8e99df10bc9aa3930a299480cbd17a0f67525ed73b2cc21a637aaf5f98` |
| 40 | `theorem` | [powersetCard_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powersetcard-self--87b2454cdbcb43691c05a482.md) | 256 | `result-track:87b2454cdbcb43691c05a4821440e505c1dc7715e86145b6ea8b79c227fae52c` |
| 41 | `theorem` | [pairwise_disjoint_powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/pairwise-disjoint-powersetcard--99196df6907e279754c554da.md) | 264 | `result-track:99196df6907e279754c554da0b988e6cf3558dff2880c6c7675f63984be548b2` |
| 42 | `theorem` | [powerset_card_disjiUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powerset-card-disjiunion--7dcb7471e8ef9937b1c0cd8a.md) | 269 | `result-track:7dcb7471e8ef9937b1c0cd8af75443e503bc80695ef44699e6c85075d242f16a` |
| 43 | `theorem` | [powerset_card_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powerset-card-biunion--2bf07346c4b22c82a7ddfd3e.md) | 281 | `result-track:2bf07346c4b22c82a7ddfd3e96b05f1dd4e7a87acc64d0f08760ae80e2fc05e1` |
| 44 | `theorem` | [powersetCard_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powersetcard-sup--115a8bfd8547145e66c5b1da.md) | 285 | `result-track:115a8bfd8547145e66c5b1da96cfd2913034fcf01bdd1a523009048ebe5a9a1b` |
| 45 | `theorem` | [powersetCard_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant4bd9fd8b97e5a4a895d8fb8bec11a6bfc0e038e669ca116de8af4cb3b193fc33.lean/declarations/powersetcard-map--74efbdc197dd54950b7d0e89.md) | 300 | `result-track:74efbdc197dd54950b7d0e89cf19f3052dc4d65bcd786049808de1f78b331a30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
