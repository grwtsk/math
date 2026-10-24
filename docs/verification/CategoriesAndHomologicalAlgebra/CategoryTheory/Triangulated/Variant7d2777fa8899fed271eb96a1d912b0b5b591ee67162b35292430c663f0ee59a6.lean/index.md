# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Triangulated.Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63ff57cbe92dff31cad80c3c3998163372814f1b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63ff57cbe92dff31cad80c3c3998163372814f1b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.Pretriangulated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Triangulated` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ComposableArrows` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mappingConeCompTriangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/mappingconecomptriangle--9b97f8ac989076a95eb38b54.md) | 32 | `declaration-track:9b97f8ac989076a95eb38b54bbabc8269202feea3f670699ce94c6f5adb23966` |
| 2 | `def` | [mappingConeCompTriangleh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/mappingconecomptriangleh--bbb7549ea122b02bdc75e2b2.md) | 42 | `declaration-track:bbb7549ea122b02bdc75e2b27e36dbf92230aee0d34139851a095fd72def4c41` |
| 3 | `lemma` | [mappingConeCompTriangle_mor₃_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/mappingconecomptriangle-mor-naturality--68025d659b67c801ab58ee22.md) | 47 | `result-track:68025d659b67c801ab58ee226e97ebf306db8afa0f8e548f5b93b6f40f58bcc6` |
| 4 | `def` | [hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/hom--39861850c5bbb3543b3e18b9.md) | 67 | `declaration-track:39861850c5bbb3543b3e18b9e34d4abbf764709893f6f8176977925321a3e50d` |
| 5 | `def` | [inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/inv--e801a87d0a95a48c9c0453db.md) | 78 | `declaration-track:e801a87d0a95a48c9c0453db5f5114343e27ad49f71f1bc16c45bf1b97476767` |
| 6 | `lemma` | [hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/hom-inv-id--61978ad27c16f7825f166c1b.md) | 86 | `result-track:61978ad27c16f7825f166c1b333e12aec1b4481a539caecf63aa3b9aa72e4fbc` |
| 7 | `def` | [homotopyInvHomId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/homotopyinvhomid--3688978f1b7afa51f40db0ee.md) | 97 | `declaration-track:3688978f1b7afa51f40db0ee0706ed21a488868bb52b9b7ea98fe69e914e302c` |
| 8 | `def` | [mappingConeCompHomotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/mappingconecomphomotopyequiv--841d19230440868d25e229c9.md) | 126 | `declaration-track:841d19230440868d25e229c98f20b316ae83ae9d8bd24f1c160851286cdd7e09` |
| 9 | `lemma` | [mappingConeCompHomotopyEquiv_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/mappingconecomphomotopyequiv-hom-inv-id--2986dd1805db73f8930df567.md) | 134 | `result-track:2986dd1805db73f8930df567fe4537b52112a715b3f98fe870a67660170cde84` |
| 10 | `lemma` | [mappingConeCompHomotopyEquiv_comm₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/mappingconecomphomotopyequiv-comm--d6a435bdd83d44b3192e3be5.md) | 140 | `result-track:d6a435bdd83d44b3192e3be5f8bd098f6d171d77a043c180574e0739d195511c` |
| 11 | `lemma` | [mappingConeCompHomotopyEquiv_comm₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/mappingconecomphomotopyequiv-comm--0956ec55428f2dc6d14bbcf1.md) | 146 | `result-track:0956ec55428f2dc6d14bbcf1f2fdb58bca6b28ecdacbee3b5f422615335ec4f4` |
| 12 | `lemma` | [mappingConeCompTriangleh_comm₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/mappingconecomptriangleh-comm--1bb843c962cbc9f600c423f9.md) | 155 | `result-track:1bb843c962cbc9f600c423f9ef7569ab4a30084de7721aeea1759ee4e59cafed` |
| 13 | `lemma` | [mappingConeCompTriangleh_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/mappingconecomptriangleh-distinguished--1317926f4c4d0de1da1f407f.md) | 175 | `result-track:1317926f4c4d0de1da1f407f0fb440c7ceaec16b4813bf09e6ce0f4a83347dce` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7d2777fa8899fed271eb96a1d912b0b5b591ee67162b35292430c663f0ee59a6.lean/declarations/instance--70a38c4549f0a271ab60d162.md) | 186 | `declaration-track:70a38c4549f0a271ab60d1620f9b2f2697f1720f51af9513b248ccd6ceb2d5c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
