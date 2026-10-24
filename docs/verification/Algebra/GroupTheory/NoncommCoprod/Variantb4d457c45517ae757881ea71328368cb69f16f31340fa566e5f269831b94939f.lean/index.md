# Verification target: GRWTSK.Algebra.GroupTheory.NoncommCoprod.Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4460c499fe63b6a6f246331941e021955fca6ec7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4460c499fe63b6a6f246331941e021955fca6ec7`.

Source path: `GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Lattice` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Disjoint` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [noncommCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/declarations/noncommcoprod--5087b0cece25d6adfa727624.md) | 56 | `declaration-track:5087b0cece25d6adfa727624989334ab43d90c2a003031b072a65939a5741c80` |
| 2 | `theorem` | [noncommCoprod_apply'](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/declarations/noncommcoprod-apply--e0e77b7d5bc4a5f721420032.md) | 63 | `result-track:e0e77b7d5bc4a5f721420032b53f53056d9a6de7b9c77e1d8f58cf10f0e7bb8f` |
| 3 | `theorem` | [comp_noncommCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/declarations/comp-noncommcoprod--21ad296f43c8a079302289a5.md) | 68 | `result-track:21ad296f43c8a079302289a5bc0bd0f65b2e6b202cb2fe7a88e384294c65fbd9` |
| 4 | `def` | [noncommCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/declarations/noncommcoprod--cd1cfd3b78b595c0ebf09997.md) | 90 | `declaration-track:cd1cfd3b78b595c0ebf099975f2d7b197bac52ec3cfa5ccd2411c9d650b091ff` |
| 5 | `theorem` | [noncommCoprod_apply'](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/declarations/noncommcoprod-apply--ac24a0629de04b07156f656c.md) | 98 | `result-track:ac24a0629de04b07156f656c0c3457af7742a11645b6ec54fd1fdfd605d0025d` |
| 6 | `theorem` | [noncommCoprod_comp_inl](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/declarations/noncommcoprod-comp-inl--c3b2ed4b2a23935479a90391.md) | 103 | `result-track:c3b2ed4b2a23935479a90391f8a2d21bf79c3619afccbff1bd53298a4e89eae7` |
| 7 | `theorem` | [noncommCoprod_comp_inr](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/declarations/noncommcoprod-comp-inr--46589eb26f4968bdca2b9bef.md) | 107 | `result-track:46589eb26f4968bdca2b9bef8728a6a753535243f8dc34401e5457c0e09318c0` |
| 8 | `theorem` | [noncommCoprod_unique](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/declarations/noncommcoprod-unique--4be54e426821607a42bba597.md) | 111 | `result-track:4be54e426821607a42bba597fcb61102066ac177a06606c552b60dd57c8f984b` |
| 9 | `theorem` | [noncommCoprod_inl_inr](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/declarations/noncommcoprod-inl-inr--9624283e05af5412cfcf18e2.md) | 117 | `result-track:9624283e05af5412cfcf18e2015fb436322d91f0e19c5ef66337732ab4aa828f` |
| 10 | `theorem` | [comp_noncommCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/declarations/comp-noncommcoprod--3963cf477b0f31d6dd96bcfd.md) | 122 | `result-track:3963cf477b0f31d6dd96bcfd385d3a922b61c0c6a0d59dcbcfd1fa94fb661871` |
| 11 | `lemma` | [noncommCoprod_injective](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/declarations/noncommcoprod-injective--6ca8b432be1e95f143d3e034.md) | 131 | `result-track:6ca8b432be1e95f143d3e03457b2ed434b5497351a892ef041c77075f9fc866d` |
| 12 | `lemma` | [noncommCoprod_range](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f.lean/declarations/noncommcoprod-range--1acd43f1892ec647b02537f4.md) | 146 | `result-track:1acd43f1892ec647b02537f449f3ea85ab5c0f2b9e7a44ea78f829a26afda76e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
