# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quotient.Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6414438fe1612b032c525eb2a3b1e5bc9373bc9d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6414438fe1612b032c525eb2a3b1e5bc9373bc9d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean.json)

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
| 1 | `class` | [HasQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean/declarations/hasquotient--2d7d05cd3ea15d8742ee0ac1.md) | 43 | `declaration-track:2d7d05cd3ea15d8742ee0ac11edc1c2e31f7ab6c43ef3f745026fa3ead6deabf` |
| 2 | `lemma` | [HasQuotient.iff_of_eqvGen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean/declarations/hasquotient-iff-of-eqvgen--e79ea75220daae3cde7cd562.md) | 52 | `result-track:e79ea75220daae3cde7cd562c7539e7fd7f53d335f72154f4757aee956f4ad64` |
| 3 | `def` | [quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean/declarations/quotient--3d3401d2676932c3e351ada9.md) | 65 | `declaration-track:3d3401d2676932c3e351ada9cbe2cd519934d12538f9aaea15da1a62bc8e8053` |
| 4 | `lemma` | [quotient_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean/declarations/quotient-iff--6ea5ac77370b262df9075ac1.md) | 70 | `result-track:6ea5ac77370b262df9075ac145813eb2847c0208f676713dca1250d03d21b572` |
| 5 | `lemma` | [eq_inverseImage_quotientFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variantcd521f5deb76af383f3aa3682f0671bb56cc0f327aff0b46a5b4bd3a53588ee1.lean/declarations/eq-inverseimage-quotientfunctor--40f785d48c63a6606f34de2b.md) | 77 | `result-track:40f785d48c63a6606f34de2b63b0b50e1661f0378356e1b3bd6f63b72f0b7ab9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
