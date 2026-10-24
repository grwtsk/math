# Verification target: GRWTSK.Topology.GeneralTopology.Defs.Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f471717aa748a9a4f7bf2eec89adaca9d8bb2816",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f471717aa748a9a4f7bf2eec89adaca9d8bb2816`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Piecewise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atTop](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/attop--2ec10b55ef8ca751449c5dd2.md) | 38 | `declaration-track:2ec10b55ef8ca751449c5dd23657cc848d0caa2127e337005efc03c35dc12f11` |
| 2 | `def` | [atBot](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/atbot--c238ef30b8a32347aa92c7fa.md) | 45 | `declaration-track:c238ef30b8a32347aa92c7faa84d967eb491093bd8c8808ed2bfe7477b6c2de0` |
| 3 | `theorem` | [mem_atTop](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/mem-attop--8e279a8a435c821ed0732273.md) | 48 | `result-track:8e279a8a435c821ed0732273fcd2219a8a88f6b92418b8238edac26d2551adb8` |
| 4 | `theorem` | [Ici_mem_atTop](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/ici-mem-attop--1a6a6dac591f0f7156d78673.md) | 51 | `result-track:1a6a6dac591f0f7156d78673380e3797719dd91d58f1e9d833023b9fae65cb2e` |
| 5 | `theorem` | [Ioi_mem_atTop](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/ioi-mem-attop--63490f23db08207d001a9eb1.md) | 54 | `result-track:63490f23db08207d001a9eb1966c92d4a1a453ea9644fc1a78db7037c2678081` |
| 6 | `theorem` | [mem_atBot](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/mem-atbot--a8bc4cfbd00ce552fa0ef8ec.md) | 59 | `result-track:a8bc4cfbd00ce552fa0ef8ece7b6da6c7d33aa679d37968f5be89df750efddb6` |
| 7 | `theorem` | [Iic_mem_atBot](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/iic-mem-atbot--4069d6670f5b1f30faccb619.md) | 62 | `result-track:4069d6670f5b1f30faccb6199c48055b1a1a212e1a31dd9f9ca04649f5d558cd` |
| 8 | `theorem` | [Iio_mem_atBot](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/iio-mem-atbot--7b1ece482aa23d7c587e0aec.md) | 65 | `result-track:7b1ece482aa23d7c587e0aec55388a8589a67aaaf2ae271026cf04eddec58799` |
| 9 | `theorem` | [eventually_ge_atTop](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/eventually-ge-attop--39fe8ed99d604989f8b93929.md) | 70 | `result-track:39fe8ed99d604989f8b939299530e6adb8c0b6417c3d706036eee3839ccb4c5f` |
| 10 | `theorem` | [eventually_le_atBot](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/eventually-le-atbot--805abdef750b99ee61a057b0.md) | 73 | `result-track:805abdef750b99ee61a057b06c705815b4e2deae4328120bfebd8ebd2def8907` |
| 11 | `theorem` | [eventually_gt_atTop](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/eventually-gt-attop--617382dd590d0c4f38102e7c.md) | 76 | `result-track:617382dd590d0c4f38102e7ce12519861e2412409b4643a2ad61ff20511f2e66` |
| 12 | `theorem` | [eventually_ne_atTop](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/eventually-ne-attop--17a9fe2f012419228f97d5f0.md) | 79 | `result-track:17a9fe2f012419228f97d5f012375b8b3c4adb94a168a63fa738634f236a002a` |
| 13 | `theorem` | [eventually_lt_atBot](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/eventually-lt-atbot--5a862370239a7c1ebee4403b.md) | 82 | `result-track:5a862370239a7c1ebee4403b32abcbe9e6e0c0ca33c76457599cf7fa2a23cc7a` |
| 14 | `theorem` | [eventually_ne_atBot](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/eventually-ne-atbot--afef9a2bbb96b55822a016f9.md) | 85 | `result-track:afef9a2bbb96b55822a016f9a4e6b5542a54b691085b6492cedbfe80ed9b7ab1` |
| 15 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.AtTop.Variant2a512091da00bd267f418e912133435a7a1cc7f7b12ef0305085a011ac24b91b.IsTop.atTop_eq](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/root-grwtsk-topology-generaltopology-attop-variant2a512091da00bd267f418e--bc684d35338d196954cfd62e.md) | 88 | `result-track:bc684d35338d196954cfd62ee27b579e7188ab39367612914b8403fcbbaaec86` |
| 16 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.AtTop.Variant2a512091da00bd267f418e912133435a7a1cc7f7b12ef0305085a011ac24b91b.IsBot.atBot_eq](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/root-grwtsk-topology-generaltopology-attop-variant2a512091da00bd267f418e--f579bf03d2e780ec94d9f659.md) | 91 | `result-track:f579bf03d2e780ec94d9f65950eef93cb4a93f20612301949cf6a97a8a6691f4` |
| 17 | `theorem` | [atTop_eq_generate_Ici](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/attop-eq-generate-ici--4e3321eed4cc02a6380bdf82.md) | 94 | `result-track:4e3321eed4cc02a6380bdf82592d1b70c287a9c012411ced3a358c5d2400f377` |
| 18 | `theorem` | [Frequently.forall_exists_of_atTop](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/frequently-forall-exists-of-attop--25429b676d55c9b4965cf466.md) | 97 | `result-track:25429b676d55c9b4965cf466f393903c2bccbb9542acbe6ebcb0dd7c30fd6cf9` |
| 19 | `theorem` | [Frequently.forall_exists_of_atBot](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/frequently-forall-exists-of-atbot--5c198255e9c7a22524194989.md) | 103 | `result-track:5c198255e9c7a225241949894e4f61a079fafef9b5b6a05f1ecb5407cec9f8e1` |
| 20 | `lemma` | [atTop_eq_generate_of_forall_exists_le](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/attop-eq-generate-of-forall-exists-le--c6d0e17617679a24a87b95a6.md) | 107 | `result-track:c6d0e17617679a24a87b95a6595ca4658e9a7f9b4d667613c154f24567a7cf03` |
| 21 | `lemma` | [atTop_eq_generate_of_not_bddAbove](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/attop-eq-generate-of-not-bddabove--28714c5c311e796df8bf787e.md) | 121 | `result-track:28714c5c311e796df8bf787e6aa4c290a4c672926d067d314bb6f767fb22135d` |
| 22 | `theorem` | [Monotone.piecewise_eventually_eq_iUnion](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/monotone-piecewise-eventually-eq-iunion--ab3b7edc210eed65d51c8154.md) | 131 | `result-track:ab3b7edc210eed65d51c815414de93fa424242316eeba24b09fcd1bc82b7b17b` |
| 23 | `theorem` | [Antitone.piecewise_eventually_eq_iInter](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant21fec55578b0422d93fc3e2d7b987b4b59f306f7b851c82e8e85df28c03bc462.lean/declarations/antitone-piecewise-eventually-eq-iinter--acb4793fda53a4b50205e219.md) | 142 | `result-track:acb4793fda53a4b50205e21996d15073efaaa85b78024453a39182831acb9e13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
