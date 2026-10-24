# Verification target: GRWTSK.Topology.GeneralTopology.Constructions.Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d67f7445c63f0f0ae76311006347ba664bea9f25",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d67f7445c63f0f0ae76311006347ba664bea9f25`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bornology.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Prod.instBornology](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/prod-instbornology--09f3afb3738c929523f267a8.md) | 34 | `declaration-track:09f3afb3738c929523f267a80181cf4ca7ad895d3949ae50619e6bee2169aaab` |
| 2 | `instance` | [Pi.instBornology](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/pi-instbornology--6e2a7b4fe29e85801c11d3bb.md) | 40 | `declaration-track:6e2a7b4fe29e85801c11d3bb5fb8c09d213152853d826a93ac8954a3dcb071a7` |
| 3 | `def` | [Bornology.induced](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/bornology-induced--889a91713156a4cd92c3e1e7.md) | 47 | `declaration-track:889a91713156a4cd92c3e1e78d65259224d4d9b51ba692920fad03e83f1ebc76` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/instance--c684415d94a9ae4e982e59d4.md) | 53 | `declaration-track:c684415d94a9ae4e982e59d4a7732bf2b7e38a1251dd1ca16aee18dcdc2f7e7e` |
| 5 | `theorem` | [cobounded_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/cobounded-prod--46466ea91385d6435f035904.md) | 63 | `result-track:46466ea91385d6435f03590425f78c6c451d8baf00f41e943ec550946750c5a0` |
| 6 | `theorem` | [isBounded_image_fst_and_snd](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/isbounded-image-fst-and-snd--5524ef22376a7fb24b87bc10.md) | 67 | `result-track:5524ef22376a7fb24b87bc1030388ee0bedd83cb11264a3917758ca411be24fd` |
| 7 | `theorem` | [IsBounded.fst_of_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/isbounded-fst-of-prod--1fe8b341c145264a6bdc8e51.md) | 74 | `result-track:1fe8b341c145264a6bdc8e51d59b02f12cab0533771a71220ae33b9218549f74` |
| 8 | `theorem` | [IsBounded.snd_of_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/isbounded-snd-of-prod--ae8288529aab12e3284b0a1f.md) | 78 | `result-track:ae8288529aab12e3284b0a1fa1b55159dac42c069f08676bcf15c1b99d954874` |
| 9 | `theorem` | [IsBounded.prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/isbounded-prod--3fb5f948f3cb3f7225dd84b2.md) | 82 | `result-track:3fb5f948f3cb3f7225dd84b2254c77f81979a536a98fe00494837c071ff96642` |
| 10 | `theorem` | [isBounded_prod_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/isbounded-prod-of-nonempty--5aa07f0d1a9d2eb4f90ba436.md) | 87 | `result-track:5aa07f0d1a9d2eb4f90ba43648aacc816079b24e10760048e2b0b031e8f4804c` |
| 11 | `theorem` | [isBounded_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/isbounded-prod--aa774612fec22aac7d8b712f.md) | 92 | `result-track:aa774612fec22aac7d8b712f0ed9bf0e756af278f29c97231617dc3077c84622` |
| 12 | `theorem` | [isBounded_prod_self](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/isbounded-prod-self--8e09142b3cb9b5fc2c180e8a.md) | 98 | `result-track:8e09142b3cb9b5fc2c180e8a56ee52611a30743277be1b03778423406130bb68` |
| 13 | `theorem` | [cobounded_pi](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/cobounded-pi--c65f65a3cf1a3435123dea4e.md) | 108 | `result-track:c65f65a3cf1a3435123dea4e9f128041059c9bb0406d32a77e6d797937573ca3` |
| 14 | `theorem` | [forall_isBounded_image_eval_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/forall-isbounded-image-eval-iff--e4218a77bc6fb57eb2646384.md) | 112 | `result-track:e4218a77bc6fb57eb264638475d410f58643f694c456463ebada6e22a1feadd2` |
| 15 | `theorem` | [IsBounded.pi](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/isbounded-pi--7ec68162c39f8e14d9c375bb.md) | 117 | `result-track:7ec68162c39f8e14d9c375bbc222452777f35dccc6f5632b3d23743b80c08b76` |
| 16 | `theorem` | [isBounded_pi_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/isbounded-pi-of-nonempty--d67c0664762cd5e78a38103a.md) | 121 | `result-track:d67c0664762cd5e78a38103ad39c99d6b3af68b0fdfc2f70defbdd94d4a4ab83` |
| 17 | `theorem` | [isBounded_pi](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/isbounded-pi--98025a3eab0cbbea2c2e6892.md) | 126 | `result-track:98025a3eab0cbbea2c2e6892aac31918b9402e4b89e395fb55e5317dc741a5cd` |
| 18 | `theorem` | [isBounded_induced](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/isbounded-induced--807bbf3f9c51fbbb313ce1d2.md) | 139 | `result-track:807bbf3f9c51fbbb313ce1d2674f70217710355cd9d0388f227441e0088be0d9` |
| 19 | `theorem` | [isBounded_image_subtype_val](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/isbounded-image-subtype-val--ea2f620be90d0305ba4de367.md) | 144 | `result-track:ea2f620be90d0305ba4de367ebd4a7b737ebe1eab1a651ad6c90b2a46af85541` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/instance--64ad9e15b82ecdabb29a44ad.md) | 158 | `declaration-track:64ad9e15b82ecdabb29a44ada2d71688d4ba383be8f4335725a583934757af84` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/instance--f0cfb7a73511a55bf8d8119c.md) | 161 | `declaration-track:f0cfb7a73511a55bf8d8119c9aeb9e4548ca684ebcf76b2b01911481cfd25beb` |
| 22 | `theorem` | [boundedSpace_induced_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/boundedspace-induced-iff--423d9ab63d46740576036462.md) | 164 | `result-track:423d9ab63d467405760364623cfe56becf0dcceeaaae52e6b2a87a5b0dc95d53` |
| 23 | `theorem` | [boundedSpace_subtype_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/boundedspace-subtype-iff--7694307582d18752abb08a66.md) | 170 | `result-track:7694307582d18752abb08a660737c6e102170ef16ceec6fb3e32740eec09d855` |
| 24 | `theorem` | [boundedSpace_val_set_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/boundedspace-val-set-iff--0a2fdb92b1f9b125e586647a.md) | 175 | `result-track:0a2fdb92b1f9b125e586647a4612fac027dc8d5bcb4be283e44e5e0f7073d5c4` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/instance--33f5fe3a60e718529ffb050f.md) | 185 | `declaration-track:33f5fe3a60e718529ffb050f053ef23e9497547660659060cb312d053d5685fc` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/instance--8b11d231f34560b0438a5339.md) | 195 | `declaration-track:8b11d231f34560b0438a533979f80947a71f7b37e24c72c2f075dc4e2eec6be2` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/instance--12e498b4c5376e1c2e0372a1.md) | 198 | `declaration-track:12e498b4c5376e1c2e0372a107ba96122c5ad8288a19a4f3968195f8a4edc57f` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/instance--02a8e1805dc63beb428b9d4d.md) | 201 | `declaration-track:02a8e1805dc63beb428b9d4d2b21cb8c6fa4c6538581157c5c21539fa3753bfd` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/instance--f18e34c7b53fd8b473b39ca4.md) | 204 | `declaration-track:f18e34c7b53fd8b473b39ca4d1b9f25f0c8eb20a0ea27160b0586737d86a116d` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/instance--1131f398cbaa949dc5ac4be3.md) | 214 | `declaration-track:1131f398cbaa949dc5ac4be3c802639e0f6d7186bcb422bcf56c24d5d4ce1478` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant95849c6fef90fa1b52a8504af91dae94d3ef26e5482de7b8da306122ef30b91d.lean/declarations/instance--16eb9dfd80c7a4d53c608e21.md) | 217 | `declaration-track:16eb9dfd80c7a4d53c608e214fdaee96975e2a66acdb2831a4f8c7e141261da3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
