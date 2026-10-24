# Verification target: GRWTSK.Topology.GeneralTopology.Equitabilise.Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a95d4de4313b67236c28a5b4ef792a89b9932d2d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a95d4de4313b67236c28a5b4ef792a89b9932d2d`.

Source path: `GRWTSK/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [equitabilise_aux](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/declarations/equitabilise-aux--64ddaf95563e587b6ba54fb9.md) | 45 | `result-track:64ddaf95563e587b6ba54fb9abeff069a25e97f2f60296461e0b5499b160a74f` |
| 2 | `def` | [equitabilise](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/declarations/equitabilise--cb6e08c67279d908698cf7d6.md) | 149 | `declaration-track:cb6e08c67279d908698cf7d6893a948a8371c39e9472dafce2e9755e8be93e91` |
| 3 | `theorem` | [card_eq_of_mem_parts_equitabilise](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/declarations/card-eq-of-mem-parts-equitabilise--61c2aeddb9c6f36b6444f470.md) | 154 | `result-track:61c2aeddb9c6f36b6444f470135b9697d583b717404ed9c076727accb36cd1b4` |
| 4 | `theorem` | [equitabilise_isEquipartition](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/declarations/equitabilise-isequipartition--f14cfa30c7e7fa50c90a1a75.md) | 158 | `result-track:f14cfa30c7e7fa50c90a1a753c860fd7234817b59ed4b5c073d23e0db425359d` |
| 5 | `theorem` | [card_filter_equitabilise_big](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/declarations/card-filter-equitabilise-big--943fbdf28cfb81ac3613d27c.md) | 163 | `result-track:943fbdf28cfb81ac3613d27c38071b476bfeb5fc25778ff9037860cfb0177123` |
| 6 | `theorem` | [card_filter_equitabilise_small](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/declarations/card-filter-equitabilise-small--db445526bd943dddde130573.md) | 166 | `result-track:db445526bd943dddde13057383cb5dbe35bdaaf5da8eb462842ab63d4108c63c` |
| 7 | `theorem` | [card_parts_equitabilise](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/declarations/card-parts-equitabilise--af7258a610b037e6d9f1a493.md) | 183 | `result-track:af7258a610b037e6d9f1a4938864d44cd6af6dca6d49495f0fd6f3e85d6a150d` |
| 8 | `theorem` | [card_parts_equitabilise_subset_le](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/declarations/card-parts-equitabilise-subset-le--b5e3ae2a285a8d145415307f.md) | 188 | `result-track:b5e3ae2a285a8d145415307fa0594e593ee05d3f02abc3bc250f9860bd8e9f8c` |
| 9 | `theorem` | [exists_equipartition_card_eq](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/declarations/exists-equipartition-card-eq--76a794f278d0edecac78d84e.md) | 195 | `result-track:76a794f278d0edecac78d84e4a149886551eac10fd82f6e5700f318bc5172017` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
