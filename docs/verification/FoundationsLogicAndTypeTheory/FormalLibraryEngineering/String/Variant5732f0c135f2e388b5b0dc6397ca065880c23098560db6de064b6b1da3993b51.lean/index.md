# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.String.Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03d0f3e21e1513cb8ecaa6931642b0baad00bd53",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03d0f3e21e1513cb8ecaa6931642b0baad00bd53`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.UInt.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Fold` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.Length` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lpadAscii](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean/declarations/lpadascii--c87cd3431e1ea9897cc8ea6a.md) | 25 | `declaration-track:c87cd3431e1ea9897cc8ea6a5d9a84df631f0d334ddd09b3a0e7ecc6c5c85cd0` |
| 2 | `def` | [rpadAscii](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean/declarations/rpadascii--b09dd95c7dbde51184df2ac9.md) | 28 | `declaration-track:b09dd95c7dbde51184df2ac9a945702675ef26bac97d34958b05a15bae79ea3d` |
| 3 | `def` | [zpad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean/declarations/zpad--95684c820ffe1a778fcf829d.md) | 31 | `declaration-track:95684c820ffe1a778fcf829d55a1f7f205787e659eced4963d4433b31a0948cc` |
| 4 | `def` | [isHex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean/declarations/ishex--77d589b8323780074ecd7f2c.md) | 35 | `declaration-track:77d589b8323780074ecd7f2c4bc261528a7f25bb47efd7bc4856bece8b9e4459` |
| 5 | `def` | [lowerHexByte](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean/declarations/lowerhexbyte--789d1264e75b1edc6f73e2f3.md) | 47 | `declaration-track:789d1264e75b1edc6f73e2f3c012e064cb09bb20a4eab0cdcfe4ce4a782690fa` |
| 6 | `theorem` | [isValidChar_of_lt_256](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean/declarations/isvalidchar-of-lt-256--880095338a3ee1d643ac4ced.md) | 53 | `result-track:880095338a3ee1d643ac4ced8d50c01983b257f2b57a38ee13c5bd811fbaff8e` |
| 7 | `def` | [lowerHexChar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean/declarations/lowerhexchar--5973bc1e7a4b8b76d5e272de.md) | 56 | `declaration-track:5973bc1e7a4b8b76d5e272de05ea8591eb395bb3b8a4f72f04330b5c540a24bb` |
| 8 | `def` | [lowerHexUInt64](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean/declarations/lowerhexuint64--81ea9a09cab9b366ae4190f3.md) | 60 | `declaration-track:81ea9a09cab9b366ae4190f35c90e099d69baad0f9ec5f4308e0afa5d61ee493` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variant5732f0c135f2e388b5b0dc6397ca065880c23098560db6de064b6b1da3993b51.lean/declarations/example--a06bace1e8c2e5f2acc2fec1.md) | 80 | `declaration-track:a06bace1e8c2e5f2acc2fec12e106924da26c3e12d1eb85ea36c9bccfa08b9f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
