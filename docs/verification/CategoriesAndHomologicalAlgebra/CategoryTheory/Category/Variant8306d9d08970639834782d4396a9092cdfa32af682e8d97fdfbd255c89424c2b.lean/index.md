# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Category.Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82aad576aec124dc075c7fee90ba39c2eb08f774",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82aad576aec124dc075c7fee90ba39c2eb08f774`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean.json)

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
| 1 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean/declarations/hom--fc6c13e977adafb36ace47d6.md) | 46 | `declaration-track:fc6c13e977adafb36ace47d67ecd26538df59f05fd047b22e74b3d5b59bc9b6e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean/declarations/instance--d9dab82795ead5ee5cb6a293.md) | 50 | `declaration-track:d9dab82795ead5ee5cb6a29336fef80117e93ab4a1033ff4e2fb1d1ff5dbf9eb` |
| 3 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean/declarations/hom-ext--7d199893a8868b867999b903.md) | 56 | `result-track:7d199893a8868b867999b903b448338408100758c0a315c2702e8c1f1a8c729f` |
| 4 | `lemma` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean/declarations/id-hom--48de9558b100cc73dc558b7e.md) | 60 | `result-track:48de9558b100cc73dc558b7e345a22ea69d3d40a3bd8e88ca96253c37fa534b3` |
| 5 | `lemma` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean/declarations/comp-hom--b84c40b7c33cd8c39d81f544.md) | 63 | `result-track:b84c40b7c33cd8c39d81f544226572209406061763ad281adbf79d92ffad449e` |
| 6 | `def` | [presheafFiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean/declarations/presheaffiber--942b6cbb6129765fb4d886e6.md) | 76 | `declaration-track:942b6cbb6129765fb4d886e60b68bc790ff370ecac0f9e31bb1e05b4fb30fa8d` |
| 7 | `lemma` | [presheafFiber_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean/declarations/presheaffiber-id--1fb88d24d0e45a45ed2feeae.md) | 81 | `result-track:1fb88d24d0e45a45ed2feeae092e5c0746aa92ca89fc9721841f7426e221120b` |
| 8 | `lemma` | [presheafFiber_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean/declarations/presheaffiber-comp--0a1b855518df0bbd8fda381b.md) | 86 | `result-track:0a1b855518df0bbd8fda381bf216d0c284d8f2dac0480ac422fc3b97ac0dcc51` |
| 9 | `abbrev` | [sheafFiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean/declarations/sheaffiber--2225e7eaef3fefb3c3204af6.md) | 92 | `declaration-track:2225e7eaef3fefb3c3204af6d113e7ac40bc4016cd6930fdb37fdc7b26fc7c18` |
| 10 | `lemma` | [sheafFiber_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean/declarations/sheaffiber-id--d0f040281f2c04af3ebf1f29.md) | 97 | `result-track:d0f040281f2c04af3ebf1f291e34df8dcf3d1a7393f63f36be2b3d27124493e3` |
| 11 | `lemma` | [sheafFiber_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant8306d9d08970639834782d4396a9092cdfa32af682e8d97fdfbd255c89424c2b.lean/declarations/sheaffiber-comp--50ef8ce3cde1ac4442cb909e.md) | 102 | `result-track:50ef8ce3cde1ac4442cb909ea058e6fd1264d063ce54864f14b4d79f42f85045` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
