# Verification target: GRWTSK.Topology.GeneralTopology.Equitabilise.Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "354810ffd425ba9530a9766bb5820a6e96100598",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `354810ffd425ba9530a9766bb5820a6e96100598`.

Source path: `GRWTSK/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Canonical` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Equipartition` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [equitabilise_aux](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean/declarations/equitabilise-aux--11c82485f35920fc4c32808e.md) | 49 | `result-track:11c82485f35920fc4c32808e9af032312f125dad774226ff1b8e1fd9b54b8782` |
| 2 | `def` | [equitabilise](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean/declarations/equitabilise--8f76f942e1314a002242049f.md) | 152 | `declaration-track:8f76f942e1314a002242049fed7d7df485e401d4f3ac2e7db11951fb7f39e057` |
| 3 | `theorem` | [card_eq_of_mem_parts_equitabilise](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean/declarations/card-eq-of-mem-parts-equitabilise--7b39a1420d434b03ddf547e1.md) | 157 | `result-track:7b39a1420d434b03ddf547e1642b90539da699528fc28cbdfca0b5a237a8eef2` |
| 4 | `theorem` | [equitabilise_isEquipartition](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean/declarations/equitabilise-isequipartition--0db75dbeff622c83b5bdf136.md) | 161 | `result-track:0db75dbeff622c83b5bdf136f18ea1b6a77d671d7045b116a917e89c48d493b4` |
| 5 | `theorem` | [card_filter_equitabilise_big](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean/declarations/card-filter-equitabilise-big--143ecf3a872811edce7a0bb3.md) | 166 | `result-track:143ecf3a872811edce7a0bb3889bd022b5d38e0a4f7f4c382273dfa9bd638d22` |
| 6 | `theorem` | [card_filter_equitabilise_small](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean/declarations/card-filter-equitabilise-small--26ca56535cfbe1c698a77ebf.md) | 169 | `result-track:26ca56535cfbe1c698a77ebfe3a7c188b7a6cd3f8ee6ef98291334d2d1b29a82` |
| 7 | `theorem` | [card_parts_equitabilise](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean/declarations/card-parts-equitabilise--b983969b07d5e24188b2bfdb.md) | 186 | `result-track:b983969b07d5e24188b2bfdbd0879ae50dbcae291bf9dd0934fbaf38ac5182b6` |
| 8 | `theorem` | [card_parts_equitabilise_subset_le](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean/declarations/card-parts-equitabilise-subset-le--23d7224b321f2ef961c7c862.md) | 192 | `result-track:23d7224b321f2ef961c7c862b484c25720e9861e9f9f1f794d9d5be0376e8335` |
| 9 | `theorem` | [exists_equipartition_card_eq](../../../../../mathematics/Topology/GeneralTopology/Equitabilise/Variant8e15c099dd311afe0e368eb9d111bc2209f371274db28a2fb21039c7ebaa272f.lean/declarations/exists-equipartition-card-eq--9a80fda64a903316bda56127.md) | 199 | `result-track:9a80fda64a903316bda5612777f38bb8311552327a34c4af1cf7c084fa99d278` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
