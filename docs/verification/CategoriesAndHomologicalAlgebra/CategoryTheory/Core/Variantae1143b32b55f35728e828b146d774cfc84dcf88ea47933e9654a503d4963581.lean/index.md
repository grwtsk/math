# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Core.Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39593cb13658f1aafa3c58cf8668b283df2dcb49",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39593cb13658f1aafa3c58cf8668b283df2dcb49`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.PresentationCategory` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Fabric.Shape` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Fabric](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean/declarations/fabric--18f74cc1cd324f19f89e7b47.md) | 26 | `declaration-track:18f74cc1cd324f19f89e7b472ff9bfc822cab781297db67e8e953bf1e27e15ed` |
| 2 | `abbrev` | [Cell](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean/declarations/cell--59a50a2a1fb9dbd84da47ed8.md) | 55 | `declaration-track:59a50a2a1fb9dbd84da47ed85ae5143785da0cce7e843bb31765e124f7c48834` |
| 3 | `abbrev` | [cellPresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean/declarations/cellpresentation--b420a8b179bc1150ae40769e.md) | 59 | `declaration-track:b420a8b179bc1150ae40769ef67cc9142e469748b11d4bd95f408950f10cc2b9` |
| 4 | `abbrev` | [cellSystem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean/declarations/cellsystem--3cb4b4a17b90687f61986413.md) | 63 | `declaration-track:3cb4b4a17b90687f619864136044218d41806ac8908756e359e75a7f28a56f93` |
| 5 | `def` | [faceContract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean/declarations/facecontract--367bb0e70fe543241b37b9c6.md) | 67 | `declaration-track:367bb0e70fe543241b37b9c6b9acfe9699714d19b11b9fccea7c3120412bc62c` |
| 6 | `def` | [degeneracyContract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean/declarations/degeneracycontract--03e16e58ddc642135df73c95.md) | 75 | `declaration-track:03e16e58ddc642135df73c95b113793c6bfb10ad36396c9e2b6ed586f28c9eba` |
| 7 | `def` | [contractSystemHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean/declarations/contractsystemhom--c97c05c748fefca8825824a2.md) | 83 | `declaration-track:c97c05c748fefca8825824a257f324027ef28198b3deae3b2b02eec140d25cc7` |
| 8 | `theorem` | [contract_id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean/declarations/contract-id-apply--5dea8e836c0725eb4706de7f.md) | 89 | `result-track:5dea8e836c0725eb4706de7f6010caf7f8ca35744b119ad59a70f3d55458f037` |
| 9 | `theorem` | [contract_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581.lean/declarations/contract-comp-apply--e16efabc100164505d3e8ae5.md) | 96 | `result-track:e16efabc100164505d3e8ae5c2e1dd7807b59677a7696560540e3b1cc7900566` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
