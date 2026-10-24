# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompatibleSheafification.Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3edb8f670fcf20a4aa7af9fd63f153e34384eff",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3edb8f670fcf20a4aa7af9fd63f153e34384eff`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.CompatiblePlus` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sheafifyCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/declarations/sheafifycompiso--718893141a4c92b25e431e0e.md) | 69 | `declaration-track:718893141a4c92b25e431e0e78ca90dad62fe40cac01259e0c2491e52a776a37` |
| 2 | `def` | [sheafificationWhiskerLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/declarations/sheafificationwhiskerleftiso--a41eb2a10ad8fc9507a84537.md) | 75 | `declaration-track:a41eb2a10ad8fc9507a84537a8d962f3c1253efa601d365ca0109cc965a39b74` |
| 3 | `theorem` | [sheafificationWhiskerLeftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/declarations/sheafificationwhiskerleftiso-hom-app--d5659972500542fb9a38f822.md) | 87 | `result-track:d5659972500542fb9a38f82256874fc9f61ded95ffa77fd333ca02efa7eba9fe` |
| 4 | `theorem` | [sheafificationWhiskerLeftIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/declarations/sheafificationwhiskerleftiso-inv-app--4a91c4474332aee3fa1d1228.md) | 97 | `result-track:4a91c4474332aee3fa1d1228598ade3c1c8fd76e2f7f652ec8961c3b892a3507` |
| 5 | `def` | [sheafificationWhiskerRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/declarations/sheafificationwhiskerrightiso--92e3623fc4db77a066dfcb9c.md) | 108 | `declaration-track:92e3623fc4db77a066dfcb9c8dc3ebb82ff0e1f6b0182ca9386b7fd1efb33aa0` |
| 6 | `theorem` | [sheafificationWhiskerRightIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/declarations/sheafificationwhiskerrightiso-hom-app--2c5940b99717d54baa1a2e14.md) | 119 | `result-track:2c5940b99717d54baa1a2e1442ebb68cb172ab2b3ad7e78e210f8a39bf3842c8` |
| 7 | `theorem` | [sheafificationWhiskerRightIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/declarations/sheafificationwhiskerrightiso-inv-app--3bea2ba70a2d72c70d6f1621.md) | 127 | `result-track:3bea2ba70a2d72c70d6f1621a8ba5cb97f4ee85bd615619db0a0614c678458e8` |
| 8 | `theorem` | [whiskerRight_toSheafify_sheafifyCompIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/declarations/whiskerright-tosheafify-sheafifycompiso-hom--8d73cf1a2735a5338ee7843c.md) | 135 | `result-track:8d73cf1a2735a5338ee7843c11ef563c48aef939a810cbd827a6bfbf2b059c76` |
| 9 | `theorem` | [toSheafify_comp_sheafifyCompIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/declarations/tosheafify-comp-sheafifycompiso-inv--d3c8103e40470f811d437d9a.md) | 146 | `result-track:d3c8103e40470f811d437d9a56c7da6577df7facbe65dca65f88a24613c5b591` |
| 10 | `theorem` | [sheafifyCompIso_inv_eq_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/declarations/sheafifycompiso-inv-eq-sheafifylift--4aab776b084c194027d99053.md) | 158 | `result-track:4aab776b084c194027d9905366f16cb1c9390c48b047299804202c4689b372fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
