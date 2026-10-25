# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPoint.Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f46849763e22707922caa07450991aad0d553fae",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f46849763e22707922caa07450991aad0d553fae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.RuleEngine` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FixedPointCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5.lean/declarations/fixedpointcertificate--70fee70ab73a1f7736ab8c88.md) | 18 | `declaration-track:70fee70ab73a1f7736ab8c88967fe9075e206001d3b911bb5e63fe7a975c4a2a` |
| 2 | `structure` | [FixedPointRecipe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5.lean/declarations/fixedpointrecipe--f528a5af7b16cf26b0ff1a4a.md) | 23 | `declaration-track:f528a5af7b16cf26b0ff1a4a88bfb42c0973f183f04cac4a870607806be20d21` |
| 3 | `def` | [copyFixedPointCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5.lean/declarations/copyfixedpointcertificate--dfdac85b90cf98724bf18e5c.md) | 34 | `declaration-track:dfdac85b90cf98724bf18e5c575f50277829adde41366ae04b16d3cbe49c8c65` |
| 4 | `theorem` | [fixedPointRecipe_realizes_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5.lean/declarations/fixedpointrecipe-realizes-self--bb5d5b44428aeefd66f7e0a5.md) | 39 | `result-track:bb5d5b44428aeefd66f7e0a546740bcd172ec99bbec7b931e62d040d9ab68925` |
| 5 | `theorem` | [copy_fixedPointCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5.lean/declarations/copy-fixedpointcertificate--01e0c5c630962f77d90dcd3a.md) | 47 | `result-track:01e0c5c630962f77d90dcd3a8712689bd89145b99c7a8f5f12b9fd84295017ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
