# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterate.Variant5ec4bc6e0f5897c057f197579ef14976c7931088919aaa3ab46a88afbf4b0698

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d3d4c3398b58eaabe4e70cf4e0d071d0db8c3a3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant5ec4bc6e0f5897c057f197579ef14976c7931088919aaa3ab46a88afbf4b0698.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant5ec4bc6e0f5897c057f197579ef14976c7931088919aaa3ab46a88afbf4b0698.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant5ec4bc6e0f5897c057f197579ef14976c7931088919aaa3ab46a88afbf4b0698.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d3d4c3398b58eaabe4e70cf4e0d071d0db8c3a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant5ec4bc6e0f5897c057f197579ef14976c7931088919aaa3ab46a88afbf4b0698.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant5ec4bc6e0f5897c057f197579ef14976c7931088919aaa3ab46a88afbf4b0698.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.PropLemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Hints` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hIterateFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant5ec4bc6e0f5897c057f197579ef14976c7931088919aaa3ab46a88afbf4b0698.lean/declarations/hiteratefrom--af818f9f83a59c6e81470037.md) | 37 | `declaration-track:af818f9f83a59c6e814700375dad45d45c4f5b34a81fafd60292a39ba9441396` |
| 2 | `def` | [hIterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant5ec4bc6e0f5897c057f197579ef14976c7931088919aaa3ab46a88afbf4b0698.lean/declarations/hiterate--6f68639bb395f0b66fbdaa09.md) | 61 | `declaration-track:6f68639bb395f0b66fbdaa095555a36f76acbe737fcd7f88133222d74a885152` |
| 3 | `theorem` | [hIterateFrom_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant5ec4bc6e0f5897c057f197579ef14976c7931088919aaa3ab46a88afbf4b0698.lean/declarations/hiteratefrom-elim--b5d3f9341c2712aa5a1bfc04.md) | 65 | `result-track:b5d3f9341c2712aa5a1bfc0411cd67c25c0af83dea991c5338c6ecbc6f10ec87` |
| 4 | `theorem` | [hIterate_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant5ec4bc6e0f5897c057f197579ef14976c7931088919aaa3ab46a88afbf4b0698.lean/declarations/hiterate-elim--fc3412df30c0b7ef9ad403cd.md) | 93 | `result-track:fc3412df30c0b7ef9ad403cd976434c053ab3b37bc53b5c81be8670f37054a64` |
| 5 | `theorem` | [hIterate_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant5ec4bc6e0f5897c057f197579ef14976c7931088919aaa3ab46a88afbf4b0698.lean/declarations/hiterate-eq--fc54722be24034cb5cb1565c.md) | 106 | `result-track:fc54722be24034cb5cb1565ceaed5ffe13a2cf6e4a056f363bae72df368c736c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
