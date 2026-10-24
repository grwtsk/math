# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.EnoughInjectives.Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23bf87ca73b10a1eb9c232246513302b7494e062",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23bf87ca73b10a1eb9c232246513302b7494e062`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.Ext.ExactSequences` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isSplitMono_from_singleFunctor_obj_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093.lean/declarations/issplitmono-from-singlefunctor-obj-of-injective--a7319cb6ae311078a46c3e6d.md) | 44 | `result-track:a7319cb6ae311078a46c3e6d883ccd3c020cb219fa7bba0f321f5108df1b3eca` |
| 2 | `lemma` | [to_singleFunctor_obj_eq_zero_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093.lean/declarations/to-singlefunctor-obj-eq-zero-of-injective--96dfbf26ba0b503f61a181a0.md) | 73 | `result-track:96dfbf26ba0b503f61a181a01fd65a6d3a4786e4c76e9ac8559b0c45a62f0f29` |
| 3 | `lemma` | [eq_zero_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093.lean/declarations/eq-zero-of-injective--94bc1d9ad09d82cc44391c07.md) | 101 | `result-track:94bc1d9ad09d82cc44391c07eb80c63050502050c0c8e109900df6aaa37a74bc` |
| 4 | `lemma` | [hasExt_of_enoughInjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093.lean/declarations/hasext-of-enoughinjectives--7b0724b21775fd1b284493ec.md) | 124 | `result-track:7b0724b21775fd1b284493ec5b4b1673667788012f905d867b08f811ad97acfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
