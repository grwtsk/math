# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SearchM.Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21532ab09212943466ed637c8ff45c3ee721c11b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21532ab09212943466ed637c8ff45c3ee721c11b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Util` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CaseKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/declarations/casekind--961408b5b85e41a0487e6419.md) | 25 | `declaration-track:961408b5b85e41a0487e64192d5c85163c1ff5a86b742801ce12dcb60ba6575b` |
| 2 | `structure` | [Case](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/declarations/case--a9a7ccba73a8c5d46eb5358e.md) | 30 | `declaration-track:a9a7ccba73a8c5d46eb5358ed8797f1e5d8c4a9cd4a4b727604394db692c197a` |
| 3 | `inductive` | [Search.Kind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/declarations/search-kind--017d26140b69ca2f9df68f4e.md) | 45 | `declaration-track:017d26140b69ca2f9df68f4ef523c351c59f0b1c4f85c666441e36b1f767a221` |
| 4 | `structure` | [Search.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/declarations/search-state--2e7a22fd54b0752415a9d829.md) | 61 | `declaration-track:2e7a22fd54b0752415a9d829491fcf92c87cc63bc2b44abc01bf9a29ba8f6966` |
| 5 | `abbrev` | [SearchM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/declarations/searchm--eed7a0592fea32760a90943f.md) | 75 | `declaration-track:eed7a0592fea32760a90943f4a7e7ea5b9b46cfb1efc21c429de761548aab680` |
| 6 | `def` | [isApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/declarations/isapprox--96c4bed0ec3a6d6183b91bb2.md) | 78 | `declaration-track:96c4bed0ec3a6d6183b91bb208e1ae4b5a3c67cc22ce8934ba4a6ada11a8b327` |
| 7 | `def` | [setImprecise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/declarations/setimprecise--1d3eb6bb61abcfeff31493a2.md) | 82 | `declaration-track:1d3eb6bb61abcfeff31493a2d0c018eb2f3c0d627416472a9a43ea410e7c439f` |
| 8 | `def` | [checkMaxSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/declarations/checkmaxsteps--71aec3a2784b4d7a921e02db.md) | 89 | `declaration-track:71aec3a2784b4d7a921e02dbb28ab58400bcb1a81b58eea0dfb6a656e24f2045` |
| 9 | `def` | [saveSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/declarations/savesteps--430f7fc6c610f133ef7c450f.md) | 98 | `declaration-track:430f7fc6c610f133ef7c450fda37b0b30cc9d10185c41275c9301f72d96a4960` |
| 10 | `def` | [mkCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/declarations/mkcase--e3257d9b2f6671822927e285.md) | 102 | `declaration-track:e3257d9b2f6671822927e2856e5b70d7686457a82936e091af50fc1338e7da89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
