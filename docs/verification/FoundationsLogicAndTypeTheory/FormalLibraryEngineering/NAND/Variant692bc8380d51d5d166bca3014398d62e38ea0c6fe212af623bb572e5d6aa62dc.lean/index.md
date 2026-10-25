# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NAND.Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ded67512fec7102ed1d7a8e43a7c0c9807e34bac",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ded67512fec7102ed1d7a8e43a7c0c9807e34bac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Boolean.Semantics` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NandExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/nandexpr--3189ed391bb8b8772062c206.md) | 19 | `declaration-track:3189ed391bb8b8772062c206ebecad9fdd7358f310ed7228cb88b5033f1c6a26` |
| 2 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/eval--0e0188e1372548f09c79d476.md) | 26 | `declaration-track:0e0188e1372548f09c79d476c71f106be4cedfa16e8ed0d77243450322a0e467` |
| 3 | `theorem` | [eval_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/eval-var--78da102d082d3c8e6d3f21fb.md) | 31 | `result-track:78da102d082d3c8e6d3f21fb5116b6b2cc7cb9897c14d3a7e3ff74944154fed0` |
| 4 | `theorem` | [eval_nand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/eval-nand--bc4c77cf24901add77aced60.md) | 36 | `result-track:bc4c77cf24901add77aced601e89dee23f1d7cb1432797f3e779fd62f098e917` |
| 5 | `def` | [nandNot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/nandnot--68419496e99c8b4e996c7a16.md) | 42 | `declaration-track:68419496e99c8b4e996c7a16d98b992ab7a3909e78ad27b6b9405db4d1d77a53` |
| 6 | `def` | [nandAnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/nandand--0e3c33bdcdc96147e0471139.md) | 45 | `declaration-track:0e3c33bdcdc96147e04711393a849a91e03518362beb58bb38853f7c696c95f0` |
| 7 | `def` | [nandOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/nandor--a2c10017fd0baae3307a646c.md) | 48 | `declaration-track:a2c10017fd0baae3307a646c34caa3d5c4230eb7ed3fd042b0b8a5a1c6715ded` |
| 8 | `def` | [nandTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/nandtrue--7321fa22c65d511fedee95da.md) | 51 | `declaration-track:7321fa22c65d511fedee95dabe66d005bf6e1fd9a811d351489ba61fc1387e5e` |
| 9 | `def` | [nandFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/nandfalse--73abf0952cfd09cc2783e953.md) | 54 | `declaration-track:73abf0952cfd09cc2783e9538f4e218c700fadb2a4f40768a227145f8d124052` |
| 10 | `def` | [nandXor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/nandxor--2b7171513984cd9ac9fe8e92.md) | 57 | `declaration-track:2b7171513984cd9ac9fe8e9299f93e6108244f21461a17b81350ecac48e1cf2b` |
| 11 | `theorem` | [eval_nandNot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/eval-nandnot--20337e30dd00dcbfc86a2f24.md) | 61 | `result-track:20337e30dd00dcbfc86a2f24a6e9f04ef4aef7b6997123b15742f0bd4528755b` |
| 12 | `theorem` | [eval_nandAnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/eval-nandand--5ee66f974aa0e06c3ac6e559.md) | 66 | `result-track:5ee66f974aa0e06c3ac6e55952817a430bdb2591b9da640ba340c81abaa7cc98` |
| 13 | `theorem` | [eval_nandOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/eval-nandor--67889984d9e5f083ac982095.md) | 72 | `result-track:67889984d9e5f083ac982095ee0cd3cdd9a839d57efae9be47db66481987dd75` |
| 14 | `theorem` | [eval_nandTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/eval-nandtrue--7b1cc398e9caee6042984971.md) | 78 | `result-track:7b1cc398e9caee6042984971bb0f582fdd302b8280c7f4d30cd4acab99851a69` |
| 15 | `theorem` | [eval_nandFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/eval-nandfalse--2f9402ac92127bfd523b296f.md) | 83 | `result-track:2f9402ac92127bfd523b296f04e91d27dbccee4855250a0551681558acabd464` |
| 16 | `theorem` | [eval_nandXor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NAND/Variant692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc.lean/declarations/eval-nandxor--c589953bdd0ed8f623600f8c.md) | 88 | `result-track:c589953bdd0ed8f623600f8c9736b49c46cbbb8b61c9bb4e1218cb4dcadc5724` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
