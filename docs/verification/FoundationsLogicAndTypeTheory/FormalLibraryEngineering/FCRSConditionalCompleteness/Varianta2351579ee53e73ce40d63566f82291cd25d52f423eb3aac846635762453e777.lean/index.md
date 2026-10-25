# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FCRSConditionalCompleteness.Varianta2351579ee53e73ce40d63566f82291cd25d52f423eb3aac846635762453e777

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ce05173aa9620242f3159242998947e5d13568a",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FCRSConditionalCompleteness/Varianta2351579ee53e73ce40d63566f82291cd25d52f423eb3aac846635762453e777.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FCRSConditionalCompleteness/Varianta2351579ee53e73ce40d63566f82291cd25d52f423eb3aac846635762453e777.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FCRSConditionalCompleteness/Varianta2351579ee53e73ce40d63566f82291cd25d52f423eb3aac846635762453e777.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ce05173aa9620242f3159242998947e5d13568a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FCRSConditionalCompleteness/Varianta2351579ee53e73ce40d63566f82291cd25d52f423eb3aac846635762453e777.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FCRSConditionalCompleteness/Varianta2351579ee53e73ce40d63566f82291cd25d52f423eb3aac846635762453e777.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Theorems.CT01_FiniteTypeJacobson` — import line 6; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT02_AnalytificationExists` — import line 7; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT03_AnalytificationCompatibility` — import line 8; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT04_AffinoidJacobson` — import line 9; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT05_StrongNoetherian` — import line 10; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT06_Sheafiness` — import line 11; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT07_StableUniformSheafiness` — import line 12; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT08_RigidBerkovichEquivalence` — import line 13; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT09_BerkovichAdicEquivalence` — import line 14; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT10_ProfileRestriction` — import line 15; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT11_RaynaudEquivalence` — import line 16; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT12_SeparatedFormalModels` — import line 17; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT13_SpecializationAndBlowup` — import line 18; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT14_CompletePairHenselian` — import line 19; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT15_OperationClosure` — import line 20; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT16_PrismaticBridge` — import line 21; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT17_GlobalPlaceBridge` — import line 22; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT18_ProperGAGA` — import line 23; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT19_HenselianGAGA` — import line 24; external provider; requires a separately pinned dependency.
- `FCRS.Theorems.CT20_HenselianCounterboundary` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fcrs_full_conditional_completeness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FCRSConditionalCompleteness/Varianta2351579ee53e73ce40d63566f82291cd25d52f423eb3aac846635762453e777.lean/declarations/fcrs-full-conditional-completeness--8ea0441bd961eae16c6f8316.md) | 41 | `result-track:8ea0441bd961eae16c6f831664a2e666e45657ba807546ac1506a5f74da41a51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
