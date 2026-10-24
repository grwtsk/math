# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.GaloisConnection.Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ec7b5da63eed7517122a2d800e2bebb35574383",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ec7b5da63eed7517122a2d800e2bebb35574383`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rel` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/declarations/leftdual--9c8535e48f4a3cbab6216235.md) | 45 | `declaration-track:9c8535e48f4a3cbab6216235944e030adbc2134b8999fe5bbd557daedaf7b95d` |
| 2 | `def` | [rightDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/declarations/rightdual--b2aa606146af0718c87c357d.md) | 49 | `declaration-track:b2aa606146af0718c87c357d122e17f63a5716af21148ce7149611ff9f9324bd` |
| 3 | `theorem` | [gc_leftDual_rightDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/declarations/gc-leftdual-rightdual--61b4e48060a0309bed73628f.md) | 52 | `result-track:61b4e48060a0309bed73628f2171ec5f247b87149b844224a986b9aa09a5629f` |
| 4 | `def` | [leftFixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/declarations/leftfixedpoints--006d90e9e6b587353fb12f2e.md) | 58 | `declaration-track:006d90e9e6b587353fb12f2e1b8c31b6ca12885d581ec5561668fefecb04d7f2` |
| 5 | `def` | [rightFixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/declarations/rightfixedpoints--28613a13a03c6ddfbb281779.md) | 62 | `declaration-track:28613a13a03c6ddfbb281779227040684a7de17a024bce6bec0a9920ce498725` |
| 6 | `theorem` | [leftDual_mem_rightFixedPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/declarations/leftdual-mem-rightfixedpoint--00f32687a37c592b29066b5c.md) | 67 | `result-track:00f32687a37c592b29066b5c07835f70061802247e7210325c9b1b41b8b550de` |
| 7 | `theorem` | [rightDual_mem_leftFixedPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/declarations/rightdual-mem-leftfixedpoint--34f9fda79ab823a148e8013d.md) | 73 | `result-track:34f9fda79ab823a148e8013d42f00d0459445141d260f1097c57144820f614e3` |
| 8 | `def` | [equivFixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/declarations/equivfixedpoints--24dec830fdfc208209156d5c.md) | 80 | `declaration-track:24dec830fdfc208209156d5ce490af3cf466aec1ba54baa31cea2347f17282d8` |
| 9 | `theorem` | [rightDual_leftDual_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/declarations/rightdual-leftdual-le-of-le--5d6b75cd5e94befb68848bb4.md) | 86 | `result-track:5d6b75cd5e94befb68848bb4fccfd9f92f097e790ee68986ed7d1154f3f17a74` |
| 10 | `theorem` | [leftDual_rightDual_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160.lean/declarations/leftdual-rightdual-le-of-le--75aa385a65c32861be5c9a7e.md) | 93 | `result-track:75aa385a65c32861be5c9a7e912c5d293b272bbc3034f12113f248904056cf08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
