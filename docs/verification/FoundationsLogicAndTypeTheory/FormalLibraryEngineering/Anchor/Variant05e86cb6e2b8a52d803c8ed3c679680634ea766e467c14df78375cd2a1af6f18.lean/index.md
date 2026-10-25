# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Anchor.Variant05e86cb6e2b8a52d803c8ed3c679680634ea766e467c14df78375cd2a1af6f18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "143de28e7e5b035708ba341f065179e86b2d64dc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant05e86cb6e2b8a52d803c8ed3c679680634ea766e467c14df78375cd2a1af6f18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant05e86cb6e2b8a52d803c8ed3c679680634ea766e467c14df78375cd2a1af6f18.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant05e86cb6e2b8a52d803c8ed3c679680634ea766e467c14df78375cd2a1af6f18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `143de28e7e5b035708ba341f065179e86b2d64dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant05e86cb6e2b8a52d803c8ed3c679680634ea766e467c14df78375cd2a1af6f18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant05e86cb6e2b8a52d803c8ed3c679680634ea766e467c14df78375cd2a1af6f18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.Decoder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.TensorNetwork.Factorization` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnchorKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant05e86cb6e2b8a52d803c8ed3c679680634ea766e467c14df78375cd2a1af6f18.lean/declarations/anchorkey--73a257ec8974069e6a10e676.md) | 24 | `declaration-track:73a257ec8974069e6a10e676d55b83400f5e5e8e4699577aadd38b5b8196aeb9` |
| 2 | `structure` | [AnchorErrorBudget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant05e86cb6e2b8a52d803c8ed3c679680634ea766e467c14df78375cd2a1af6f18.lean/declarations/anchorerrorbudget--44cf46e8594712ffd681acff.md) | 34 | `declaration-track:44cf46e8594712ffd681acffd1f071b3e9986209967d98149e191db2d2368dda` |
| 3 | `def` | [AnchorErrorBudget.total](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant05e86cb6e2b8a52d803c8ed3c679680634ea766e467c14df78375cd2a1af6f18.lean/declarations/anchorerrorbudget-total--eac8bbb3c87bf03a4270c471.md) | 49 | `declaration-track:eac8bbb3c87bf03a4270c47175d2d55fe0a17c1d1de470da97e70cfb7996d66f` |
| 4 | `theorem` | [AnchorErrorBudget.total_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant05e86cb6e2b8a52d803c8ed3c679680634ea766e467c14df78375cd2a1af6f18.lean/declarations/anchorerrorbudget-total-nonnegative--1fee1e6b651e88d320efbc28.md) | 58 | `result-track:1fee1e6b651e88d320efbc2820302611d2fddc4c82c64140d7fce90bee8deb52` |
| 5 | `structure` | [ReproductiveAnchorCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant05e86cb6e2b8a52d803c8ed3c679680634ea766e467c14df78375cd2a1af6f18.lean/declarations/reproductiveanchorcertificate--26908788a20db93ac88d1750.md) | 67 | `declaration-track:26908788a20db93ac88d17500625e9d45131a2cb521f9cbfeeb3f01abba846d4` |
| 6 | `theorem` | [ReproductiveAnchorCertificate.eligible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Anchor/Variant05e86cb6e2b8a52d803c8ed3c679680634ea766e467c14df78375cd2a1af6f18.lean/declarations/reproductiveanchorcertificate-eligible--dd09259a9c6b785b63172490.md) | 105 | `result-track:dd09259a9c6b785b631724903d7cc7a634d4cae171df042d095602e1353fb173` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
