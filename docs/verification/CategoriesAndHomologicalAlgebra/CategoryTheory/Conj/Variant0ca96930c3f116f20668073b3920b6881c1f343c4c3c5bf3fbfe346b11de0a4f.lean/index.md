# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Conj.Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4e5be93c0e680fdba52676a41bc9e581628a02d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4e5be93c0e680fdba52676a41bc9e581628a02d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.Units.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/homcongr--b037dffc769cf87498061e0a.md) | 36 | `declaration-track:b037dffc769cf87498061e0ac44b5f47bbd8fe3771e12eb7cb98ca80fadc4f69` |
| 2 | `theorem` | [homCongr_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/homcongr-apply--86fca9eb8dafbf5caee77623.md) | 49 | `result-track:86fca9eb8dafbf5caee77623175d45c1dfc10f38f887e27b29e1a7a3683e7224` |
| 3 | `theorem` | [homCongr_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/homcongr-comp--220fbdf90c9b255df1f9806e.md) | 54 | `result-track:220fbdf90c9b255df1f9806e675654a09d4ac371ac8753a71b1e932ef909f206` |
| 4 | `theorem` | [homCongr_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/homcongr-refl--435372387f0f53559be4246a.md) | 59 | `result-track:435372387f0f53559be4246a08bb135ff4e58af73a0cc2f24ad2a6471a0ec7b6` |
| 5 | `theorem` | [homCongr_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/homcongr-trans--acbf1608e6ec92e1cbbcc2e4.md) | 63 | `result-track:acbf1608e6ec92e1cbbcc2e475163aece674eef1f598b7f82909388f01c13520` |
| 6 | `theorem` | [homCongr_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/homcongr-symm--812e1efb57f5d7e93ce3658d.md) | 69 | `result-track:812e1efb57f5d7e93ce3658d78c9e4b353b92593c84f654144544103bd0d4989` |
| 7 | `def` | [conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/conj--266e66137fbf222e7818892e.md) | 78 | `declaration-track:266e66137fbf222e7818892e81cf824524cf2dc85fefc09a40e35fb48a22459d` |
| 8 | `theorem` | [conj_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/conj-apply--6d2ca50e3f706bcb3c89959b.md) | 82 | `result-track:6d2ca50e3f706bcb3c89959bbb4fa00718cfe73f695154c7f5fc112ac0a47b21` |
| 9 | `theorem` | [conj_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/conj-comp--2e332148417337f074c93926.md) | 87 | `result-track:2e332148417337f074c939269b50d50c1b38ea41b67c3a685c60324c3d537a27` |
| 10 | `theorem` | [conj_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/conj-id--eb76dbb497176cb159b4ae80.md) | 92 | `result-track:eb76dbb497176cb159b4ae8023519a48490fe9bbb96e8ee1b4e961cecf55490d` |
| 11 | `theorem` | [refl_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/refl-conj--264a9eebb9ce559d0ec36367.md) | 97 | `result-track:264a9eebb9ce559d0ec36367fd88e7601f2f7c2f53a4ac053a469c73cf6f9199` |
| 12 | `theorem` | [trans_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/trans-conj--3f436b7ec3537a0124b3506d.md) | 102 | `result-track:3f436b7ec3537a0124b3506dec36beba81c510ec1de224b6b0e7f03d85328808` |
| 13 | `theorem` | [symm_self_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/symm-self-conj--d2f2da905e9de8efdad74b12.md) | 107 | `result-track:d2f2da905e9de8efdad74b121c6504c6eb9014a7b4a62e81b8a22bb4cdd01886` |
| 14 | `theorem` | [self_symm_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/self-symm-conj--bbd19a17bb59f947f0b124f0.md) | 112 | `result-track:bbd19a17bb59f947f0b124f0b28fadc77071df92c47d14f7eb69b67856d62485` |
| 15 | `theorem` | [conj_pow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/conj-pow--35f6c59a16d4fa9b280f75d0.md) | 117 | `result-track:35f6c59a16d4fa9b280f75d081c0f0d6ac3e613d48a4a39f5f5f9282a487ae4a` |
| 16 | `def` | [conjAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/conjaut--3a260024658af8544380055f.md) | 123 | `declaration-track:3a260024658af8544380055fae0e196d49c209338c0d9efdbda34ad5eb9b8c79` |
| 17 | `theorem` | [conjAut_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/conjaut-apply--71ff13a7e0a0d4970a37f317.md) | 128 | `result-track:71ff13a7e0a0d4970a37f3171e351c4672cc60042efc641a3ac18b0317ee6ca2` |
| 18 | `theorem` | [conjAut_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/conjaut-hom--44f396f873af249e840ea170.md) | 133 | `result-track:44f396f873af249e840ea17032020946369811cd3a6392b4976d8f563a6bdf04` |
| 19 | `theorem` | [trans_conjAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/trans-conjaut--37b6ca16a8bc5c4598905031.md) | 139 | `result-track:37b6ca16a8bc5c4598905031ff0f882f6eb3c1b707176fd38030da5d6321f522` |
| 20 | `theorem` | [conjAut_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/conjaut-mul--964bd0d8b1558fca71eecd10.md) | 146 | `result-track:964bd0d8b1558fca71eecd10365e3ed27763f1069beb348184b01e1fa97d807c` |
| 21 | `theorem` | [conjAut_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/conjaut-trans--6fe4297a74e46a9360072de2.md) | 152 | `result-track:6fe4297a74e46a9360072de29c2164a4f054c83920801f00c4c3f1babc5990b8` |
| 22 | `theorem` | [conjAut_pow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/conjaut-pow--d6a79a65b2fe5b2a19b1f83a.md) | 158 | `result-track:d6a79a65b2fe5b2a19b1f83a405738311846eacc46494643f8fd0a5f8fc747ce` |
| 23 | `theorem` | [conjAut_zpow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/conjaut-zpow--c2574730391c0f2e5ea5c0e9.md) | 164 | `result-track:c2574730391c0f2e5ea5c0e9e31a6a87b916e91d56cc70f4d835e657f4c5cbe5` |
| 24 | `theorem` | [map_homCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/map-homcongr--5d70963533f2499886842bfb.md) | 177 | `result-track:5d70963533f2499886842bfb89d5a076c0b8bc0188c896cf0a0ea57397c8587c` |
| 25 | `theorem` | [map_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/map-conj--39329ac0c6643391d8e4d61c.md) | 181 | `result-track:39329ac0c6643391d8e4d61c9b007af755c2f34899c12f3c6a879a8ac5645883` |
| 26 | `theorem` | [map_conjAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variant0ca96930c3f116f20668073b3920b6881c1f343c4c3c5bf3fbfe346b11de0a4f.lean/declarations/map-conjaut--53eed5a84b450ea297bdeae2.md) | 186 | `result-track:53eed5a84b450ea297bdeae2cf0dd8436255aaec59463cdaa2e1f3e56a3dd889` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
