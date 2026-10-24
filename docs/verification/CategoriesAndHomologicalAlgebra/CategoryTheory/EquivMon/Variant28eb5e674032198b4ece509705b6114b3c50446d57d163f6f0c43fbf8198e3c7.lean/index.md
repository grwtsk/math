# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivMon.Variant28eb5e674032198b4ece509705b6114b3c50446d57d163f6f0c43fbf8198e3c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ccd6b0faee083dca75cbefad1824c361043227e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant28eb5e674032198b4ece509705b6114b3c50446d57d163f6f0c43fbf8198e3c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant28eb5e674032198b4ece509705b6114b3c50446d57d163f6f0c43fbf8198e3c7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant28eb5e674032198b4ece509705b6114b3c50446d57d163f6f0c43fbf8198e3c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ccd6b0faee083dca75cbefad1824c361043227e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant28eb5e674032198b4ece509705b6114b3c50446d57d163f6f0c43fbf8198e3c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant28eb5e674032198b4ece509705b6114b3c50446d57d163f6f0c43fbf8198e3c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.End` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant28eb5e674032198b4ece509705b6114b3c50446d57d163f6f0c43fbf8198e3c7.lean/declarations/tomon--c8580175874a83378e9e3af7.md) | 48 | `declaration-track:c8580175874a83378e9e3af7f8f4c2d6f55e9a37319c2edbbb00ed58817950c3` |
| 2 | `def` | [monadToMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant28eb5e674032198b4ece509705b6114b3c50446d57d163f6f0c43fbf8198e3c7.lean/declarations/monadtomon--859c4419b9d95b6f729d8788.md) | 57 | `declaration-track:859c4419b9d95b6f729d8788fe2e8c986e8486b7cc0f4d5c218f0cdc042c51d8` |
| 3 | `def` | [ofMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant28eb5e674032198b4ece509705b6114b3c50446d57d163f6f0c43fbf8198e3c7.lean/declarations/ofmon--25bdcb435f162f5e57ac09e7.md) | 63 | `declaration-track:25bdcb435f162f5e57ac09e79f4d263785bf69ebe2f3dfa012350099b853f2ad` |
| 4 | `lemma` | [ofMon_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant28eb5e674032198b4ece509705b6114b3c50446d57d163f6f0c43fbf8198e3c7.lean/declarations/ofmon-obj--aec98a9148159fee50915cef.md) | 75 | `result-track:aec98a9148159fee50915cef2c3f57e8ba5de4c01fe6613a8afe9b6937d7436b` |
| 5 | `def` | [monToMonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant28eb5e674032198b4ece509705b6114b3c50446d57d163f6f0c43fbf8198e3c7.lean/declarations/montomonad--34a1f463b5bb738fc058c835.md) | 81 | `declaration-track:34a1f463b5bb738fc058c835ecbdeb489de6da78e1c9b6360b6147f5a319b27c` |
| 6 | `def` | [monadMonEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant28eb5e674032198b4ece509705b6114b3c50446d57d163f6f0c43fbf8198e3c7.lean/declarations/monadmonequiv--2a88939966825037492ab647.md) | 92 | `declaration-track:2a88939966825037492ab647e76af38dd3dff0df5ab107229cb4a68e57ac1e13` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant28eb5e674032198b4ece509705b6114b3c50446d57d163f6f0c43fbf8198e3c7.lean/declarations/example--a7516329940a1b730a9e5392.md) | 103 | `declaration-track:a7516329940a1b730a9e539257e593c3054039edb021d61c96ff45143f077927` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
