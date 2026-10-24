# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ComplexShapeSigns.Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfdbc3bc3140a9126ae21ebf697a0617b180db07",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfdbc3bc3140a9126ae21ebf697a0617b180db07`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ComplexShape` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.NegOnePow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.GradedObject.Trifunctor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [TotalComplexShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/totalcomplexshape--9cb7a2313aa71e90629877fe.md) | 38 | `declaration-track:9cb7a2313aa71e90629877fe097f775c98830cbcb237674e12bf47e576285a1b` |
| 2 | `abbrev` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/anonymous--53ad8ebf5474444d60bbf1fd.md) | 55 | `declaration-track:53ad8ebf5474444d60bbf1fd0111d903ff55bad49238f533209badb86dd823f1` |
| 3 | `abbrev` | [ε₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/anonymous--30a84dee34f41532b927c025.md) | 58 | `declaration-track:30a84dee34f41532b927c025d83d1bd25f6c5afc7d28d0f6f81bf7d4ef2c2e22` |
| 4 | `abbrev` | [ε₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/anonymous--0798c1e1426e4b2a3e8042a7.md) | 61 | `declaration-track:0798c1e1426e4b2a3e8042a756cdb246600b20c5a12acf02ff67e1548d36a5ab` |
| 5 | `lemma` | [rel_π₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/rel--58f8b2679884c8cf6ba19276.md) | 65 | `result-track:58f8b2679884c8cf6ba19276887d160dcd3049c95d258f8f737cb1a32107ba4e` |
| 6 | `lemma` | [next_π₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/next--ff5824766e2adcf1cefbb94a.md) | 69 | `result-track:ff5824766e2adcf1cefbb94a5ff5550477bc00afaafc9c851fcde5c0e96fe07f` |
| 7 | `lemma` | [prev_π₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/prev--316664bc1c1e08c77e14d5c3.md) | 73 | `result-track:316664bc1c1e08c77e14d5c31fa91b39d23aa3dbe15c396bbd66367389c07961` |
| 8 | `lemma` | [rel_π₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/rel--960237767f17e3984496790c.md) | 79 | `result-track:960237767f17e3984496790cab970496dd85e06bf552d2bf2d7169de244ddcd6` |
| 9 | `lemma` | [next_π₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/next--836883bb5a984834f002f75a.md) | 83 | `result-track:836883bb5a984834f002f75ae603ce63f7d8b4173a51c0d40d46743a91167d8e` |
| 10 | `lemma` | [prev_π₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/prev--505571770e59c632a6906772.md) | 87 | `result-track:505571770e59c632a69067722192678830a09b244d4d4796d191d7bb096d3c3b` |
| 11 | `lemma` | [ε₂_ε₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/anonymous--0297c66f14df445822c2f35b.md) | 93 | `result-track:0297c66f14df445822c2f35b5795f3bda8eeb24985df0b596781ad960842103a` |
| 12 | `lemma` | [ε₁_ε₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/anonymous--05aaa9c733317153a0642429.md) | 98 | `result-track:05aaa9c733317153a06424296c14e97b7340c8f6d4112265e2d427018f8d63fb` |
| 13 | `class` | [TensorSigns](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/tensorsigns--451fb5d0a1fac95ae1a5a2ad.md) | 115 | `declaration-track:451fb5d0a1fac95ae1a5a2ade5479f0ab9c57ad3820a6f9cb91994333e1171a3` |
| 14 | `abbrev` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/anonymous--76d4a085aa1949cb7467ef17.md) | 125 | `declaration-track:76d4a085aa1949cb7467ef172ed6ddad088060fd2dd093c968efeb571530c0cb` |
| 15 | `lemma` | [rel_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/rel-add--77650baa79683362fd9bc993.md) | 127 | `result-track:77650baa79683362fd9bc993964da20faf5d1164bac6a9e3b44a62fde0e41004` |
| 16 | `lemma` | [add_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/add-rel--d77698d1f529c5ee0be83655.md) | 130 | `result-track:d77698d1f529c5ee0be836550660c8753f1e5e4305631db4354b78967e470267` |
| 17 | `lemma` | [ε_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/zero--47880d4260d0bb3d52c96db7.md) | 134 | `result-track:47880d4260d0bb3d52c96db790769faf134d4fd2546c549893c49ad67f18c1ec` |
| 18 | `lemma` | [ε_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/succ--d7ffa9b8839d833d00d0abee.md) | 137 | `result-track:d7ffa9b8839d833d00d0abee3c99b14a6fd4e6ac2dc119e0dd03f2723733882b` |
| 19 | `lemma` | [ε_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/add--bdbf9a88db2b9409bc4dabfc.md) | 140 | `result-track:bdbf9a88db2b9409bc4dabfc16fa31be1827f47fda766f07be7ace0e0bacc515` |
| 20 | `lemma` | [next_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/next-add--ddfb85a60d492ee3f21b1a21.md) | 143 | `result-track:ddfb85a60d492ee3f21b1a2140e8908d3546e6a63c800e24c2b0c4dabec50b30` |
| 21 | `lemma` | [next_add'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/next-add--306f6b445e161bf0e66d7d27.md) | 147 | `result-track:306f6b445e161bf0e66d7d27b59c8e36d062458e71daa15ca9a46e3cce946d46` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/instance--03f9977b9144a2941d5bd1e7.md) | 152 | `declaration-track:03f9977b9144a2941d5bd1e703ec976f036d5385ecef9a6c3df549bc27a77941` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/instance--9fab3b4821a05eff8a9cf3a0.md) | 162 | `declaration-track:9fab3b4821a05eff8a9cf3a011f5beee5586815f92b50fccf61587d37135a217` |
| 24 | `lemma` | [ε_down_ℕ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/down--bd346913b76c93f1b22fc7f7.md) | 172 | `result-track:bd346913b76c93f1b22fc7f73317cea9679fcdefbd33313b2c2d79ae0d3be94a` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/instance--4f3743f4a8b4334b00c0bf32.md) | 174 | `declaration-track:4f3743f4a8b4334b00c0bf327e8b59007231b8e8dcf92e468f46cfe0f78d2d77` |
| 26 | `lemma` | [ε_up_ℤ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/up--d6c563df01eaa5ff4d87496a.md) | 184 | `result-track:d6c563df01eaa5ff4d87496addafe970825c9e809055f6aebc5f26ae92067107` |
| 27 | `class` | [Associative](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/associative--f8e9e4487781312672f08738.md) | 201 | `declaration-track:f8e9e4487781312672f08738887b69d6ff2c6edc55b79ed0fecce296911e3f5b` |
| 28 | `lemma` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/assoc--282eb24ca4a9e3e3d74be613.md) | 216 | `result-track:282eb24ca4a9e3e3d74be61366b881cdf5be326e76e197242a5e4f271976dce6` |
| 29 | `lemma` | [associative_ε₁_eq_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/associative-eq-mul--ba5ca8d3502216a18eb49370.md) | 220 | `result-track:ba5ca8d3502216a18eb49370cb64d7030a3e8642e3198a83cd818c99b0938b3a` |
| 30 | `lemma` | [associative_ε₂_ε₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/associative--c55190cf3a7db9c2a958bfa9.md) | 225 | `result-track:c55190cf3a7db9c2a958bfa96c59dcded764e2c6a05b01c23c71195ca79969ad` |
| 31 | `lemma` | [associative_ε₂_eq_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/associative-eq-mul--d883c56394c85f914799bf41.md) | 230 | `result-track:d883c56394c85f914799bf4107aad411c31fa129de23b47c17a1267af656ff27` |
| 32 | `def` | [r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/r--f002c4a83b6c056c16fbc8e6.md) | 238 | `declaration-track:f002c4a83b6c056c16fbc8e6def2fd04a14043466ff7129a11b30b8e0aebb802` |
| 33 | `def` | [ρ₁₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/anonymous--39bed14fb7f15321c4b182d1.md) | 244 | `declaration-track:39bed14fb7f15321c4b182d11321299650b770d70f32a7938085c301fed6fb72` |
| 34 | `def` | [ρ₂₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/anonymous--6286c3a249c52b307eb0aea9.md) | 252 | `declaration-track:6286c3a249c52b307eb0aea9b2d3eebf542ddbcc86cc857f9a5c65aa61b88ab1` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/instance--4a7de4d5e64b10b3312f0893.md) | 260 | `declaration-track:4a7de4d5e64b10b3312f08936f476359a7fb6beaecb9239c8f756472243323d9` |
| 36 | `class` | [TotalComplexShapeSymmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/totalcomplexshapesymmetry--9b907520e75ffdc2a976963d.md) | 273 | `declaration-track:9b907520e75ffdc2a976963db43cc641c69ae5a4c90d374f92fda47678ed2929` |
| 37 | `abbrev` | [σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/anonymous--49f03b605c4fb1c728c9eaac.md) | 288 | `declaration-track:49f03b605c4fb1c728c9eaac5d9f2b7ab53223cad37391716996a49dad9f9f78` |
| 38 | `lemma` | [π_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/symm--685e67be0022b887e9af7949.md) | 290 | `result-track:685e67be0022b887e9af79491feef69c6e7072670e438d25764c52fbb584ad84` |
| 39 | `def` | [symmetryEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/symmetryequiv--e0cc76ecde49b714800f6f9b.md) | 296 | `declaration-track:e0cc76ecde49b714800f6f9b43628d2c794490a2c19051b8459be35b4eaae72d` |
| 40 | `lemma` | [σ_ε₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/anonymous--2f7048653a40e17e85e4af89.md) | 305 | `result-track:2f7048653a40e17e85e4af89029dd35795d5dd61a9cc9dd425b06a252f225b26` |
| 41 | `lemma` | [σ_ε₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/anonymous--563f5fb129794e15a7c62a55.md) | 311 | `result-track:563f5fb129794e15a7c62a55ec5b7eb60c0a8de6e30bd723d0ff3c24d38aedd1` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/instance--30a132008f5eaf314288737a.md) | 316 | `declaration-track:30a132008f5eaf314288737af32b6437a7207811a9122af93347988b137408d7` |
| 43 | `def` | [TotalComplexShapeSymmetry.symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/totalcomplexshapesymmetry-symmetry--0aa0c88ece9dd494834353af.md) | 333 | `declaration-track:0aa0c88ece9dd494834353af3b9acb8ac818cf9b155f0c8c0e2105d59fdf5fd0` |
| 44 | `class` | [TotalComplexShapeSymmetrySymmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/totalcomplexshapesymmetrysymmetry--d95375c547cae3be80d78031.md) | 353 | `declaration-track:d95375c547cae3be80d780317d8e95d80f667eff3b1679a1fbcba4a7e038a47f` |
| 45 | `lemma` | [σ_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant5e59a111ea8811c402b09bdd773ec00c7be8bb0f543a0d1d772cabec4e59c1b3.lean/declarations/symm--c3cacc9dd187e6152720abf1.md) | 364 | `result-track:c3cacc9dd187e6152720abf1e5745d2a660d5f1ecd4fe2badd632efe3ee64c54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
