# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Triangulated.Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3158650f852d3c05dcb18c92862ba658a689bd8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3158650f852d3c05dcb18c92862ba658a689bd8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean.json)

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
| 1 | `def` | [mappingConeCompTriangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/mappingconecomptriangle--d60419d128888219b333ef31.md) | 40 | `declaration-track:d60419d128888219b333ef314bd80fbd1b0b42b872970a52b034e32dafe49fc7` |
| 2 | `def` | [mappingConeCompTriangleh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/mappingconecomptriangleh--00aebcd015432b30d8c4d855.md) | 50 | `declaration-track:00aebcd015432b30d8c4d8558265c91947a71866e742d63c2ca5ba20d70f8434` |
| 3 | `lemma` | [mappingConeCompTriangle_mor₃_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/mappingconecomptriangle-mor-naturality--829d8b6f3a83f3f49741bf05.md) | 57 | `result-track:829d8b6f3a83f3f49741bf057046b120edece8f492c00f6faebf35efcc691238` |
| 4 | `def` | [hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/hom--3a5ad57ca666a3e0b64b912b.md) | 78 | `declaration-track:3a5ad57ca666a3e0b64b912b31a05087486e675b37019aaec32d5efd088cbf06` |
| 5 | `def` | [inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/inv--c3437591272481058f8386b0.md) | 90 | `declaration-track:c3437591272481058f8386b0151dc36046c48a824199d7870dbfce110f849b83` |
| 6 | `lemma` | [hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/hom-inv-id--ccdae6ca1f6d9fb76569dd76.md) | 100 | `result-track:ccdae6ca1f6d9fb76569dd7605a4a33b90ffe8c073237c396c419e407a6b5471` |
| 7 | `def` | [homotopyInvHomId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/homotopyinvhomid--786d65a1c6c818e1363f4c0a.md) | 110 | `declaration-track:786d65a1c6c818e1363f4c0a79398f47d559264004db702bdc0fb4ac4a1da251` |
| 8 | `def` | [mappingConeCompHomotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/mappingconecomphomotopyequiv--e472b5058c769f84bf11d8a4.md) | 139 | `declaration-track:e472b5058c769f84bf11d8a4095198accb8088446e8568018023affa5728e6c6` |
| 9 | `lemma` | [mappingConeCompHomotopyEquiv_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/mappingconecomphomotopyequiv-hom-inv-id--3c0079e9339f5f96578d28a2.md) | 147 | `result-track:3c0079e9339f5f96578d28a2e27438e1536170ada6b36dbc6d0fc2ba0bd81109` |
| 10 | `lemma` | [mappingConeCompHomotopyEquiv_comm₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/mappingconecomphomotopyequiv-comm--bb0c7503d228fa24ed47c092.md) | 155 | `result-track:bb0c7503d228fa24ed47c09236a5791cc5601d81f8667ca90f7b9bc91a2ded48` |
| 11 | `lemma` | [mappingConeCompHomotopyEquiv_comm₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/mappingconecomphomotopyequiv-comm--b188a08b9ab657b2377de77c.md) | 162 | `result-track:b188a08b9ab657b2377de77c9733ed9c647d7574ab822b59aab8d72c7abf2a0d` |
| 12 | `lemma` | [mappingConeCompTriangleh_comm₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/mappingconecomptriangleh-comm--57045614d06e2f6296c22ce1.md) | 173 | `result-track:57045614d06e2f6296c22ce1e72183f70f811c5bbc6207efe916d752c4b5f265` |
| 13 | `lemma` | [mappingConeCompTriangleh_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/mappingconecomptriangleh-distinguished--13200aa81bc0746ce622c1af.md) | 195 | `result-track:13200aa81bc0746ce622c1afe5a50923db1b4ff39e82c0956025c6c62e6690c7` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant0d19481dd8903f992515f843a3270c8ceed8412373cf60627ec038dbd6be65f5.lean/declarations/instance--18474ee2581a971604f05aaf.md) | 208 | `declaration-track:18474ee2581a971604f05aaff55c327e7f8f093b59b5c6f2319cbc45309d25b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
