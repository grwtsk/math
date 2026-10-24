# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9081d4366f7a03e97920d6d308d618597c2412d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9081d4366f7a03e97920d6d308d618597c2412d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [monad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/monad--7dc40355ca9502a05b132b6d.md) | 28 | `declaration-track:7dc40355ca9502a05b132b6dde985a93653671777d07fcc48d430d67e2332b09` |
| 2 | `theorem` | [bind_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/bind-def--13ee7d7e866d2b6466e49ae1.md) | 35 | `result-track:13ee7d7e866d2b6466e49ae1d750db8f07ea60dd76b1f97ceba11d4fbe9dfc18` |
| 3 | `theorem` | [fmap_eq_image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/fmap-eq-image--41c403396be0f94bd4deba2c.md) | 40 | `result-track:41c403396be0f94bd4deba2c7e4cad94cfb66bb5ad1d6f9ccbcc04fcdf6857ba` |
| 4 | `theorem` | [seq_eq_set_seq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/seq-eq-set-seq--baafaef094cbc18e7d0f50fa.md) | 45 | `result-track:baafaef094cbc18e7d0f50fa537b813ee0e3a3ded4b74d4f6a02984c9a04b6ad` |
| 5 | `theorem` | [pure_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/pure-def--bd0a5a46af7fd46b294af96c.md) | 50 | `result-track:bd0a5a46af7fd46b294af96c49d7c96d4b5c68f8d3bc32d1fea983261c8652e1` |
| 6 | `theorem` | [image2_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/image2-def--612cea54470525ea7cf1f9fa.md) | 56 | `result-track:612cea54470525ea7cf1f9fa273b9d15ae95886f891e270ba0cadd029989a2f3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/instance--e84f7f16e6d0a13688585f08.md) | 62 | `declaration-track:e84f7f16e6d0a13688585f08945a5a43ce8cace9df6e886768463874d79a77ff` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/instance--9df4da62c6726e7c71070ce2.md) | 69 | `declaration-track:9df4da62c6726e7c71070ce2062cb2c86752091b8015260a5f2323a219882aa3` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/instance--12a3cca0f5de19cac3cf37fc.md) | 72 | `declaration-track:12a3cca0f5de19cac3cf37fc84bae6eed0941abb6ede264c81e33c13a60eb690` |
| 10 | `theorem` | [mem_coe_of_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/mem-coe-of-mem--3910ce53574ef1b577141fd3.md) | 81 | `result-track:3910ce53574ef1b577141fd3e72f66c13a3666e578d7e20ebd43a6145bcec00a` |
| 11 | `theorem` | [coe_subset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/coe-subset--ec1b570dc043a32c35781eaa.md) | 84 | `result-track:ec1b570dc043a32c35781eaa6903f97c933e406ee11d97090bd4ef5e3d883cef` |
| 12 | `theorem` | [mem_of_mem_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/mem-of-mem-coe--a1a9a27c483e8d987506def2.md) | 87 | `result-track:a1a9a27c483e8d987506def2282cfd61d833eca32b49e9372c3368c23ad02871` |
| 13 | `theorem` | [eq_univ_of_coe_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/eq-univ-of-coe-eq--d58a3b257ad9289d79224d31.md) | 90 | `result-track:d58a3b257ad9289d79224d31cae1165e1af16f0f4c252c833e458cdac171b57a` |
| 14 | `theorem` | [image_coe_eq_restrict_image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant9deaa4ca0588c2053eaf31049b73972942d57201ff2bfdb6e9e99de30e194dc0.lean/declarations/image-coe-eq-restrict-image--348777d647e8794222fb2f1e.md) | 93 | `result-track:348777d647e8794222fb2f1e9462a73b35e8fd674fad9a3cdbbe14478cc963eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
