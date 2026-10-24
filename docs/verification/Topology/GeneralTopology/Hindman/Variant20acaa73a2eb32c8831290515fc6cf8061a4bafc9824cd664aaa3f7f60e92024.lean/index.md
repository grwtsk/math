# Verification target: GRWTSK.Topology.GeneralTopology.Hindman.Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6bb1c6db54ca2124297ce7094ea64406de55ecf",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6bb1c6db54ca2124297ce7094ea64406de55ecf`.

Source path: `GRWTSK/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.StoneCech` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Semigroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Stream.Init` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ultrafilter.mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/ultrafilter-mul--5b76228eefc34ed8c9bee912.md) | 51 | `declaration-track:5b76228eefc34ed8c9bee912c2587ab65213ebcb820abe0e6ecc6536b4702107` |
| 2 | `theorem` | [Ultrafilter.eventually_mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/ultrafilter-eventually-mul--92def3968f642bc03323df15.md) | 60 | `result-track:92def3968f642bc03323df157362f1c7bf92613ce2a73e161cadf7cfeb566956` |
| 3 | `structure` | [on](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/on--b215f558237258dc95b2a18b.md) | 69 | `declaration-track:b215f558237258dc95b2a18bd171536eac42df43adaff0b6bfc4f9b5b387d0ea` |
| 4 | `def` | [Ultrafilter.semigroup](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/ultrafilter-semigroup--5b7ce4bdb27c40ed772c88b7.md) | 70 | `declaration-track:5b7ce4bdb27c40ed772c88b785f8127d56da90f89d99aaf0cbbf360c9b4247eb` |
| 5 | `theorem` | [Ultrafilter.continuous_mul_left](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/ultrafilter-continuous-mul-left--4f339cf6b820dae49e44e73e.md) | 83 | `result-track:4f339cf6b820dae49e44e73e40ab2fd1daa79049f8ddc9d8dd7cfc5fda71b840` |
| 6 | `inductive` | [FS](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/fs--fab6f30f8666f41761cc0c4c.md) | 97 | `declaration-track:fab6f30f8666f41761cc0c4cd9b480fbea3844c125eb1cd7ea372ece4c0e6036` |
| 7 | `inductive` | [FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/fp--e8d9b481904c51bd1b2857d7.md) | 107 | `declaration-track:e8d9b481904c51bd1b2857d7b507e8b25ce6b831569579a7d9e119db774488e5` |
| 8 | `theorem` | [FP.mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/fp-mul--9bcde648cb6e7a74d312d040.md) | 119 | `result-track:9bcde648cb6e7a74d312d04005a8e88bc4f5c833e8ead2a11c1b9859cdf9ade5` |
| 9 | `theorem` | [exists_idempotent_ultrafilter_le_FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/exists-idempotent-ultrafilter-le-fp--7da3b1e279fc9a426d3a1071.md) | 138 | `result-track:7da3b1e279fc9a426d3a107189c40a05ca349edc4ec82acbe91d1041d7ff987c` |
| 10 | `theorem` | [exists_FP_of_large](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/exists-fp-of-large--4080a756f019b0c277db54ae.md) | 174 | `result-track:4080a756f019b0c277db54aeb6817ade945fab33fb3255fdc646ece4239fef91` |
| 11 | `theorem` | [FP_partition_regular](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/fp-partition-regular--d421f7b971925e96e07d554d.md) | 217 | `result-track:d421f7b971925e96e07d554d6cd611a47171f463e7c588249e1c4f1a4e8cdb2d` |
| 12 | `theorem` | [exists_FP_of_finite_cover](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/exists-fp-of-finite-cover--8d65eb2c3cde87f181cf1dc3.md) | 232 | `result-track:8d65eb2c3cde87f181cf1dc3a7752457d8e36414bab19551288bec05fc980df0` |
| 13 | `theorem` | [FP_drop_subset_FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/fp-drop-subset-fp--ab35223e052a46bdc606edac.md) | 244 | `result-track:ab35223e052a46bdc606edaccb8926adf8422b2b3825092cd8c03e876d893726` |
| 14 | `theorem` | [FP.singleton](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/fp-singleton--322cbc41005c2835ffcb0d74.md) | 255 | `result-track:322cbc41005c2835ffcb0d74aa13f0b6f585fdfb77ab24d2bd4f97ca778641e4` |
| 15 | `theorem` | [FP.mul_two](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/fp-mul-two--83dc9ea251f88d67a5894992.md) | 266 | `result-track:83dc9ea251f88d67a5894992f0890ff3cc72ce7d9f6186c275dfac5b18223156` |
| 16 | `theorem` | [FP.finset_prod](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/declarations/fp-finset-prod--9232aa12013243d62ad0642e.md) | 284 | `result-track:9232aa12013243d62ad0642e7cfb52a1fb84eb052c80d9bcfe3feb84522e0c31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
