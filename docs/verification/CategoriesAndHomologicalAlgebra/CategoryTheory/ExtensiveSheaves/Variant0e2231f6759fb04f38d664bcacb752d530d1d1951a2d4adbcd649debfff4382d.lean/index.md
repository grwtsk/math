# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExtensiveSheaves.Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15f062c91770043e903b4556542b6bba0a66ad0b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15f062c91770043e903b4556542b6bba0a66ad0b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Canonical` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Preserves` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Presieve.Extensive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean/declarations/presieve-extensive--743abcb0982eff8082db9ecf.md) | 34 | `declaration-track:743abcb0982eff8082db9ecf5d8c66dc46f19dac26cf61707f0cc2b7407fc2e9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean/declarations/instance--a214335bdbdb5c87076c5b38.md) | 40 | `declaration-track:a214335bdbdb5c87076c5b38a7cba9c3dc45af3c5446803b62fb3a0ec1d29986` |
| 3 | `theorem` | [isSheafFor_extensive_of_preservesFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean/declarations/issheaffor-extensive-of-preservesfiniteproducts--eef168733159680953bbc617.md) | 51 | `result-track:eef168733159680953bbc617fb5a9c8a9f5ba434499af21bb18b70519f45e6bd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean/declarations/instance--ca028ef5f51406a4f507cb80.md) | 59 | `declaration-track:ca028ef5f51406a4f507cb805f5bc38af6db794fac56c5da982322a9c9c4323c` |
| 5 | `theorem` | [extensiveTopology.isSheaf_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean/declarations/extensivetopology-issheaf-yoneda-obj--f8124cf2064074be4e2d830e.md) | 63 | `result-track:f8124cf2064074be4e2d830e8a14abf9fe51104b63fe01bd913f3f855e7fbc79` |
| 6 | `instance` | [extensiveTopology.subcanonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean/declarations/extensivetopology-subcanonical--621543d303b9c4f57deea241.md) | 72 | `declaration-track:621543d303b9c4f57deea241db1c06ce0d2ce870f8718ffd8aba15f7ab2e0cf7` |
| 7 | `theorem` | [Presieve.isSheaf_iff_preservesFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean/declarations/presieve-issheaf-iff-preservesfiniteproducts--3384523f85c183f04e06788f.md) | 81 | `result-track:3384523f85c183f04e06788f27142ea67695bcc0cb9cffc08a1f6f483133b0ca` |
| 8 | `theorem` | [Presheaf.isSheaf_iff_preservesFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean/declarations/presheaf-issheaf-iff-preservesfiniteproducts--33d960e61ab3dd3aab2dee9a.md) | 114 | `result-track:33d960e61ab3dd3aab2dee9a6975e9b0702b13f09b3908232b0dcb6276761573` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtensiveSheaves/Variant0e2231f6759fb04f38d664bcacb752d530d1d1951a2d4adbcd649debfff4382d.lean/declarations/instance--87049416c1745a67579c8653.md) | 130 | `declaration-track:87049416c1745a67579c8653f3a9c16adfd20cedb0830111862926942281099e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
