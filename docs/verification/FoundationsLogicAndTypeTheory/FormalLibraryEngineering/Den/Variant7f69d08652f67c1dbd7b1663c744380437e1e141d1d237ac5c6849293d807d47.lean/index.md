# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Den.Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "731ad8cb8098fd64c1e2d69e87ff5f892d0cece5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `731ad8cb8098fd64c1e2d69e87ff5f892d0cece5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.CommRing.SafePoly` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cleanupDenominators'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean/declarations/cleanupdenominators--e62c33bcb09e9870d7ad13c4.md) | 12 | `declaration-track:e62c33bcb09e9870d7ad13c4ed5dd17a927207ac52147240db1ff07b45a8be1f` |
| 2 | `def` | [RingIneqCnstr.cleanupDenominators](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean/declarations/ringineqcnstr-cleanupdenominators--0e099e2678d86b4493aabdf7.md) | 30 | `declaration-track:0e099e2678d86b4493aabdf7ad41469fc4e6b4eeeb2f19ba2cff543324393ade` |
| 3 | `def` | [RingEqCnstr.cleanupDenominators](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean/declarations/ringeqcnstr-cleanupdenominators--4896358e0d31555e312f059d.md) | 33 | `declaration-track:4896358e0d31555e312f059d9e6b5a7b428095fb25d8b9adedf5af0dae29928a` |
| 4 | `def` | [RingDiseqCnstr.cleanupDenominators](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Den/Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47.lean/declarations/ringdiseqcnstr-cleanupdenominators--5f36d0239fb25f4098dff8cd.md) | 36 | `declaration-track:5f36d0239fb25f4098dff8cd4f102821cc3c81093c0156777a6ddd59cb1327e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
