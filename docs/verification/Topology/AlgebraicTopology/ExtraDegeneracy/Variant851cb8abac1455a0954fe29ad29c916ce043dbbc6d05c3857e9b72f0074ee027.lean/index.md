# Verification target: GRWTSK.Topology.AlgebraicTopology.ExtraDegeneracy.Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0eecf0332cf438167c7fb1a696a5f923dc843e32",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0eecf0332cf438167c7fb1a696a5f923dc843e32`.

Source path: `GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.AlternatingFaceMapComplex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.CechNerve` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Homotopy` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExtraDegeneracy](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/extradegeneracy--6c8a687512ddc96bcb61726b.md) | 70 | `declaration-track:6c8a687512ddc96bcb61726b7734943155b466e01132759254f76157fc1cb083` |
| 2 | `def` | [map](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/map--64e6e295da5911e2671e9987.md) | 90 | `declaration-track:64e6e295da5911e2671e9987fc7f3b220c16db895e25d04cb41b2e86337f0267` |
| 3 | `def` | [ofIso](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/ofiso--e682c99123a2730b86b71f58.md) | 115 | `declaration-track:e682c99123a2730b86b71f58d3f704be339a2ed85e82be88fb5140f70b26515a` |
| 4 | `def` | [shiftFun](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/shiftfun--1627873fb7285b875f78ddc6.md) | 156 | `declaration-track:1627873fb7285b875f78ddc6c26ec36d766a1c1d0b6cd6635a375a34b06e5afe` |
| 5 | `theorem` | [shiftFun_0](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/shiftfun-0--8759f85dae008525ac1728d3.md) | 162 | `result-track:8759f85dae008525ac1728d3f6ab636db09e6915a5cb9a8004b5326c9c57c90a` |
| 6 | `theorem` | [shiftFun_succ](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/shiftfun-succ--8356dd6fc6422626693ca08b.md) | 168 | `result-track:8356dd6fc6422626693ca08b5bcfbd91e8eb5b1218d067e18c5aaa2935830844` |
| 7 | `def` | [shift](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/shift--87dc4f5172b9c77b470c9e34.md) | 181 | `declaration-track:87dc4f5172b9c77b470c9e34b4b286544df29e82e9ebcb91cc7ac398724deb3f` |
| 8 | `def` | [extraDegeneracy](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/extradegeneracy--958bcf0681c405774a1b7161.md) | 201 | `declaration-track:958bcf0681c405774a1b7161995c173b1efe6e61ad64d322efc82ccae2927700` |
| 9 | `instance` | [nonempty_extraDegeneracy_standardSimplex](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/nonempty-extradegeneracy-standardsimplex--cd71be449a0df81de16a7c66.md) | 245 | `declaration-track:cd71be449a0df81de16a7c66cc2a0b6a9c2192aabc6dcd56c025bd277376eae9` |
| 10 | `def` | [ExtraDegeneracy.s](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/extradegeneracy-s--2f82d9047c6794b5b33800a7.md) | 272 | `declaration-track:2f82d9047c6794b5b33800a7c7516e43824fa73b42a612a7bf9a1109b53cfec7` |
| 11 | `theorem` | [ExtraDegeneracy.s_comp_π_0](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/extradegeneracy-s-comp-0--20f0d98c6eae969121c8d548.md) | 288 | `result-track:20f0d98c6eae969121c8d5489146baed23360c105ba8adf7139705e36baf2681` |
| 12 | `theorem` | [ExtraDegeneracy.s_comp_π_succ](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/extradegeneracy-s-comp-succ--f9ac7f59e54eb522ca33972d.md) | 297 | `result-track:f9ac7f59e54eb522ca33972d2e8027ccb55a22bf01ecfd723b36f0f6b7a5dce5` |
| 13 | `theorem` | [ExtraDegeneracy.s_comp_base](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/extradegeneracy-s-comp-base--7452f3b4c416bb9568b36371.md) | 308 | `result-track:7452f3b4c416bb9568b3637142e6c4d3376a18c12cd1667c6f2cbcb007c013fd` |
| 14 | `def` | [extraDegeneracy](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/extradegeneracy--8718dd584b47f3fdc33c63a0.md) | 314 | `declaration-track:8718dd584b47f3fdc33c63a02b28a8181203087f9a698567bf4be575a8bf0a26` |
| 15 | `def` | [homotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/declarations/homotopyequiv--b7e4fc870c3c7e5b1e80bd53.md) | 388 | `declaration-track:b7e4fc870c3c7e5b1e80bd53d8ad62e6c28065115f45f3fd2c2cf7be5a0c7dcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
