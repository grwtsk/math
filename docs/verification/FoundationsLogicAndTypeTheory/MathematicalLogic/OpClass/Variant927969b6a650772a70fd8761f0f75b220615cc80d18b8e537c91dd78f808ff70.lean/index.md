# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OpClass.Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9fdb64028c1c72658537831e1caa60ba41c4e71",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9fdb64028c1c72658537831e1caa60ba41c4e71`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSymmOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean/declarations/issymmop--f655a06c519a4b9ed19c761d.md) | 38 | `declaration-track:f655a06c519a4b9ed19c761da20b777a10528a86c3861aeb43167a1208786157` |
| 2 | `class` | [LeftCommutative](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean/declarations/leftcommutative--587f736fda7b191b3a14a8c7.md) | 44 | `declaration-track:587f736fda7b191b3a14a8c7a0bba8834e0054b8cf8a942be7e0e397f4025a62` |
| 3 | `class` | [RightCommutative](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean/declarations/rightcommutative--eb8644c096bd31bfc986273a.md) | 50 | `declaration-track:eb8644c096bd31bfc986273a26b2c090d39c8a804c73036a3c12c72a301b33d8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean/declarations/instance--fb7a2b3fd4bb17157b8f079f.md) | 54 | `declaration-track:fb7a2b3fd4bb17157b8f079fbd28c8444787c881fd64ac196456d79a7b5321f0` |
| 5 | `theorem` | [IsSymmOp.flip_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean/declarations/issymmop-flip-eq--e3a1a30572b0a11121476d38.md) | 57 | `result-track:e3a1a30572b0a11121476d38253e01472c8e78ccf277547b36103d0f402061c8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean/declarations/instance--448b07fed5b0690567e3109e.md) | 60 | `declaration-track:448b07fed5b0690567e3109ebb0476597fd8caa838d40c70f0c0e2e4c967f7ff` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean/declarations/instance--b3271c9c6a0b99b44bd7959e.md) | 63 | `declaration-track:b3271c9c6a0b99b44bd7959e084bdbbcfb267234bc707109a055d73c9f4f3dd3` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean/declarations/instance--3be2eefcd0dfec3be54d9b1f.md) | 66 | `declaration-track:3be2eefcd0dfec3be54d9b1f0931f4874f3dd5930f3e7b05ef99b8a629179187` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant927969b6a650772a70fd8761f0f75b220615cc80d18b8e537c91dd78f808ff70.lean/declarations/instance--103e544c0ca1496be10a203c.md) | 69 | `declaration-track:103e544c0ca1496be10a203cb89f55b86de78027f0da172632c7d9d8bc9bee4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
