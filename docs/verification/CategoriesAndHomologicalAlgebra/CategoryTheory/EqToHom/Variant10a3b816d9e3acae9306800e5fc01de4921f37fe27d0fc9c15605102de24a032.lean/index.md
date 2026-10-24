# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EqToHom.Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d954ff440663e385783d8d4615be9bc7d25cb98",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d954ff440663e385783d8d4615be9bc7d25cb98`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom--d1215300fe558334d7f9dd52.md) | 41 | `declaration-track:d1215300fe558334d7f9dd52530e172d5c14743fa72e57e646a8ad5987346c2e` |
| 2 | `theorem` | [eqToHom_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-refl--8d64befca8a005944316970b.md) | 44 | `result-track:8d64befca8a005944316970ba4c54b2d3f1bfdfa5f20e5651c8b72b88034ebc2` |
| 3 | `theorem` | [eqToHom_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-trans--9520991492ef21e8227bf43e.md) | 48 | `result-track:9520991492ef21e8227bf43eda30e755fd77fe025bc8bf734043dd943f3bacb6` |
| 4 | `lemma` | [eqToHom_heq_id_dom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-heq-id-dom--220585cca661b65076dae299.md) | 55 | `result-track:220585cca661b65076dae299fbb92632696d3133912a24ba12e3641d4250ad6e` |
| 5 | `lemma` | [eqToHom_heq_id_cod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-heq-id-cod--086a1358f9a02a471c5fea71.md) | 59 | `result-track:086a1358f9a02a471c5fea71c37ece9f995ff59abf8aba823825fb8290c23a7e` |
| 6 | `theorem` | [conj_eqToHom_iff_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/conj-eqtohom-iff-heq--9e00684bec341f00bf5139ed.md) | 64 | `result-track:9e00684bec341f00bf5139ede0bc81675af2a13ce2173932f98ed7b047ccbd6e` |
| 7 | `theorem` | [conj_eqToHom_iff_heq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/conj-eqtohom-iff-heq--34a2b557fbffdb5b75811856.md) | 70 | `result-track:34a2b557fbffdb5b7581185607dba697b8022469adeefbdc0b41d8fdae189574` |
| 8 | `theorem` | [comp_eqToHom_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/comp-eqtohom-iff--76a1a490c6de20b15b903d40.md) | 74 | `result-track:76a1a490c6de20b15b903d408706650c9cfa8709ff733faf75e74db01bd17e21` |
| 9 | `theorem` | [eqToHom_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-comp-iff--afd7ecb517f46cc6112f433a.md) | 79 | `result-track:afd7ecb517f46cc6112f433a18b149a7df6f1a27faa1c10b3bcf1f1ce6c5993b` |
| 10 | `theorem` | [eqToHom_comp_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-comp-heq--2d65bf22f34fd9141f25dd41.md) | 84 | `result-track:2d65bf22f34fd9141f25dd41f67f0b0efd7cab3cc935f711c2807b206a9cd060` |
| 11 | `theorem` | [eqToHom_comp_heq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-comp-heq-iff--4c87c4fb9047c52228eecbd5.md) | 88 | `result-track:4c87c4fb9047c52228eecbd57b5ac8834eee1e3d60bd3b9ea1fac491cae9f8a1` |
| 12 | `theorem` | [heq_eqToHom_comp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/heq-eqtohom-comp-iff--e3e775cfc692b4d6392c6290.md) | 93 | `result-track:e3e775cfc692b4d6392c6290b87f7182ff59fce14ee3ad7dbd5a8305099b5a85` |
| 13 | `theorem` | [comp_eqToHom_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/comp-eqtohom-heq--add1a340e5f4a38152146ce4.md) | 98 | `result-track:add1a340e5f4a38152146ce4d4cdcfdaa3164f119d4b5134e097bce766efd787` |
| 14 | `theorem` | [comp_eqToHom_heq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/comp-eqtohom-heq-iff--a9c165d828a9c580f4d63c06.md) | 102 | `result-track:a9c165d828a9c580f4d63c06ac3ff12bbf6e1596ad08246e6cd6c8bd3bb315a8` |
| 15 | `theorem` | [heq_comp_eqToHom_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/heq-comp-eqtohom-iff--c4c89c5c03277c6783e6ec43.md) | 107 | `result-track:c4c89c5c03277c6783e6ec434617c748f05eca863e3dd23c9a297504ee4d17ac` |
| 16 | `theorem` | [heq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/heq-comp--da8e472a9f424c5e44e113fc.md) | 112 | `result-track:da8e472a9f424c5e44e113fce25bcb9b2076608eb9a6d953b02694bfae52bf25` |
| 17 | `theorem` | [eqToHom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-naturality--44f4651898c31f7fcc2e2ecf.md) | 126 | `result-track:44f4651898c31f7fcc2e2ecf8287bc959990a68c570f556654fa67f0bbe1e39e` |
| 18 | `theorem` | [eqToHom_iso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-iso-hom-naturality--1d61862e39a28166915eb0b4.md) | 136 | `result-track:1d61862e39a28166915eb0b4187182ce8051dd3183be763e64debab545784d73` |
| 19 | `theorem` | [eqToHom_iso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-iso-inv-naturality--a70de30f27c009e78d38ac87.md) | 146 | `result-track:a70de30f27c009e78d38ac87c715551c8737c07e4fb9b888b74643d946811c30` |
| 20 | `theorem` | [congrArg_cast_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/congrarg-cast-hom-left--f24b7b398e647240061fc41d.md) | 153 | `result-track:f24b7b398e647240061fc41d544eed41627019ca2e7ef291fbb756d9c405f3fb` |
| 21 | `theorem` | [congrArg_mpr_hom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/congrarg-mpr-hom-left--d9f78074a73735e5fb3d9859.md) | 165 | `result-track:d9f78074a73735e5fb3d9859d27e01193eff0c58e042d3ea767553db01b892fe` |
| 22 | `theorem` | [congrArg_cast_hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/congrarg-cast-hom-right--446765cbc5f0ac2cd82bafff.md) | 172 | `result-track:446765cbc5f0ac2cd82bafff53ea1112c8a4581be2162a7c888586dde7232b37` |
| 23 | `theorem` | [congrArg_mpr_hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/congrarg-mpr-hom-right--94c566f23e6ed47f04cb0a12.md) | 184 | `result-track:94c566f23e6ed47f04cb0a1222aa40b51b42e86ce6177223900a057eebde2719` |
| 24 | `def` | [eqToIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtoiso--8c308bd12209dcf1ba279564.md) | 194 | `declaration-track:8c308bd12209dcf1ba2795642586fdc3287e5934cda2ea00391de77fecc7d579` |
| 25 | `theorem` | [eqToIso.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtoiso-hom--67050a2f7eca4fd6cd50ff0e.md) | 198 | `result-track:67050a2f7eca4fd6cd50ff0e66594ba08a1932b0def1e68cfc5a07bd0099d244` |
| 26 | `theorem` | [eqToIso.inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtoiso-inv--986ceb8db52e335cf9b60464.md) | 202 | `result-track:986ceb8db52e335cf9b604642425f08d4fda64fd5c5d2ceefedc62e829d4e21c` |
| 27 | `theorem` | [eqToIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtoiso-refl--4331eb7f3e36944766b5ec57.md) | 206 | `result-track:4331eb7f3e36944766b5ec57af69ce7c33e19ad97c0939c3c7518775d12a259a` |
| 28 | `theorem` | [eqToIso_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtoiso-trans--09d2acdec6e3caf7dc346302.md) | 210 | `result-track:09d2acdec6e3caf7dc346302d6c6dcc297a5394e79d4f2922ee6f4a1a9fc31c9` |
| 29 | `theorem` | [eqToHom_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-op--c71b9f0f0672c8f6d5185e2a.md) | 214 | `result-track:c71b9f0f0672c8f6d5185e2a3756450f22c48876632a0f4fc85e60237ac4a0ff` |
| 30 | `theorem` | [eqToHom_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-unop--68607fbfbdcf79217f0d9c88.md) | 219 | `result-track:68607fbfbdcf79217f0d9c88ad3079cd72f50d2024343edc7abc4c4a70f2c310` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/instance--4a9fb30757f4e8b7ff203c5a.md) | 224 | `declaration-track:4a9fb30757f4e8b7ff203c5ac09d529e2a8eafb7176b543e897edb11922d5bfc` |
| 32 | `theorem` | [inv_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/inv-eqtohom--8bbb99429b4436dcfe30bc65.md) | 228 | `result-track:8bbb99429b4436dcfe30bc65ae76ea6a68a81e243dcc49067e81653af785e986` |
| 33 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/ext--47cf71e2437a74c4268cc8ba.md) | 237 | `result-track:47cf71e2437a74c4268cc8ba1aa584a6a2f13b4338404da0100f25e807220c2e` |
| 34 | `lemma` | [ext_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/ext-of-iso--8c887b0960a0d85b3e8678a3.md) | 252 | `result-track:8c887b0960a0d85b3e8678a3949d4baee8da91b68f87aab73e583696ee60968f` |
| 35 | `theorem` | [hext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/hext--436e1872b171fd4eb053f5b4.md) | 259 | `result-track:436e1872b171fd4eb053f5b45e50411d60044177ed1964c54315519bcaeb0bc4` |
| 36 | `theorem` | [congr_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/congr-obj--d1e507ddc3f862a96d42a6df.md) | 264 | `result-track:d1e507ddc3f862a96d42a6dfc6477f362504ec7d5d6f18fbf13db29317095fe4` |
| 37 | `theorem` | [congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/congr-hom--3ff5280d3b32861265c0683a.md) | 267 | `result-track:3ff5280d3b32861265c0683a7d81212102f154bb6e6e14ae45e789d8a7cb6f67` |
| 38 | `theorem` | [congr_inv_of_congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/congr-inv-of-congr-hom--3df17c2f162e186dbf987147.md) | 271 | `result-track:3df17c2f162e186dbf98714738c598bfde37ea1e02f2ff1a72d2493e96153418` |
| 39 | `theorem` | [map_comp_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/map-comp-heq--992f6f697cb6d2270e43a0a8.md) | 283 | `result-track:992f6f697cb6d2270e43a0a8b9e3d49cf1b0b8ac40fd039f85ab7bf68a5c44d9` |
| 40 | `theorem` | [map_comp_heq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/map-comp-heq--fcfe6405ac16488d7c348b56.md) | 289 | `result-track:fcfe6405ac16488d7c348b56c1d055e7e7e3cf8fd8681e2e0c51e4df57e2bee0` |
| 41 | `theorem` | [precomp_map_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/precomp-map-heq--22f61f9cc9a82c2ff53b619c.md) | 294 | `result-track:22f61f9cc9a82c2ff53b619c0cd48295be489a017b2fd2894e2e169cde00d0b8` |
| 42 | `theorem` | [postcomp_map_heq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/postcomp-map-heq--8e4ebf35b626f78a2113aba6.md) | 298 | `result-track:8e4ebf35b626f78a2113aba65a1570303d601a3842207c3f355af068dbf2adc5` |
| 43 | `theorem` | [postcomp_map_heq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/postcomp-map-heq--f9a1d462cd45f63b453e0291.md) | 303 | `result-track:f9a1d462cd45f63b453e0291559320927595da2340ecfaa85a81625b0df5ccdb` |
| 44 | `theorem` | [hcongr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/hcongr-hom--8bbc50bc6257a2bcd81129ed.md) | 307 | `result-track:8bbc50bc6257a2bcd81129ed58ffd2bf27f943d3b8b50295d639c24dda59f0eb` |
| 45 | `theorem` | [eqToHom_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-map--4aa56aa461ddb8af36a64d10.md) | 320 | `result-track:4aa56aa461ddb8af36a64d10982f4068900d4e7baf135406abb545b4ee927a00` |
| 46 | `theorem` | [eqToHom_map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-map-comp--27700ab4194f9dc0cce0caf8.md) | 324 | `result-track:27700ab4194f9dc0cce0caf8f28d2a385bbc2eedb6a3d9a91455d88501954766` |
| 47 | `theorem` | [eqToIso_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtoiso-map--87171b451960b2f49b85ab0b.md) | 329 | `result-track:87171b451960b2f49b85ab0b780196f6a4a07b172e52267e45df9a4e3c6d77f5` |
| 48 | `theorem` | [eqToIso_map_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtoiso-map-trans--1553162f7148c13618e2e401.md) | 333 | `result-track:1553162f7148c13618e2e401305b27fd2c181d6998e53a47007fb68f4ebe7523` |
| 49 | `theorem` | [eqToHom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eqtohom-app--e42fd7a7a2ece978ae7cad0b.md) | 337 | `result-track:e42fd7a7a2ece978ae7cad0bb61f29629e55280a7db8ef696ce216707d704c03` |
| 50 | `theorem` | [NatTrans.congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/nattrans-congr--615485b66cebd19b929258a7.md) | 340 | `result-track:615485b66cebd19b929258a7e0b569ee3052d6f7313b7f831e52861246abdd9a` |
| 51 | `theorem` | [eq_conj_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/eq-conj-eqtohom--d514c340fc2558f6a0564728.md) | 345 | `result-track:d514c340fc2558f6a056472854c0f3afec1068827928e0adca810bca9ef14de3` |
| 52 | `theorem` | [dcongr_arg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/dcongr-arg--ee3735a2703948bc5bc2ba7a.md) | 348 | `result-track:ee3735a2703948bc5bc2ba7a898e482a930e32394ff3840268ae07d4661ecc53` |
| 53 | `def` | [Equivalence.induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Variant10a3b816d9e3acae9306800e5fc01de4921f37fe27d0fc9c15605102de24a032.lean/declarations/equivalence-induced--121f6576d0603cd3d05ad79f.md) | 356 | `declaration-track:121f6576d0603cd3d05ad79f8a39a1fb84fc0e8fa0fc5e2599b9e4b71a9c0f71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
