# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lex.Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58ea19c043f4b31161ac895a45c642826e3e3f47",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58ea19c043f4b31161ac895a45c642826e3e3f47`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.OrderSynonym` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Mathport.Notation` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/lex--8041b38f61fdb17702a6ea6b.md) | 50 | `declaration-track:8041b38f61fdb17702a6ea6b3d4d580f7ba74f2b4fa49ed4eec46cd1f867c113` |
| 2 | `theorem` | [toLex_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/tolex-apply--efcfdf9194190957067d1139.md) | 60 | `result-track:efcfdf9194190957067d1139fe52a01114f494b1220a6dfc5a76d9b096810055` |
| 3 | `theorem` | [ofLex_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/oflex-apply--c6deb7adf4cc270b9a131e2b.md) | 65 | `result-track:c6deb7adf4cc270b9a131e2b08ed29c6981417fc890927b3ca2aff2b4a177e4c` |
| 4 | `theorem` | [lex_lt_of_lt_of_preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/lex-lt-of-lt-of-preorder--c48db18144023eff60271cd3.md) | 69 | `result-track:c48db18144023eff60271cd36ce9110dbee66abc1e36d164407e522a15424da9` |
| 5 | `theorem` | [lex_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/lex-lt-of-lt--c3fd10e067257eef61ab0b0f.md) | 76 | `result-track:c3fd10e067257eef61ab0b0f1e9622edb1783ab341ce7878ee65016802babd9a` |
| 6 | `theorem` | [isTrichotomous_lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/istrichotomous-lex--573b0a55a8bcdad676a16c5f.md) | 82 | `result-track:573b0a55a8bcdad676a16c5f290ed0d0ea011aa0d086c36b62dad47313fa6393` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/instance--fb5452a384f9692fb63d8271.md) | 99 | `declaration-track:fb5452a384f9692fb63d82716598288e5f2acee6e850d793e99f2d5f432aa25c` |
| 8 | `instance` | [Lex.isStrictOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/lex-isstrictorder--3a566a7f6ac658f56c209cc7.md) | 102 | `declaration-track:3a566a7f6ac658f56c209cc757bd5f19ade0b395a3ce0b9f3ccbab17d49d3f2a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/instance--ca93f0e03c9c4731922d9764.md) | 113 | `declaration-track:ca93f0e03c9c4731922d9764786359fe571073398f346ee76576bf3061f87f7e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/instance--3ed368b18d3ec5996ea4255c.md) | 117 | `declaration-track:3ed368b18d3ec5996ea4255c4de15c73fce310b2b24df2bc4869488beabc42f1` |
| 11 | `theorem` | [toLex_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/tolex-monotone--8353c1678f557523521bf7d5.md) | 129 | `result-track:8353c1678f557523521bf7d59b43852ef8928847bba08fd03cbffc21b10878ff` |
| 12 | `theorem` | [toLex_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/tolex-strictmono--5fa53fd79dcaaa5c59a69b85.md) | 138 | `result-track:5fa53fd79dcaaa5c59a69b85f6a6aac4a07d8cae69889e196f0c9ca118a2fb7f` |
| 13 | `theorem` | [lt_toLex_update_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/lt-tolex-update-self-iff--3bb0a2f28d0cb02a14d7ad68.md) | 147 | `result-track:3bb0a2f28d0cb02a14d7ad6834326546b14ec8541042b20aeac75e6e07904f3a` |
| 14 | `theorem` | [toLex_update_lt_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/tolex-update-lt-self-iff--d4b9a930a9f8e2c886292d78.md) | 159 | `result-track:d4b9a930a9f8e2c886292d786cecefbec301b981f2a5376435270f9ee855bb74` |
| 15 | `theorem` | [le_toLex_update_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/le-tolex-update-self-iff--6e705ca30ad3139a53aa82ec.md) | 171 | `result-track:6e705ca30ad3139a53aa82ece0d4af31c48a7afb9e8b90d60c94edb232c6bb3d` |
| 16 | `theorem` | [toLex_update_le_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/tolex-update-le-self-iff--f7a28cb29ef63e6e92c0f39a.md) | 176 | `result-track:f7a28cb29ef63e6e92c0f39ae2d225e3ee914b2def189a7d3f3d0ebb91e90c46` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/instance--34494b1c51512daf2b57389a.md) | 182 | `declaration-track:34494b1c51512daf2b57389afb8c61fe2565de484063dbe2998e380677392e35` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/instance--0bbc6ac65451f76c3fd89932.md) | 187 | `declaration-track:0bbc6ac65451f76c3fd8993290395fa751cd4477887aa73f093ac5bdcda22c4e` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/instance--f58ff7803b2a66df94e29f0f.md) | 192 | `declaration-track:f58ff7803b2a66df94e29f0f5ad1c2851bf51ecbcd7942aa033d81573d00af8d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/instance--554befc29640638c07d38549.md) | 196 | `declaration-track:554befc29640638c07d38549968d859d81cef661f1aa23d9a2232a3a98d3f408` |
| 21 | `theorem` | [Lex.noMaxOrder'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/lex-nomaxorder--bd4d3b9939ca7fb9f8973144.md) | 210 | `result-track:bd4d3b9939ca7fb9f8973144c155d7535e6af8f0d862067fb9dbf7c9212e88fa` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/instance--e402bdea8bc548dfee73df63.md) | 219 | `declaration-track:e402bdea8bc548dfee73df636715f8a33634cfaff91b783c714526f6c22d5025` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/instance--ae98b82eea7107020ba33742.md) | 225 | `declaration-track:ae98b82eea7107020ba337420c2e0543bdc7201de54f7888da9deba32eff4ed6` |
| 24 | `instance` | [Lex.orderedCancelCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/lex-orderedcancelcommmonoid--cf95188f73b84ba55f168b61.md) | 236 | `declaration-track:cf95188f73b84ba55f168b6163c3ffec40cdd54e56e88530764bfca1450b2074` |
| 25 | `instance` | [Lex.orderedCommGroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/lex-orderedcommgroup--f387b2790192fb6c9cd101c8.md) | 246 | `declaration-track:f387b2790192fb6c9cd101c88209b097ef7462e0d59e764585dab141f64dcbd5` |
| 26 | `instance` | [Lex.linearOrderedCancelCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/lex-linearorderedcancelcommmonoid--9d9bc2bbabe07061a4878264.md) | 253 | `declaration-track:9d9bc2bbabe07061a487826482965af8c261158576ba5fd1385036a9c1b6fe80` |
| 27 | `instance` | [Lex.linearOrderedCommGroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/lex-linearorderedcommgroup--7c7d321e49f4c62a0d092913.md) | 260 | `declaration-track:7c7d321e49f4c62a0d0929133d65f55803e4e9d7b628e3948fc12a20bf921c3e` |
| 28 | `theorem` | [lex_desc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant292a5b9b84bef191fef04e41bc11b563ac7ef67c495aa11d3bb1eaa20324574c.lean/declarations/lex-desc--1616d1b86119a73da4485e69.md) | 270 | `result-track:1616d1b86119a73da4485e69606305b03d0cdc051f3005a509bbb3106dde5f27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
