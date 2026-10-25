# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MBTC.Variant06b08ecd31e7e16c46355d990530087a52f018ca3345ee844b6705e27e0e1b0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c3974a77b757357950964ff6f8057fd6613bae0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant06b08ecd31e7e16c46355d990530087a52f018ca3345ee844b6705e27e0e1b0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant06b08ecd31e7e16c46355d990530087a52f018ca3345ee844b6705e27e0e1b0d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant06b08ecd31e7e16c46355d990530087a52f018ca3345ee844b6705e27e0e1b0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c3974a77b757357950964ff6f8057fd6613bae0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant06b08ecd31e7e16c46355d990530087a52f018ca3345ee844b6705e27e0e1b0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant06b08ecd31e7e16c46355d990530087a52f018ca3345ee844b6705e27e0e1b0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.MBTC` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.ModelUtil` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Model` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getAssignmentExt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant06b08ecd31e7e16c46355d990530087a52f018ca3345ee844b6705e27e0e1b0d.lean/declarations/getassignmentext--2b9bde722ffe74b2005b8272.md) | 23 | `declaration-track:2b9bde722ffe74b2005b8272f021ebfc20b56b2222d993f8cf6a33850a2f8456` |
| 2 | `def` | [hasTheoryVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant06b08ecd31e7e16c46355d990530087a52f018ca3345ee844b6705e27e0e1b0d.lean/declarations/hastheoryvar--6df0ae1cef2de831d9493da6.md) | 58 | `declaration-track:6df0ae1cef2de831d9493da6478319b104595cd33e9505e46e606e0bbe159eac` |
| 3 | `def` | [isNonlinearTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant06b08ecd31e7e16c46355d990530087a52f018ca3345ee844b6705e27e0e1b0d.lean/declarations/isnonlinearterm--73d0657243954f843f640cde.md) | 80 | `declaration-track:73d0657243954f843f640cde13ca98802006b7b624089417267eac196fd1c868` |
| 4 | `def` | [isInterpreted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant06b08ecd31e7e16c46355d990530087a52f018ca3345ee844b6705e27e0e1b0d.lean/declarations/isinterpreted--52f1ac36d6fe8fc66c3e4158.md) | 87 | `declaration-track:52f1ac36d6fe8fc66c3e41587b99c6467ab10a182837c9203d60834ce52a4dd2` |
| 5 | `def` | [eqAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant06b08ecd31e7e16c46355d990530087a52f018ca3345ee844b6705e27e0e1b0d.lean/declarations/eqassignment--c6a02080174f79e7f3fa94e0.md) | 98 | `declaration-track:c6a02080174f79e7f3fa94e08567ec190286c7576f4936e22cac0077bfd4dff9` |
| 6 | `def` | [mbtc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant06b08ecd31e7e16c46355d990530087a52f018ca3345ee844b6705e27e0e1b0d.lean/declarations/mbtc--08207ffce654d098d595a92d.md) | 103 | `declaration-track:08207ffce654d098d595a92d5b5bb75208551c6f11dc09a5e77b5cc2a2240366` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
