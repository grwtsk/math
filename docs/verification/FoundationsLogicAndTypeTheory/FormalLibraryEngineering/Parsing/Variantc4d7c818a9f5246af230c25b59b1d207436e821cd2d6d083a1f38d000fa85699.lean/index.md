# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parsing.Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8356d89deb4d462c5b7f1840a2e584d941339a2e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8356d89deb4d462c5b7f1840a2e584d941339a2e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Attach` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Mem` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [strLitRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean/declarations/strlitrange--5ba608f5966d8d39e99b14cc.md) | 18 | `declaration-track:5ba608f5966d8d39e99b14ccb0c079ee736583b632556587e85318f13fe637ad` |
| 2 | `def` | [parseFromContents](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean/declarations/parsefromcontents--b07b8f3214ad0e29bf8bf242.md) | 30 | `declaration-track:b07b8f3214ad0e29bf8bf2423af2a2b59a598f076cac0920b67fc848ba52066b` |
| 3 | `def` | [parseStrLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean/declarations/parsestrlit--8af608f361319be3cb7e6e69.md) | 41 | `declaration-track:8af608f361319be3cb7e6e692d299ce76a4e17f47a520d585922b217393e3339` |
| 4 | `def` | [parseQuotedStrLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean/declarations/parsequotedstrlit--861633e6e0610919a6db4700.md) | 62 | `declaration-track:861633e6e0610919a6db4700f9b9758a8e9cfb0c5191470e00e959c3416b501e` |
| 5 | `def` | [parseStrLit'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variantc4d7c818a9f5246af230c25b59b1d207436e821cd2d6d083a1f38d000fa85699.lean/declarations/parsestrlit--3801c8b2986ed0df1c1e1833.md) | 121 | `declaration-track:3801c8b2986ed0df1c1e1833b0cecd298dfefe506c238f2bb208fb6919fe3881` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
