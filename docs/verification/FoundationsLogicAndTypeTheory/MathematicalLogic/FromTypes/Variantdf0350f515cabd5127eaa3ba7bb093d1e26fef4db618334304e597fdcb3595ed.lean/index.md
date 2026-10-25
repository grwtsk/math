# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FromTypes.Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eef4205167d780f8d1f7dd7960a8b8ab56f20cc1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eef4205167d780f8d1f7dd7960a8b8ab56f20cc1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FromTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/fromtypes--c965b1ceadc5e5a7d00000c3.md) | 34 | `declaration-track:c965b1ceadc5e5a7d00000c3dbfeec5a118843d8f4784227f87562f9de218b90` |
| 2 | `theorem` | [fromTypes_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/fromtypes-zero--5f96f561ac37271cbf2b9973.md) | 38 | `result-track:5f96f561ac37271cbf2b9973289110cf4815a5ae5996340122a9f60d702286c3` |
| 3 | `theorem` | [fromTypes_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/fromtypes-nil--3f7b346ff62fb67e4fef6473.md) | 40 | `result-track:3f7b346ff62fb67e4fef6473bcff4cf56b72ad297ee9892ac52c87e9c68b4d71` |
| 4 | `theorem` | [fromTypes_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/fromtypes-succ--6dbb4d005c4903747aff16b5.md) | 43 | `result-track:6dbb4d005c4903747aff16b5a9d808fb3a9de6013aefe54f29193ea659abc4f4` |
| 5 | `theorem` | [fromTypes_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/fromtypes-cons--bd8829a5398501172cd939c8.md) | 46 | `result-track:bd8829a5398501172cd939c8a167485a1ce8f87556ec96fbf8ceaa9cb7541d5f` |
| 6 | `def` | [fromTypes_zero_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/fromtypes-zero-equiv--f21a24069cf3bedc7284311b.md) | 51 | `declaration-track:f21a24069cf3bedc7284311b47fff1761b949d8f423a8839b536fa8a71256937` |
| 7 | `def` | [fromTypes_nil_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/fromtypes-nil-equiv--abc935dfd1350ef9febff835.md) | 56 | `declaration-track:abc935dfd1350ef9febff835c4b6d650e4c15cc9ad756bb04e49b382ee9ffa0d` |
| 8 | `def` | [fromTypes_succ_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/fromtypes-succ-equiv--392981b888ed05b4fc45a997.md) | 62 | `declaration-track:392981b888ed05b4fc45a997e26cfde8bfdc3a857457f99798363117ee7c00c4` |
| 9 | `def` | [fromTypes_cons_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/fromtypes-cons-equiv--0da347cacc02ecb073725b97.md) | 68 | `declaration-track:0da347cacc02ecb073725b971ac850f285d0841284c2c8fc637e57c91b4bf90e` |
| 10 | `def` | [const](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/const--1ff5a7c9ec73f0612a95c548.md) | 74 | `declaration-track:1ff5a7c9ec73f0612a95c5485002a9a426c36bd365c7f1d9a2c6889dfb752f92` |
| 11 | `theorem` | [const_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/const-zero--17dfcafa96dd1e834f9734e0.md) | 79 | `result-track:17dfcafa96dd1e834f9734e0471c8f2ac962a07f37589b8ea18182be18efe92b` |
| 12 | `theorem` | [const_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/const-succ--54cbccf6dfab17346fd74b0a.md) | 83 | `result-track:54cbccf6dfab17346fd74b0a7492eb6cb4b63b03f43853e14d805b312bf6a88b` |
| 13 | `theorem` | [const_succ_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/const-succ-apply--73054b3578c09e0cc0919176.md) | 86 | `result-track:73054b3578c09e0cc091917675621396b3da0c8ade09ff86440b739249a116dd` |
| 14 | `instance` | [inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FromTypes/Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed.lean/declarations/inhabited--ce731ae2354f0ea267607c28.md) | 89 | `declaration-track:ce731ae2354f0ea267607c28f2b60bdc08ab5b48c5049370803543baa2612466` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
