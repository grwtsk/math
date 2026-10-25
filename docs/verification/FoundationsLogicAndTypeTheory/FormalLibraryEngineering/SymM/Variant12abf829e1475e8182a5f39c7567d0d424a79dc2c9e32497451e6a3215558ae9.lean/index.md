# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symm.Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be64c268ef0d11c228433f975144792fee5562f6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be64c268ef0d11c228433f975144792fee5562f6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Relation.Symm` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Group` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eq_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/declarations/eq-symm--86ca401ed7097035bdc53984.md) | 7 | `declaration-track:86ca401ed7097035bdc53984b936e8e163bb57a5ac4d03996b062bb8708f4a4d` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/declarations/example--4e5efd061d3cb2fd56052b8f.md) | 9 | `declaration-track:4e5efd061d3cb2fd56052b8f4c35e08b981e03ae5db225a3fc22806d786dd8d5` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/declarations/example--a9b82bb5351f61f8c4ef2780.md) | 10 | `declaration-track:a9b82bb5351f61f8c4ef27809e050c97d513a78bd6ff61e730c6cfe5e0247398` |
| 4 | `def` | [sameParity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/declarations/sameparity--5218c314d43e9ad45995b9ad.md) | 12 | `declaration-track:5218c314d43e9ad45995b9adca9bd084879476190de9b17ef6f1c6468b52c1b8` |
| 5 | `def` | [sameParity_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/declarations/sameparity-symm--3dfbc85b28decd8e453c7590.md) | 15 | `declaration-track:3dfbc85b28decd8e453c75903dd7cb603e3b917b30a402b9bf794c54be5b83b4` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/declarations/example--32d8139c2251e1a9c8609eb4.md) | 17 | `declaration-track:32d8139c2251e1a9c8609eb46b2d7cfcf954ede34a49598a12447fa931ec692d` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/declarations/example--ba88e07fea840d80f5fc45b2.md) | 19 | `declaration-track:ba88e07fea840d80f5fc45b2a1cab749f37cdac745ee9f3e38e95cfeb14afea0` |
| 8 | `def` | [MulHom.inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/declarations/mulhom-inverse--725cb1608ec8bfeb6b42e7ea.md) | 26 | `declaration-track:725cb1608ec8bfeb6b42e7ea2b712566f1990a313935e20891ef07d050ef776d` |
| 9 | `structure` | [MulEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/declarations/mulequiv--b5b1d2734c60ade14c8bc4b4.md) | 35 | `declaration-track:b5b1d2734c60ade14c8bc4b443300eb634c9edb49e32cd0253642f92ddc608e4` |
| 10 | `def` | [foo_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/declarations/foo-symm--a3e10d252dec789bd855bb82.md) | 42 | `declaration-track:a3e10d252dec789bd855bb82074512b7bf6b4c14fa6ad4f43a6ba8b17badd0ff` |
| 11 | `def` | [MyEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/declarations/myeq--c6f48a2e8dddb413d0cea6ee.md) | 45 | `declaration-track:c6f48a2e8dddb413d0cea6ee929a794f6192f9d3042528e7c850c8b287eb6966` |
| 12 | `lemma` | [MyEq.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/declarations/myeq-symm--912a922e2903c183770b8093.md) | 47 | `result-track:912a922e2903c183770b80933fc4bf2204119223e7e0474672373a9dad7a6610` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant12abf829e1475e8182a5f39c7567d0d424a79dc2c9e32497451e6a3215558ae9.lean/declarations/example--ce28259c09d16d37b820e7a2.md) | 51 | `declaration-track:ce28259c09d16d37b820e7a2d3a7f78ad63c30ad26f4dc9ff48ff9f5ca18109b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
