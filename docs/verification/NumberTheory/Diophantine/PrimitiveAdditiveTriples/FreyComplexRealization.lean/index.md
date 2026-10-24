# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexRealization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34cfb3133fcea2444cd167239a9ee89fff9f888b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34cfb3133fcea2444cd167239a9ee89fff9f888b`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBaseChange`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedEnergy`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Analysis.Complex.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ComplexStage](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/complexstage--7b52f76aa9b010e1c3caf48c.md) | 24 | `declaration-track:7b52f76aa9b010e1c3caf48c5014425b4b9a00dbb21ff5a21c127fdf0e185fda` |
| 2 | `def` | [embed](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/embed--ce23b440a436ad571ff9586f.md) | 27 | `declaration-track:ce23b440a436ad571ff9586f8b41f75d0991b3f307f3f4df188a8eaba819c6f4` |
| 3 | `def` | [coefficients](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/coefficients--960b864b02a7ef491c4ccd52.md) | 30 | `declaration-track:960b864b02a7ef491c4ccd52cafd0ecb38820ca8f25df4f83021d93ce6507adf` |
| 4 | `theorem` | [coefficients_embed](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/coefficients-embed--b776c19c1ed24e69955391d4.md) | 33 | `result-track:b776c19c1ed24e69955391d4577bb84fd6d5606abc3374f4f4f33552d94838c5` |
| 5 | `theorem` | [coefficients_add](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/coefficients-add--a8a266e45a750365b636c992.md) | 37 | `result-track:a8a266e45a750365b636c992d5b719767b0d1c5a574f5b6aba05e83f5828fc66` |
| 6 | `theorem` | [coefficients_smul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/coefficients-smul--9681479b809ebf18ed3d46d7.md) | 41 | `result-track:9681479b809ebf18ed3d46d79b29bba50ff398a6cb0ee81a7898d301e4ea316f` |
| 7 | `theorem` | [coefficients_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/coefficients-injective--8f097d0bd365d346d780f4ef.md) | 45 | `result-track:8f097d0bd365d346d780f4ef9b6f5d454d41001f8e8a1c7b17c25f92f19cc6aa` |
| 8 | `def` | [scalarComponent](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/scalarcomponent--89257aceb4a93d2cb06a51d1.md) | 52 | `declaration-track:89257aceb4a93d2cb06a51d1f40f8840b14fe8e200c28ab46841fd48dbdd75ad` |
| 9 | `theorem` | [scalarComponent_real_mul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/scalarcomponent-real-mul--ced55ad98d596ef7c8d9584d.md) | 57 | `result-track:ced55ad98d596ef7c8d9584d7b92ecdaba2cbce70e7c1599bdefb2b58381da23` |
| 10 | `def` | [component](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/component--c6ec22eedda639b4ac59f948.md) | 62 | `declaration-track:c6ec22eedda639b4ac59f948b06345a9ac5c7bf900ada799788be7a49676ed43` |
| 11 | `theorem` | [component_coordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/component-coordinates--5f8114580a0b46cd131c0f57.md) | 68 | `result-track:5f8114580a0b46cd131c0f57ad9c91ad29ec59431f685db30c31eb8b50fc9246` |
| 12 | `theorem` | [real_coordinates_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/real-coordinates-injective--6e2de9b4844fb9d39e585ac8.md) | 74 | `result-track:6e2de9b4844fb9d39e585ac8816515062fd062d9c182ab217bbfe78d44be4976` |
| 13 | `theorem` | [component_real_smul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/component-real-smul--20f039d845fa138504bca4c7.md) | 81 | `result-track:20f039d845fa138504bca4c78c2bf4ca35cb739dcdc383f6bfe19a4b700186ce` |
| 14 | `theorem` | [component_ext](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/component-ext--ff80f7dbb3dce2663cfad54f.md) | 94 | `result-track:ff80f7dbb3dce2663cfad54f8f4b1dd5193dafdab28cdc45f57fc77bebd660df` |
| 15 | `def` | [assemble](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/assemble--837d5a3bd7d79229eb50b850.md) | 105 | `declaration-track:837d5a3bd7d79229eb50b8501a5dcfe8fd799c021117791ca8f3ee2411004256` |
| 16 | `theorem` | [coefficients_assemble](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/coefficients-assemble--6fd5989278c806e64528fcf2.md) | 108 | `result-track:6fd5989278c806e64528fcf2e9bf2b6a09c1277bb67b2959d491ce695b4d1a7f` |
| 17 | `theorem` | [component_assemble](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/component-assemble--ced0221f6c7b4453f864b7bf.md) | 114 | `result-track:ced0221f6c7b4453f864b7bf1234a854045f76efbf336cb08665655e98a846b2` |
| 18 | `theorem` | [assemble_components](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/assemble-components--5199396af5f3bde22c98c7aa.md) | 121 | `result-track:5199396af5f3bde22c98c7aa918c072ca9e2b9db0b29206acd182268d101e403` |
| 19 | `def` | [realification](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/realification--8adb6a83c2676e1a21ee994b.md) | 129 | `declaration-track:8adb6a83c2676e1a21ee994bef90c3de5323872180eb6ca1fc217f4851f069a9` |
| 20 | `def` | [energy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/energy--c6c0a89f39f8f5655e034383.md) | 136 | `declaration-track:c6c0a89f39f8f5655e0343839f04a418d8a803a0249902d50640081bd7bc47e8` |
| 21 | `theorem` | [energy_components](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/energy-components--bd7eb19fa1304f6a4f331080.md) | 139 | `result-track:bd7eb19fa1304f6a4f3310804c4b7448ec4d34843270ad8d4b3491ac76e10b00` |
| 22 | `theorem` | [energy_smul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/energy-smul--2b8d37f092ddff0068513e85.md) | 149 | `result-track:2b8d37f092ddff0068513e85229a8d927853071d8181a2a901c06b8d854195b7` |
| 23 | `def` | [complexLift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/complexlift--46809f7927dd9ffbfb771f74.md) | 155 | `declaration-track:46809f7927dd9ffbfb771f744410cf6b4c064c6ef253cdc2873ab3358b79092a` |
| 24 | `theorem` | [embed_lift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/embed-lift--395e07ff6a933d6f16033318.md) | 160 | `result-track:395e07ff6a933d6f16033318d2a952772bb5b864a7282a3eefd9cdfd449323e4` |
| 25 | `theorem` | [lift_assemble](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/lift-assemble--651029dab15788c0bc563b98.md) | 164 | `result-track:651029dab15788c0bc563b982c831a4dbd2a6ad9a97787c82fab399368dae96e` |
| 26 | `theorem` | [component_lift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/component-lift--3e4f380968e3f7c6a98dcdc9.md) | 170 | `result-track:3e4f380968e3f7c6a98dcdc93d3bf6fda5e941cd25406f7b0c7aa483159ddae4` |
| 27 | `theorem` | [energy_lift_bounds](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/declarations/energy-lift-bounds--3378cf415511dad67cf9bd07.md) | 179 | `result-track:3378cf415511dad67cf9bd07aaf65904e1633d209356dc7c9ed7b26294fd8487` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
