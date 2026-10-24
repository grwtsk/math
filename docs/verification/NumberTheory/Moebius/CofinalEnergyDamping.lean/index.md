# Verification target: GRWTSK.NumberTheory.Moebius.CofinalEnergyDamping

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "695ac2e5080e93ea4bcf619913ee2f4ac3beaff4",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CofinalEnergyDamping.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `695ac2e5080e93ea4bcf619913ee2f4ac3beaff4`.

Source path: `GRWTSK/NumberTheory/Moebius/CofinalEnergyDamping.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CofinalEnergyDamping.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.EnergyAbscissa`](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold`](../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/ExponentialThreshold.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reciprocalDamping](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/reciprocaldamping--a01637f01482d526322b8349.md) | 32 | `declaration-track:a01637f01482d526322b834969573b9c1cd806bc14b8d0f1eef885df40c16b8c` |
| 2 | `theorem` | [reciprocalDamping_pos](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/reciprocaldamping-pos--562be40a7a09b1d0050cd6f0.md) | 34 | `result-track:562be40a7a09b1d0050cd6f0ea6127f726bed34d506001a4c1805840cca3fd35` |
| 3 | `theorem` | [reciprocalDamping_zero](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/reciprocaldamping-zero--083372eaabd5a7e9c9e9ecee.md) | 38 | `result-track:083372eaabd5a7e9c9e9eceedeac8c56732c65cce0584b70963adbf0151610dd` |
| 4 | `theorem` | [reciprocalDamping_antitone](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/reciprocaldamping-antitone--756ae2af27b4c9eea3f23ce8.md) | 41 | `result-track:756ae2af27b4c9eea3f23ce8d26fe40db17c2bda991a17020534fedf4cfe2f8d` |
| 5 | `theorem` | [reciprocalDamping_cofinal](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/reciprocaldamping-cofinal--a75ed849001c0794443fe281.md) | 51 | `result-track:a75ed849001c0794443fe281b33ea4b1ce63a2f42c9fe93739cbf4fa79490a30` |
| 6 | `theorem` | [reciprocalDamping_tail_cofinal](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/reciprocaldamping-tail-cofinal--56fe13a3d28f209c5ead541f.md) | 60 | `result-track:56fe13a3d28f209c5ead541fa571484ebe3ccaf89e9522fd86f266bf455a7532` |
| 7 | `theorem` | [weightedEnergyAll_of_cofinal_membership](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/weightedenergyall-of-cofinal-membership--059fc0c8c0959487c7d8aad6.md) | 67 | `result-track:059fc0c8c0959487c7d8aad606b714a10f0781e291240f188282d5b696db9648` |
| 8 | `theorem` | [weightedEnergyAll_iff_cofinal_membership](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/weightedenergyall-iff-cofinal-membership--da884e53b2f2b05284e29961.md) | 76 | `result-track:da884e53b2f2b05284e299615eef1dda218a761acf89c37e3d17cbcaf36f5e9b` |
| 9 | `theorem` | [weightedEnergyAll_iff_reciprocal_tail](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/weightedenergyall-iff-reciprocal-tail--0e0e220e8e71b41160bdd82d.md) | 86 | `result-track:0e0e220e8e71b41160bdd82de91c7e5dc788d9f2a52067f0a676382213e8ea68` |
| 10 | `theorem` | [weightedEnergyAll_iff_reciprocal](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/weightedenergyall-iff-reciprocal--c7221a88ecfcd60fb09dddbe.md) | 96 | `result-track:c7221a88ecfcd60fb09dddbe9b239051abca203effdb63d5c3de9a3c51caf462` |
| 11 | `theorem` | [abscissa_zero_iff_reciprocal](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/abscissa-zero-iff-reciprocal--9facc1b70ef1cb66fbdc620b.md) | 104 | `result-track:9facc1b70ef1cb66fbdc620b3f08d954c2c4bc41d7f06bf44645471775035e95` |
| 12 | `theorem` | [riemannHypothesis_of_reciprocal](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/riemannhypothesis-of-reciprocal--2c8a84aadad411ec6681b2ae.md) | 110 | `result-track:2c8a84aadad411ec6681b2aebf567d69c1a6c81e3cc2e8723f1eefd1ec0f3967` |
| 13 | `theorem` | [riemannHypothesis_of_reciprocal_tail](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/riemannhypothesis-of-reciprocal-tail--6a226844479707584c860f69.md) | 115 | `result-track:6a226844479707584c860f695b2ebf204db308291f0e9f9682580957e6c03b29` |
| 14 | `theorem` | [abscissa_le_of_paid_stage](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/abscissa-le-of-paid-stage--1ae77784e355b1c01ff0e667.md) | 122 | `result-track:1ae77784e355b1c01ff0e667717d73a3cf1d45aa47a4754a6d620b31f4903426` |
| 15 | `theorem` | [energy_le_of_paid_stage](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/energy-le-of-paid-stage--c50672b6f94a7f23d01d7046.md) | 128 | `result-track:c50672b6f94a7f23d01d7046a2c2c625be0edcaa5dffbc0e5da003475899b645` |
| 16 | `theorem` | [initial_stage_paid](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/initial-stage-paid--669bb71b195e71e6c782b35e.md) | 136 | `result-track:669bb71b195e71e6c782b35ed067179827b471d79f26fee31120331dcf72830c` |
| 17 | `theorem` | [reciprocalDamping_drop](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/reciprocaldamping-drop--a056b0bb9ae857447f322f51.md) | 141 | `result-track:a056b0bb9ae857447f322f51263870d87831e3491227cecf6821be0d358e986e` |
| 18 | `theorem` | [successor_density_identity](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/successor-density-identity--fe42b96739147b000a8364a1.md) | 155 | `result-track:fe42b96739147b000a8364a188b90ee0bbd0112305c0d235e3ea5148a555353a` |
| 19 | `theorem` | [successor_membership_iff_extra_moment](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/successor-membership-iff-extra-moment--0202aa335b6c68d9a7e9e2d9.md) | 162 | `result-track:0202aa335b6c68d9a7e9e2d96999b235811ac4cd987b22498a6d70e1a476c83c` |
| 20 | `def` | [ReciprocalDescent](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/reciprocaldescent--36c6e85de6ee1e3635dcfaab.md) | 182 | `declaration-track:36c6e85de6ee1e3635dcfaab66a7535ed10cd51a4d23882c3d45068b4703f4a4` |
| 21 | `theorem` | [paid_stages_of_descent](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/paid-stages-of-descent--759374df202570f13acb5506.md) | 186 | `result-track:759374df202570f13acb550688423101d608d76db5a8d2c2a0a29d32fdecbd97` |
| 22 | `theorem` | [riemannHypothesis_of_reciprocalDescent](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/riemannhypothesis-of-reciprocaldescent--a0214bef2db2743d748eff79.md) | 193 | `result-track:a0214bef2db2743d748eff79ce3c79496f9fd713a836e3e9fe5ac578e38c7822` |
| 23 | `theorem` | [positive_floor_not_cofinal](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/positive-floor-not-cofinal--3e97d104c91bec91c1452059.md) | 198 | `result-track:3e97d104c91bec91c145205972d4bbd74eb574728a90b0a620fbaa5795e3e0c5` |
| 24 | `theorem` | [finite_prefix_not_cofinal](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/finite-prefix-not-cofinal--67b4a68bab1aed58f4e753b9.md) | 207 | `result-track:67b4a68bab1aed58f4e753b99ed4d9ff05010d13043094e2e230778b2c6bf4f9` |
| 25 | `theorem` | [one_paid_rate_not_all](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/declarations/one-paid-rate-not-all--73efcfeebfae169e28479a93.md) | 217 | `result-track:73efcfeebfae169e28479a93323f1322a8642f22d04a0f793e9d5827126b4dc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
