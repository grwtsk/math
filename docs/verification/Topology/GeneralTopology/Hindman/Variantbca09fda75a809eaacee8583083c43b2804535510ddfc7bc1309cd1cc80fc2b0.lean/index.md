# Verification target: GRWTSK.Topology.GeneralTopology.Hindman.Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4eb67fbd0e2a57a2ae106b45fc9250e3f576f84f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4eb67fbd0e2a57a2ae106b45fc9250e3f576f84f`.

Source path: `GRWTSK/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Stream.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Semigroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ultrafilter.mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/ultrafilter-mul--11be42cd81ea70014de0f030.md) | 58 | `declaration-track:11be42cd81ea70014de0f030e56d9ea2da45eb9ef20d60aba58a91e1d5fbb66f` |
| 2 | `theorem` | [Ultrafilter.eventually_mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/ultrafilter-eventually-mul--e21df681b22b6e7b2db86483.md) | 65 | `result-track:e21df681b22b6e7b2db86483aaf6029079a61c128da1bbb57c36a1a4da0d69ec` |
| 3 | `structure` | [on](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/on--91487780e32b4fec82390266.md) | 72 | `declaration-track:91487780e32b4fec82390266986d0fc6e43ce6606b892917a405a1329c38dc4a` |
| 4 | `def` | [Ultrafilter.semigroup](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/ultrafilter-semigroup--6b8b8db6ac8dfdede8cac534.md) | 73 | `declaration-track:6b8b8db6ac8dfdede8cac534916f81168c3868845858ff93fa409f2ae0786854` |
| 5 | `theorem` | [Ultrafilter.continuous_mul_left](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/ultrafilter-continuous-mul-left--303a55155c2c082bfb20cf00.md) | 83 | `result-track:303a55155c2c082bfb20cf002890a3e8917aff403f3a83559aa18f56e08d6a87` |
| 6 | `inductive` | [FS](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/fs--314e555f7dd9cb1dde79de67.md) | 92 | `declaration-track:314e555f7dd9cb1dde79de678efeab90fdbcbf52b0c764aa482dca6876e7cb60` |
| 7 | `inductive` | [FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/fp--b98774cc5684e43e06ddcd5c.md) | 100 | `declaration-track:b98774cc5684e43e06ddcd5cc66a54f31410cc2e12e2681f6a197b67c77ecbf0` |
| 8 | `theorem` | [FP.mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/fp-mul--b8f2765b91ca6d465d35f413.md) | 110 | `result-track:b8f2765b91ca6d465d35f41380227bf40ffd783b17a22a91fa7408acc6fba1df` |
| 9 | `theorem` | [exists_idempotent_ultrafilter_le_FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/exists-idempotent-ultrafilter-le-fp--d0b316db916a6f53d4282a21.md) | 127 | `result-track:d0b316db916a6f53d4282a216c5df36774577fb16fde1683bf1f3973ec2bbe2d` |
| 10 | `theorem` | [exists_FP_of_large](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/exists-fp-of-large--e51f287e86611c8ec31fcaa9.md) | 157 | `result-track:e51f287e86611c8ec31fcaa9eff5fbe95daaa2d4d17900c7d9c4df73a4e5c2e7` |
| 11 | `theorem` | [FP_partition_regular](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/fp-partition-regular--8c437e12f9612f256d675f03.md) | 198 | `result-track:8c437e12f9612f256d675f0316f767cf7e4a009400bf2f0de1ccdafde466483b` |
| 12 | `theorem` | [exists_FP_of_finite_cover](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/exists-fp-of-finite-cover--4792f00979aa6f19b5bc2591.md) | 209 | `result-track:4792f00979aa6f19b5bc259121ec42bfc3febf396f13e3bf23f1f7981be78406` |
| 13 | `theorem` | [FP_drop_subset_FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/fp-drop-subset-fp--722c7cd91869d92f74037fd4.md) | 217 | `result-track:722c7cd91869d92f74037fd4ca25457cd5dab46df2eb2a144423cfa10e90f9ca` |
| 14 | `theorem` | [FP.singleton](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/fp-singleton--c7d96e98e57961e11d984bf1.md) | 225 | `result-track:c7d96e98e57961e11d984bf157840a40c978a62f1a89c2cfd3f49de9437bb184` |
| 15 | `theorem` | [FP.mul_two](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/fp-mul-two--b17c1a0baf456d224a9d21c2.md) | 231 | `result-track:b17c1a0baf456d224a9d21c2a7af2a86b486bec95d70a263cba8617e574ef282` |
| 16 | `theorem` | [FP.finset_prod](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/declarations/fp-finset-prod--baa0c91d7f21f759c1e2fce2.md) | 245 | `result-track:baa0c91d7f21f759c1e2fce2d9c6a1e7dfe0a62d26f8065ea4f59cc5b07b7f32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
