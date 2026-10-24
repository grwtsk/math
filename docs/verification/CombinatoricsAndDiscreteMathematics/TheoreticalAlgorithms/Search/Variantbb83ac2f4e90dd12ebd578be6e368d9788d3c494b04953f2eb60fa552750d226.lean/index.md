# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Search.Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ba037e418eb054d656663d14a4035849a71debd",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ba037e418eb054d656663d14a4035849a71debd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Slice` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.FindPos` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Slice.Pos.le_find](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/declarations/slice-pos-le-find--3f96556bc0b69dfae17d4d0b.md) | 32 | `result-track:3f96556bc0b69dfae17d4d0b6af6e30fdf89c8eef4e7749a1c1b2b4b0e7484bc` |
| 2 | `theorem` | [Pos.le_find](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/declarations/pos-le-find--73eb2d20fe3ef39dfeb09a02.md) | 37 | `result-track:73eb2d20fe3ef39dfeb09a02555d62bb3e0e1cb03d5fd08df3efe5dd87f2537c` |
| 3 | `theorem` | [front?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/declarations/front-toslice--f4cea63d298a874c1e37c632.md) | 42 | `result-track:f4cea63d298a874c1e37c6320f713f1c6f0b872ffb9fdb0c451ecd646c7af9f7` |
| 4 | `theorem` | [front?_eq_get?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/declarations/front-eq-get--9c02873bcfb248042a43154d.md) | 45 | `result-track:9c02873bcfb248042a43154d24d08c8f91cbb8c5f3d47b042d805d32a6c04737` |
| 5 | `theorem` | [front?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/declarations/front-eq--ece8ec5e8be349f09099a891.md) | 48 | `result-track:ece8ec5e8be349f09099a891ee632ab72236e76ba44a294e18f66646aa964d33` |
| 6 | `theorem` | [front_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/declarations/front-toslice--1bf74642fe24df699909e4ef.md) | 52 | `result-track:1bf74642fe24df699909e4ef7c20395814f0262c95838189d3fe5c1a336cbad7` |
| 7 | `theorem` | [front_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/declarations/front-eq--e4fa23126c075057bed427f8.md) | 56 | `result-track:e4fa23126c075057bed427f8520085db65f4185f14b487086b1cec8010559c5d` |
| 8 | `theorem` | [back?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/declarations/back-toslice--b3d54948a8e2f5b4319482a4.md) | 60 | `result-track:b3d54948a8e2f5b4319482a41e8237b7fb3789458c652b2f4297764b16dfca37` |
| 9 | `theorem` | [back?_eq_get?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/declarations/back-eq-get--af747f024de8487f2c1572d5.md) | 63 | `result-track:af747f024de8487f2c1572d5f9adf672c3222307c11b0e9e98323b8dd76596e7` |
| 10 | `theorem` | [back?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/declarations/back-eq--e3dad95f20d402a083dfd402.md) | 68 | `result-track:e3dad95f20d402a083dfd4027eabb67a7a89137dbe2762154d7f63330eaaa02e` |
| 11 | `theorem` | [back_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/declarations/back-toslice--9855427763efaabcb03e354c.md) | 72 | `result-track:9855427763efaabcb03e354cb9b0d0dfc3cd714368d01e755706ba362f913424` |
| 12 | `theorem` | [back_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Search/Variantbb83ac2f4e90dd12ebd578be6e368d9788d3c494b04953f2eb60fa552750d226.lean/declarations/back-eq--244764f652691f0be3c02097.md) | 76 | `result-track:244764f652691f0be3c02097d7f93b0a9b53118ceaf1a51cfe7c0876bce5e8eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
