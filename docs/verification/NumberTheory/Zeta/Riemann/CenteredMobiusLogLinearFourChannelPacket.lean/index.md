# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogLinearFourChannelPacket

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13734e6786df00272e472b37f05b46e36c3d0a86",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13734e6786df00272e472b37f05b46e36c3d0a86`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogAugmentedMap`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearFourChannelMobiusLogPacket](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/linearfourchannelmobiuslogpacket--954e89b572f685e8f5c9cfc2.md) | 19 | `declaration-track:954e89b572f685e8f5c9cfc284f864a459ab0cd9bb6c1ae24c63c5dea49e6df2` |
| 2 | `def` | [linearFourChannelMobiusLogTransform](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/linearfourchannelmobiuslogtransform--a5397e779fc69f787dc33c37.md) | 26 | `declaration-track:a5397e779fc69f787dc33c37b3ef76c0fbcfc3bf5db3958a9793c14a66d2e96b` |
| 3 | `def` | [augmentedProductFourChannelPacket](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/augmentedproductfourchannelpacket--56345ef2d1aa86c41efd45c9.md) | 35 | `declaration-track:56345ef2d1aa86c41efd45c9de41e5367d450f738ad59d48f4dd679361ec0ddf` |
| 4 | `theorem` | [linearTransform_augmentedProduct_eq_pairMap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/lineartransform-augmentedproduct-eq-pairmap--5251b38dc17604636352b022.md) | 42 | `result-track:5251b38dc17604636352b0227db3f948658f3da27bd417ccba7d234ea55a9e6a` |
| 5 | `def` | [linearFourChannelPacketSub](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/linearfourchannelpacketsub--b1d3b15c7ddd17538317ec5b.md) | 55 | `declaration-track:b1d3b15c7ddd17538317ec5bc54ae9922a4fc4796f4252f9149be9cd31534329` |
| 6 | `theorem` | [linearTransform_sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/lineartransform-sub--1d1b7edf5ee9f59b0a2efd78.md) | 63 | `result-track:1d1b7edf5ee9f59b0a2efd780360406aec8418ce6e4e6b8012d251a671080097` |
| 7 | `def` | [actualCenteredFourChannelPacket](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/actualcenteredfourchannelpacket--f8328cb60aaf5b8f43cbf29f.md) | 73 | `declaration-track:f8328cb60aaf5b8f43cbf29f722492187ac1619989f96c956663df9578172de2` |
| 8 | `theorem` | [actualCenteredFourChannelPacket_commutes](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/actualcenteredfourchannelpacket-commutes--ed37f5ed16dbdb38a3c43e19.md) | 77 | `result-track:ed37f5ed16dbdb38a3c43e195b470ec8ca21a55c082c56a47d11d1a63b500417` |
| 9 | `theorem` | [linearFourChannelTransform_one_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/linearfourchanneltransform-one-one--95e1498de80faec933c0e286.md) | 86 | `result-track:95e1498de80faec933c0e2864fdbf30997a50932ab73ac21325cfbe7ea7c90e0` |
| 10 | `theorem` | [linearFourChannelTransform_one_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/linearfourchanneltransform-one-right--c7e47eb4d681b9a5c0c690f6.md) | 93 | `result-track:c7e47eb4d681b9a5c0c690f6aed1a0965a2f5d96713e11085a925952eabecdc7` |
| 11 | `theorem` | [linearFourChannelTransform_left_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/linearfourchanneltransform-left-one--47aa1be4b2a8e4680cb95ee9.md) | 101 | `result-track:47aa1be4b2a8e4680cb95ee95aff609be49b6295a482087e955f8e2fbccfec40` |
| 12 | `def` | [linearFourChannelGGResidual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/linearfourchannelggresidual--18a682e833e2c08e8a2d008e.md) | 110 | `declaration-track:18a682e833e2c08e8a2d008e3deec3b333149b72aeab60608ca38cbb2b41a8bd` |
| 13 | `theorem` | [linearFourChannelGGResidual_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/linearfourchannelggresidual-eq--fbd41d99a42d009aaa921d84.md) | 115 | `result-track:fbd41d99a42d009aaa921d84e531c83ec20955377260a4259e0ee75e49a4b333` |
| 14 | `def` | [ggColumnRow](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/ggcolumnrow--89feceecc2fadf498181ebb3.md) | 124 | `declaration-track:89feceecc2fadf498181ebb36f81e46eddaa1b3668e74ad04ceb525e73375735` |
| 15 | `theorem` | [gg_diagonal_coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/gg-diagonal-coefficient--629a001d4bcda096a92bfb34.md) | 129 | `result-track:629a001d4bcda096a92bfb34fe0628e0c430aaf33e4894897f84e35e4257f607` |
| 16 | `theorem` | [mobiusLogDivisorRow_eq_of_coeff_eq_through_N](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/mobiuslogdivisorrow-eq-of-coeff-eq-through-n--32e16c7585b0379cb97670c5.md) | 136 | `result-track:32e16c7585b0379cb97670c5390405a89a4cc0b87772cd3aa7d194932ad29b20` |
| 17 | `theorem` | [linearFourChannel_twoN_reconstruct_clean](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/linearfourchannel-twon-reconstruct-clean--3eab26c3494947b77ee5f481.md) | 171 | `result-track:3eab26c3494947b77ee5f481b7ea7c6cd8bae5e6bef1eb7d445d53be69e42f3f` |
| 18 | `theorem` | [linearFourChannel_twoN_reconstruct](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/linearfourchannel-twon-reconstruct--66fc42cf516affb58aa7f0d8.md) | 215 | `result-track:66fc42cf516affb58aa7f0d8c290d5d6ac0cdf8e06501215f34d9079d71b55a7` |
| 19 | `def` | [ggFirstStageCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/ggfirststagecoefficient--412c50099fca13d71d5ab5bf.md) | 231 | `declaration-track:412c50099fca13d71d5ab5bf581a8748736f0d81363c69fc1e2b5ae0140ae19a` |
| 20 | `theorem` | [linearFourChannelGGResidual_eq_firstStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/linearfourchannelggresidual-eq-firststage--0d60cb897d27d4b2e0d9a6db.md) | 235 | `result-track:0d60cb897d27d4b2e0d9a6dbf7d03b40ab7a67fcc9bb022c5219bf59107dbf3a` |
| 21 | `theorem` | [ggResidual_eq_of_channels_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/ggresidual-eq-of-channels-eq--464918b23ebc43b73560be5e.md) | 246 | `result-track:464918b23ebc43b73560be5e63d237664356a33addf8906b0584f4fd846b7458` |
| 22 | `theorem` | [gg_twoN_reconstruct_of_residual_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogLinearFourChannelPacket.lean/declarations/gg-twon-reconstruct-of-residual-eq--0462e05b0e2e2b00bf59b1e8.md) | 260 | `result-track:0462e05b0e2e2b00bf59b1e8ccff649edfa820c526ba474684ba03b5ec6d01fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
