# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Boundary.Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba74cf27f8b41366467c9dff84e70114a68740c1",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba74cf27f8b41366467c9dff84e70114a68740c1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalComplex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BoundaryGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/boundaryge--27ead62429577e8f48f0571e.md) | 44 | `declaration-track:27ead62429577e8f48f0571ec00d535c02f189a1a9f9be46d8d1099332074200` |
| 2 | `lemma` | [boundaryGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/boundaryge--d67548b7b712f82387d71ebb.md) | 47 | `result-track:d67548b7b712f82387d71ebb48b71d7a3049ef144f65eb6a774b5468cde832bc` |
| 3 | `lemma` | [not_boundaryGE_next](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/not-boundaryge-next--d4ef0a178384448d84a9c485.md) | 55 | `result-track:d4ef0a178384448d84a9c4850462dff30173b7778b71ced767373e9c1ab1887f` |
| 4 | `lemma` | [not_boundaryGE_next'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/not-boundaryge-next--4aac2c72e0cbd8b4d5efb35e.md) | 62 | `result-track:4aac2c72e0cbd8b4d5efb35e516b5d776db3ae6dc3b4a110ea16e561a6b3c39f` |
| 5 | `lemma` | [BoundaryGE.notMem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/boundaryge-notmem--308490182e7539fcc67f58f3.md) | 70 | `result-track:308490182e7539fcc67f58f39496944853699998c0e368cbb5f0c2c69ad02a8c` |
| 6 | `lemma` | [prev_f_of_not_boundaryGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/prev-f-of-not-boundaryge--fcc4adeed436453f6f99f8a7.md) | 76 | `result-track:fcc4adeed436453f6f99f8a7d57952dd007920a8a3b1cb58c26bc0e5edc2e658` |
| 7 | `lemma` | [BoundaryGE.false_of_isTruncLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/boundaryge-false-of-istruncle--9f33bb1b224d236184240574.md) | 92 | `result-track:9f33bb1b224d2361842405748745bdf5a8996675b737a44be9d1fc6e219b8a4b` |
| 8 | `def` | [BoundaryLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/boundaryle--80ef19c8b11538dfd7cd4bfb.md) | 99 | `declaration-track:80ef19c8b11538dfd7cd4bfb1a2df0476a0adccdba17617550c385a4073fa647` |
| 9 | `lemma` | [boundaryLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/boundaryle--5115348c01cf18e686f13f0a.md) | 102 | `result-track:5115348c01cf18e686f13f0a7bdd091657fe5ac564879791cc1d0fccf602d2a6` |
| 10 | `lemma` | [not_boundaryLE_prev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/not-boundaryle-prev--1a45111f9bfd70581315d3cc.md) | 110 | `result-track:1a45111f9bfd70581315d3cc045994137ab803fe9ce39c0d34ba9b0c8a282136` |
| 11 | `lemma` | [not_boundaryLE_prev'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/not-boundaryle-prev--7447ea0a4c63edb6da41feb7.md) | 117 | `result-track:7447ea0a4c63edb6da41feb76fa1f1aadb4feacad35ffbdc2c13ec8e9b0df9c6` |
| 12 | `lemma` | [BoundaryLE.notMem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/boundaryle-notmem--5e22ec58b0644f701a875dc1.md) | 125 | `result-track:5e22ec58b0644f701a875dc1d8e7f050604133d7ab7984c37617831de9726cc5` |
| 13 | `lemma` | [next_f_of_not_boundaryLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/next-f-of-not-boundaryle--4bb9a16f7ba8b1cb795c5646.md) | 131 | `result-track:4bb9a16f7ba8b1cb795c56467de0a82f1a4ac703147c3a86c74aa00661cedd9b` |
| 14 | `lemma` | [next_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/next-f--566dfeb2bf44fd4704ca512a.md) | 146 | `result-track:566dfeb2bf44fd4704ca512a827f30bdb517bcd9f5306408f1fabaa8cb197d4a` |
| 15 | `lemma` | [prev_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/prev-f--eaaffa859ad48f1f70d29dcf.md) | 157 | `result-track:eaaffa859ad48f1f70d29dcfada83bb99b2619a26c3b2656c4b91ccc9c55c02d` |
| 16 | `lemma` | [BoundaryLE.false_of_isTruncGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/boundaryle-false-of-istruncge--411b0a32bc9983e6f25d0f52.md) | 161 | `result-track:411b0a32bc9983e6f25d0f5234f146e21823707dfd2b570852e21735f575cce5` |
| 17 | `lemma` | [op_boundaryLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/op-boundaryle-iff--535ae9875c831febab3f8373.md) | 165 | `result-track:535ae9875c831febab3f83738e420238305ca2f3c3bf3af653ec390b753e4034` |
| 18 | `lemma` | [op_boundaryGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/op-boundaryge-iff--82321cdf01c52b541518065d.md) | 166 | `result-track:82321cdf01c52b541518065d311a6f4cf0e32d81a1b6f5aae95c59b4de9c4e51` |
| 19 | `lemma` | [boundaryGE_embeddingUpIntGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/boundaryge-embeddingupintge-iff--2b15297dc80e2786b77c72bc.md) | 170 | `result-track:2b15297dc80e2786b77c72bc023129114905df6b3087994346e7f7177a069070` |
| 20 | `lemma` | [boundaryLE_embeddingUpIntLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant5391949c2ff9935e6d6e95a142650c7c311601fa441cda43e3036d1a284a16d6.lean/declarations/boundaryle-embeddingupintle-iff--668b5e6d81710b6aefb1c789.md) | 186 | `result-track:668b5e6d81710b6aefb1c7890d483abd87057721d63bc8badd115b83dd85442e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
