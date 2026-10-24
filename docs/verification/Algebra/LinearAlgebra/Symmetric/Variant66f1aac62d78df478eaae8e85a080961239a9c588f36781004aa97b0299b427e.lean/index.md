# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02a1219cbae9425cac01edc7a05b4146ab5b787e",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02a1219cbae9425cac01edc7a05b4146ab5b787e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean.json)

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
| 1 | `def` | [IsSymmetric](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric--d62e0d32f20926b1c1824da2.md) | 67 | `declaration-track:d62e0d32f20926b1c1824da2eeb59655782103f84611363ebf54eda4ef701a24` |
| 2 | `theorem` | [isSymmetric_iff_sesqForm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-iff-sesqform--bdd3607bb42c7161f7b492bb.md) | 74 | `result-track:bdd3607bb42c7161f7b492bbf5a2e7c6976003f07db168587ca472854e269906` |
| 3 | `theorem` | [IsSymmetric.conj_inner_sym](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-conj-inner-sym--1854c8cdc30793edcc5edf3b.md) | 80 | `result-track:1854c8cdc30793edcc5edf3bbe94505e5c1c851096d15d72bbccd2e752e6d2c0` |
| 4 | `theorem` | [IsSymmetric.apply_clm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-apply-clm--50c4278816c8f16fdba0615b.md) | 84 | `result-track:50c4278816c8f16fdba0615b51b48d84814e42018991cdc899ecfaba758ca9a7` |
| 5 | `theorem` | [IsSymmetric.zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-zero--58f8db08e763400e7798b4cc.md) | 89 | `result-track:58f8db08e763400e7798b4cce7ca04e474f17553436cfa3a30d350d884489969` |
| 6 | `lemma` | [IsSymmetric.id](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-id--45de8489dd3989e2d7678b7a.md) | 92 | `result-track:45de8489dd3989e2d7678b7aa8982e9d20e31c93a67493c12afc816b22770656` |
| 7 | `lemma` | [IsSymmetric.one](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-one--85b7889aba2fe71af3890ce3.md) | 93 | `result-track:85b7889aba2fe71af3890ce3976386ea66190245a6e0b1c2e1dc943308b7bea7` |
| 8 | `theorem` | [IsSymmetric.add](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-add--e322a88a41776847245c085e.md) | 96 | `result-track:e322a88a41776847245c085ed794f7700bf7f969415e5342e27ef95a097abec2` |
| 9 | `theorem` | [isSymmetric_sum](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-sum--560d27404c52b8181579f68e.md) | 101 | `result-track:560d27404c52b8181579f68e528e4e0e185abc944a33025b71d4732f35400294` |
| 10 | `theorem` | [IsSymmetric.sub](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-sub--5921a21dfd8a65484da1e64a.md) | 106 | `result-track:5921a21dfd8a65484da1e64a0311dd9bc16666de3cc10a24e18c410e05299460` |
| 11 | `theorem` | [IsSymmetric.smul](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-smul--aa005e03ac43c42971a8d61b.md) | 112 | `result-track:aa005e03ac43c42971a8d61b3611d531cd3d1e27a4871da7db56a817aaa69d9f` |
| 12 | `theorem` | [IsSymmetric.natCast](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-natcast--dbdfed44b86ec9feafbbd234.md) | 117 | `result-track:dbdfed44b86ec9feafbbd234074c0d1b9cb8a25ebed43f6d1ca9e68d7f0fd74a` |
| 13 | `theorem` | [IsSymmetric.intCast](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-intcast--d8d9ca73def4fa6673d000af.md) | 120 | `result-track:d8d9ca73def4fa6673d000af823e86e0ec5a3efc5273e0b7e5709b3c7408f234` |
| 14 | `lemma` | [IsSymmetric.mul_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-mul-of-commute--1da54c0f112b8cb2d8820aa3.md) | 124 | `result-track:1da54c0f112b8cb2d8820aa36da37a642ca55d8a2ed3d9164064ebd1a9a900bc` |
| 15 | `lemma` | [IsSymmetric.pow](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-pow--72b82242bada63fda6178ccb.md) | 129 | `result-track:72b82242bada63fda6178ccb2f07a890550f34633c6b8db8bbb635a6501aa922` |
| 16 | `theorem` | [IsSymmetric.coe_reApplyInnerSelf_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-coe-reapplyinnerself-apply--69e9a4b4443075a98e3d48c3.md) | 136 | `result-track:69e9a4b4443075a98e3d48c3fc6d041f72c2a5fb211a790294b9f4cf357ac4f3` |
| 17 | `theorem` | [IsSymmetric.restrict_invariant](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-restrict-invariant--c4775b3b4e1f0229e63704df.md) | 145 | `result-track:c4775b3b4e1f0229e63704dfe97780d6e96fa33db5ef68a3ea3083dd2b245b26` |
| 18 | `theorem` | [IsSymmetric.restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-restrictscalars--59c74db5d4bf58a5e8eb540b.md) | 148 | `result-track:59c74db5d4bf58a5e8eb540b7268e0fb191ddab5c2436a491b2d891944102671` |
| 19 | `theorem` | [IsSymmetric.im_inner_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-im-inner-apply-self--21c7a30195cc17cf6b4bff0e.md) | 155 | `result-track:21c7a30195cc17cf6b4bff0e32e7e1746e3f0d7b7d7c0517c357a887fc9a9c68` |
| 20 | `theorem` | [IsSymmetric.im_inner_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-im-inner-self-apply--adfd22c21de1750e3f4d40ef.md) | 160 | `result-track:adfd22c21de1750e3f4d40efef52503e3fe82a8c0b41feafe1a3f2b15417a5ed` |
| 21 | `theorem` | [IsSymmetric.coe_re_inner_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-coe-re-inner-apply-self--5be60c43dbf0e021deb907da.md) | 165 | `result-track:5be60c43dbf0e021deb907dab8fe91a1e8ebc3268cdba48bf76dee0055878c58` |
| 22 | `theorem` | [IsSymmetric.coe_re_inner_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-coe-re-inner-self-apply--1a010293c575708a2b9044d3.md) | 170 | `result-track:1a010293c575708a2b9044d3aebdc2e7cc2c18633ede271b32d371b0b84710c7` |
| 23 | `structure` | [IsSymmetricProjection](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetricprojection--c6475a2ad5c22dfb459ab398.md) | 176 | `declaration-track:c6475a2ad5c22dfb459ab3985a148eff491530e88120d1f3832232ded91f3b8b` |
| 24 | `theorem` | [isSymmetric_iff_inner_map_self_real](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-iff-inner-map-self-real--b4625eb41caa22c9fbae7581.md) | 188 | `result-track:b4625eb41caa22c9fbae7581eaa5e07e7afb567f5ec757bf091da32116aaff8a` |
| 25 | `theorem` | [IsSymmetric.inner_map_polarization](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-inner-map-polarization--3a9cb9071006534a3bfce5dd.md) | 208 | `result-track:3a9cb9071006534a3bfce5dde4c2f017d857329ee5f2b1a4e2291dcecf9edd07` |
| 26 | `theorem` | [isSymmetric_linearIsometryEquiv_conj_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-linearisometryequiv-conj-iff--72b2ffa5596be846475e9314.md) | 227 | `result-track:72b2ffa5596be846475e9314f40955a0941697a90bd8ae921fb4b21837cde0e4` |
| 27 | `theorem` | [InnerProductSpace.isSymmetric_rankOne_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/innerproductspace-issymmetric-rankone-self--024686cabf56aede4c6578ef.md) | 236 | `result-track:024686cabf56aede4c6578ef020f831d99c9ff61772ef2b6415d7810f7bcef30` |
| 28 | `theorem` | [InnerProductSpace.isSymmetricProjection_rankOne_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/innerproductspace-issymmetricprojection-rankone-self--f1b472380e2162f5248461df.md) | 240 | `result-track:f1b472380e2162f5248461dfe56ced21f43bb9c40bbe853936c4f921c050c91e` |
| 29 | `theorem` | [LinearMap.IsSymmetric.toLinearMap_symm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/linearmap-issymmetric-tolinearmap-symm--c8ee4acda38d6f97e3c46a72.md) | 245 | `result-track:c8ee4acda38d6f97e3c46a725a8118d8bcf8b5d57cddbd0ccf9ab5eac337c170` |
| 30 | `theorem` | [LinearEquiv.isSymmetric_symm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/linearequiv-issymmetric-symm-iff--2dffd9742b3ec0f4160e5384.md) | 248 | `result-track:2dffd9742b3ec0f4160e5384fa05950656a6f3e1f5af91ac0e41e974e778591b` |
| 31 | `theorem` | [IsSymmetric.continuous](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-continuous--7227f09d1ef9f6f7f9716004.md) | 264 | `result-track:7227f09d1ef9f6f7f97160047d1ca433e598bd9173ca8958f8de15b2a53db72b` |
| 32 | `theorem` | [IsSymmetric.inner_map_self_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-inner-map-self-eq-zero--acc1f9b57fee9237be38fd01.md) | 281 | `result-track:acc1f9b57fee9237be38fd01afc83b0129ad7825e30648e0e96faa9054395c46` |
| 33 | `theorem` | [ker_le_ker_of_range](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/ker-le-ker-of-range--239242c57161024ee67f21a4.md) | 289 | `result-track:239242c57161024ee67f21a430cdb625467d2f59ac61771b4a3e75c578ec2db8` |
| 34 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsSymmetricProjection.Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.Submodule.isSymmetric_projection_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/root-grwtsk-algebra-linearalgebra-issymmetricprojection-variant6bb55ce58--5adad93481510dfba1a74311.md) | 299 | `result-track:5adad93481510dfba1a74311ec648a441fd67248e5e153e3073c3eb8ec95215e` |
| 35 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsSymmetricProjection.Variant6bb55ce58a4851af027f55627af739af7f5dd0583172755f2fdc43d303d1e926.Submodule.isSymmetricProjection_projection_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/root-grwtsk-algebra-linearalgebra-issymmetricprojection-variant6bb55ce58--db750637dd4f3029bbc8845f.md) | 317 | `result-track:db750637dd4f3029bbc8845f7d5845d95212a9bb8c9d9c5f9ff51343f9ae7f4b` |
| 36 | `theorem` | [IsIdempotentElem.isSymmetric_iff_isOrtho_range_ker](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/isidempotentelem-issymmetric-iff-isortho-range-ker--e66fd65c12eb9ad109aa813f.md) | 336 | `result-track:e66fd65c12eb9ad109aa813fe8e01f2e03cca9d0e371a767d845bde82eda4e76` |
| 37 | `theorem` | [IsSymmetric.orthogonal_range](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-orthogonal-range--42d6a8069f0140c891f2beab.md) | 340 | `result-track:42d6a8069f0140c891f2beabac43a799d40619417b20bbf2b32a5ac7ae71c77f` |
| 38 | `theorem` | [IsIdempotentElem.isSymmetric_iff_orthogonal_range](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/isidempotentelem-issymmetric-iff-orthogonal-range--fbb7f1f05c8a945e0b74f088.md) | 348 | `result-track:fbb7f1f05c8a945e0b74f088ec3368cae21c371aba7b06a2fe9447c9e31ef09c` |
| 39 | `theorem` | [IsSymmetricProjection.ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetricprojection-ext-iff--5761a2592d6e43849d8069a7.md) | 355 | `result-track:5761a2592d6e43849d8069a7f71c5c8e712711efec96be3d137b9e96277b8e26` |
| 40 | `theorem` | [IsSymmetricProjection.sub_of_range_le_range](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetricprojection-sub-of-range-le-range--a953ea544ca539a43961926b.md) | 367 | `result-track:a953ea544ca539a43961926b15a5ad535a12fa81bdd0956f039a67f0396b9de8` |
| 41 | `theorem` | [IsSymmetric.isSymmetric_smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant66f1aac62d78df478eaae8e85a080961239a9c588f36781004aa97b0299b427e.lean/declarations/issymmetric-issymmetric-smul-iff--c534928acb26636f93e53d98.md) | 375 | `result-track:c534928acb26636f93e53d982ee375f67c619f90532e67e3792424646063670d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
