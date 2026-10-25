# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be1188acf3ce491a428ef87eb0bd44fa62acfec7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be1188acf3ce491a428ef87eb0bd44fa62acfec7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean.json)

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
| 1 | `structure` | [ExprPresenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean/declarations/exprpresenter--d77c1ddee8439a36d4faeec8.md) | 21 | `declaration-track:d77c1ddee8439a36d4faeec8ba9d61605c21875ae7db700765a0942cdc9daed6` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean/declarations/initialize--68ca9fe15bb720709f89e29c.md) | 30 | `declaration-track:68ca9fe15bb720709f89e29c6a2bb05eeecb5fcd0f79b902062988a3580521d7` |
| 3 | `def` | [evalExprPresenterUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean/declarations/evalexprpresenterunsafe--545f40d66076d1165d5f9810.md) | 39 | `declaration-track:545f40d66076d1165d5f9810c30069ea310f75b68f42420e70b4f57ab9fa7bec` |
| 4 | `opaque` | [evalExprPresenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean/declarations/evalexprpresenter--cd39f5983f2f34aa833c1e96.md) | 44 | `declaration-track:cd39f5983f2f34aa833c1e9613bfea1bb1e0985fe014bab91b1246e2adb7b91a` |
| 5 | `structure` | [GetExprPresentationsParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean/declarations/getexprpresentationsparams--025ce9f4ff87d0b52dbeb58f.md) | 47 | `declaration-track:025ce9f4ff87d0b52dbeb58f80cee0bec5b40a45c4f9f04c8d9bd93381b4117a` |
| 6 | `structure` | [ExprPresentationData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean/declarations/exprpresentationdata--c9f4952c9c3c480f6107c23f.md) | 51 | `declaration-track:c9f4952c9c3c480f6107c23f96869ff44bc9b4090c7f7e17529283bc3052bdf9` |
| 7 | `structure` | [ExprPresentations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean/declarations/exprpresentations--da274956e8c4213333d4385d.md) | 57 | `declaration-track:da274956e8c4213333d4385dbec778b884175878cf6481600dbcbfc97e581299` |
| 8 | `def` | [getExprPresentations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean/declarations/getexprpresentations--121b54715643821a42b1092a.md) | 62 | `declaration-track:121b54715643821a42b1092a1a4a20d9b9f0bcd0b27612e84a5b38c9f2a74f32` |
| 9 | `structure` | [GetExprPresentationParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean/declarations/getexprpresentationparams--d7f6889f04a8c139b21e3a4f.md) | 91 | `declaration-track:d7f6889f04a8c139b21e3a4f7aee429448b2b45ad3d2c854923a50b54c85eea5` |
| 10 | `structure` | [ExprPresentationProps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean/declarations/exprpresentationprops--c7a9f49e722821a13b70299b.md) | 97 | `declaration-track:c7a9f49e722821a13b70299ba49bd1ea3b9fd2650ec0b5e13b736e53bf816bef` |
| 11 | `def` | [ExprPresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc88cde0eea781dbd2f2731dd464ceb86fdf8af927f676f93f0254116504e5047.lean/declarations/exprpresentation--b69a333f1833c2412a08777d.md) | 105 | `declaration-track:b69a333f1833c2412a08777ddc00dad49e008daffaa25e90097ab8d3d6ca0b1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
