# Verification target: GRWTSK.Topology.GeneralTopology.Antidiagonal.Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc0fdb1b5fc34b7a2f62518b8609ba247b9dde06",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc0fdb1b5fc34b7a2f62518b8609ba247b9dde06`.

Source path: `GRWTSK/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.NatAntidiagonal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Antidiagonal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Init.IteSimp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal'](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/declarations/antidiagonal--99faacd4484b6ae9627a7f6c.md) | 43 | `declaration-track:99faacd4484b6ae9627a7f6c34ca3cb601af5389c88a603dc9c7c4a4a39282d4` |
| 2 | `def` | [antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/declarations/antidiagonal--9d08f8a00535012083b74808.md) | 50 | `declaration-track:9d08f8a00535012083b748086d19a4dfe4b5d063c3a8f728e34c4bd998e73825` |
| 3 | `theorem` | [mem_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/declarations/mem-antidiagonal--5c44792c5c252b13dd8b1c64.md) | 54 | `result-track:5c44792c5c252b13dd8b1c64c2573a822bf51df895e8a85dd8efbfaca96f944a` |
| 4 | `theorem` | [swap_mem_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/declarations/swap-mem-antidiagonal--047c79ae170ebf91caaab9ce.md) | 61 | `result-track:047c79ae170ebf91caaab9cea41d19d534a8065b32a706be97f36c9d340e5c4c` |
| 5 | `theorem` | [antidiagonal_filter_fst_eq](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/declarations/antidiagonal-filter-fst-eq--82aed9b8e8b0bda92e704765.md) | 66 | `result-track:82aed9b8e8b0bda92e704765162217c0fff3b9a256794f18f6aff883c58c74b1` |
| 6 | `theorem` | [antidiagonal_filter_snd_eq](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/declarations/antidiagonal-filter-snd-eq--fb2d6c22c3672719aa3721d0.md) | 81 | `result-track:fb2d6c22c3672719aa3721d01d657e0eeeb8306809cd13119ccf6278e9035169` |
| 7 | `theorem` | [antidiagonal_zero](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/declarations/antidiagonal-zero--2aa6de12a53a646b054bffb0.md) | 97 | `result-track:2aa6de12a53a646b054bffb085c7cc391602f9108c16d3bc392c5bda356cc105` |
| 8 | `theorem` | [prod_antidiagonal_swap](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/declarations/prod-antidiagonal-swap--25fe8a8bd6ce42fd0c7407a6.md) | 101 | `result-track:25fe8a8bd6ce42fd0c7407a64ecd72ab5e4044162befa8f90b454feab4576c37` |
| 9 | `theorem` | [antidiagonal_single](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/declarations/antidiagonal-single--d654d933d1f617e1f68f89a1.md) | 111 | `result-track:d654d933d1f617e1f68f89a15bf2cbe684e87de5f091ed92433bff215b4cf569` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
