# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Square.Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddd0fc6d439189b4ae0e9d16b8944b4b6e4cf6d5",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddd0fc6d439189b4ae0e9d16b8944b4b6e4cf6d5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Square` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [pullbackCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/pullbackcone--f779ff648c7c9447c1ae25b8.md) | 34 | `declaration-track:f779ff648c7c9447c1ae25b8534a1747ec137ce0af1ca1c60715375c1a943404` |
| 2 | `abbrev` | [pushoutCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/pushoutcocone--4c3236d3407ee7faf3cc4bf4.md) | 38 | `declaration-track:4c3236d3407ee7faf3cc4bf428646ff3fa3bdd3afb8bb062e51be792c03821ae` |
| 3 | `def` | [IsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispullback--845b2044353f42e8d6075561.md) | 42 | `declaration-track:845b2044353f42e8d6075561ffac34eb3e090f7f90eb42ef82bda38a19a975db` |
| 4 | `def` | [IsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispushout--8b45afb4a56a6b66f4b88105.md) | 46 | `declaration-track:8b45afb4a56a6b66f4b881052c66ed648e633e872acd2414efad47353a839624` |
| 5 | `lemma` | [isPullback_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispullback-iff--aa8dfe0cbf547765f86b725d.md) | 49 | `result-track:aa8dfe0cbf547765f86b725dcb85c37d80d006d88498b064ed0740a6f54fadce` |
| 6 | `lemma` | [isPushout_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispushout-iff--07dea75b302b6de5170b1c30.md) | 53 | `result-track:07dea75b302b6de5170b1c30ade217ff3632bec9f894d4208dc9e5432fd0bed4` |
| 7 | `lemma` | [IsPullback.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispullback-mk--95a95b2f67b0d2c19b41c611.md) | 57 | `result-track:95a95b2f67b0d2c19b41c6110193c892f5e100a707486901645bdb2ec7c5f8d6` |
| 8 | `lemma` | [IsPushout.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispushout-mk--ab2e1265ae81c1545f208bc8.md) | 60 | `result-track:ab2e1265ae81c1545f208bc88dfdf2b8ee1d638fbc49a84db3ac89e52ce42ba4` |
| 9 | `def` | [IsPullback.isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispullback-islimit--59c21d7cf14ee2b2085914de.md) | 67 | `declaration-track:59c21d7cf14ee2b2085914de77dc0babf75f2e1c079d8b4dc3e4c7668cb1ff96` |
| 10 | `def` | [IsPushout.isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispushout-iscolimit--2b18d50db0f7dbdfa0db538e.md) | 73 | `declaration-track:2b18d50db0f7dbdfa0db538e267061a13f2edea82bf34f3a617e2124be0efda1` |
| 11 | `lemma` | [IsPullback.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispullback-of-iso--49de682bab43ba1dffc81795.md) | 77 | `result-track:49de682bab43ba1dffc8179594b712a8238b8051643cab8e4f55bf46cbd49715` |
| 12 | `lemma` | [IsPullback.iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispullback-iff-of-iso--e750d85b17c16ce96ff4b895.md) | 84 | `result-track:e750d85b17c16ce96ff4b89534ef4238357d37b5d44dbf7f37dd8b35fb4e965e` |
| 13 | `lemma` | [IsPushout.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispushout-of-iso--e7c66d9b30b8da089e0a13ef.md) | 88 | `result-track:e7c66d9b30b8da089e0a13ef2fc082718454b0ceda6b94bfaeea4e8917428815` |
| 14 | `lemma` | [IsPushout.iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispushout-iff-of-iso--eb1ee256d1be9cd2279aaa70.md) | 95 | `result-track:eb1ee256d1be9cd2279aaa70f514358583ac62b50103dcb94a34a76c1fa06c16` |
| 15 | `lemma` | [IsPushout.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispushout-op--88c6c7d91544c3b4344a2564.md) | 99 | `result-track:88c6c7d91544c3b4344a2564509beb542d18a97634fe24233dcc5033893b2bf0` |
| 16 | `lemma` | [IsPushout.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispushout-unop--90c1fb26ba1d57777ff0d7a8.md) | 102 | `result-track:90c1fb26ba1d57777ff0d7a854d7baab2733a64d984e3b0a78ecb3ceb569cd60` |
| 17 | `lemma` | [IsPullback.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispullback-op--90961646ce534a614a25980e.md) | 105 | `result-track:90961646ce534a614a25980ee808139b2de851010c995b0bdf06b6a21bfe89ed` |
| 18 | `lemma` | [IsPullback.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/ispullback-unop--161543ef73c21096d9fa5028.md) | 108 | `result-track:161543ef73c21096d9fa50289772eaf9280295e6649c1ee4178ea4b89c83384c` |
| 19 | `lemma` | [flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/flip--f26b021d65392dfc79470cc0.md) | 117 | `result-track:f26b021d65392dfc79470cc0f326dde3be51e8e3df179fc8fa461e86c82ea6d0` |
| 20 | `lemma` | [mono_f₁₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/mono-f--b8868b89aed61696bb836fd3.md) | 119 | `result-track:b8868b89aed61696bb836fd3615be6e8a0e19db58ec01fdb592f722bd91df202` |
| 21 | `lemma` | [mono_f₁₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/mono-f--4f9f417074d0bc6b449564a7.md) | 122 | `result-track:4f9f417074d0bc6b449564a7b59f78cfb57028125df857ee3bdf80e07c8b3b92` |
| 22 | `lemma` | [flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/flip--0e2fe86e13dbe4979f69b889.md) | 134 | `result-track:0e2fe86e13dbe4979f69b889783ad6fa085b94cf6e5b69387ac81b3c48b2b0bb` |
| 23 | `lemma` | [epi_f₂₄](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/epi-f--5ee76821e03753bfc930a08f.md) | 136 | `result-track:5ee76821e03753bfc930a08ffa5f577788acfe27624a16ed23456994e0bde971` |
| 24 | `lemma` | [epi_f₃₄](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d.lean/declarations/epi-f--398870b955c95a28c62e33ba.md) | 139 | `result-track:398870b955c95a28c62e33ba72943119d8bf35e868d1c5c7a43b4d67db921545` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
