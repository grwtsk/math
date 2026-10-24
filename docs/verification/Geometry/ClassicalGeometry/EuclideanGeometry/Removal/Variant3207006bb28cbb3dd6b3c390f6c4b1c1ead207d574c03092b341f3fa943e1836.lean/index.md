# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Removal.Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52c50e0879a40565b5fa404feace47e3130d7104",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52c50e0879a40565b5fa404feace47e3130d7104`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.DegreeSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Lemma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Triangle.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Triangle.Counting` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.CastCard` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangleRemovalBound](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/declarations/triangleremovalbound--8762d085df2f266d82520259.md) | 33 | `declaration-track:8762d085df2f266d82520259ae61083590e565c16ccfd3581990d233eed2412f` |
| 2 | `lemma` | [triangleRemovalBound_pos](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/declarations/triangleremovalbound-pos--bd7ca1f0955f3ea757b10d5d.md) | 36 | `result-track:bd7ca1f0955f3ea757b10d5daa4738cb885e17142e63c956aeade3a1346b25a6` |
| 3 | `lemma` | [triangleRemovalBound_nonpos](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/declarations/triangleremovalbound-nonpos--dd48e3b79668234ce5eaa07b.md) | 41 | `result-track:dd48e3b79668234ce5eaa07bdb8f73b571b2cb70f9fedf00dc48df4b3fa68042` |
| 4 | `lemma` | [triangleRemovalBound_mul_cube_lt](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/declarations/triangleremovalbound-mul-cube-lt--481fc9484dae42e36aa18080.md) | 44 | `result-track:481fc9484dae42e36aa18080896cdc37dbc23674785d80b74de4e2d3ead966b0` |
| 5 | `lemma` | [aux](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/declarations/aux--149774c4c35a731440704a0b.md) | 51 | `result-track:149774c4c35a731440704a0b560de0f95cd0ff812769c79a7dcca30b47bb75a7` |
| 6 | `lemma` | [card_bound](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/declarations/card-bound--41242128ebb427a8d5a79963.md) | 57 | `result-track:41242128ebb427a8d5a799634bc232a96b8fc5514be9bc39ebb0d209aa05daca` |
| 7 | `lemma` | [triangle_removal_aux](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/declarations/triangle-removal-aux--dfa7defc7f8261c39b2731b2.md) | 68 | `result-track:dfa7defc7f8261c39b2731b214e99164fc6e9738682ee3e74fcc4aa927581f3f` |
| 8 | `lemma` | [regularityReduced_edges_card_aux](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/declarations/regularityreduced-edges-card-aux--a4678ab96062aee8c77777ca.md) | 96 | `result-track:a4678ab96062aee8c77777ca516eefe04502c106ab5029bb23ee77ac49c13dd5` |
| 9 | `lemma` | [FarFromTriangleFree.le_card_cliqueFinset](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/declarations/farfromtrianglefree-le-card-cliquefinset--6cb7aad7bab2eee2eb18da1b.md) | 124 | `result-track:6cb7aad7bab2eee2eb18da1be41bf7bc1ba67a36bb9972afa52671d6a642700d` |
| 10 | `lemma` | [triangle_removal](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/declarations/triangle-removal--2ffe8333b0d72f7473fec5e1.md) | 148 | `result-track:2ffe8333b0d72f7473fec5e1875846a04370e366e021ff894a261b09e2b39df4` |
| 11 | `def` | [evalTriangleRemovalBound](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/declarations/evaltriangleremovalbound--cd74b337f6ba390067f9d4ba.md) | 166 | `declaration-track:cd74b337f6ba390067f9d4babb08c2e0db08edced07b7d1fa47bee0075bcf7c3` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/declarations/example--4028311689a2f851711a331e.md) | 175 | `declaration-track:4028311689a2f851711a331e17920d65472be6bebb7a7f3843768d7ae40eb3e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
