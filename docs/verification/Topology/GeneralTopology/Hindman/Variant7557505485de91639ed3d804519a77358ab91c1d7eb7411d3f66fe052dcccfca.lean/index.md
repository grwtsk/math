# Verification target: GRWTSK.Topology.GeneralTopology.Hindman.Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "397493198f8ec73d0c515fe5fd5c44d36f9cc4a8",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `397493198f8ec73d0c515fe5fd5c44d36f9cc4a8`.

Source path: `GRWTSK/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.StoneCech` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Semigroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Stream.Init` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ultrafilter.mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/ultrafilter-mul--f3c3c755c053c537c7e4d6b5.md) | 59 | `declaration-track:f3c3c755c053c537c7e4d6b546f38ae07d78e0208d3e6b1e0779eddab6b2c124` |
| 2 | `theorem` | [Ultrafilter.eventually_mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/ultrafilter-eventually-mul--88a624f65cb4b71cb70868f4.md) | 68 | `result-track:88a624f65cb4b71cb70868f4e0067eddcfbcb07eb60248900d47c0a73fadf002` |
| 3 | `structure` | [on](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/on--1a43ea89544b547c7654ba64.md) | 77 | `declaration-track:1a43ea89544b547c7654ba6437f815d684773097525cc5c986b997b665f998aa` |
| 4 | `def` | [Ultrafilter.semigroup](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/ultrafilter-semigroup--96b78a42634c405620baea55.md) | 78 | `declaration-track:96b78a42634c405620baea5594939ef0ec4f6f67afb2753c5375673dc4fa2cd9` |
| 5 | `theorem` | [Ultrafilter.continuous_mul_left](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/ultrafilter-continuous-mul-left--e89a9158e631fd368a5cc7b4.md) | 91 | `result-track:e89a9158e631fd368a5cc7b43681ebb15f3b5b2497d49ebc52ffe9e4a4892c16` |
| 6 | `inductive` | [FS](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/fs--fe798ae8284e91f33c474eec.md) | 105 | `declaration-track:fe798ae8284e91f33c474eec61290a4d175a19887feeb6128c8cabea7ea50819` |
| 7 | `inductive` | [FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/fp--160ef628cdd3d158651449c2.md) | 115 | `declaration-track:160ef628cdd3d158651449c25135d5eb00d0c0c64cdc292532c28efedff82009` |
| 8 | `theorem` | [FP.mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/fp-mul--0a5abb652f9043d1cd37f420.md) | 127 | `result-track:0a5abb652f9043d1cd37f4200fa369406594c4c3f503e9b5db6aca90a88e6c06` |
| 9 | `theorem` | [exists_idempotent_ultrafilter_le_FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/exists-idempotent-ultrafilter-le-fp--3498f7a95cb6bee8ba6b7c5f.md) | 146 | `result-track:3498f7a95cb6bee8ba6b7c5f890ea4f2409af6ddfbd4676814232864041e95f7` |
| 10 | `theorem` | [exists_FP_of_large](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/exists-fp-of-large--5f1722cb93872e15bbe629b8.md) | 182 | `result-track:5f1722cb93872e15bbe629b83fa036e033a5ec00f24220d26ef802b950ac7860` |
| 11 | `theorem` | [FP_partition_regular](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/fp-partition-regular--fab22a1ed2cf2ad5fcd512c5.md) | 225 | `result-track:fab22a1ed2cf2ad5fcd512c552bd50818bd1b077f3d27debbfed1bba46e72657` |
| 12 | `theorem` | [exists_FP_of_finite_cover](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/exists-fp-of-finite-cover--8225b75e0f13603470551f55.md) | 240 | `result-track:8225b75e0f13603470551f5576ba27fad37ab86998e77c45c31173e5b03ace07` |
| 13 | `theorem` | [FP_drop_subset_FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/fp-drop-subset-fp--3701419684183e1dfdb92981.md) | 252 | `result-track:3701419684183e1dfdb9298123ad33f9eb113eaaadcd4dd53452298b775c096b` |
| 14 | `theorem` | [FP.singleton](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/fp-singleton--1c3e0496aae1c202aa561358.md) | 263 | `result-track:1c3e0496aae1c202aa56135873682db2d8603a7d889d96772ae68ada08bdcf4d` |
| 15 | `theorem` | [FP.mul_two](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/fp-mul-two--2a2210d3dd55c211b648fef6.md) | 274 | `result-track:2a2210d3dd55c211b648fef6ab50fd687e3ef0dc339efcc5f1e0dac33fc6d042` |
| 16 | `theorem` | [FP.finset_prod](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant7557505485de91639ed3d804519a77358ab91c1d7eb7411d3f66fe052dcccfca.lean/declarations/fp-finset-prod--38d20ea2017edba5e1d1ae1c.md) | 292 | `result-track:38d20ea2017edba5e1d1ae1c9c5046d774dae5a5c0f3e34d81c7208682cee84f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
