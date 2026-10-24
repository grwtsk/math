# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallySmall.Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12c04e06860ef0e6a2eb54ff375cb1bde523029d",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12c04e06860ef0e6a2eb54ff375cb1bde523029d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.HasLocalization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentiallySmall` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasLocalizationOfLocallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e.lean/declarations/haslocalizationoflocallysmall--6398966c42029d7b60a6a258.md) | 31 | `declaration-track:6398966c42029d7b60a6a2586368b866b5fd7d1d09f6fdbae16d3d03bb7bed32` |
| 2 | `lemma` | [locallySmall_of_hasLocalization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e.lean/declarations/locallysmall-of-haslocalization--3301bea84f758d853724c7eb.md) | 65 | `result-track:3301bea84f758d853724c7eb74302248668896119dc5718ff7163a7f94918a86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
