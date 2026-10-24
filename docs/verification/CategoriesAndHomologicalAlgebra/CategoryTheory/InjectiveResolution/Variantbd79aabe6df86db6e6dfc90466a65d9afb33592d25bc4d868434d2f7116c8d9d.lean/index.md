# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InjectiveResolution.Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79b45fb5a22505657a9baa5bc0eae47c0f778bfa",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79b45fb5a22505657a9baa5bc0eae47c0f778bfa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Injective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Single` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean/declarations/injectiveresolution--9009227e72e7c4afa79e6b80.md) | 63 | `declaration-track:9009227e72e7c4afa79e6b80c343610a9c716529c872d6e5a477b5b5e8e03d78` |
| 2 | `class` | [HasInjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean/declarations/hasinjectiveresolution--cd46ec9dd0ed5e49735a48c4.md) | 80 | `declaration-track:cd46ec9dd0ed5e49735a48c4ebdc102fb02e63b897bb76399a50902302c15d83` |
| 3 | `class` | [HasInjectiveResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean/declarations/hasinjectiveresolutions--5a3dcd20968e9b46a55209ea.md) | 92 | `declaration-track:5a3dcd20968e9b46a55209ea61fa05b24421d4f0d15e94745a78ab66142186f9` |
| 4 | `theorem` | [ι_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean/declarations/f-succ--a2b1c729fd40f7f4315cb155.md) | 103 | `result-track:a2b1c729fd40f7f4315cb1553e0a2fbb1aa182523522cff23be00996b1cfcae3` |
| 5 | `theorem` | [ι_f_zero_comp_complex_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean/declarations/f-zero-comp-complex-d--0e896e801f1e5ed47a61b2ad.md) | 110 | `result-track:0e896e801f1e5ed47a61b2ad13dedbc8f3cf823ad7e68e8557041049ffa63282` |
| 6 | `theorem` | [complex_d_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean/declarations/complex-d-comp--fda42d13d3e65da244fe9ca0.md) | 117 | `result-track:fda42d13d3e65da244fe9ca0ae0b128e22052fc27e774f36cf49fcfd3b8f06c2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean/declarations/instance--5fc9029b9cb7385e50c56c40.md) | 123 | `declaration-track:5fc9029b9cb7385e50c56c4074a9cef8678f14c764aaa8374b2075d1ac8efe49` |
| 8 | `def` | [self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveResolution/Variantbd79aabe6df86db6e6dfc90466a65d9afb33592d25bc4d868434d2f7116c8d9d.lean/declarations/self--b624c59f00080a98d9c23b16.md) | 129 | `declaration-track:b624c59f00080a98d9c23b16ef1e70bf49ee0049f085026f124146a8e356729e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
