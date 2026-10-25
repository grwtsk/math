# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestDyadicIntegration.Variantf1a59e86985b17491806c18c7d74768a812457bd98a8b025b6a8c6c86d0169c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4eeb3fddf57b135ce9c1c4ffd00ce72c91ae16e3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Variantf1a59e86985b17491806c18c7d74768a812457bd98a8b025b6a8c6c86d0169c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Variantf1a59e86985b17491806c18c7d74768a812457bd98a8b025b6a8c6c86d0169c3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Variantf1a59e86985b17491806c18c7d74768a812457bd98a8b025b6a8c6c86d0169c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4eeb3fddf57b135ce9c1c4ffd00ce72c91ae16e3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Variantf1a59e86985b17491806c18c7d74768a812457bd98a8b025b6a8c6c86d0169c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Variantf1a59e86985b17491806c18c7d74768a812457bd98a8b025b6a8c6c86d0169c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Validity.IntegrationDyadic` — import line 10; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Integration` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [g_alt_expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Variantf1a59e86985b17491806c18c7d74768a812457bd98a8b025b6a8c6c86d0169c3.lean/declarations/g-alt-expr--5bfa23f673168c88defdf50d.md) | 22 | `declaration-track:5bfa23f673168c88defdf50d48a2618452652dd094b30a83e5e670a5aff47faa` |
| 2 | `def` | [testInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Variantf1a59e86985b17491806c18c7d74768a812457bd98a8b025b6a8c6c86d0169c3.lean/declarations/testinterval--cf97fe2cf4d0b2701d4fdeb9.md) | 31 | `declaration-track:cf97fe2cf4d0b2701d4fdeb9f57a7f8b486227755013011f089c7ded0d4f032f` |
| 3 | `def` | [highPrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Variantf1a59e86985b17491806c18c7d74768a812457bd98a8b025b6a8c6c86d0169c3.lean/declarations/highprec--0b235b3c4127547217f21ecf.md) | 59 | `declaration-track:0b235b3c4127547217f21ecf4f9859422a04b850b947149eeda96750029df483` |
| 4 | `def` | [veryHighPrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Variantf1a59e86985b17491806c18c7d74768a812457bd98a8b025b6a8c6c86d0169c3.lean/declarations/veryhighprec--a8768799a1cd245471d10197.md) | 60 | `declaration-track:a8768799a1cd245471d10197c692f6d6e81ed9074dd5574d9d35c8240f49e335` |
| 5 | `def` | [medPrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicIntegration/Variantf1a59e86985b17491806c18c7d74768a812457bd98a8b025b6a8c6c86d0169c3.lean/declarations/medprec--43ca0332f5b217d69f83d9e0.md) | 72 | `declaration-track:43ca0332f5b217d69f83d9e0c31454a8eaa3fb85ac2d0f408b489d1043a236d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
