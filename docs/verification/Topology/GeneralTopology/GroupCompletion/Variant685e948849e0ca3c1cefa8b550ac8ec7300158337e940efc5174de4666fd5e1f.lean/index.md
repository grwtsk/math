# Verification target: GRWTSK.Topology.GeneralTopology.GroupCompletion.Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca8b572b2dd564b9791ff886caca54be62a495e0",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca8b572b2dd564b9791ff886caca54be62a495e0`.

Source path: `GRWTSK/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.UniformGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformMulAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/instance--7f282aefe8ee176802234faf.md) | 52 | `declaration-track:7f282aefe8ee176802234fafae572ebe4c101c9c98620caa7af383a5392f4317` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/instance--d1c5fe3e04763db3c1df8db3.md) | 55 | `declaration-track:d1c5fe3e04763db3c1df8db350d3a33383d6d5b41c7319daa338623819899e17` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/instance--2a0cf46c12f72d886f979dc8.md) | 58 | `declaration-track:2a0cf46c12f72d886f979dc856441798d0d3ac7ed5b1633709764ea66cd740f3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/instance--f0dd08b53f2053d06505d7ef.md) | 61 | `declaration-track:f0dd08b53f2053d06505d7ef70435613718f4b1ab01de09b6904718a515ab09b` |
| 5 | `theorem` | [UniformSpace.Completion.coe_zero](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/uniformspace-completion-coe-zero--08647a91fd9485f1d57f965c.md) | 65 | `result-track:08647a91fd9485f1d57f965c3dc42043f99314c850dda979c9cd40120860d049` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/instance--601aa73fd16cbb6f64ba32a7.md) | 77 | `declaration-track:601aa73fd16cbb6f64ba32a7e0f946c270b99a2a9904acf24cd15930c0863390` |
| 7 | `theorem` | [coe_neg](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/coe-neg--5665ef8da36392b927bab0d3.md) | 93 | `result-track:5665ef8da36392b927bab0d3df67e0ec15d56f07a4cefcad39524a9631d85340` |
| 8 | `theorem` | [coe_sub](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/coe-sub--42b274cc2840fc8072ffd08a.md) | 98 | `result-track:42b274cc2840fc8072ffd08a772fde6373ed8ef0a94ddf11f9a444dff4275f9d` |
| 9 | `theorem` | [coe_add](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/coe-add--c0e1f3853fca7a003e94dc3b.md) | 103 | `result-track:c0e1f3853fca7a003e94dc3b00b0c0a3770cb54c6b012b157dca8e81b876e0a3` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/instance--301b537fbff2a042e1328f60.md) | 107 | `declaration-track:301b537fbff2a042e1328f6016eb3050b161e65e0c3bf5a1d316eb810aca26f4` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/instance--de2aea5d16b334d47ba7a475.md) | 138 | `declaration-track:de2aea5d16b334d47ba7a4758d6c2bb6ad0f574adebae50eead4013de8d821cf` |
| 12 | `instance` | [addGroup](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/addgroup--3e51d762ce6f31beb5a9e914.md) | 164 | `declaration-track:3e51d762ce6f31beb5a9e914597976615152748fda74036288db94485aa34351` |
| 13 | `instance` | [uniformAddGroup](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/uniformaddgroup--b32f0720f6253dce5e7b1ce1.md) | 174 | `declaration-track:b32f0720f6253dce5e7b1ce182db52cce78435a748d9791b04b2b4c4046a483a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/instance--21ba62ed20ae2d9494040162.md) | 177 | `declaration-track:21ba62ed20ae2d9494040162a13648fccf59cbc79f4b540dd521fb4f21df9f31` |
| 15 | `def` | [toCompl](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/tocompl--fdc6b16dff6a895450b7a270.md) | 190 | `declaration-track:fdc6b16dff6a895450b7a27067e10e8f40d4ad3b1989a908bc38ab06fabf5cec` |
| 16 | `theorem` | [continuous_toCompl](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/continuous-tocompl--cb2be156efc13ac4c8eaff5d.md) | 196 | `result-track:cb2be156efc13ac4c8eaff5ddfb2889a46bc3e27cca96f35e5195c5bb0e38678` |
| 17 | `theorem` | [denseInducing_toCompl](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/denseinducing-tocompl--e7b9d855077202e9c3f9cc48.md) | 202 | `result-track:e7b9d855077202e9c3f9cc486ab71c2ed2e90f14de72a694eb809abbfa81d870` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/instance--162beb310f824aee03242a05.md) | 214 | `declaration-track:162beb310f824aee03242a0501443b3940fa4fdd592fdea252bd2a34bd57db5c` |
| 19 | `instance` | [instModule](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/instmodule--aca14aa5d689f653ac70a329.md) | 224 | `declaration-track:aca14aa5d689f653ac70a329cf90458d116bf025a4187488674d562a98094ac8` |
| 20 | `def` | [AddMonoidHom.extension](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/addmonoidhom-extension--d38beedca099c9495d112969.md) | 247 | `declaration-track:d38beedca099c9495d112969856be8dc141a1c7a05d30d5fbc48280f04bbdea9` |
| 21 | `theorem` | [AddMonoidHom.extension_coe](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/addmonoidhom-extension-coe--0d229259c8a41aeedc60290a.md) | 262 | `result-track:0d229259c8a41aeedc60290ab31bd4915de8fcd432cff33afeac859a06d1b8a8` |
| 22 | `theorem` | [AddMonoidHom.continuous_extension](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/addmonoidhom-continuous-extension--3c24c485d7e32373ea6826a0.md) | 268 | `result-track:3c24c485d7e32373ea6826a0492afb83c802b6e09c793cdcd435dae32e70e251` |
| 23 | `def` | [AddMonoidHom.completion](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/addmonoidhom-completion--c2b8018d6f62a5661cf2051c.md) | 274 | `declaration-track:c2b8018d6f62a5661cf2051c7aa46e15cbe741f5de36843a53262a74515ba6ed` |
| 24 | `theorem` | [AddMonoidHom.continuous_completion](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/addmonoidhom-continuous-completion--d56eb954106bbb19d3379868.md) | 279 | `result-track:d56eb954106bbb19d3379868c98c515600d7c8943cf43368638d89404c5d65fe` |
| 25 | `theorem` | [AddMonoidHom.completion_coe](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/addmonoidhom-completion-coe--64d2936bb6d5183fac35ded1.md) | 284 | `result-track:64d2936bb6d5183fac35ded1bdf721485ce1ab0904a7cfec8801d04d073c2371` |
| 26 | `theorem` | [AddMonoidHom.completion_zero](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/addmonoidhom-completion-zero--582893c5ec3ded4c019e5453.md) | 289 | `result-track:582893c5ec3ded4c019e5453cc1cc3f9c5fc2082c9dfe65374551f291ec67685` |
| 27 | `theorem` | [AddMonoidHom.completion_add](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/declarations/addmonoidhom-completion-add--8fbb5f8828f4b5406afb9463.md) | 299 | `result-track:8fbb5f8828f4b5406afb94631be287b1644a7e1930fa2976dbf05dc8766107aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
