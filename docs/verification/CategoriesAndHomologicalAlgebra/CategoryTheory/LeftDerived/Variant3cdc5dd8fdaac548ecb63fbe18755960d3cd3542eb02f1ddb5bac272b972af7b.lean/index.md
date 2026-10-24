# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftDerived.Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "877e846cb5ac1176ebda6524062353b1ad8e0813",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `877e846cb5ac1176ebda6524062353b1ad8e0813`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.ProjectiveResolution` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.leftDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/declarations/functor-leftderived--56160a5a138463a2a75bc43f.md) | 62 | `declaration-track:56160a5a138463a2a75bc43fab113ec4483094cbed7b49b94b209069d2c52dc6` |
| 2 | `def` | [Functor.leftDerivedObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/declarations/functor-leftderivedobjiso--e721bc35ddd780834b6768f6.md) | 69 | `declaration-track:e721bc35ddd780834b6768f67b6019971e99de3ef166cd40dbdf634420553fee` |
| 3 | `def` | [Functor.leftDerivedObjProjectiveZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/declarations/functor-leftderivedobjprojectivezero--23472b2715496ea86c0125e2.md) | 85 | `declaration-track:23472b2715496ea86c0125e2807b696fdd8ae3e8de549376eec95140fde7f3a6` |
| 4 | `def` | [Functor.leftDerivedObjProjectiveSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/declarations/functor-leftderivedobjprojectivesucc--25d8392e226034383d4f0d0b.md) | 96 | `declaration-track:25d8392e226034383d4f0d0be371bab4c7380750e43de2c55a79dfc2cef091f4` |
| 5 | `theorem` | [Functor.leftDerived_map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/declarations/functor-leftderived-map-eq--6a1aa9be14cc2dda5c60a2d3.md) | 108 | `result-track:6a1aa9be14cc2dda5c60a2d3571a8e2ad5c3f1fd514300d433e073a50fb6375e` |
| 6 | `def` | [NatTrans.leftDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/declarations/nattrans-leftderived--eb39f259021ab56db5647f6b.md) | 129 | `declaration-track:eb39f259021ab56db5647f6b3f2e343e8b1bc78525cdf516258e801ae582ac5f` |
| 7 | `theorem` | [NatTrans.leftDerived_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/declarations/nattrans-leftderived-id--0ca28986eaef62ad5141aa20.md) | 136 | `result-track:0ca28986eaef62ad5141aa20bedd5b4b02f413c31f7fb3c7984fd9b04b25045a` |
| 8 | `theorem` | [NatTrans.leftDerived_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/declarations/nattrans-leftderived-comp--d099c21c8f6e7fbfe6678a40.md) | 144 | `result-track:d099c21c8f6e7fbfe6678a40e920eefbd8568883cc93c7d70a02137c1286ae7a` |
| 9 | `theorem` | [NatTrans.leftDerived_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/declarations/nattrans-leftderived-eq--8edf2504c7e28ff91bc82e20.md) | 153 | `result-track:8edf2504c7e28ff91bc82e204476da5cefe24a967000e8771aeffbccfe5188ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
