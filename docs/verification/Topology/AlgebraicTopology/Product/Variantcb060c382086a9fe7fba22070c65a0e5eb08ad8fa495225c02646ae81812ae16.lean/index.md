# Verification target: GRWTSK.Topology.AlgebraicTopology.Product.Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36b5fa2735105fc09d65b61c644b93defe67c67b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36b5fa2735105fc09d65b61c644b93defe67c67b`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HomotopyRel.pi](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/homotopyrel-pi--8191e8917eed0ef302d4a729.md) | 69 | `declaration-track:8191e8917eed0ef302d4a7292e75f88e5942e9f8e811830bf595f635350ab7ea` |
| 2 | `def` | [Homotopy.prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/homotopy-prod--0cf72a94a3ac3ec48b60e15e.md) | 89 | `declaration-track:0cf72a94a3ac3ec48b60e15e87c917c2914f9e57a6ccd63788981215993dfc05` |
| 3 | `def` | [HomotopyRel.prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/homotopyrel-prod--a99f5eef88194addffa77318.md) | 98 | `declaration-track:a99f5eef88194addffa773180bf9e0f2257bdf33bccb4bfa280260fd4c9054cd` |
| 4 | `def` | [piHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/pihomotopy--4f4e50b8f927c7e75d79eac0.md) | 118 | `declaration-track:4f4e50b8f927c7e75d79eac089307c5c4df69b13553b27c0b0838df33a25f6db` |
| 5 | `def` | [pi](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/pi--eed0b123226b2b72b882b079.md) | 123 | `declaration-track:eed0b123226b2b72b882b07966e0df6af440dd23c05c16fb50da8ecb8fdd8120` |
| 6 | `theorem` | [pi_lift](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/pi-lift--fb38f461400072e319c398d9.md) | 127 | `result-track:fb38f461400072e319c398d9aad3a05da42aa84f64880fd58d4c1e2952d3a8d1` |
| 7 | `theorem` | [comp_pi_eq_pi_comp](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/comp-pi-eq-pi-comp--5f24d673f5b01c0dbe2dd18a.md) | 132 | `result-track:5f24d673f5b01c0dbe2dd18a4b768eedee7d1de19471e0498252564a51bdad8c` |
| 8 | `abbrev` | [proj](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/proj--28e1bd3edf2645b331e72fd9.md) | 141 | `declaration-track:28e1bd3edf2645b331e72fd901fc18cce686fd64cd4e1e8e46b9d58431ddb629` |
| 9 | `theorem` | [proj_pi](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/proj-pi--7ac6176af1f49fc263514c07.md) | 146 | `result-track:7ac6176af1f49fc263514c0737f635dd9c1de19a71ecce08e26d6997316f07e8` |
| 10 | `theorem` | [pi_proj](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/pi-proj--c6d7033f51457dae2ceb1d67.md) | 153 | `result-track:c6d7033f51457dae2ceb1d6733aec3d0e301504715a1061de481ee073009ac2b` |
| 11 | `def` | [prodHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/prodhomotopy--877290a0046bb9828e4828d8.md) | 169 | `declaration-track:877290a0046bb9828e4828d8f0789a9df9341df564e8750087a4a97ddb331cd8` |
| 12 | `def` | [prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/prod--89746465643565423d4775e6.md) | 174 | `declaration-track:89746465643565423d4775e65613fc3c424dd51e8edb1b9f5c6255e04fded48f` |
| 13 | `theorem` | [prod_lift](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/prod-lift--4f0549a324fbf433d661c9e1.md) | 180 | `result-track:4f0549a324fbf433d661c9e1782199136b19cbf3da558089bc16b3bd555c5fee` |
| 14 | `theorem` | [comp_prod_eq_prod_comp](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/comp-prod-eq-prod-comp--2478134b921ad680e596336f.md) | 187 | `result-track:2478134b921ad680e596336fa87fd83de7cddf1f22a321db1ba1ca4d0a5ad98a` |
| 15 | `abbrev` | [projLeft](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/projleft--021956bd05f26c2cc4e2ed27.md) | 195 | `declaration-track:021956bd05f26c2cc4e2ed27a1bc855a4753814c47766486f0f4425c9e210001` |
| 16 | `abbrev` | [projRight](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/projright--f57ab973d931bec122015b3c.md) | 199 | `declaration-track:f57ab973d931bec122015b3c6cedd0da44a67ca0ba79d795e106a329db21d3a1` |
| 17 | `theorem` | [projLeft_prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/projleft-prod--3935a7bcb2c37b41d89fb9aa.md) | 204 | `result-track:3935a7bcb2c37b41d89fb9aa62d7d890480ba0a9f1b83f008ff7c116830a049f` |
| 18 | `theorem` | [projRight_prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/projright-prod--c9df9eeec19a40118a0d15f4.md) | 210 | `result-track:c9df9eeec19a40118a0d15f47500dee80af010cfa4d8af3520a7d9c4fbdacc88` |
| 19 | `theorem` | [prod_projLeft_projRight](../../../../../mathematics/Topology/AlgebraicTopology/Product/Variantcb060c382086a9fe7fba22070c65a0e5eb08ad8fa495225c02646ae81812ae16.lean/declarations/prod-projleft-projright--fef153941174dc985207d158.md) | 216 | `result-track:fef153941174dc985207d1583be4b74a9259d6c59c00112d986ca52347606cf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
