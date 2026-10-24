# Verification target: GRWTSK.NumberTheory.Moebius.DyadicUniformMertensTwoPointPrefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5fd3ccece0c98db8554674b457d37becd2870af",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5fd3ccece0c98db8554674b457d37becd2870af`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DyadicChowlaShiftPacket`](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensTwoPointPrefix](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/mertenstwopointprefix--a302edb9e46517772615f92e.md) | 34 | `declaration-track:a302edb9e46517772615f92ed1c20da626f045f6d6ec63372e0027bbfb0ebdec` |
| 2 | `def` | [DyadicMertensTwoPointEnvelope](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/dyadicmertenstwopointenvelope--8c99cec672f160f1a01f97df.md) | 40 | `declaration-track:8c99cec672f160f1a01f97dfb97036ebcd69c94677a258ff34289bf70240364f` |
| 3 | `def` | [SubpolynomialDyadicUniformMertensTwoPointPrefix](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/subpolynomialdyadicuniformmertenstwopointprefix--964162324c2b2cb4bb152181.md) | 47 | `declaration-track:964162324c2b2cb4bb152181964e6885a8bef7543bd76d35abaa1707f78d2167` |
| 4 | `theorem` | [mertensTwoPointPrefix_zero](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/mertenstwopointprefix-zero--581897981fb125b75cfb543f.md) | 53 | `result-track:581897981fb125b75cfb543f278145fb5778d0106f5a3f1bfe706b84a7599d62` |
| 5 | `theorem` | [mertensTwoPointPrefix_succ](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/mertenstwopointprefix-succ--40a1af8f9a3d960b7a400e18.md) | 57 | `result-track:40a1af8f9a3d960b7a400e183c18754ae5d2c86e3e5f7d608174f47de5f740e7` |
| 6 | `theorem` | [dyadicMertensShiftWeight_at_right](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/dyadicmertensshiftweight-at-right--9d02ac477421a7ddb4941ddd.md) | 64 | `result-track:9d02ac477421a7ddb4941ddd92593ab625840869f93fe2bd2fd6075b55fd4ddc` |
| 7 | `theorem` | [dyadicMertensShiftWeight_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/dyadicmertensshiftweight-nonneg--5e8d244ec919421787953f9e.md) | 72 | `result-track:5e8d244ec919421787953f9e99258b08fec6ddd5477d15c7a5056123e71cec3d` |
| 8 | `theorem` | [dyadicMertensShiftWeight_step_antitone](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/dyadicmertensshiftweight-step-antitone--4d76f0334f518a257d7be470.md) | 89 | `result-track:4d76f0334f518a257d7be470fb3534e90e0a8d907eaae06c8992da98fb6aed0a` |
| 9 | `theorem` | [dyadicMertensShiftWeight_le_right_inv](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/dyadicmertensshiftweight-le-right-inv--8afe8a1b875af9931057a0de.md) | 105 | `result-track:8afe8a1b875af9931057a0ded6087f5beb64e68649784cdc2bbecd7eac0a2b73` |
| 10 | `theorem` | [weightedMertensDyadicShiftContribution_eq_range](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/weightedmertensdyadicshiftcontribution-eq-range--0ec6ef8b33224a2bc826ab14.md) | 123 | `result-track:0ec6ef8b33224a2bc826ab1465b77932b8a0b58805c9aca94e86bd9a3579ebd0` |
| 11 | `theorem` | [finite_abel_prefix](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/finite-abel-prefix--7a1ebf3421b50b4bd570900f.md) | 149 | `result-track:7a1ebf3421b50b4bd570900fd1a5d60f2b662bd4e2b0a158f85e5b7fb16c986c` |
| 12 | `theorem` | [finite_weight_drop_telescope](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/finite-weight-drop-telescope--1e69b2c51598ef12fd5fa159.md) | 163 | `result-track:1e69b2c51598ef12fd5fa159797a7c454be822a4ae7cd47c68227810f7346003` |
| 13 | `theorem` | [abs_weighted_sum_le_of_prefix_bound](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/abs-weighted-sum-le-of-prefix-bound--bcff7a8bc27b04c0f4ce9d59.md) | 177 | `result-track:bcff7a8bc27b04c0f4ce9d596678ff37a5ce3275d2a30298f552a1efa3bf0d5d` |
| 14 | `theorem` | [abs_weightedMertensDyadicShiftContribution_le](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/abs-weightedmertensdyadicshiftcontribution-le--b712a860f84a56a951289aca.md) | 214 | `result-track:b712a860f84a56a951289acac4fe07452ef2bc410ad94cb6a7bd2cf0013e3720` |
| 15 | `theorem` | [abs_weightedMertensDyadicShiftPacket_le](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/abs-weightedmertensdyadicshiftpacket-le--d3d157150d77d37f6eb23e9e.md) | 265 | `result-track:d3d157150d77d37f6eb23e9ed56edf5c9b10b8b0ed9fbaed362a549300d93053` |
| 16 | `theorem` | [subpolynomialDyadicMertensShiftPacket_of_uniformTwoPointPrefix](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/subpolynomialdyadicmertensshiftpacket-of-uniformtwopointprefix--43589efbc5740f574543ea68.md) | 303 | `result-track:43589efbc5740f574543ea68b6a0bc82ebf07361ff5617f542c1c0e6edd8a222` |
| 17 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicUniformMertensTwoPointPrefix](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/declarations/riemannhypothesis-of-subpolynomialdyadicuniformmertenstwopointprefix--e6dc6066b3262e7f9900bc49.md) | 318 | `result-track:e6dc6066b3262e7f9900bc49e2c1d23bc00556b36de4b3d388a91982ce10c379` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
