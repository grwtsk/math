# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ce3abcb189b0e26f9b8ea28aa8d5bacef03b1f5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ce3abcb189b0e26f9b8ea28aa8d5bacef03b1f5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Cartesian.FunctorCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean/declarations/instance--7b052fdce24b04871b014564.md) | 28 | `declaration-track:7b052fdce24b04871b014564981500f35e352b2fbdf783c09fa6691ff130ff3a` |
| 2 | `lemma` | [leftUnitor_hom_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean/declarations/leftunitor-hom-app-apply--8df14f1bd0ce127d4d12cbae.md) | 32 | `result-track:8df14f1bd0ce127d4d12cbae27ee3154b9ee53abee09a76c5cfcb16c286addfe` |
| 3 | `lemma` | [leftUnitor_inv_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean/declarations/leftunitor-inv-app-apply--a3348df173779dc4bb946603.md) | 36 | `result-track:a3348df173779dc4bb94660336df68bd1bf6ef9315b050fea5964d47ddc67b3b` |
| 4 | `lemma` | [rightUnitor_hom_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean/declarations/rightunitor-hom-app-apply--759bd11daee6d4e11f9cd9e4.md) | 40 | `result-track:759bd11daee6d4e11f9cd9e44459e7531fe1505558a3ca2f849eb75dc65a7d8a` |
| 5 | `lemma` | [rightUnitor_inv_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean/declarations/rightunitor-inv-app-apply--4f417efc4aa81e66e72ceaa9.md) | 44 | `result-track:4f417efc4aa81e66e72ceaa9c03eaec20a05f1565edb841fbebc92b205098fec` |
| 6 | `lemma` | [tensorHom_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean/declarations/tensorhom-app-apply--09204d05e41f5b2879bf8e10.md) | 48 | `result-track:09204d05e41f5b2879bf8e1040d04d2d65a319a5306c1eeff9fc8186fb278361` |
| 7 | `lemma` | [whiskerLeft_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean/declarations/whiskerleft-app-apply--326ba64bc6c1e78abe1eb35f.md) | 53 | `result-track:326ba64bc6c1e78abe1eb35f566ec7c5ad2e96e18b5224af5eda1611a9646d56` |
| 8 | `lemma` | [whiskerRight_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean/declarations/whiskerright-app-apply--a425c362246210fabcb926df.md) | 58 | `result-track:a425c362246210fabcb926df4e2d0583b2badafac4b1eb99c088dd4aea7fa920` |
| 9 | `lemma` | [associator_hom_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean/declarations/associator-hom-app-apply--8d592de4a514fc1e8094f8cd.md) | 63 | `result-track:8d592de4a514fc1e8094f8cd018c59d2ecefd5d0936afe763a14f9dd748db4d0` |
| 10 | `lemma` | [associator_inv_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean/declarations/associator-inv-app-apply--d3e35c1f5d32d4d2ae67961d.md) | 68 | `result-track:d3e35c1f5d32d4d2ae67961d430ef95d966641da94a39cbfeb6fd17488276e96` |
| 11 | `def` | [unitHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant12decb72c73eed378c7755a23f5192f39e6b43cfdacc5ccb5b6bb24a4162e166.lean/declarations/unithomequiv--2d5485d736b053c9845f2520.md) | 73 | `declaration-track:2d5485d736b053c9845f25200fc4c9f65410e8aa3530fee14da8b3c3d5138252` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
