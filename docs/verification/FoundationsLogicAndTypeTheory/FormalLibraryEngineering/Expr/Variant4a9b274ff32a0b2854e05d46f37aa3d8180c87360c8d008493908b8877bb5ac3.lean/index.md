# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ebd0201277845e94b9e482a7ca3e51231e3b047",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ebd0201277845e94b9e482a7ca3e51231e3b047`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExprPresenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/declarations/exprpresenter--36c1bac2f82c4ca94b23f4b9.md) | 13 | `declaration-track:36c1bac2f82c4ca94b23f4b9a67e38e3767a5d6d147067e77dcc391d7d96e8e9` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/declarations/initialize--af105799cd8105f0e3f1d5ef.md) | 22 | `declaration-track:af105799cd8105f0e3f1d5eff1c66898d547f1ba542df580a95c1e171f346d38` |
| 3 | `def` | [evalExprPresenterUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/declarations/evalexprpresenterunsafe--1d518687ac9dbdbc4191efb2.md) | 31 | `declaration-track:1d518687ac9dbdbc4191efb2690216ef9ba59da57a04fb926f954f6ffe1c5543` |
| 4 | `opaque` | [evalExprPresenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/declarations/evalexprpresenter--aedf0981ed2248b9f66a9b93.md) | 36 | `declaration-track:aedf0981ed2248b9f66a9b935ffe4e731e187196196e4d3ef2f18a62c6551d30` |
| 5 | `structure` | [GetExprPresentationsParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/declarations/getexprpresentationsparams--fc77603ccffa416373ae82ba.md) | 39 | `declaration-track:fc77603ccffa416373ae82ba1e4d2e57545a6ad93e74ee722cab3f4c200aaa83` |
| 6 | `structure` | [ExprPresentationData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/declarations/exprpresentationdata--77d198816c64274355f5ab9f.md) | 43 | `declaration-track:77d198816c64274355f5ab9f828be6f1ab43b488f23f94430e6076c68a2e0f80` |
| 7 | `structure` | [ExprPresentations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/declarations/exprpresentations--7b89aa5d20eb8c981194bd1a.md) | 49 | `declaration-track:7b89aa5d20eb8c981194bd1ae722e600949517d856a1ec1f93b069ff334b1170` |
| 8 | `def` | [getExprPresentations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/declarations/getexprpresentations--1cffe82508d40aeed55fb322.md) | 54 | `declaration-track:1cffe82508d40aeed55fb3225098ad7d04b94a8a222dd832d5a51a3f5156a6ed` |
| 9 | `structure` | [GetExprPresentationParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/declarations/getexprpresentationparams--c9ee8f38434d346b0ab944cb.md) | 83 | `declaration-track:c9ee8f38434d346b0ab944cbbe06fb2fd150d2619bf32a125968fd59afcf7518` |
| 10 | `structure` | [ExprPresentationProps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/declarations/exprpresentationprops--f72b8c2e16a454ad19643d2b.md) | 89 | `declaration-track:f72b8c2e16a454ad19643d2b63c72259491514b7d66daba0bd2f3a77e2b89f06` |
| 11 | `def` | [ExprPresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/declarations/exprpresentation--87928f37b09053a93890e5a2.md) | 97 | `declaration-track:87928f37b09053a93890e5a22043c8a7f73b5f1cd5db91f5d80036d2b6c44320` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
