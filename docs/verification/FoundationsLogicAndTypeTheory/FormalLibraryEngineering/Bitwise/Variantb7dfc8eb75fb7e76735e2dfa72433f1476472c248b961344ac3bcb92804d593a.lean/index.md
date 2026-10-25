# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitwise.Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85b2a8174ced6aecf9994f879e30a6911fbea2f2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85b2a8174ced6aecf9994f879e30a6911fbea2f2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Int.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Bitwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [div2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/declarations/div2--6759d4fbdf077855752a0b8f.md) | 31 | `declaration-track:6759d4fbdf077855752a0b8f722d5080efca23d1f1cbf33c4f7577e5cd9a059b` |
| 2 | `def` | [bodd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/declarations/bodd--bd462df57e5384e84e1b5dcd.md) | 37 | `declaration-track:bd462df57e5384e84e1b5dcd240e7c7a802cea60f9345a092f93f4d1016ce6db` |
| 3 | `def` | [bit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/declarations/bit--a1969eda4435ac5f39095f65.md) | 46 | `declaration-track:a1969eda4435ac5f39095f6595ff20167a56058dfd0c62624d86061bad12d13b` |
| 4 | `def` | [testBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/declarations/testbit--9a2b20da6145b3cf1c928dad.md) | 51 | `declaration-track:9a2b20da6145b3cf1c928dad9598b68d9026247bbf44b711dedfbfd0804dae5a` |
| 5 | `def` | [natBitwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/declarations/natbitwise--60e116f7ad625506147e6751.md) | 57 | `declaration-track:60e116f7ad625506147e67510fdfe019fbe0cc008dff211b91f6afa0cba4f8a8` |
| 6 | `def` | [bitwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/declarations/bitwise--91c460cb8a0213fad43decb7.md) | 63 | `declaration-track:91c460cb8a0213fad43decb73edf384626bdace81ac73d7567f5e7b847872a6b` |
| 7 | `def` | [lnot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/declarations/lnot--560cd26958e2d976e110a11a.md) | 71 | `declaration-track:560cd26958e2d976e110a11affdcc9c4a10cbf9e0ef0b999144783cbbcc3f3cd` |
| 8 | `def` | [lor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/declarations/lor--5b7cb455ad7064b3a2321901.md) | 77 | `declaration-track:5b7cb455ad7064b3a2321901ee8863ce6b08cb1d6a2d5d8775de679d2fc1294c` |
| 9 | `def` | [land](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/declarations/land--808eb4da8f073aea0b160ff3.md) | 85 | `declaration-track:808eb4da8f073aea0b160ff3d516f19ab9d5fa4739cfbd6b362c6d3cdca24582` |
| 10 | `def` | [ldiff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/declarations/ldiff--199f4629c34e737ec6d156cf.md) | 96 | `declaration-track:199f4629c34e737ec6d156cf7b7db4b07dc7c1bca4e54cda8fc6486f17ce4b14` |
| 11 | `def` | [lxor'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/declarations/lxor--26ef98030f88e0cf0ec130f3.md) | 105 | `declaration-track:26ef98030f88e0cf0ec130f3201a371d6f129ab2b273ba95249068e1e3d6551f` |
| 12 | `def` | [shiftl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/declarations/shiftl--205189bb04e943f3ca83d688.md) | 114 | `declaration-track:205189bb04e943f3ca83d68854691e72ef166a2c15b10c9a1d5769ed85962a95` |
| 13 | `def` | [shiftr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variantb7dfc8eb75fb7e76735e2dfa72433f1476472c248b961344ac3bcb92804d593a.lean/declarations/shiftr--a86942391b926d5e20c29a47.md) | 123 | `declaration-track:a86942391b926d5e20c29a4761f092e0c399945d475b2f50cbd487b94e44915c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
