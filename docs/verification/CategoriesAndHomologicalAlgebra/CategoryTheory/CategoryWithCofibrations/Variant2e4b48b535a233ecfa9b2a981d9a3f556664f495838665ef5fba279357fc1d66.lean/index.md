# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoryWithCofibrations.Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "628cbbc142f05078c1a10b05ce4f1387810f9b51",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `628cbbc142f05078c1a10b05ce4f1387810f9b51`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CategoryWithFibrations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/categorywithfibrations--e18fb6c6b312ac9de0876968.md) | 27 | `declaration-track:e18fb6c6b312ac9de087696842105cd3f51efccc14eb1e6dcf9ae93b3d4dabfe` |
| 2 | `class` | [CategoryWithCofibrations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/categorywithcofibrations--7ad6bbf7eeb7c37d8212f903.md) | 33 | `declaration-track:7ad6bbf7eeb7c37d8212f9039a35a2eefd0c718330297c9966932bb74b56803b` |
| 3 | `class` | [CategoryWithWeakEquivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/categorywithweakequivalences--ac5cff205bac7a61b976c4d9.md) | 39 | `declaration-track:ac5cff205bac7a61b976c4d90e7eadedc4fef6dcf311f053c49aa0ddf2689e79` |
| 4 | `def` | [fibrations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/fibrations--54b2708859e9520f282c2e08.md) | 50 | `declaration-track:54b2708859e9520f282c2e08f358cd30f1ff3ee638b2a4bb12dbcd916f684256` |
| 5 | `class` | [Fibration](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/fibration--0747a4aea3047ecc5090cf4a.md) | 56 | `declaration-track:0747a4aea3047ecc5090cf4ac0cc9714edb12e8f6a3c0b1b916b76f2186f76b9` |
| 6 | `lemma` | [mem_fibrations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/mem-fibrations--00d626c5fbc8735fe66cbb49.md) | 59 | `result-track:00d626c5fbc8735fe66cbb49fa58cb2c282b3bf50ba4c240a7650c88257a194c` |
| 7 | `def` | [cofibrations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/cofibrations--d184f3dabd65c36e7940f1bb.md) | 68 | `declaration-track:d184f3dabd65c36e7940f1bb720d9d72a641bcb60b08e0ae97026cd688795ff3` |
| 8 | `class` | [Cofibration](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/cofibration--b02af62a0312cf6c8df04997.md) | 74 | `declaration-track:b02af62a0312cf6c8df04997ab09ffa56dcfa9043362497061fb7cc0ab5cc534` |
| 9 | `lemma` | [mem_cofibrations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/mem-cofibrations--e21ab33546c1f151bafb31b7.md) | 77 | `result-track:e21ab33546c1f151bafb31b71890860fdf7125ab0de398d0ac53e406096f3d0b` |
| 10 | `def` | [weakEquivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/weakequivalences--28eef0e27d9df9e026585243.md) | 86 | `declaration-track:28eef0e27d9df9e0265852439d1c353d6364fbd6c0f0fb1c7a29e4461f4557d2` |
| 11 | `class` | [WeakEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/weakequivalence--a2147d38f988a23b91a288eb.md) | 92 | `declaration-track:a2147d38f988a23b91a288eba3f58b0b1a12cca33c756ae7ee7812c5fde41f65` |
| 12 | `lemma` | [mem_weakEquivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/mem-weakequivalences--9fa1bf3b042f7e4b9d7b963a.md) | 95 | `result-track:9fa1bf3b042f7e4b9d7b963a982f991e21cbb49fd40f069b28d731966432aabc` |
| 13 | `def` | [trivialFibrations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/trivialfibrations--6a4eea72c228e97d74603370.md) | 104 | `declaration-track:6a4eea72c228e97d7460337017ef569d5501c9096e8b15d9a29dc47318ce7ee6` |
| 14 | `lemma` | [trivialFibrations_sub_fibrations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/trivialfibrations-sub-fibrations--674c83ca846ce3f07abb862a.md) | 106 | `result-track:674c83ca846ce3f07abb862a0096a106b4bbb9248a20ac8942b53fd06697d19d` |
| 15 | `lemma` | [trivialFibrations_sub_weakEquivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/trivialfibrations-sub-weakequivalences--03b74a9daae598df940a563d.md) | 109 | `result-track:03b74a9daae598df940a563dc233f8a4862c63764fa686a61217dde78829c98f` |
| 16 | `lemma` | [mem_trivialFibrations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/mem-trivialfibrations--d02f93d9ecf575d564b04c84.md) | 114 | `result-track:d02f93d9ecf575d564b04c84a1b6e8f054219282a7ec14c00694e8573c1e0bed` |
| 17 | `lemma` | [mem_trivialFibrations_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/mem-trivialfibrations-iff--2cf7cce43ec0dd7c871ac3a7.md) | 118 | `result-track:2cf7cce43ec0dd7c871ac3a7fe02711b3fb4da3e23524449d07abebf5332764d` |
| 18 | `def` | [trivialCofibrations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/trivialcofibrations--8022d37eeed996ddf543e986.md) | 130 | `declaration-track:8022d37eeed996ddf543e986740c4fc59c4afeb2a4542a2b47112b4d73c92a36` |
| 19 | `lemma` | [trivialCofibrations_sub_cofibrations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/trivialcofibrations-sub-cofibrations--6da18aa2cbfcea84c11f34c1.md) | 132 | `result-track:6da18aa2cbfcea84c11f34c12f211a874163e6c5adbf1a788123a68fb6d1975c` |
| 20 | `lemma` | [trivialCofibrations_sub_weakEquivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/trivialcofibrations-sub-weakequivalences--610050acc7204ec41b35a1c3.md) | 135 | `result-track:610050acc7204ec41b35a1c398aa0257a7b5fa20f00adfa64dd84650be37782f` |
| 21 | `lemma` | [mem_trivialCofibrations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/mem-trivialcofibrations--01df5e9414b16d004b78e5ab.md) | 141 | `result-track:01df5e9414b16d004b78e5ab1f82797d1163df670fd93aaccabf7d0f4a1ccdde` |
| 22 | `lemma` | [mem_trivialCofibrations_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryWithCofibrations/Variant2e4b48b535a233ecfa9b2a981d9a3f556664f495838665ef5fba279357fc1d66.lean/declarations/mem-trivialcofibrations-iff--75593ff92295608af76770d2.md) | 145 | `result-track:75593ff92295608af76770d2ba323bc9e8f5a9f40bfa53679c383ae8080afa95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
