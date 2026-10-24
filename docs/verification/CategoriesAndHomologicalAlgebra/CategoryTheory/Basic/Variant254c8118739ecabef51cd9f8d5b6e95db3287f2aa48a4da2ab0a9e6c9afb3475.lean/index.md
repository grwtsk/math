# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2de64143d1cf678088a672fb33d63d0d7822df88",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2de64143d1cf678088a672fb33d63d0d7822df88`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Enrichment` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Enriched.FunctorCategory` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean/declarations/homequiv--bacfca3ba081bda88b25fa8f.md) | 42 | `declaration-track:bacfca3ba081bda88b25fa8f0ddc18b4dfed9f0390754fc97ba199ee53b386b4` |
| 2 | `lemma` | [homEquiv_naturality_two_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean/declarations/homequiv-naturality-two-symm--2129634a63e3ae46a898d7f4.md) | 87 | `result-track:2129634a63e3ae46a898d7f44c9e8cb1ab3ca21000b60cc18b5085c484b67079` |
| 3 | `lemma` | [homEquiv_naturality_three](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean/declarations/homequiv-naturality-three--a65917792e0ce7c991ff137b.md) | 93 | `result-track:a65917792e0ce7c991ff137b75958f487044887e866b94ed40ae023c5948f7ae` |
| 4 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean/declarations/adj--f6c802e0ce98f124698db911.md) | 121 | `declaration-track:f6c802e0ce98f124698db91114a7c832131e90b53e531d9892d8c63e79a44b50` |
| 5 | `def` | [closed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean/declarations/closed--78e16877b13cbc5d3e6612a5.md) | 130 | `declaration-track:78e16877b13cbc5d3e6612a50dd666339c6b82c4f28b1384b0fbabff0fd87238` |
| 6 | `instance` | [monoidalClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean/declarations/monoidalclosed--2247c243e65f5c44c60af4d7.md) | 136 | `declaration-track:2247c243e65f5c44c60af4d708c78978ebc9ac793ebcacf190c194716ebbc9ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
