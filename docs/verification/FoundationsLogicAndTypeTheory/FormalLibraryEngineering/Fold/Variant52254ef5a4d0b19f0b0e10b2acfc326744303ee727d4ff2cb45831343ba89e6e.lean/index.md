# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fold.Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ab0c2e30ff9c889050e27bc58dd7c35dcb2e43a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ab0c2e30ff9c889050e27bc58dd7c35dcb2e43a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean/declarations/fold--98f8f8c0a72c1711e45def9b.md) | 31 | `declaration-track:98f8f8c0a72c1711e45def9bcb239fa873042883cd154eaba320780f9ff0d618` |
| 2 | `theorem` | [fold.go_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean/declarations/fold-go-le-size--7b57f6ce13e7d8fba214e10b.md) | 54 | `result-track:7b57f6ce13e7d8fba214e10bcc495ef5eb222f61bff03c3370b4371c493803c6` |
| 3 | `theorem` | [fold_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean/declarations/fold-le-size--3c2396f084c0bee7d914e5da.md) | 66 | `result-track:3c2396f084c0bee7d914e5da5c05e1a3d47a80d7044aea6b19b225f8aef3d825` |
| 4 | `theorem` | [fold.go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean/declarations/fold-go-decl-eq--6fd5017d9f9869280f05a28a.md) | 74 | `result-track:6fd5017d9f9869280f05a28accd029f127cdea9c5f8f18422621f562b7a56687` |
| 5 | `theorem` | [fold_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean/declarations/fold-decl-eq--a33cacb2ad7df713da946a1a.md) | 93 | `result-track:a33cacb2ad7df713da946a1a2720b45cd0180bb06f567339df486ab35933a09d` |
| 6 | `theorem` | [fold_lt_size_of_lt_aig_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean/declarations/fold-lt-size-of-lt-aig-size--8dc696c75631186d4594de4a.md) | 103 | `result-track:8dc696c75631186d4594de4aa272cc664675910b339e6364983fdf0c3d17a6c0` |
| 7 | `theorem` | [fold_le_size_of_le_aig_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean/declarations/fold-le-size-of-le-aig-size--b8ff8d39357e7c881f512eaa.md) | 111 | `result-track:b8ff8d39357e7c881f512eaa837b2286ee197d142aac582de8b114dd967fd3bf` |
| 8 | `theorem` | [denote_go_and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean/declarations/denote-go-and--01b98a1acec5f1e6a17e9d90.md) | 121 | `result-track:01b98a1acec5f1e6a17e9d90167fb4da5d5b66b0d86a92fd6e484e5d9b06c598` |
| 9 | `theorem` | [denote_fold_and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant52254ef5a4d0b19f0b0e10b2acfc326744303ee727d4ff2cb45831343ba89e6e.lean/declarations/denote-fold-and--859be43a8ec2400dbe1c3d79.md) | 175 | `result-track:859be43a8ec2400dbe1c3d79fac3f414afbd936807a7ccafc456e65fce1054f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
