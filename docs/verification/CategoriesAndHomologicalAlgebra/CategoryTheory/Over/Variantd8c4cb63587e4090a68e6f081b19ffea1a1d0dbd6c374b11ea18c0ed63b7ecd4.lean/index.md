# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7944f8102be90011ddb49accc6d9d6094b9bcf6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7944f8102be90011ddb49accc6d9d6094b9bcf6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.CoverLifting` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoverPreserving` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [overEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/overequiv--948dba008f5e5de866dd34de.md) | 40 | `declaration-track:948dba008f5e5de866dd34debfd1765f48c10107a3668e5880a0748377434529` |
| 2 | `lemma` | [overEquiv_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/overequiv-top--26849c5eb2390454421a6668.md) | 65 | `result-track:26849c5eb2390454421a6668db56a929b904a203c4d283af83b074dedf4c39d6` |
| 3 | `lemma` | [overEquiv_symm_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/overequiv-symm-top--27dfe63e151966b460abe79b.md) | 73 | `result-track:27dfe63e151966b460abe79b500d22077c1350bf33a8a471b9cda9509ac6c8c9` |
| 4 | `lemma` | [overEquiv_le_overEquiv_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/overequiv-le-overequiv-iff--3e8d602e512cb8c7cb061f5d.md) | 77 | `result-track:3e8d602e512cb8c7cb061f5d7fffb476e8b93e6dc75f892287ce4608a8bd7868` |
| 5 | `lemma` | [overEquiv_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/overequiv-pullback--73b87a3bc0dc443944f8ca7d.md) | 84 | `result-track:73b87a3bc0dc443944f8ca7d4048fe92268cf38bff14a5bd13c3c98692ea5206` |
| 6 | `lemma` | [overEquiv_symm_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/overequiv-symm-iff--347119adea53ef3ac1908848.md) | 100 | `result-track:347119adea53ef3ac1908848d52b669a3d27cb61c0f713b51a11a0b85d8fbec5` |
| 7 | `lemma` | [overEquiv_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/overequiv-iff--4e4979f26a4d3e8020198790.md) | 104 | `result-track:4e4979f26a4d3e8020198790873351be4a7966946df29deaac8613f1732409d2` |
| 8 | `lemma` | [functorPushforward_over_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/functorpushforward-over-map--e30dbcb8ab9e0d82e50fb9f4.md) | 110 | `result-track:e30dbcb8ab9e0d82e50fb9f4f029aea74e23bfe585ce7a7fa87777bd329f16b1` |
| 9 | `def` | [over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/over--e1a7795ea1536759919c0087.md) | 129 | `declaration-track:e1a7795ea1536759919c00871112b8c9f7a270fe68e3f8ea54ea393a022be98e` |
| 10 | `lemma` | [mem_over_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/mem-over-iff--0884a9f888c2206ad65bfe5f.md) | 143 | `result-track:0884a9f888c2206ad65bfe5f0b312069f967f5de7b4ce7c4f9d439e095991969` |
| 11 | `lemma` | [overEquiv_symm_mem_over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/overequiv-symm-mem-over--4d72516a421d2a345cf4fe9f.md) | 147 | `result-track:4d72516a421d2a345cf4fe9fe923c25a61766ad503c22088b44fd3f764e9c2c9` |
| 12 | `lemma` | [over_forget_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/over-forget-coverpreserving--e3717c2380e6d638ee85efa8.md) | 151 | `result-track:e3717c2380e6d638ee85efa8101b6d0ef45941b4ba5034a03866152d151f117f` |
| 13 | `lemma` | [over_forget_compatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/over-forget-compatiblepreserving--87b2da4528ba3a9930cba4b5.md) | 155 | `result-track:87b2da4528ba3a9930cba4b5bcdc0c94d19ae5a8edc8fde9dac1cad18bc02d04` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/instance--8f644049b9ef7c979427fc9a.md) | 163 | `declaration-track:8f644049b9ef7c979427fc9a97845fa9681b67983901b50d3f49650728d92e26` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/instance--5f31b51cecb1b42ce31df913.md) | 166 | `declaration-track:5f31b51cecb1b42ce31df9138d6cbfd56331cfaf7e00840053faa7e3b8d0da46` |
| 16 | `abbrev` | [overPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/overpullback--eae153e252a427eca6262ead.md) | 172 | `declaration-track:eae153e252a427eca6262ead64e9587fa3c3d163bbdf59f7cd51bbe3e6802748` |
| 17 | `lemma` | [over_map_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/over-map-coverpreserving--babd95ca7057e1cea60f4300.md) | 176 | `result-track:babd95ca7057e1cea60f430028390bb165d41db414c11c787c9bb31e9da0033b` |
| 18 | `lemma` | [over_map_compatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/over-map-compatiblepreserving--2a53588726edf991b7e107ad.md) | 184 | `result-track:2a53588726edf991b7e107ad9ecc8056c5f907cba136ced0f8b333428ed9f34c` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/instance--61cf82c9becc528f25ec3da6.md) | 205 | `declaration-track:61cf82c9becc528f25ec3da6fe4e69059f7ddf8ce900348159b42ecd503d9ad3` |
| 20 | `abbrev` | [overMapPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/overmappullback--70abe76e87c9ef3e37006cb9.md) | 212 | `declaration-track:70abe76e87c9ef3e37006cb989680bfd914bfc01211bd4d9de096d094ad2dd83` |
| 21 | `abbrev` | [Sheaf.over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantd8c4cb63587e4090a68e6f081b19ffea1a1d0dbd6c374b11ea18c0ed63b7ecd4.lean/declarations/sheaf-over--8e58656439d57b70b6971ba4.md) | 221 | `declaration-track:8e58656439d57b70b6971ba41ab46a8bd554114deb50df57e9dc3105f0f6de88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
