# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.SingleHomology.Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4b2c73946fb82d233f51d10bcc48e88ea51474a",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4b2c73946fb82d233f51d10bcc48e88ea51474a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Single` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/instance--4fdff2b93cf6017e9d539e98.md) | 35 | `declaration-track:4fdff2b93cf6017e9d539e981bbd32f42d964eccdca22956076b32260be0d4de` |
| 2 | `lemma` | [exactAt_single_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/exactat-single-obj--5b1aa80738c71182e311e9ad.md) | 38 | `result-track:5b1aa80738c71182e311e9ad735b39684a28a13eaa42c3dd66a802634f20f670` |
| 3 | `lemma` | [isZero_single_obj_homology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/iszero-single-obj-homology--3067d9c6f88d607579ecc6d3.md) | 42 | `result-track:3067d9c6f88d607579ecc6d335a59abf862f9b931c642acc4a6d43be73d1efab` |
| 4 | `def` | [singleObjCyclesSelfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjcyclesselfiso--9f77b0f371d5abd097daa10b.md) | 48 | `declaration-track:9f77b0f371d5abd097daa10b297c20c5a4e89c32cf1014066cc8a6a344f7f1f9` |
| 5 | `lemma` | [singleObjCyclesSelfIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjcyclesselfiso-hom--074288cdc81e86c5ec025914.md) | 53 | `result-track:074288cdc81e86c5ec025914c8fecdd3addce4d1f5dd29c285939ce00cd72eda` |
| 6 | `def` | [singleObjOpcyclesSelfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjopcyclesselfiso--a095aed88b28e173387906a1.md) | 58 | `declaration-track:a095aed88b28e173387906a1cc4013854b0d7b83ad9a58841cf347bd4cb7524c` |
| 7 | `lemma` | [singleObjOpcyclesSelfIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjopcyclesselfiso-hom--fef7a1fded3790ace38c8f1a.md) | 63 | `result-track:fef7a1fded3790ace38c8f1abd48321b248636cb25d469fd5d9b97e19b82a32e` |
| 8 | `def` | [singleObjHomologySelfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjhomologyselfiso--47f8de93c68af5936843eb61.md) | 68 | `declaration-track:47f8de93c68af5936843eb6167df96d165af8ae38f7140026d3ad9f91818749e` |
| 9 | `lemma` | [singleObjCyclesSelfIso_inv_iCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjcyclesselfiso-inv-icycles--fc73e0397f75cb08c7798343.md) | 73 | `result-track:fc73e0397f75cb08c7798343e648eb90446e2355113b9d58957b0fcc3ff33a1e` |
| 10 | `lemma` | [homologyπ_singleObjHomologySelfIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/homology-singleobjhomologyselfiso-hom--daf85530908da5a014ba942e.md) | 79 | `result-track:daf85530908da5a014ba942e442d303818dab73ded84eb67b0ab22362b7aa8ce` |
| 11 | `lemma` | [singleObjHomologySelfIso_hom_singleObjHomologySelfIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjhomologyselfiso-hom-singleobjhomologyselfiso-inv--dc8601dcdd31357b705f8074.md) | 85 | `result-track:dc8601dcdd31357b705f80740d6a10b570610d1123c9fe6248cbfb40d92807a4` |
| 12 | `lemma` | [singleObjCyclesSelfIso_hom_singleObjOpcyclesSelfIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjcyclesselfiso-hom-singleobjopcyclesselfiso-hom--a4f5d7214e07469cfeae0291.md) | 92 | `result-track:a4f5d7214e07469cfeae029189a0964c44a27548353c492a0e4e6082fea0ef33` |
| 13 | `lemma` | [singleObjCyclesSelfIso_inv_homologyπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjcyclesselfiso-inv-homology--63d18d4e50cb6c866f107f97.md) | 98 | `result-track:63d18d4e50cb6c866f107f97b59f70d5ec76acecb8bcb094a71c3bb35cc49c94` |
| 14 | `lemma` | [singleObjHomologySelfIso_inv_homologyι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjhomologyselfiso-inv-homology--8d348aeaa2f7502a11f0c30b.md) | 104 | `result-track:8d348aeaa2f7502a11f0c30bddacbc84c2ef04dad34364dd9fa2a0c78fd16af2` |
| 15 | `lemma` | [homologyι_singleObjOpcyclesSelfIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/homology-singleobjopcyclesselfiso-inv--b2e866274cd2fcbfff143b23.md) | 112 | `result-track:b2e866274cd2fcbfff143b23ec8127c6efe79610c32af09d4ea8bda6f78acb74` |
| 16 | `lemma` | [singleObjHomologySelfIso_hom_singleObjOpcyclesSelfIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjhomologyselfiso-hom-singleobjopcyclesselfiso-hom--b71c91e4979145369339f17c.md) | 119 | `result-track:b71c91e4979145369339f17ce8c8829415e111a49850dc138902b59f1f33a143` |
| 17 | `lemma` | [pOpcycles_singleObjOpcyclesSelfIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/popcycles-singleobjopcyclesselfiso-inv--8b1d44851026867b8bcb4427.md) | 126 | `result-track:8b1d44851026867b8bcb44270362bf885a60bd49fd62f888224bdcecd60f9143` |
| 18 | `lemma` | [singleObjCyclesSelfIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjcyclesselfiso-hom-naturality--970490057faf30ba35bc3ab5.md) | 138 | `result-track:970490057faf30ba35bc3ab5a2c5d8b640bba289e51b96087fcef64a911331f7` |
| 19 | `lemma` | [singleObjCyclesSelfIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjcyclesselfiso-inv-naturality--c0cc20d78f0a80be8cd9ea9b.md) | 147 | `result-track:c0cc20d78f0a80be8cd9ea9bf9b39c3f3a7e7106092370e686820e61e2bde382` |
| 20 | `lemma` | [singleObjHomologySelfIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjhomologyselfiso-hom-naturality--0dec5393917bd6ceeeb8a063.md) | 154 | `result-track:0dec5393917bd6ceeeb8a0631544f99fb7b8f262f8a62e751568ce205803064c` |
| 21 | `lemma` | [singleObjHomologySelfIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjhomologyselfiso-inv-naturality--d9f56ae03973c01ed8c50e2f.md) | 162 | `result-track:d9f56ae03973c01ed8c50e2f4f640b286537c0368f577f5d8874e46b5f9d9a71` |
| 22 | `lemma` | [singleObjOpcyclesSelfIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjopcyclesselfiso-hom-naturality--4a487af400c5712a5ed02482.md) | 170 | `result-track:4a487af400c5712a5ed02482ad69f05dc7df628b5b3016239d79017cf5d40844` |
| 23 | `lemma` | [singleObjOpcyclesSelfIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/singleobjopcyclesselfiso-inv-naturality--d68509411c59c5471339fb70.md) | 179 | `result-track:d68509411c59c5471339fb70c9893d394ca270ba135d44041e328539a1df181f` |
| 24 | `def` | [homologyFunctorSingleIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/homologyfunctorsingleiso--da4195331e4ded208aba1684.md) | 190 | `declaration-track:da4195331e4ded208aba1684336661fcc08aa4f8cb02238db57f5f226a5eb21a` |
| 25 | `lemma` | [ChainComplex.exactAt_succ_single_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/chaincomplex-exactat-succ-single-obj--45170d1f63effc1cf52ecbc5.md) | 199 | `result-track:45170d1f63effc1cf52ecbc54228404fb838396fa44c24f1274c82951451fabb` |
| 26 | `lemma` | [CochainComplex.exactAt_succ_single_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variant309da2ee85877f570d045f3272a3aa40e660031544cca954410007c449c53e34.lean/declarations/cochaincomplex-exactat-succ-single-obj--7d775780910e203b97c35b9d.md) | 203 | `result-track:7d775780910e203b97c35b9db533ddbc107ba677dc5e1e14580297d872abc292` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
