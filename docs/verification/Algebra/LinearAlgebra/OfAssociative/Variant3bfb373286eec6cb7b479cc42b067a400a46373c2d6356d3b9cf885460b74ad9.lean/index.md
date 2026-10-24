# Verification target: GRWTSK.Algebra.LinearAlgebra.OfAssociative.Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca58977a21555be50af2e91f35b96acf6c9b9dc2",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca58977a21555be50af2e91f35b96acf6c9b9dc2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Subalgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Submodule` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/instance--94f78b13898bedd8b54c8ef6.md) | 53 | `declaration-track:94f78b13898bedd8b54c8ef621604edf8fe2fb2f0253cbe9f47862e90fe97efb` |
| 2 | `theorem` | [of_associative_ring_bracket](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/of-associative-ring-bracket--05818ed60973267f71319710.md) | 60 | `result-track:05818ed60973267f713197104210b0e8ea641be00ea6cc26a12eb9da37ab9d24` |
| 3 | `theorem` | [lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/lie-apply--06fed7c5342982c971855318.md) | 64 | `result-track:06fed7c5342982c97185531833e0a735e9231c10c842d107e3ad3169386d7635` |
| 4 | `abbrev` | [LieRingModule.ofAssociativeModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/lieringmodule-ofassociativemodule--dfaf5ee6791eae45fe6472d5.md) | 83 | `declaration-track:dfaf5ee6791eae45fe6472d593bd1f9713babd1bce86eff9fcbe2901e467125c` |
| 5 | `theorem` | [lie_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/lie-eq-smul--37e3b64e15ba35b09e16f9f2.md) | 91 | `result-track:37e3b64e15ba35b09e16f9f21aa4a2f47feed11b3e62b3933ffa6acd4df80ed9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/instance--0af58129db6de35c38965564.md) | 102 | `declaration-track:0af58129db6de35c38965564022c059af5d64a38bc7ba5269a4019ab56618b1a` |
| 7 | `theorem` | [LieModule.ofAssociativeModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liemodule-ofassociativemodule--e543b16ef58294f16356ef73.md) | 118 | `result-track:e543b16ef58294f16356ef730fa7984490cf905ce2eb1c5977e9a4ff31fd984e` |
| 8 | `instance` | [Module.End.instLieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/module-end-instlieringmodule--07ac178a102dd71203a94c58.md) | 122 | `declaration-track:07ac178a102dd71203a94c58486323cc17df674aae3ad09a83420bb431057d09` |
| 9 | `instance` | [Module.End.instLieModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/module-end-instliemodule--65fc3e16197d2ee97d0422bb.md) | 125 | `declaration-track:65fc3e16197d2ee97d0422bb0ecdf429dbca5f2320994c2464472d4975f4f468` |
| 10 | `lemma` | [Module.End.lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/module-end-lie-apply--2143c561d1961b752f287c2e.md) | 128 | `result-track:2143c561d1961b752f287c2e7bfe5ed8d6bc6776ddc9f5dc0013870e183ec008` |
| 11 | `def` | [toLieHom](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/toliehom--09df203c31258c6d21420a95.md) | 139 | `declaration-track:09df203c31258c6d21420a95ee46b8c3f1c2894c545b9907a986f3e2095fa774` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/instance--e2c0d6e8d2ae7f33672ce828.md) | 143 | `declaration-track:e2c0d6e8d2ae7f33672ce82843a99c5008ddea93adc1f3e490dcceadee11b25d` |
| 13 | `theorem` | [coe_toLieHom](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/coe-toliehom--993c73255351dd99d19d5884.md) | 147 | `result-track:993c73255351dd99d19d5884936890a53321e846feb5c512c3bb09623a439d90` |
| 14 | `theorem` | [toLieHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/toliehom-apply--d069f8c7c7f51a143df2d854.md) | 150 | `result-track:d069f8c7c7f51a143df2d854341dc7fd0deff8e02ce8fddf3924cbbd6c9c9218` |
| 15 | `theorem` | [toLieHom_id](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/toliehom-id--54156c16491d0c015f96adfe.md) | 154 | `result-track:54156c16491d0c015f96adfe570937d2ad38e20825caff9f4bfeb75fa7709def` |
| 16 | `theorem` | [toLieHom_comp](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/toliehom-comp--69bf83178ed8c8f8cb4300ad.md) | 158 | `result-track:69bf83178ed8c8f8cb4300ad1834f2c1ba80e8022ef0109d4f0eaf966169d813` |
| 17 | `theorem` | [toLieHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/toliehom-injective--93cecd5ba814023c32ef4a01.md) | 161 | `result-track:93cecd5ba814023c32ef4a0134740d13af531e408293ae2a19f0997e1d5c533c` |
| 18 | `def` | [LieModule.toEnd](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liemodule-toend--23ea6cfe8a25bb2d9fdfead1.md) | 180 | `declaration-track:23ea6cfe8a25bb2d9fdfead106ef572f2cd01f4c88796071956604c351fb8dd9` |
| 19 | `def` | [LieAlgebra.ad](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liealgebra-ad--2e89afb28a0ac95d9d40fcd6.md) | 190 | `declaration-track:2e89afb28a0ac95d9d40fcd6f6ba887634a9cd5059d62cc604708382886c381e` |
| 20 | `theorem` | [LieAlgebra.ad_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liealgebra-ad-apply--05ed0a81e13902b82317f997.md) | 194 | `result-track:05ed0a81e13902b82317f99745a5bbb011cca272a68ce167444c92884cd459ad` |
| 21 | `theorem` | [LieModule.toEnd_module_end](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liemodule-toend-module-end--e8730cea83ca7a7878d3da44.md) | 198 | `result-track:e8730cea83ca7a7878d3da447198de41b90c8771fcf9421e4e40b58df059dcb8` |
| 22 | `theorem` | [LieSubalgebra.toEnd_eq](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liesubalgebra-toend-eq--a46d2b137d43e8ab8df003a6.md) | 201 | `result-track:a46d2b137d43e8ab8df003a63269cabe8683459855252959d6dcc53d464d9b89` |
| 23 | `theorem` | [LieSubalgebra.toEnd_mk](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liesubalgebra-toend-mk--c2d30d45ad36097ef4224295.md) | 206 | `result-track:c2d30d45ad36097ef42242954cabd93c56d10a8d4fac26b66dba4dfbe428e049` |
| 24 | `class` | [IsFaithful](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/isfaithful--a859fc605af039c1d2f92ea8.md) | 218 | `declaration-track:a859fc605af039c1d2f92ea87d840e325a50fd9581fb4bb351269140e900894b` |
| 25 | `lemma` | [toEnd_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/toend-eq-iff--9ca4baeb14e05e8da805739b.md) | 222 | `result-track:9ca4baeb14e05e8da805739b68d5d7d665558ca77862c902a1e8e93ec19457f4` |
| 26 | `lemma` | [ext_of_isFaithful](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/ext-of-isfaithful--716a66339c50c531076f9632.md) | 227 | `result-track:716a66339c50c531076f9632a6457b78edf06691d0c09220726e74c9c521e3ca` |
| 27 | `lemma` | [toEnd_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/toend-eq-zero-iff--c0ed5bc89309de15999b5a34.md) | 232 | `result-track:c0ed5bc89309de15999b5a3422a0a290836bf8d67dc218339f820314cddd0d4b` |
| 28 | `lemma` | [isFaithful_iff'](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/isfaithful-iff--14eb5f532cbe0030edd3acb8.md) | 236 | `result-track:14eb5f532cbe0030edd3acb8fc018f1aa931c4a17692d9e895869d940651a015` |
| 29 | `lemma` | [LieSubmodule.coe_toEnd](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liesubmodule-coe-toend--8ae8d938b65e70ae6fe77b0b.md) | 253 | `result-track:8ae8d938b65e70ae6fe77b0b4c3297125ec4c131fc676fbe15b65c623105fcc5` |
| 30 | `lemma` | [LieSubmodule.coe_toEnd_pow](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liesubmodule-coe-toend-pow--532b15ca967e464cdea3ead6.md) | 256 | `result-track:532b15ca967e464cdea3ead6a17e84a1c18de4d0ff4912e76340f9479785d791` |
| 31 | `lemma` | [LieSubalgebra.coe_ad](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liesubalgebra-coe-ad--a637202a58caa18d91670d7c.md) | 262 | `result-track:a637202a58caa18d91670d7c0fc84d9528daa572da325afabe5f6679d33507dc` |
| 32 | `lemma` | [LieSubalgebra.coe_ad_pow](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liesubalgebra-coe-ad-pow--eedba99fc782b87644c9df3b.md) | 265 | `result-track:eedba99fc782b87644c9df3b4f10c04b4ec218fff66068f3ea86e5e389669996` |
| 33 | `lemma` | [LieModule.toEnd_lie](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liemodule-toend-lie--39adc8d7ba404aa7ffca649c.md) | 273 | `result-track:39adc8d7ba404aa7ffca649cd5889fa8fe061fe83cda2c6c7b95c840ca2f3903` |
| 34 | `lemma` | [LieAlgebra.ad_lie](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liealgebra-ad-lie--1046be67935555d631431930.md) | 277 | `result-track:1046be67935555d6314319300a0f17801015623f49a68b667edfa6e6f459b5d6` |
| 35 | `lemma` | [LieModule.toEnd_pow_lie](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liemodule-toend-pow-lie--6735290dbd28483197ce2c11.md) | 282 | `result-track:6735290dbd28483197ce2c11c97eb39989cfa1809238289d88ca08d66404d623` |
| 36 | `lemma` | [LieAlgebra.ad_pow_lie](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liealgebra-ad-pow-lie--d593c9edd56e7a3dd7275ef6.md) | 298 | `result-track:d593c9edd56e7a3dd7275ef68fa32923651993095bd24b7b75987ec35fdb9c9b` |
| 37 | `lemma` | [toEnd_pow_comp_lieHom](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/toend-pow-comp-liehom--70d4711835b4e18b1ea02e0e.md) | 312 | `result-track:70d4711835b4e18b1ea02e0e31f4b75bd842a858caaa48e1b21373a996d165b2` |
| 38 | `lemma` | [toEnd_pow_apply_map](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/toend-pow-apply-map--29b10578ad2d4c246840034e.md) | 318 | `result-track:29b10578ad2d4c246840034ef40f03cd7f25c62a9cdc8f1fe1fc0bfca1a2726d` |
| 39 | `theorem` | [coe_map_toEnd_le](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/coe-map-toend-le--49b3a2f12cc3382409970884.md) | 330 | `result-track:49b3a2f12cc338240997088487cb73657f80b72e9fd695caa31fbfebacad7467` |
| 40 | `theorem` | [toEnd_comp_subtype_mem](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/toend-comp-subtype-mem--c5108282d2d876bba01582cd.md) | 337 | `result-track:c5108282d2d876bba01582cd20c588c23fe26f33af9c163e367490adc0bded76` |
| 41 | `theorem` | [toEnd_restrict_eq_toEnd](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/toend-restrict-eq-toend--f69934e4b0a89a84f977f5c4.md) | 342 | `result-track:f69934e4b0a89a84f977f5c4bd25922d60b2077ce006c26fe492a35a6ca614f9` |
| 42 | `lemma` | [mapsTo_pow_toEnd_sub_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/mapsto-pow-toend-sub-algebramap--9be2483b713b31ba2f2e9e77.md) | 349 | `result-track:9be2483b713b31ba2f2e9e77b027698901df3be0e3d3e7871b5a4cd9bd44910c` |
| 43 | `theorem` | [LieAlgebra.ad_eq_lmul_left_sub_lmul_right](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liealgebra-ad-eq-lmul-left-sub-lmul-right--5a5fd66dbb234ea54b7592e5.md) | 358 | `result-track:5a5fd66dbb234ea54b7592e5b1a99752fd3a56267a3f72f7ea212cb472cab7ff` |
| 44 | `theorem` | [LieSubalgebra.ad_comp_incl_eq](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liesubalgebra-ad-comp-incl-eq--18e9aa770d4f698858cce45e.md) | 362 | `result-track:18e9aa770d4f698858cce45e97360d170fce9420a938c3d2e8cfc519acf71529` |
| 45 | `def` | [lieSubalgebraOfSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/liesubalgebraofsubalgebra--cf0a01b7ccab19f25b944053.md) | 371 | `declaration-track:cf0a01b7ccab19f25b944053d48b42fd57d9071b5f2bd648d96c5843a51f8187` |
| 46 | `def` | [lieConj](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/lieconj--f546992af9d91b9b9a63e697.md) | 388 | `declaration-track:f546992af9d91b9b9a63e69706553bc060cc7516f69f138ec84e5ae3ca32db67` |
| 47 | `theorem` | [lieConj_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/lieconj-apply--03d0b2adab2626ad172e521b.md) | 396 | `result-track:03d0b2adab2626ad172e521bdff5e7150c09a91dc8ef6a24a6db8e7b99be249e` |
| 48 | `theorem` | [lieConj_symm](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/lieconj-symm--45d1a9db2bfdee846098cdb1.md) | 400 | `result-track:45d1a9db2bfdee846098cdb19c07c5d2d66573bbed2115828bad2cfa05f75d0e` |
| 49 | `def` | [toLieEquiv](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/tolieequiv--b66c1db7b3ad52e2a51d5291.md) | 412 | `declaration-track:b66c1db7b3ad52e2a51d5291fe3dba579bde97e5faaad627511fe829b0fb9720` |
| 50 | `theorem` | [toLieEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/tolieequiv-apply--9f06726b8200f941fe59ec6f.md) | 420 | `result-track:9f06726b8200f941fe59ec6f556f2fd7550fcc7274e9f0b22563d0371e4d3281` |
| 51 | `theorem` | [toLieEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/tolieequiv-symm-apply--9ddd8374e525a3038d853a92.md) | 424 | `result-track:9ddd8374e525a3038d853a9266314bf3a1834c536685544ee9365825d30e2764` |
| 52 | `lemma` | [conj_ad_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant3bfb373286eec6cb7b479cc42b067a400a46373c2d6356d3b9cf885460b74ad9.lean/declarations/conj-ad-apply--b3d7cd592c4860c6179a0392.md) | 440 | `result-track:b3d7cd592c4860c6179a0392c100ce5d7cb72d442f8bce62c4d5be9d527e3676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
