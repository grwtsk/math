# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Validation.Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fd007d811c6a367299e4efac7ba87e4794abd07",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Validation/Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Validation/Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Validation/Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fd007d811c6a367299e4efac7ba87e4794abd07`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Validation/Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Validation/Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Cut` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClassifiedCutValidator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Validation/Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed.lean/declarations/classifiedcutvalidator--2aa0c64066a9f3b48c7ae2f0.md) | 14 | `declaration-track:2aa0c64066a9f3b48c7ae2f090b76c7c804e18b6e6627fe3fa4abd88b668975b` |
| 2 | `inductive` | [CutValidation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Validation/Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed.lean/declarations/cutvalidation--c77d492bf666d9bbb77c12f9.md) | 25 | `declaration-track:c77d492bf666d9bbb77c12f96ab32a1d3d6d3571dd6593dbcbf7a528ac2c96bc` |
| 3 | `def` | [validateCut](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Validation/Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed.lean/declarations/validatecut--09283fe3a79285fe04d64804.md) | 37 | `declaration-track:09283fe3a79285fe04d64804d61557b08843e828a68d9684cfbe562636b35c0e` |
| 4 | `def` | [CutValidation.IsRejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Validation/Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed.lean/declarations/cutvalidation-isrejected--d2fd73eaf30184fda18464cf.md) | 50 | `declaration-track:d2fd73eaf30184fda18464cf21f9eda58cd82f29cc6d36c78deae9cd7fd1cf11` |
| 5 | `theorem` | [validateCut_rejected_exactly_when_invalid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Validation/Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed.lean/declarations/validatecut-rejected-exactly-when-invalid--f29d4036b66a6c96849fad9b.md) | 64 | `result-track:f29d4036b66a6c96849fad9b3641b390ff264ccbba7ced082f2043d5f13d3fe0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
