# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLinearOrder.Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e91cb5597013b5a4f3e2c53b930a022c2dee1fe",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e91cb5597013b5a4f3e2c53b930a022c2dee1fe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Limit` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [csSup_mem_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/cssup-mem-of-not-issuccprelimit--2fdc5368c82fbc9b6baa5eea.md) | 22 | `result-track:2fdc5368c82fbc9b6baa5eeaebd71d5ce96d08600d4a55977b222eaa8789c948` |
| 2 | `lemma` | [csInf_mem_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/csinf-mem-of-not-ispredprelimit--fee165a7ccbde8b11737d9ac.md) | 28 | `result-track:fee165a7ccbde8b11737d9ac062a70d6b036ccb90ab128a92080b0b607201ca9` |
| 3 | `lemma` | [exists_eq_ciSup_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/exists-eq-cisup-of-not-issuccprelimit--a649d660fca5517afd5b77dc.md) | 34 | `result-track:a649d660fca5517afd5b77dcaf4c3804d5492fbefe6028cd56fa38f37d7838be` |
| 4 | `lemma` | [exists_eq_ciInf_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/exists-eq-ciinf-of-not-ispredprelimit--b45170fa2b74c79fd614f27c.md) | 38 | `result-track:b45170fa2b74c79fd614f27cfe1aed4b794186a91e2da034b01cd8ee85b08c07` |
| 5 | `lemma` | [IsLUB.mem_of_nonempty_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/islub-mem-of-nonempty-of-not-issuccprelimit--2280b0963440e36973272742.md) | 42 | `result-track:2280b0963440e369732727429082612e767b960ad064f7f2522ae358822b2b73` |
| 6 | `lemma` | [IsGLB.mem_of_nonempty_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/isglb-mem-of-nonempty-of-not-ispredprelimit--1c67afc00834b2c6f26ce733.md) | 46 | `result-track:1c67afc00834b2c6f26ce733ebe5305c0c8ec74e980b15229c549c5317fe0abe` |
| 7 | `lemma` | [IsLUB.exists_of_nonempty_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/islub-exists-of-nonempty-of-not-issuccprelimit--2e9e7729afc13b9b48e366e1.md) | 50 | `result-track:2e9e7729afc13b9b48e366e12e8fa2753d2d9a8d3153b513a1f318cfc4d1fcc9` |
| 8 | `lemma` | [IsGLB.exists_of_nonempty_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/isglb-exists-of-nonempty-of-not-ispredprelimit--b7d3021b70beaf67b0f972b2.md) | 54 | `result-track:b7d3021b70beaf67b0f972b2ac22664c0913c9963e59e17c1f3d183136361da9` |
| 9 | `def` | [ConditionallyCompleteLinearOrder.toSuccOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/conditionallycompletelinearorder-tosuccorder--207c7e86495dfeceb84eace7.md) | 61 | `declaration-track:207c7e86495dfeceb84eace700b13339cf2be7b099499e9093be8fba457e672d` |
| 10 | `lemma` | [csSup_mem_of_not_isSuccPrelimit'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/cssup-mem-of-not-issuccprelimit--ac9cb3539417df34a6318b9b.md) | 85 | `result-track:ac9cb3539417df34a6318b9bb70124f109154f586bc68b7f0d48ae63ce0974db` |
| 11 | `lemma` | [exists_eq_ciSup_of_not_isSuccPrelimit'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/exists-eq-cisup-of-not-issuccprelimit--498ce57c0f6efee95ab7b6f6.md) | 93 | `result-track:498ce57c0f6efee95ab7b6f6b342c04dd567e9a4a67cb2243f1d6fde40e610df` |
| 12 | `lemma` | [IsLUB.exists_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/islub-exists-of-not-issuccprelimit--3f4c8004f32b09182310d552.md) | 98 | `result-track:3f4c8004f32b09182310d55214a6f566e64d864a55adb950b02db2a665d1e968` |
| 13 | `theorem` | [Order.IsSuccPrelimit.sSup_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/order-issuccprelimit-ssup-iio--cd60eac28d810182373228fa.md) | 102 | `result-track:cd60eac28d810182373228fa78a213868d7b37ad3d16d0e4b4d0f31da66f8898` |
| 14 | `theorem` | [Order.IsSuccPrelimit.iSup_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/order-issuccprelimit-isup-iio--9823ef5d008b20346e5bc4c3.md) | 107 | `result-track:9823ef5d008b20346e5bc4c3df6ad3f2fc74b3c81709d9c13df9904bc04c45a1` |
| 15 | `theorem` | [Order.IsSuccLimit.sSup_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/order-issucclimit-ssup-iio--9fdd1534e9362431453b54ff.md) | 110 | `result-track:9fdd1534e9362431453b54ff36a177db159dddf2902971ee69897dbc1fbce888` |
| 16 | `theorem` | [Order.IsSuccLimit.iSup_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/order-issucclimit-isup-iio--1a69348c7f2ef09da2d60e28.md) | 113 | `result-track:1a69348c7f2ef09da2d60e281363bf2c627be22972cad51d9c64a11a1db3e64e` |
| 17 | `theorem` | [sSup_Iio_eq_self_iff_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/ssup-iio-eq-self-iff-issuccprelimit--440539274786bcf0bd5465cf.md) | 116 | `result-track:440539274786bcf0bd5465cff3fe59a6f1eaf30956495eafc49a3cf9e10f02a3` |
| 18 | `theorem` | [iSup_Iio_eq_self_iff_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/isup-iio-eq-self-iff-issuccprelimit--2fae8edff049b0dc84ed73cd.md) | 122 | `result-track:2fae8edff049b0dc84ed73cd333325c19141ddab26143e4a80c23214f7642054` |
| 19 | `theorem` | [iSup_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/isup-succ--b4be063f196d764083b41d52.md) | 125 | `result-track:b4be063f196d764083b41d526a3e0e90f132e069079924528281bf054392c882` |
| 20 | `lemma` | [sSup_mem_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/ssup-mem-of-not-issuccprelimit--6694cfce654b3be45fe5686c.md) | 139 | `result-track:6694cfce654b3be45fe5686c276d00009bbafcf1d4443dc1da854df1f921493b` |
| 21 | `lemma` | [sInf_mem_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/sinf-mem-of-not-ispredprelimit--f5362b44bf7e07a587be175f.md) | 144 | `result-track:f5362b44bf7e07a587be175ffc7c90f55c7ef4758fe6b5e3d9205710547a2859` |
| 22 | `lemma` | [exists_eq_iSup_of_not_isSuccPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/exists-eq-isup-of-not-issuccprelimit--d9ab01e54a4f75645efe886d.md) | 149 | `result-track:d9ab01e54a4f75645efe886d747cc6c326af3e903fd158b01eb94e2c91f5fdc9` |
| 23 | `lemma` | [exists_eq_iInf_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/exists-eq-iinf-of-not-ispredprelimit--74f6d425008c6e68e118ba76.md) | 153 | `result-track:74f6d425008c6e68e118ba76da1d06a610484f92251e52a18b512e8638f24129` |
| 24 | `lemma` | [IsGLB.exists_of_not_isPredPrelimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/declarations/isglb-exists-of-not-ispredprelimit--8c832d31810157bb3574f791.md) | 158 | `result-track:8c832d31810157bb3574f791b3a81f1bb957bda03d26b6eab13aa134fa23a579` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
