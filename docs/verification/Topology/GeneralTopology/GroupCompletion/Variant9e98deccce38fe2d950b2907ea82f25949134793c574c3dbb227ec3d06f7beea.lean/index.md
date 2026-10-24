# Verification target: GRWTSK.Topology.GeneralTopology.GroupCompletion.Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50597ddf33280e444a2e313a0500438bc893460a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50597ddf33280e444a2e313a0500438bc893460a`.

Source path: `GRWTSK/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.UniformGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformMulAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/instance--ec9fafc32a794ba344c52bdb.md) | 44 | `declaration-track:ec9fafc32a794ba344c52bdb38928843da1658bb73efef08d2816b9b40eeeedd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/instance--b7be58fe668a63f5502f2bab.md) | 47 | `declaration-track:b7be58fe668a63f5502f2babcfd0eacaf3a52c7d28ce5850172a55ca9342615b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/instance--75b54959ec2f3890339462d0.md) | 50 | `declaration-track:75b54959ec2f3890339462d090436445d9f8d134080a505ec950c8f4c26c3b48` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/instance--e4efa749a412cb2e98edf13e.md) | 53 | `declaration-track:e4efa749a412cb2e98edf13e60f3cf22139791621ab6e29f6f37e10373e95005` |
| 5 | `theorem` | [UniformSpace.Completion.coe_zero](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/uniformspace-completion-coe-zero--88e53e87ea4ef85df3e866ab.md) | 57 | `result-track:88e53e87ea4ef85df3e866ab5f1295a1d98dfca53755ce61ca7a97bc4ebab116` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/instance--d2d82907848a3eafd745c416.md) | 69 | `declaration-track:d2d82907848a3eafd745c41688f122fe35eacdcc9980232f0722f27626675ce0` |
| 7 | `theorem` | [coe_neg](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/coe-neg--838cdd5f6931b116b0c569d4.md) | 85 | `result-track:838cdd5f6931b116b0c569d4f82c5263590d3a51720aa09da49c55346952afb8` |
| 8 | `theorem` | [coe_sub](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/coe-sub--461ba730052a562a3d95c66e.md) | 90 | `result-track:461ba730052a562a3d95c66efbe1b773c434f027719b497d8568e9c1d1a13786` |
| 9 | `theorem` | [coe_add](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/coe-add--9b6e7ee3617565b00139422b.md) | 95 | `result-track:9b6e7ee3617565b00139422b61785fa4f8615b322ea335ac2b5278d097f9264f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/instance--b65499384cf2fe4283b1e237.md) | 99 | `declaration-track:b65499384cf2fe4283b1e237fa4ba91dd401dbdd12fb7c05e2dbce1c19e65bda` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/instance--f07bedb2da4354c4599c4073.md) | 130 | `declaration-track:f07bedb2da4354c4599c407353b09dd258dea89948f4a177047489eacbd20e16` |
| 12 | `instance` | [addGroup](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/addgroup--422e1bd938e09fe16c9d6a4b.md) | 156 | `declaration-track:422e1bd938e09fe16c9d6a4b25e2b0eed6b7742dc9801e4a6fd86e9275c22244` |
| 13 | `instance` | [uniformAddGroup](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/uniformaddgroup--3663555ccc296c2169120909.md) | 166 | `declaration-track:3663555ccc296c2169120909995440dab0b5796b0de0a61c1a3550eb2c2f3ba9` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/instance--8b6cd8caa4f66890baf8a1df.md) | 169 | `declaration-track:8b6cd8caa4f66890baf8a1df1090578c505c370b4d4f98591dce3668e4c8b03c` |
| 15 | `def` | [toCompl](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/tocompl--44a135ab684f73c4f0094946.md) | 182 | `declaration-track:44a135ab684f73c4f0094946dd691bf08242c4d652648f99db86bab474dfbcec` |
| 16 | `theorem` | [continuous_toCompl](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/continuous-tocompl--80abb9ddd3bcd60dfe5e7550.md) | 188 | `result-track:80abb9ddd3bcd60dfe5e7550a0490e2e97336a8414a2ff1dfe40074106b5d1b8` |
| 17 | `theorem` | [denseInducing_toCompl](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/denseinducing-tocompl--29c18b74940b9598705fe7fe.md) | 194 | `result-track:29c18b74940b9598705fe7fe2d93ecc40134ea16e5c88448f9f37bf2c98a84b5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/instance--baadc978a50d9b349afed28e.md) | 206 | `declaration-track:baadc978a50d9b349afed28e9f4a8b40ed4d4ee77dc42a107dd35e9f8f96fca1` |
| 19 | `instance` | [instModule](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/instmodule--5897fd7d4d1ed0b6bd600f88.md) | 216 | `declaration-track:5897fd7d4d1ed0b6bd600f881188f172132b79a31e31ba75e03bbccff4c24f38` |
| 20 | `def` | [AddMonoidHom.extension](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/addmonoidhom-extension--4d654bc212530f50e0b75526.md) | 239 | `declaration-track:4d654bc212530f50e0b75526d162f2545a3d54a08debfa7f5324844408484a00` |
| 21 | `theorem` | [AddMonoidHom.extension_coe](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/addmonoidhom-extension-coe--ac8896d810d34f9e61514d1b.md) | 254 | `result-track:ac8896d810d34f9e61514d1ba88ce6cebb6ddb201eb806954806cfc890e7c82d` |
| 22 | `theorem` | [AddMonoidHom.continuous_extension](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/addmonoidhom-continuous-extension--99fe541dd6eae301493172c6.md) | 260 | `result-track:99fe541dd6eae301493172c60985c059912ebe758491595f29e160460e3c56cf` |
| 23 | `def` | [AddMonoidHom.completion](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/addmonoidhom-completion--4d829e831c2cda215bfbc440.md) | 266 | `declaration-track:4d829e831c2cda215bfbc440e91adc06ff3b91b3053165a91df498b26f94ae9e` |
| 24 | `theorem` | [AddMonoidHom.continuous_completion](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/addmonoidhom-continuous-completion--4574a9c9cad6ce69a3a09288.md) | 271 | `result-track:4574a9c9cad6ce69a3a092889f623af02473392a586f22e6a09987488bc7c684` |
| 25 | `theorem` | [AddMonoidHom.completion_coe](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/addmonoidhom-completion-coe--4d5ab6f6a28dcd2603a1a0b9.md) | 276 | `result-track:4d5ab6f6a28dcd2603a1a0b97e21771d1f3e7a9922da9a5f251b33a8bd580b16` |
| 26 | `theorem` | [AddMonoidHom.completion_zero](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/addmonoidhom-completion-zero--6ca274e0a49e659839cc2f44.md) | 281 | `result-track:6ca274e0a49e659839cc2f4445cccacd0eb87ff2875144d8d49b000feb55bb12` |
| 27 | `theorem` | [AddMonoidHom.completion_add](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/declarations/addmonoidhom-completion-add--4bedb0c657f92bd646ba0f87.md) | 291 | `result-track:4bedb0c657f92bd646ba0f872e00b5b11a4ef2f1796afe175d5ba4a0c2ee2e07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
