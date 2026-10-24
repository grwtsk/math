# Verification target: GRWTSK.Topology.GeneralTopology.Field.Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84fa01ad85c726c6f31d1dbc4e08e1f8efb42bd2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84fa01ad85c726c6f31d1dbc4e08e1f8efb42bd2`.

Source path: `GRWTSK/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Positivity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [TopologicalRing.of_norm](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/topologicalring-of-norm--dba80fe1fee7ece5382a5831.md) | 37 | `result-track:dba80fe1fee7ece5382a5831e7cd689917162f1af3e3dc59f38ca8a77a4ef80f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/instance--e76a65cedc150ae16f1f5385.md) | 63 | `declaration-track:e76a65cedc150ae16f1f5385df337cf4cef55cb985479e4c3053ebb28aa75e5a` |
| 3 | `theorem` | [Filter.Tendsto.atTop_mul](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/filter-tendsto-attop-mul--2f8f01a7a7366f7095e20085.md) | 69 | `result-track:2f8f01a7a7366f7095e200855dd138205deca6b2aac463bc5c5f2000f8229f44` |
| 4 | `theorem` | [Filter.Tendsto.mul_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/filter-tendsto-mul-attop--01d8ed0747ed7d0c31a96422.md) | 78 | `result-track:01d8ed0747ed7d0c31a9642233e04883de4f5864147b65e2068b227f973908f3` |
| 5 | `theorem` | [Filter.Tendsto.atTop_mul_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/filter-tendsto-attop-mul-neg--34be811e0ff35ad7c158cff3.md) | 85 | `result-track:34be811e0ff35ad7c158cff38fcf9abff3da13eea1564ffeb1fe2be23a2a2e4d` |
| 6 | `theorem` | [Filter.Tendsto.neg_mul_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/filter-tendsto-neg-mul-attop--b4c4c4a3154d4e058336b6eb.md) | 93 | `result-track:b4c4c4a3154d4e058336b6ebf7d5d736eb76d423c1d604c7526d8e635f5d52c4` |
| 7 | `theorem` | [Filter.Tendsto.atBot_mul](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/filter-tendsto-atbot-mul--3029f449d64b5a1b0413d5ec.md) | 100 | `result-track:3029f449d64b5a1b0413d5ecd73c6733653a221085541a2e34b3f0c9a204e79e` |
| 8 | `theorem` | [Filter.Tendsto.atBot_mul_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/filter-tendsto-atbot-mul-neg--c1880e897f656a970ef32072.md) | 108 | `result-track:c1880e897f656a970ef320721374e8d5d5e403eff9a027034a7b0e1286e8a548` |
| 9 | `theorem` | [Filter.Tendsto.mul_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/filter-tendsto-mul-atbot--edc9eca5cf4db90f48855823.md) | 116 | `result-track:edc9eca5cf4db90f4885582334b33ea98cb262cfbb7ecc2630440daa73bb7db8` |
| 10 | `theorem` | [Filter.Tendsto.neg_mul_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/filter-tendsto-neg-mul-atbot--6387d50b6d09d94e45a3aed2.md) | 123 | `result-track:6387d50b6d09d94e45a3aed22786a8ca881edc47fbda29e385fdeee8e1cdf016` |
| 11 | `theorem` | [tendsto_inv_zero_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/tendsto-inv-zero-attop--b420fe3704a721f89be2fe08.md) | 129 | `result-track:b420fe3704a721f89be2fe08a1638f0cd53d9ae543fa6c949e8db8d83d915239` |
| 12 | `theorem` | [tendsto_inv_atTop_zero'](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/tendsto-inv-attop-zero--864ee11dcc3f3ad9a0b73f05.md) | 137 | `result-track:864ee11dcc3f3ad9a0b73f05b9ad46e1c5edd81d734bff8626d25e06ab5673e5` |
| 13 | `theorem` | [tendsto_inv_atTop_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/tendsto-inv-attop-zero--3fe7b14c1a5e31ecd2321460.md) | 144 | `result-track:3fe7b14c1a5e31ecd2321460ac609b9eb9ab44f6afab9b00e78f848fc6aaf7c4` |
| 14 | `theorem` | [Filter.Tendsto.div_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/filter-tendsto-div-attop--808312570dbb6a7138294465.md) | 148 | `result-track:808312570dbb6a7138294465ba25888113a5e3cd000b00ec73a367864b4dda14` |
| 15 | `theorem` | [Filter.Tendsto.inv_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/filter-tendsto-inv-tendsto-attop--514b934f941e1395dea31559.md) | 154 | `result-track:514b934f941e1395dea315592d5a681bb30cb61770d27a5f10341aa18e3a4f98` |
| 16 | `theorem` | [Filter.Tendsto.inv_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/filter-tendsto-inv-tendsto-zero--4bf0e33992dea0889eef77e7.md) | 158 | `result-track:4bf0e33992dea0889eef77e74e364703bfdf842fe2600fcd3e17d7d97f576a4f` |
| 17 | `theorem` | [tendsto_pow_neg_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/tendsto-pow-neg-attop--a4d63e3797d7545e04584f35.md) | 164 | `result-track:a4d63e3797d7545e04584f35f9f169d53ce3ea0ab49750aa637ebc6f8e080aed` |
| 18 | `theorem` | [tendsto_zpow_atTop_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/tendsto-zpow-attop-zero--30abca122a1d4af78cb934b9.md) | 169 | `result-track:30abca122a1d4af78cb934b9cb5f26ddbcee687637478407e8f262458d9ff669` |
| 19 | `theorem` | [tendsto_const_mul_zpow_atTop_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/tendsto-const-mul-zpow-attop-zero--f37e5d89e641982c137a8ab6.md) | 176 | `result-track:f37e5d89e641982c137a8ab6cbfe693b4ae7359703103e869c748621317cc33f` |
| 20 | `theorem` | [tendsto_const_mul_pow_nhds_iff'](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/tendsto-const-mul-pow-nhds-iff--0a80d2a7a660315384466d5a.md) | 181 | `result-track:0a80d2a7a660315384466d5a9650cba944afbba834c0942e9756e23ccb0acf37` |
| 21 | `theorem` | [tendsto_const_mul_pow_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/tendsto-const-mul-pow-nhds-iff--feee0542ea85a1ac25d62724.md) | 193 | `result-track:feee0542ea85a1ac25d627246b9cd5bad71ab7db9ff428fcc845e77848c79a05` |
| 22 | `theorem` | [tendsto_const_mul_zpow_atTop_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/tendsto-const-mul-zpow-attop-nhds-iff--d4875ed67c194e08c36a4f6d.md) | 198 | `result-track:d4875ed67c194e08c36a4f6d944ea9c1743ff494b1dd591b1b2e9a0ffba6b3a9` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/instance--edfafb35761fa49db7097dac.md) | 215 | `declaration-track:edfafb35761fa49db7097dac9700a5bb803356c1872bd5cb470d1ea426c320a7` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/instance--69a9a7dfc7f2867cf4f34eef.md) | 227 | `declaration-track:69a9a7dfc7f2867cf4f34eef1824296ca79f9f49ebbc9a7dda9d6a13ac5c8499` |
| 25 | `theorem` | [nhdsWithin_pos_comap_mul_left](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/nhdswithin-pos-comap-mul-left--9f47cbff380d16ee0c205f09.md) | 232 | `result-track:9f47cbff380d16ee0c205f097e497a773de7a94d7c1689dcd5a51a01cd86b202` |
| 26 | `theorem` | [eventually_nhdsWithin_pos_mul_left](../../../../../mathematics/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/declarations/eventually-nhdswithin-pos-mul-left--82424378458622c92ee32b89.md) | 240 | `result-track:82424378458622c92ee32b89ae61db2e278a32591a0418ff23706a5809637e22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
