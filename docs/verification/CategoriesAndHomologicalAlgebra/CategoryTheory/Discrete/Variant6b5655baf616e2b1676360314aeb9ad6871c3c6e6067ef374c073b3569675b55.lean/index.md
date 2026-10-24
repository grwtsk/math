# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Discrete.Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca974d56c84f8bf2c4fa618e157f0b13f40996e9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca974d56c84f8bf2c4fa618e157f0b13f40996e9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.NaturalTransformation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Discrete.monoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean/declarations/discrete-monoidal--dc92d4438afda1d0595fa91e.md) | 35 | `declaration-track:dc92d4438afda1d0595fa91e92af4009f09a7e4d65fad6add358f1f33baf2415` |
| 2 | `lemma` | [Discrete.monoidal_tensorUnit_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean/declarations/discrete-monoidal-tensorunit-as--89afd5f568af28baedc7e37e.md) | 46 | `result-track:89afd5f568af28baedc7e37e57ecedea002e9c7bdd04b46e44ce98119024231f` |
| 3 | `def` | [Discrete.monoidalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean/declarations/discrete-monoidalfunctor--ade6475c54029d9a43731217.md) | 54 | `declaration-track:ade6475c54029d9a4373121794144fec3a7a828ee65414ce1d0a6ae460c47916` |
| 4 | `lemma` | [Discrete.monoidalFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean/declarations/discrete-monoidalfunctor-obj--0244212860e7e9c54e6d590d.md) | 58 | `result-track:0244212860e7e9c54e6d590d07d4474bcb514327d87dc09b4aaaf9a272dcacf9` |
| 5 | `instance` | [Discrete.monoidalFunctorMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean/declarations/discrete-monoidalfunctormonoidal--2940cbd57ab88494c2eee583.md) | 62 | `declaration-track:2940cbd57ab88494c2eee5838a5c829ee77843da6a535e3cc2ed96419f5bbbd9` |
| 6 | `lemma` | [Discrete.monoidalFunctor_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean/declarations/discrete-monoidalfunctor--d00600587b93a3d6ce5868cc.md) | 71 | `result-track:d00600587b93a3d6ce5868cc4bab18960ebfd7a314d8b09285f886011bdd5647` |
| 7 | `lemma` | [Discrete.monoidalFunctor_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean/declarations/discrete-monoidalfunctor--590d8239ea9a62d4204b8b55.md) | 75 | `result-track:590d8239ea9a62d4204b8b55f9356513fc6bd4d69f46ddbdfbe0db18881603c8` |
| 8 | `lemma` | [Discrete.monoidalFunctor_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean/declarations/discrete-monoidalfunctor--8a0fe25a5e7abd9412669034.md) | 79 | `result-track:8a0fe25a5e7abd941266903451bc2e6bc481d315bf4f81a6d92ffd5d86c8c011` |
| 9 | `lemma` | [Discrete.monoidalFunctor_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean/declarations/discrete-monoidalfunctor--6aceb17650576747fb72a22a.md) | 83 | `result-track:6aceb17650576747fb72a22aae13538149000a9780b3d7e4ce90a8f205f85922` |
| 10 | `def` | [Discrete.monoidalFunctorComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean/declarations/discrete-monoidalfunctorcomp--eb1d0bd80fe72d589d2535f0.md) | 96 | `declaration-track:eb1d0bd80fe72d589d2535f0cbb9b45faa97135dac793b14dd662930c0aa648a` |
| 11 | `instance` | [Discrete.monoidalFunctorComp_isMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant6b5655baf616e2b1676360314aeb9ad6871c3c6e6067ef374c073b3569675b55.lean/declarations/discrete-monoidalfunctorcomp-ismonoidal--3900e6672d8900df1920f597.md) | 101 | `declaration-track:3900e6672d8900df1920f597b31b73570c48457471031b0ccc3bb42482a41ecc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
