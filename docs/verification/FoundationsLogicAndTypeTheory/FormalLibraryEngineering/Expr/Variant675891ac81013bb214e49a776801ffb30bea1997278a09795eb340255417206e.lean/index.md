# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8dcefeed707dea5da9ec98f0c16458ac3577c97",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8dcefeed707dea5da9ec98f0c16458ac3577c97`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProofWidgets.Data.Html` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExprPresenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/declarations/exprpresenter--3b90e0df1976a9ca12cc4972.md) | 17 | `declaration-track:3b90e0df1976a9ca12cc4972bacfca5d267b3166286c581a8983a95833ce0557` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/declarations/initialize--f578011a83b2f557fc5268ba.md) | 25 | `declaration-track:f578011a83b2f557fc5268ba4811304e1c83dd230cf63e65a05984f5671b58bb` |
| 3 | `def` | [evalExprPresenterUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/declarations/evalexprpresenterunsafe--7242fd2461db739df1c14ed2.md) | 34 | `declaration-track:7242fd2461db739df1c14ed26c97bde7dfdc79b019ddd86b30189203957abb9e` |
| 4 | `opaque` | [evalExprPresenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/declarations/evalexprpresenter--30415661c9abb9a8c281f4d7.md) | 39 | `declaration-track:30415661c9abb9a8c281f4d7ce4b93bda0c285216c4f162e9a0ced73eed98265` |
| 5 | `structure` | [GetExprPresentationsParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/declarations/getexprpresentationsparams--9ce2cfe40ccfa14b6c26faf4.md) | 42 | `declaration-track:9ce2cfe40ccfa14b6c26faf4a3877000157b61de172201f57940a018e58103fd` |
| 6 | `structure` | [ExprPresentationData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/declarations/exprpresentationdata--d89cb46df0fd1f1af0d16dac.md) | 47 | `declaration-track:d89cb46df0fd1f1af0d16dacecafea3fc3e0c719b65158344c039665a0f66522` |
| 7 | `structure` | [ExprPresentations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/declarations/exprpresentations--bef8c9a8ad499fae0d152f6a.md) | 53 | `declaration-track:bef8c9a8ad499fae0d152f6a6faf597500ef43a293bc037d7b6be351a3de7b57` |
| 8 | `def` | [getExprPresentations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/declarations/getexprpresentations--b5cff0d6abd7805a14bdf9ee.md) | 58 | `declaration-track:b5cff0d6abd7805a14bdf9ee36ff7b8b0686d2f1639db70cc27f9ad28c3ef0cd` |
| 9 | `structure` | [GetExprPresentationParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/declarations/getexprpresentationparams--6e93aacf396463001c4f1c77.md) | 86 | `declaration-track:6e93aacf396463001c4f1c77a84128183c7a553ea28f51cfdbf881ddc4a75024` |
| 10 | `def` | [getExprPresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/declarations/getexprpresentation--a87d01c1131efd24b32d644d.md) | 94 | `declaration-track:a87d01c1131efd24b32d644d153330c9b5614a5ecb18549fe5ac72e4d9b74c0b` |
| 11 | `structure` | [ExprPresentationProps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/declarations/exprpresentationprops--0326bfd506d8bf6d40cb45da.md) | 108 | `declaration-track:0326bfd506d8bf6d40cb45da5489e25de8297b712cb4a24318fc3a65c84188ec` |
| 12 | `def` | [ExprPresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean/declarations/exprpresentation--9a5010ecabb8748bc2854ba3.md) | 117 | `declaration-track:9a5010ecabb8748bc2854ba34473459d318d6957243ea1c13e0f9877bada3107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
