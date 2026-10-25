# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterate.Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c6076bddd437bb0d00ebe78dabd036ec6e66f4e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c6076bddd437bb0d00ebe78dabd036ec6e66f4e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Logic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hIterateFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean/declarations/hiteratefrom--5fe74f09f06ddba4e4eae27c.md) | 17 | `declaration-track:5fe74f09f06ddba4e4eae27c7741207702bfccad29b9a02ead1a1b75d516bfd2` |
| 2 | `def` | [hIterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean/declarations/hiterate--2523b0465247d4c881c39524.md) | 42 | `declaration-track:2523b0465247d4c881c3952422c412db30d7dad3d699ceaa265e47bdb46f9c7b` |
| 3 | `theorem` | [hIterateFrom_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean/declarations/hiteratefrom-elim--edd735a79be7e8a9e40ff94c.md) | 46 | `result-track:edd735a79be7e8a9e40ff94c3562858ed244ceed8f8901b901b9b2d76c46addd` |
| 4 | `theorem` | [hIterate_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean/declarations/hiterate-elim--8ef29325d7a025a940f08fcc.md) | 74 | `result-track:8ef29325d7a025a940f08fccf52e71d7421c9d2366a3ae7a26bbac6fbe683fe1` |
| 5 | `theorem` | [hIterate_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean/declarations/hiterate-eq--b8b71f8136ac69d38b7ed9f3.md) | 87 | `result-track:b8b71f8136ac69d38b7ed9f31591b6ce409b920b0300a5c1fc6ce2efc874546f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
