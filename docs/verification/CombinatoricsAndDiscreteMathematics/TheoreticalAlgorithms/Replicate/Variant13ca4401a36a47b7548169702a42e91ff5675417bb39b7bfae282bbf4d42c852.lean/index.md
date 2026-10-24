# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Replicate.Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a71a87aec6b169058f6d76c4f7f5d6dbed3d0023",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a71a87aec6b169058f6d76c4f7f5d6dbed3d0023`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.AddSub` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/replicate--d99420f41be69507abbeaa88.md) | 31 | `declaration-track:d99420f41be69507abbeaa88d403edbca655e8c7920c7a638d812ebb9459cb0a` |
| 2 | `theorem` | [coe_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/coe-replicate--31e2f7ac763613ba8a552a6c.md) | 34 | `result-track:31e2f7ac763613ba8a552a6c264f844561068708efa6eb7ca6bd7b6a11671e3b` |
| 3 | `theorem` | [replicate_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/replicate-zero--85227404601367021a54787e.md) | 36 | `result-track:85227404601367021a54787ec2fbf52b42b3f500774249df3529926ff1295d9a` |
| 4 | `theorem` | [replicate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/replicate-succ--7c69f8ed4389fc8dcbe50ea1.md) | 38 | `result-track:7c69f8ed4389fc8dcbe50ea1e3ce5d2f77b82bc8c17b526abf9bf03167a78ab4` |
| 5 | `theorem` | [replicate_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/replicate-add--dd08777e6a29ad7014892f26.md) | 40 | `result-track:dd08777e6a29ad7014892f2627221eac0b8d11568953bf9794b1e8fa9a98c269` |
| 6 | `theorem` | [replicate_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/replicate-one--1ae69a043a53909c1a7949bf.md) | 43 | `result-track:1ae69a043a53909c1a7949bfc36f8e96e1f5544b74418eb9ac1af6ae63ad5e08` |
| 7 | `theorem` | [card_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/card-replicate--73de88bb77e88d65d81d09ca.md) | 45 | `result-track:73de88bb77e88d65d81d09ca3951239cf33cb004bcfbfc7c0987e9d1454c2619` |
| 8 | `theorem` | [mem_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/mem-replicate--cc4d969108f7d70409e2263e.md) | 48 | `result-track:cc4d969108f7d70409e2263e947ecc3529c58e2c8d2c48066349d133754146bf` |
| 9 | `theorem` | [eq_of_mem_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/eq-of-mem-replicate--3ae655897965ba8b23ae7e65.md) | 51 | `result-track:3ae655897965ba8b23ae7e650d79824052b673e99fbc084e4fb663855c43d742` |
| 10 | `theorem` | [eq_replicate_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/eq-replicate-card--089fab297c784e92baa953a2.md) | 54 | `result-track:089fab297c784e92baa953a2a225b46e00a587663660e63f73512f9ff09788f1` |
| 11 | `theorem` | [eq_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/eq-replicate--79de6a12a37f69af92659bf5.md) | 59 | `result-track:79de6a12a37f69af92659bf5e758d4b1e9d14171a2201a74a808ba64bc6ed1e3` |
| 12 | `theorem` | [replicate_right_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/replicate-right-injective--74f2e48b4e75ffe037071ccb.md) | 64 | `result-track:74f2e48b4e75ffe037071ccb66d38591985bd9d1755d318408e3bcd1bc49c536` |
| 13 | `theorem` | [replicate_right_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/replicate-right-inj--fcb285fb72a80ed0aa8a06e7.md) | 67 | `result-track:fcb285fb72a80ed0aa8a06e7b0cec1c00f0c33ed34dd19083c37ed5428c04f01` |
| 14 | `theorem` | [replicate_left_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/replicate-left-injective--e305fb128064aee86d4d081b.md) | 71 | `result-track:e305fb128064aee86d4d081b3d3fca706a2c888c5d46ef4bf1cb5bf16bc65c2b` |
| 15 | `theorem` | [replicate_subset_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/replicate-subset-singleton--1e8d43af6770d1b063e0a198.md) | 74 | `result-track:1e8d43af6770d1b063e0a1989d03e09341dbf6d7aaef9d41df115c4b495bcb86` |
| 16 | `theorem` | [replicate_le_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/replicate-le-coe--371f9c4f738e6afd75e05e7a.md) | 77 | `result-track:371f9c4f738e6afd75e05e7a3ce8491046d4006678dc63ae50603b83c370adf9` |
| 17 | `theorem` | [replicate_le_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/replicate-le-replicate--df3b82c577598d431fd162de.md) | 80 | `result-track:df3b82c577598d431fd162dea107546bc7c59abed6343cdeb8aa9dc78b9426f2` |
| 18 | `theorem` | [replicate_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/replicate-mono--d2ae89e29b2776e7bb78678b.md) | 84 | `result-track:d2ae89e29b2776e7bb78678bab13a966985a9b4f85c9c4710b305745fffbe366` |
| 19 | `theorem` | [le_replicate_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/le-replicate-iff--0efb5c18c1c12c8749c070f9.md) | 87 | `result-track:0efb5c18c1c12c8749c070f915dbc6c88b001872786adbbc33f7b7dc260bd67d` |
| 20 | `theorem` | [lt_replicate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/lt-replicate-succ--e6aac3e815069dfce21de032.md) | 93 | `result-track:e6aac3e815069dfce21de032f63eaac5b2d4a0396ece13d1bc21d47272d75b63` |
| 21 | `theorem` | [count_replicate_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/count-replicate-self--31ddaaaeff46ed2865962f77.md) | 111 | `result-track:31ddaaaeff46ed2865962f7724bbf68145f2342700d9db5c680d8c7031b8883b` |
| 22 | `theorem` | [count_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/count-replicate--da65692a440a4d736b59e9e9.md) | 115 | `result-track:da65692a440a4d736b59e9e9fa27c4b1d73759f31f596c4ff045ac5c472d0fae` |
| 23 | `theorem` | [le_count_iff_replicate_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/le-count-iff-replicate-le--d0573432155672eb600b4150.md) | 120 | `result-track:d0573432155672eb600b4150e1799e3341e0741f0733dd8cb63b6ae92875bd98` |
| 24 | `theorem` | [rel_replicate_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/rel-replicate-left--585ed4ed78ce4902ce532218.md) | 134 | `result-track:585ed4ed78ce4902ce5322188558d5a01c0009e91a95c0cc6237e427dd0a7ecc` |
| 25 | `theorem` | [rel_replicate_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/rel-replicate-right--b2d323f93271d759d5624a09.md) | 144 | `result-track:b2d323f93271d759d5624a092967256ea0389979944132647f17dcae50ed9e62` |
| 26 | `theorem` | [nodup_iff_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/nodup-iff-le--f152afb8dfa9b84ed64f7849.md) | 154 | `result-track:f152afb8dfa9b84ed64f7849fcd9d4973e789f8e0328e3a3ded26948ef3cf8e5` |
| 27 | `theorem` | [nodup_iff_ne_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/nodup-iff-ne-cons-cons--c650e70ef8043679e09f38d5.md) | 158 | `result-track:c650e70ef8043679e09f38d5f39411db80ce053c9290bd656211de7360b055bc` |
| 28 | `theorem` | [nodup_iff_pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/nodup-iff-pairwise--a87b7094f7c91de0b5d8d015.md) | 164 | `result-track:a87b7094f7c91de0b5d8d0157bf0e2534cc6ba533890a221b3c771fdc2baff2c` |
| 29 | `theorem` | [Nodup.pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant13ca4401a36a47b7548169702a42e91ff5675417bb39b7bfae282bbf4d42c852.lean/declarations/nodup-pairwise--ca1bac96d1fc2d1b746258ea.md) | 167 | `result-track:ca1bac96d1fc2d1b746258ea1daef400c1989b329f9bb65234606ab3d75ae58a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
