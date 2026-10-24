# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quotient.Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3555959d0826b5308131f061c18a4e8ea50e6478",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3555959d0826b5308131f061c18a4e8ea50e6478`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.CommShift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Induced` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Quotient` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCompatibleWithShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean/declarations/iscompatiblewithshift--e27b856df73d63c1f587d6ce.md) | 43 | `declaration-track:e27b856df73d63c1f587d6ce5b83aefe6479423e94d96499c5476b1a46e84350` |
| 2 | `instance` | [HasShift.quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean/declarations/hasshift-quotient--34b1ef33b8f4c4f1fddb170d.md) | 53 | `declaration-track:34b1ef33b8f4c4f1fddb170dfc335d755386bf2984339aa9fd83c3c496945d23` |
| 3 | `instance` | [Quotient.functor_commShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean/declarations/quotient-functor-commshift--f78279fc9b35ffb7eb5aabe2.md) | 61 | `declaration-track:f78279fc9b35ffb7eb5aabe2b94b84f638005c8f407b05bc3144fc60ecd2c902` |
| 4 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean/declarations/iso--8f94ee75406f665997be0856.md) | 78 | `declaration-track:8f94ee75406f665997be0856fcdecd8f82bd8dcf432b7934e08cd54bd3dd0693` |
| 5 | `lemma` | [iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean/declarations/iso-hom-app--7a9dbdcb5f07176b03e87831.md) | 86 | `result-track:7a9dbdcb5f07176b03e87831b6491817fbbaabc9be4b3828cf68f2f166c66b0f` |
| 6 | `lemma` | [iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean/declarations/iso-inv-app--b4d320e3c0e8cf739186fefb.md) | 96 | `result-track:b4d320e3c0e8cf739186fefbc008683abc4be66759b80980a51017d653654bdb` |
| 7 | `instance` | [liftCommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean/declarations/liftcommshift--ff664773da10cab86727c9e7.md) | 112 | `declaration-track:ff664773da10cab86727c9e7e737d048660a9bd81bf2cdc0620b2071b7fc9bb1` |
| 8 | `instance` | [liftCommShift_compatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantc43c2bb8a393cf271d9e6f118cfd34757112562dd2a5602b5e52d05368ac38bd.lean/declarations/liftcommshift-compatibility--37e9efbf227a5e18029c5a3f.md) | 145 | `declaration-track:37e9efbf227a5e18029c5a3fddac482029c0ec19508a9e4474fc2fad0f818ad6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
