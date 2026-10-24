# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quotient.Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d06f491ca93b55183d92ff78df5d2cfdcd37cf4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d06f491ca93b55183d92ff78df5d2cfdcd37cf4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac.lean.json)

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
| 1 | `class` | [HasQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac.lean/declarations/hasquotient--f9bbb041e2f4c452c68880be.md) | 35 | `declaration-track:f9bbb041e2f4c452c68880be93d27908c5e63a69e9020d88bfe286963950cc6a` |
| 2 | `lemma` | [HasQuotient.iff_of_eqvGen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac.lean/declarations/hasquotient-iff-of-eqvgen--c920c016357822797d5db84e.md) | 44 | `result-track:c920c016357822797d5db84e328e6863345ba5c139b058abf0aad1444eb372ed` |
| 3 | `def` | [quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac.lean/declarations/quotient--c7f15beb7564805c44379c7c.md) | 57 | `declaration-track:c7f15beb7564805c44379c7cd791bb95ad3ae1d8b57cbfb9def3f7dcd99fb82c` |
| 4 | `lemma` | [quotient_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac.lean/declarations/quotient-iff--9b348c3c8835b90ce06ac769.md) | 62 | `result-track:9b348c3c8835b90ce06ac76975079eead2206c4b9ad9490e5cdc3eb33fb0c04d` |
| 5 | `lemma` | [eq_inverseImage_quotientFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant297eec10b8da17cc6ae4b479bd98ce5a16c4ef7b4cc768d22558d43232d2d8ac.lean/declarations/eq-inverseimage-quotientfunctor--2393dbb25c95a68efe8e64a7.md) | 69 | `result-track:2393dbb25c95a68efe8e64a75ba2f1e34e4340dcea013f72a4ff76ad8f2d483e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
