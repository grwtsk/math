# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fee4f1f5a92a2b108022dd7b7a7dd07ed3330188",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fee4f1f5a92a2b108022dd7b7a7dd07ed3330188`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/projectsubobject--3efd4aa0b752d997552d6fd7.md) | 61 | `declaration-track:3efd4aa0b752d997552d6fd7ecf595feb87163ba17c0d26d5b49ca988ad3d481` |
| 2 | `theorem` | [projectSubobject_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/projectsubobject-mk--fdc2f06a62da916301136f54.md) | 69 | `result-track:fdc2f06a62da916301136f5426b756639a138c53b2fb8df42c2fbfa738d0e6cd` |
| 3 | `theorem` | [projectSubobject_factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/projectsubobject-factors--761e734122008edc24080258.md) | 75 | `result-track:761e734122008edc24080258ec5e738a0e2f4c44b6907d11ee96b0d55f257dac` |
| 4 | `def` | [liftSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/liftsubobject--3f51db453c54660742f93d57.md) | 85 | `declaration-track:3f51db453c54660742f93d5711efc83fb8b74d38320d8bce4b7d6423e6508f23` |
| 5 | `theorem` | [lift_projectSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/lift-projectsubobject--5d003273e3ec578b279357c9.md) | 92 | `result-track:5d003273e3ec578b279357c9c3bd2c8f912ac05ff21ef5a8fe39036b693df578` |
| 6 | `def` | [subobjectEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/subobjectequiv--d3a5c4709129766e01fabc39.md) | 109 | `declaration-track:d3a5c4709129766e01fabc39ee5074b6723bf9ade95add1b56e8666258142bac` |
| 7 | `instance` | [wellPowered_structuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/wellpowered-structuredarrow--4fc2799f7b048da353102c19.md) | 128 | `declaration-track:4fc2799f7b048da353102c19c283a26dd048f666289cc465f9449c4820f60c63` |
| 8 | `def` | [projectQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/projectquotient--dea13503e8abbd357d60e601.md) | 141 | `declaration-track:dea13503e8abbd357d60e60177b4be957c0cb6d607ea88e38a219bfbfb35f65b` |
| 9 | `theorem` | [projectQuotient_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/projectquotient-mk--13d5a3a59d881853981e9a45.md) | 150 | `result-track:13d5a3a59d881853981e9a45b266f9d6fa4416a9e70192459248e18e12ff972e` |
| 10 | `theorem` | [projectQuotient_factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/projectquotient-factors--a98c29c02d1cb333b814d733.md) | 158 | `result-track:a98c29c02d1cb333b814d733373ab469135a884cc267f94e29446d4855df3618` |
| 11 | `def` | [liftQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/liftquotient--063337bfc8eda31747ff3252.md) | 171 | `declaration-track:063337bfc8eda31747ff3252f8de79ae91489c7c621e3ec704583336a70a0980` |
| 12 | `theorem` | [unop_left_comp_underlyingIso_hom_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/unop-left-comp-underlyingiso-hom-unop--cc6df4aaa45e20d73b9fb38d.md) | 177 | `result-track:cc6df4aaa45e20d73b9fb38dcb0eb08c00e08359f2f3df9d43ad16e9df8d877f` |
| 13 | `theorem` | [lift_projectQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/lift-projectquotient--072702f70c7926b60278f23b.md) | 190 | `result-track:072702f70c7926b60278f23b8acc71fbca0d37ee329574c8f2318210ef4fcab8` |
| 14 | `theorem` | [unop_left_comp_ofMkLEMk_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/unop-left-comp-ofmklemk-unop--8f9545453e34b0360aae8e2d.md) | 205 | `result-track:8f9545453e34b0360aae8e2d3bb77e4ceb5d8fc28a44e2ce7965c723bba743f9` |
| 15 | `def` | [quotientEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/quotientequiv--e4a54c596641f1da8d1d2249.md) | 219 | `declaration-track:e4a54c596641f1da8d1d22490954c071aefec7f568d6950489c341d2770c296d` |
| 16 | `instance` | [well_copowered_costructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantca25ec5562eaf1c86306be205e8830934deba7e2a28a77f89b190ceccc8bb085.lean/declarations/well-copowered-costructuredarrow--c0ce6180e4a95833d15bdd8f.md) | 246 | `declaration-track:c0ce6180e4a95833d15bdd8f7439d0e4bfc6e0eb1dc34fc66ab71a29f0540401` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
