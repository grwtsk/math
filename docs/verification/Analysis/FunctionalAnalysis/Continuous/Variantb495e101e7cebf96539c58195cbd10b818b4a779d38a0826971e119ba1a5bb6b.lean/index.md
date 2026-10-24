# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Continuous.Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86efd5d907f44d4a79d747f51fd3d31168ff181a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86efd5d907f44d4a79d747f51fd3d31168ff181a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Affine.Convex` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ConvexOn.lipschitzOnWith_of_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/convexon-lipschitzonwith-of-abs-le--d1e0b015e0af865b1057abdb.md) | 29 | `result-track:d1e0b015e0af865b1057abdb11b15c33178a23e2ee4676a6b4def2b2e74c576f` |
| 2 | `lemma` | [ConcaveOn.lipschitzOnWith_of_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/concaveon-lipschitzonwith-of-abs-le--63b1433999f6c7de83d8bd40.md) | 74 | `result-track:63b1433999f6c7de83d8bd40be7b4ba58c6299278200ce212dc5a96c07073857` |
| 3 | `lemma` | [ConvexOn.exists_lipschitzOnWith_of_isBounded](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/convexon-exists-lipschitzonwith-of-isbounded--03321cda1800eca3cefa8a1a.md) | 79 | `result-track:03321cda1800eca3cefa8a1a3b834154fde0beaa8dc29b48b3653fc04dad4ae3` |
| 4 | `lemma` | [ConcaveOn.exists_lipschitzOnWith_of_isBounded](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/concaveon-exists-lipschitzonwith-of-isbounded--0dd55c1db0634329f5628b93.md) | 88 | `result-track:0dd55c1db0634329f5628b9334a8e66ebc784c36cd9043f5f71a20df275eee13` |
| 5 | `lemma` | [ConvexOn.isBoundedUnder_abs](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/convexon-isboundedunder-abs--460f6d906f729cb8bfc3ba5b.md) | 93 | `result-track:460f6d906f729cb8bfc3ba5b8987d6b0ec88ab70a2552f56a5d3a0bc84afb209` |
| 6 | `lemma` | [ConcaveOn.isBoundedUnder_abs](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/concaveon-isboundedunder-abs--bced32b467b699710e8f7c9d.md) | 114 | `result-track:bced32b467b699710e8f7c9dd9c0435a51bbddb35f7164cd9dda76ba9d7cae9d` |
| 7 | `lemma` | [ConvexOn.continuousOn_tfae](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/convexon-continuouson-tfae--060081304584ed0822c01053.md) | 118 | `result-track:060081304584ed0822c01053e9182251779a8c66329f10cc4d6e6c12904a425e` |
| 8 | `lemma` | [ConcaveOn.continuousOn_tfae](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/concaveon-continuouson-tfae--7d4bf67a77020e2fe329a2a0.md) | 166 | `result-track:7d4bf67a77020e2fe329a2a0519c3d7c605b58288fca05e039c8000d0b036dbf` |
| 9 | `lemma` | [ConvexOn.locallyLipschitzOn_iff_continuousOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/convexon-locallylipschitzon-iff-continuouson--fb6b97012e85290e5ac4660c.md) | 178 | `result-track:fb6b97012e85290e5ac4660ce6ff54f2b7369552fc2f25238bebb945dab39f86` |
| 10 | `lemma` | [ConcaveOn.locallyLipschitzOn_iff_continuousOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/concaveon-locallylipschitzon-iff-continuouson--cf700fe8b033e893bb5c6c8c.md) | 184 | `result-track:cf700fe8b033e893bb5c6c8ce14db145b7b1697401a9688b76fc461f755543db` |
| 11 | `lemma` | [ConvexOn.locallyLipschitzOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/convexon-locallylipschitzon--6f142df05d81544178f97484.md) | 190 | `result-track:6f142df05d81544178f9748444b1fa40f8b99384dfec657b06b62262b0652324` |
| 12 | `lemma` | [ConcaveOn.locallyLipschitzOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/concaveon-locallylipschitzon--28d9b8abc3ba2d8b37f12682.md) | 200 | `result-track:28d9b8abc3ba2d8b37f12682ac2734d87ce2dfb1cf4dcdb91fe6a10813cc0894` |
| 13 | `lemma` | [ConvexOn.continuousOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/convexon-continuouson--932fce34e0bae5a66aabb21b.md) | 203 | `result-track:932fce34e0bae5a66aabb21b3007c6ea7c4ac3d5f3e94de62fa8ac819e1727db` |
| 14 | `lemma` | [ConcaveOn.continuousOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/concaveon-continuouson--960f43039213d05421a3f0a1.md) | 206 | `result-track:960f43039213d05421a3f0a190fa68894a6788bd437a3cd1e56ba38f18e2671a` |
| 15 | `lemma` | [ConvexOn.locallyLipschitzOn_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/convexon-locallylipschitzon-interior--e71d2f3679f09bb8c7d69a3a.md) | 209 | `result-track:e71d2f3679f09bb8c7d69a3a39934293df5b8a9d041c51fb4a9e6522f407ce53` |
| 16 | `lemma` | [ConcaveOn.locallyLipschitzOn_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/concaveon-locallylipschitzon-interior--d36466f7b5aa4d79571ac17c.md) | 213 | `result-track:d36466f7b5aa4d79571ac17c27f2508f1f5faabb01897249c943ec53f7f5a766` |
| 17 | `lemma` | [ConvexOn.continuousOn_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/convexon-continuouson-interior--8dbbf4c6b68b27102e83e482.md) | 217 | `result-track:8dbbf4c6b68b27102e83e482faddb4cf4ae4fc889928fd9505e40a8bcf7597e5` |
| 18 | `lemma` | [ConcaveOn.continuousOn_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/concaveon-continuouson-interior--1f3dbf48e5fb44ee6e4b8ac8.md) | 220 | `result-track:1f3dbf48e5fb44ee6e4b8ac8a875ba623e80e6c02b3e641ee3e7f23335f8d90e` |
| 19 | `lemma` | [ConvexOn.locallyLipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/convexon-locallylipschitz--072b40940ed5c4ecb6feab3d.md) | 223 | `result-track:072b40940ed5c4ecb6feab3d25e6836e47be6eadb400d7f735471b8fcffad28b` |
| 20 | `lemma` | [ConcaveOn.locallyLipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/declarations/concaveon-locallylipschitz--31ca16a29aec6a3e6825892d.md) | 226 | `result-track:31ca16a29aec6a3e6825892dc3f53a5836de5117c5276827a9cdbb63e3cf38b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
