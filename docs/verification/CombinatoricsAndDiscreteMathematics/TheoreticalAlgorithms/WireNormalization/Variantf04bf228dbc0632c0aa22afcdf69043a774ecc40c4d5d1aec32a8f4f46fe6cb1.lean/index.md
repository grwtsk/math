# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WireNormalization.Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "951ec54205177dc3d307fb2a19405ffaceeb7b9b",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `951ec54205177dc3d307fb2a19405ffaceeb7b9b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WireTerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/wireterm--7ed7571564d832b0d33a552f.md) | 19 | `declaration-track:7ed7571564d832b0d33a552f71f97e0f4d52e99e162323c3613805cf8b7873f9` |
| 2 | `def` | [WireTerm.decode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/wireterm-decode--92e94baba4e5a2aad7659bc6.md) | 26 | `declaration-track:92e94baba4e5a2aad7659bc6f726322a31b24c279bca950072f6f44ae4d18570` |
| 3 | `def` | [WireTerm.encode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/wireterm-encode--30aff79bab8684a311125567.md) | 32 | `declaration-track:30aff79bab8684a31112556780627a5c60dfc484b64956be2c4abdef52687d7e` |
| 4 | `theorem` | [decode_encode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/decode-encode--dc9443f3fb134600bdfd9312.md) | 37 | `result-track:dc9443f3fb134600bdfd931246184f2d8fd85c11d9a20baeef11dd53365c57b5` |
| 5 | `theorem` | [encode_decode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/encode-decode--a790fa39a9d1b6f771a43966.md) | 43 | `result-track:a790fa39a9d1b6f771a4396689f51f1ea7475ab70ce20454af3b003ee5f2f69a` |
| 6 | `def` | [WireTerm.nodeCost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/wireterm-nodecost--3b105e114dd866b81e2318bd.md) | 50 | `declaration-track:3b105e114dd866b81e2318bdf70165568e43ccd614629a101231e886d51a997c` |
| 7 | `theorem` | [nodeCost_eq_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/nodecost-eq-size--ae3d292c359adb9cf2c2d7e0.md) | 55 | `result-track:ae3d292c359adb9cf2c2d7e0015a08e3c2cd484eb92b3987a45a63545db37cbc` |
| 8 | `structure` | [Packet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/packet--86e1274156cdacc07ca7e777.md) | 62 | `declaration-track:86e1274156cdacc07ca7e7777a2fc5690a284ace79c47b4c3551671b9b20d711` |
| 9 | `def` | [PacketValid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/packetvalid--e1e5952758c2f3b947db9487.md) | 72 | `declaration-track:e1e5952758c2f3b947db9487f969dfa9cd25d4c504441326e358861a7916d3a5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/instance--0f8fe34d2fb81432f21ebb05.md) | 78 | `declaration-track:0f8fe34d2fb81432f21ebb0517d146ed253135f48cedc4272cddf7c0e9d61ca8` |
| 11 | `def` | [checkPacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/checkpacket--cd5648c546d44d82726adb82.md) | 82 | `declaration-track:cd5648c546d44d82726adb822827c0c264af849c5d03c2d5ed5c671484cb1548` |
| 12 | `theorem` | [checkPacket_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/checkpacket-correct--2ae773f8591bbfb2b51ed7cf.md) | 84 | `result-track:2ae773f8591bbfb2b51ed7cf4026f85723ac5b812a7215d3b68eca9331d364c3` |
| 13 | `structure` | [CheckedPacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/checkedpacket--124c4fdc3b1d50854dfc6eda.md) | 88 | `declaration-track:124c4fdc3b1d50854dfc6edadd20770a05db2bd97e1fd560c8032ac92695297c` |
| 14 | `def` | [admitPacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/admitpacket--24e096ef5ca005a71785742b.md) | 94 | `declaration-track:24e096ef5ca005a71785742b3af0a9c40e9fc0b14e4a7309d1fa5af527b0d1a5` |
| 15 | `theorem` | [admitPacket_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/admitpacket-sound--b6cd2c41b171f31d7ae2f614.md) | 98 | `result-track:b6cd2c41b171f31d7ae2f61497e9badf96317f838f01fb44edb13b3644f247b1` |
| 16 | `def` | [normalizePacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/normalizepacket--918b74bc1acf2f3dc5ba50e1.md) | 106 | `declaration-track:918b74bc1acf2f3dc5ba50e1f3b5f4d1a91801842c55fb0b842b3a286fd7692c` |
| 17 | `theorem` | [normalizePacket_valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/normalizepacket-valid--51631dde21da58fc1fcc471f.md) | 110 | `result-track:51631dde21da58fc1fcc471f79e10741c38856a46bbbe1af3f042db63717d85e` |
| 18 | `theorem` | [normalizePacket_semantics](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/normalizepacket-semantics--4ceee99be321ae1e9bea6871.md) | 124 | `result-track:4ceee99be321ae1e9bea68714244280495b669606f2f5c9e658be351c3820e5f` |
| 19 | `theorem` | [normalizePacket_readout](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/normalizepacket-readout--9db02ee2349070a18882911e.md) | 135 | `result-track:9db02ee2349070a18882911eb66dc0eaab34e02b6f3d5b05c356ff5abbad3228` |
| 20 | `def` | [fixture](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/fixture--a9c1e382bcf97cb144298817.md) | 143 | `declaration-track:a9c1e382bcf97cb1442988172c61865d20ebbeb1689f0591617c0e72efe2b4af` |
| 21 | `theorem` | [fixture_admitted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/fixture-admitted--f54329f418c7dbed3a93d0f9.md) | 147 | `result-track:f54329f418c7dbed3a93d0f91c9cf2a9786d960ebaebf88cf31aff2ac57746de` |
| 22 | `def` | [checkedFixture](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/checkedfixture--c37e24962bb4cbc9f3b3441c.md) | 150 | `declaration-track:c37e24962bb4cbc9f3b3441c5e08e7fb7697a3087d91ce2c041c360846fc4c8a` |
| 23 | `theorem` | [fixture_normalized](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/fixture-normalized--d6e36094a8aa08e0d0c62ab0.md) | 152 | `result-track:d6e36094a8aa08e0d0c62ab09ec93cbad2bf92aa43e3be4d070b46c8278bff7c` |
| 24 | `theorem` | [wrong_context_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/wrong-context-rejected--80f37a1b8fe74b4ca0bc3eff.md) | 157 | `result-track:80f37a1b8fe74b4ca0bc3eff5e4b18737482fb1e62d86001fa265b28fbcf950b` |
| 25 | `theorem` | [undeclared_constructor_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/undeclared-constructor-rejected--60e9deef0e884747b42cd9e1.md) | 159 | `result-track:60e9deef0e884747b42cd9e1a210162bc8de7082c29c2e8fc16c3fdd05910bd3` |
| 26 | `theorem` | [changed_source_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean/declarations/changed-source-rejected--1af834ea5d7fe290888ee4e0.md) | 162 | `result-track:1af834ea5d7fe290888ee4e0f4036f4e75c6f4626d72282affeb37f15cacc376` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
