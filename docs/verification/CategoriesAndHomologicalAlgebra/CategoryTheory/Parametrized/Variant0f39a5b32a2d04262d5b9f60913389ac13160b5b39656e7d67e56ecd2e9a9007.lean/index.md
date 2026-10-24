# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Parametrized.Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49582f076be6faaaa7e186590fe346d1ba5b00b2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49582f076be6faaaa7e186590fe346d1ba5b00b2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ParametrizedAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean/declarations/parametrizedadjunction--0961aa9db71273a3f38ca6b6.md) | 50 | `declaration-track:0961aa9db71273a3f38ca6b6b1eaf6caac98542cd938cf19ae6af4812a84068f` |
| 2 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean/declarations/mk--e9b1dc6c3fb9b9503008dfc8.md) | 71 | `declaration-track:e9b1dc6c3fb9b9503008dfc80118819ecf4aeb46400a94125019630b0fdfc781` |
| 3 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean/declarations/homequiv--02520c6461388006d4d1beb6.md) | 86 | `declaration-track:02520c6461388006d4d1beb6906375269c1eedfdae1eafb93f8e7b2330090a3b` |
| 4 | `lemma` | [homEquiv_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean/declarations/homequiv-eq--37718d177289668e8d640ca2.md) | 89 | `result-track:37718d177289668e8d640ca2d261d44a310f71aa2eb5b9970b72f1bb8378c7f5` |
| 5 | `lemma` | [homEquiv_naturality_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean/declarations/homequiv-naturality-one--606d170d086549edaacf3c6b.md) | 92 | `result-track:606d170d086549edaacf3c6b0c91fc1b78039b3378ef170debd865bf2ee2d382` |
| 6 | `lemma` | [homEquiv_naturality_two](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean/declarations/homequiv-naturality-two--c2e237770f818fbfe0019e1d.md) | 101 | `result-track:c2e237770f818fbfe0019e1d5885e2d000eb7cfe0c0d830dae65a4e70146245b` |
| 7 | `lemma` | [homEquiv_naturality_three](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean/declarations/homequiv-naturality-three--677a8dc58a1c5d9c311d06f0.md) | 106 | `result-track:677a8dc58a1c5d9c311d06f04d0d6fd709561c40c22865f39d6eb037218e4755` |
| 8 | `lemma` | [homEquiv_symm_naturality_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean/declarations/homequiv-symm-naturality-one--d93be1ec436ab045209e0fb0.md) | 111 | `result-track:d93be1ec436ab045209e0fb01f660a85b33104324b22ea82a88b825541fca789` |
| 9 | `lemma` | [homEquiv_symm_naturality_two](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean/declarations/homequiv-symm-naturality-two--849a619255738dcd3703e822.md) | 118 | `result-track:849a619255738dcd3703e822baee4b8da2603f51d31a2b92e8bdc62466cb5f94` |
| 10 | `lemma` | [homEquiv_symm_naturality_three](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean/declarations/homequiv-symm-naturality-three--90673f997666a6963b5cfcdf.md) | 125 | `result-track:90673f997666a6963b5cfcdf8d8dd33870dde37adc6d177453e57a63086fd2b1` |
| 11 | `lemma` | [whiskerLeft_map_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant0f39a5b32a2d04262d5b9f60913389ac13160b5b39656e7d67e56ecd2e9a9007.lean/declarations/whiskerleft-map-counit--107b765a469a4e73d5150d59.md) | 132 | `result-track:107b765a469a4e73d5150d59bf3e5f55f1fa93ceac1f27b54f7169825219f8b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
