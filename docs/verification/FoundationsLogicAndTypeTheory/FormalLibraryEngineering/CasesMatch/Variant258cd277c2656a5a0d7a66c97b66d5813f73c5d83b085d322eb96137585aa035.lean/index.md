# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesMatch.Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f681965db75817505efcf7f6034ffe761c770a8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f681965db75817505efcf7f6034ffe761c770a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Util` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.MatcherApp` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cases` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isMatchCondCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean/declarations/ismatchcondcandidate--1e1f21d1aa461e9628f79365.md) | 38 | `declaration-track:1e1f21d1aa461e9628f7936554f94758e48d0f68417dea9b672430e5d1e7daed` |
| 2 | `def` | [addMatchCondsToAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean/declarations/addmatchcondstoalt--d3246c1891d496dbc41b60b6.md) | 54 | `declaration-track:d3246c1891d496dbc41b60b6e0643761272c06887156a7634a9d0f800dab0c1d` |
| 3 | `def` | [addMatchCondsToSplitter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean/declarations/addmatchcondstosplitter--1f8147f6df24266195032339.md) | 64 | `declaration-track:1f8147f6df242661950323398e45bb962b9fb9bb0e4d87f1eeaabd65f21c92e6` |
| 4 | `def` | [casesMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesMatch/Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035.lean/declarations/casesmatch--5a09f7eac8e1e5717097b0f1.md) | 70 | `declaration-track:5a09f7eac8e1e5717097b0f161b270cc158322f2ca2b00da8379e78e7e613a74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
