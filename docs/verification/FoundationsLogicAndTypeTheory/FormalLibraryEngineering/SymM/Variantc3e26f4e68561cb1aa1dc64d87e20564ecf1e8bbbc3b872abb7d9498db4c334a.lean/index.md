# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symm.Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5a396da62536b68ed8956bc39c97bb772ccdd5d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5a396da62536b68ed8956bc39c97bb772ccdd5d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Relation.Symm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eq_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/declarations/eq-symm--af5510cb6c559b0cc0517ad2.md) | 15 | `declaration-track:af5510cb6c559b0cc0517ad2e62334c6626f9b335c70d0868f05da810f0f9edf` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/declarations/example--d73d2b6d4d8ef0ea40b8402d.md) | 17 | `declaration-track:d73d2b6d4d8ef0ea40b8402dcf13ab37de2f1bd3c79d17004a39f22a922297f1` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/declarations/example--3be46b1e1c6134f0a8693ccf.md) | 18 | `declaration-track:3be46b1e1c6134f0a8693ccf73875ca6edca9694da1482c0fb9c7a09d51f5134` |
| 4 | `def` | [sameParity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/declarations/sameparity--10296011f33e540d9f4a1dbb.md) | 20 | `declaration-track:10296011f33e540d9f4a1dbbd51d2f0d1cb3c633678f343cc71cca68761c9e48` |
| 5 | `def` | [sameParity_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/declarations/sameparity-symm--e86e9c0167d75986fcae0f7e.md) | 23 | `declaration-track:e86e9c0167d75986fcae0f7eef2254e4f4797571ae2ca2b230c36bccd7ceb1fb` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/declarations/example--cac1a3e69cc7b15237d4d265.md) | 25 | `declaration-track:cac1a3e69cc7b15237d4d2653ecf173cc07084e2ca164335435e726fc3da05fc` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/declarations/example--c621d3fbc93ea45c1bd81d9a.md) | 27 | `declaration-track:c621d3fbc93ea45c1bd81d9a052f22c974b544971d69c3b2748bebd4b5c86462` |
| 8 | `def` | [MulHom.inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/declarations/mulhom-inverse--0c7311dbd0daf101e7a83c4c.md) | 34 | `declaration-track:0c7311dbd0daf101e7a83c4c1f08e592f0007ca2d59e14aa4d4bbefb32ccfb1b` |
| 9 | `structure` | [MulEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/declarations/mulequiv--e62dd9e8f83beef77d3cb2e4.md) | 43 | `declaration-track:e62dd9e8f83beef77d3cb2e4de3e240f3f56ee4fc35d25a34aefbf3356b17826` |
| 10 | `def` | [foo_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/declarations/foo-symm--8c40fc73a289f2d089d2506f.md) | 50 | `declaration-track:8c40fc73a289f2d089d2506f7e82a1e0f26f807807951bb842a78e225a61e361` |
| 11 | `def` | [MyEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/declarations/myeq--2b157f7a2bc8f8b05f10e6b9.md) | 53 | `declaration-track:2b157f7a2bc8f8b05f10e6b9b67a81fea1826cddab68f37ea7719c1590194e26` |
| 12 | `lemma` | [MyEq.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/declarations/myeq-symm--26927749a4d3738419607feb.md) | 55 | `result-track:26927749a4d3738419607feb9feb4dc6645ac5231da2c658eca5ef1b09d85fb4` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantc3e26f4e68561cb1aa1dc64d87e20564ecf1e8bbbc3b872abb7d9498db4c334a.lean/declarations/example--49c958929ac0e9ef23f760f4.md) | 59 | `declaration-track:49c958929ac0e9ef23f760f4b6f7d25026473e1d3c010c4813fd9e2f4f0b2be5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
