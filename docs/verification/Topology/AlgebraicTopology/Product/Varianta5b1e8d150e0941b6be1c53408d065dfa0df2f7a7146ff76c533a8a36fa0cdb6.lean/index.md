# Verification target: GRWTSK.Topology.AlgebraicTopology.Product.Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84af846cc544dc83fa8e42eaf9ea379f2378a713",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84af846cc544dc83fa8e42eaf9ea379f2378a713`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HomotopyRel.pi](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/homotopyrel-pi--4024be4cad1f2ad9ea6e23d6.md) | 61 | `declaration-track:4024be4cad1f2ad9ea6e23d6ed4e22702226e97f71b4484f6e6d6d3435dab895` |
| 2 | `def` | [Homotopy.prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/homotopy-prod--b961c3869c7dd4cc13ba2ae0.md) | 81 | `declaration-track:b961c3869c7dd4cc13ba2ae0931337602d69e6f7e1a946a4a866748c2353893e` |
| 3 | `def` | [HomotopyRel.prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/homotopyrel-prod--fbc1a387a284543c5b6bf076.md) | 90 | `declaration-track:fbc1a387a284543c5b6bf0764d4c4fa47622a7693b9279571e4806dbd6f0debc` |
| 4 | `def` | [piHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/pihomotopy--3cf6a5c7228d6ed3bebabe6b.md) | 110 | `declaration-track:3cf6a5c7228d6ed3bebabe6b2e427563c131e387c9813674a4deba9361e0a9ec` |
| 5 | `def` | [pi](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/pi--b63c68d57377985fa027a934.md) | 115 | `declaration-track:b63c68d57377985fa027a934e983d72240b9b037d9e87b1bc0a328233e123465` |
| 6 | `theorem` | [pi_lift](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/pi-lift--8a592a213de07ca3df62dae0.md) | 119 | `result-track:8a592a213de07ca3df62dae038369de2ed07457cc6c73dc99b50882276868a86` |
| 7 | `theorem` | [comp_pi_eq_pi_comp](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/comp-pi-eq-pi-comp--c5321ee587c11ad041d0bde7.md) | 124 | `result-track:c5321ee587c11ad041d0bde7d8f05dbdd5fca73e4e6b49fcaa72c2392356a70c` |
| 8 | `abbrev` | [proj](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/proj--f387645e6abca6b3ccc3dcdb.md) | 133 | `declaration-track:f387645e6abca6b3ccc3dcdbc58c8eac05d2f53f17f98293c8734c2f848aabe7` |
| 9 | `theorem` | [proj_pi](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/proj-pi--bc9d34180a203cce5576bf68.md) | 138 | `result-track:bc9d34180a203cce5576bf689052208ba5e4b94a807b9ea618a9415cda24dd8f` |
| 10 | `theorem` | [pi_proj](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/pi-proj--eb158eb7e4185023aa087b2e.md) | 145 | `result-track:eb158eb7e4185023aa087b2e35f52557393657050dd339e997a638b6bfe5e1ac` |
| 11 | `def` | [prodHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/prodhomotopy--d5b60762343a710d4f0bd4c9.md) | 161 | `declaration-track:d5b60762343a710d4f0bd4c98a82ab60c189bf6322bd6adb85ea9fbd23f76d19` |
| 12 | `def` | [prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/prod--b71046dcd22c23ab25e2132b.md) | 166 | `declaration-track:b71046dcd22c23ab25e2132bb7a2632dfad895c5c5472fc722d4ca38891be8d5` |
| 13 | `theorem` | [prod_lift](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/prod-lift--f4e9498a59cc755b9e5bff76.md) | 172 | `result-track:f4e9498a59cc755b9e5bff768b63f08a5e373416a9325923f39e617ecf632125` |
| 14 | `theorem` | [comp_prod_eq_prod_comp](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/comp-prod-eq-prod-comp--06b6aa30d1001a8cb8959b39.md) | 179 | `result-track:06b6aa30d1001a8cb8959b39afef8e598513bd775df2f82ece85f8a75aa3e993` |
| 15 | `abbrev` | [projLeft](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/projleft--c576598991d886da0ff9e28d.md) | 187 | `declaration-track:c576598991d886da0ff9e28da44cbb84bec78467be4b028d06ce049aab100152` |
| 16 | `abbrev` | [projRight](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/projright--2e2d1c01c412c727220fa16d.md) | 191 | `declaration-track:2e2d1c01c412c727220fa16d83486cce12de40777d2853b63c74720b18b2b6c1` |
| 17 | `theorem` | [projLeft_prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/projleft-prod--6018581da3abbc80c110f053.md) | 196 | `result-track:6018581da3abbc80c110f05319c59dee5c111e2670203a7e745cac6658772f9a` |
| 18 | `theorem` | [projRight_prod](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/projright-prod--5df905f3b023993ed71a4d70.md) | 202 | `result-track:5df905f3b023993ed71a4d706d21a8f04adbb8f0f64be5df8d0956e727d40db6` |
| 19 | `theorem` | [prod_projLeft_projRight](../../../../../mathematics/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/declarations/prod-projleft-projright--18c98f6962154136183fc12d.md) | 208 | `result-track:18c98f6962154136183fc12d4d413b342e76f2bad37b809cdb2705b9aae1beba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
