# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Symmetry.Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4beb9483fd91bcf23cef88e8652794ecbfa15f11",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4beb9483fd91bcf23cef88e8652794ecbfa15f11`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [symmEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc.lean/declarations/symmequivfunctor--87b6739c2674bd5c41206bba.md) | 36 | `declaration-track:87b6739c2674bd5c41206bba75378731d5006174d9d2c29ed117fad0a28e492e` |
| 2 | `def` | [symmEquivInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc.lean/declarations/symmequivinverse--224a68193ab9e819aa2f61aa.md) | 43 | `declaration-track:224a68193ab9e819aa2f61aa72b5c74116dc6a5e5dc2ebc1cdf65b312566cc13` |
| 3 | `def` | [symmEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc.lean/declarations/symmequiv--87a058c3f028786b3988736e.md) | 53 | `declaration-track:87a058c3f028786b3988736e7920477ad4988ffb6f21186e69866c0a49583f50` |
| 4 | `def` | [inverseFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc.lean/declarations/inversefunctor--82169c29f18fb86cd42bb595.md) | 68 | `declaration-track:82169c29f18fb86cd42bb595f4a52fc8700cb065ffe601b7175f0fd04eb5203d` |
| 5 | `def` | [inverseFunctorObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc.lean/declarations/inversefunctorobjiso--ce029fe67db5f19d98a68534.md) | 75 | `declaration-track:ce029fe67db5f19d98a685344042045ddf5f4f5a6df96014f38ff27b13c7537b` |
| 6 | `lemma` | [inverseFunctorMapIso_symm_eq_isoInverseOfIsoFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc.lean/declarations/inversefunctormapiso-symm-eq-isoinverseofisofunctor--e97d863c01605b21aeaf13c6.md) | 81 | `result-track:e97d863c01605b21aeaf13c6c002a147b83f635cb35135eb5e999f3f27f16959` |
| 7 | `def` | [inverseFunctorObj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc.lean/declarations/inversefunctorobj--0a825e0f10d0054c3b25fb31.md) | 88 | `declaration-track:0a825e0f10d0054c3b25fb31b8097f144941dccad36f2bf7e901e0160147ce1a` |
| 8 | `def` | [congrLeftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Symmetry/Variantc03cffbd3c02d8f676e878bb165ebbcffc4d6b59cddbb3ad31cd55931472e2dc.lean/declarations/congrleftfunctor--058c57e311cbd35aabd09463.md) | 95 | `declaration-track:058c57e311cbd35aabd09463f4a6fce70d9c199597d2fb3ed9feff328a1015d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
