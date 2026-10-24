# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Scheme.Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "630409a7237cabb8c6a5c0abc09b506bb9a64eee",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `630409a7237cabb8c6a5c0abc09b506bb9a64eee`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Spec` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Scheme](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/scheme--baafbae5b089f8ddbad70493.md) | 49 | `declaration-track:baafbae5b089f8ddbad70493d03a9c8358ba55a2f9882ea5689797f133cb41a6` |
| 2 | `def` | [Hom](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/hom--5f57d7ab9e80535caaa9bb8d.md) | 61 | `declaration-track:5f57d7ab9e80535caaa9bb8d29e13aa0db75bdfcae11a8abfa923b3b61858821` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/instance--4f84609284a85136a3cb984a.md) | 67 | `declaration-track:4f84609284a85136a3cb984a01fc3956068832bf4581d783ade30795bc7be7a6` |
| 4 | `lemma` | [Hom.continuous](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/hom-continuous--6b61e1b9f6d47128fcd39560.md) | 72 | `result-track:6b61e1b9f6d47128fcd39560d26525011c6e43dee0ab3cd5b1d96c0783b2aa5d` |
| 5 | `abbrev` | [sheaf](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/sheaf--4e326a60410e9eb044d35d92.md) | 75 | `declaration-track:4e326a60410e9eb044d35d9258d2a2c811f5c6b962b8bc570eb1a926884d062a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/instance--c8feb3e1bc34d9df2d4ccfec.md) | 79 | `declaration-track:c8feb3e1bc34d9df2d4ccfec269cc0890d92b31ebc4565170110f0f31c17b4cd` |
| 7 | `def` | [forgetToLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/forgettolocallyringedspace--1014b48399a60ca267152d2e.md) | 84 | `declaration-track:1014b48399a60ca267152d2eaba57c966cc74910eb024fd1572beffce965cd59` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/instance--1ae86ac775edb417dd326542.md) | 89 | `declaration-track:1ae86ac775edb417dd326542e172d1b61764d5699d9c0e6eb35e464392454591` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/instance--945fdf66f63f78fd5583abc4.md) | 92 | `declaration-track:945fdf66f63f78fd5583abc4e2e76b1c36a22907245c5f418a792459910cdd54` |
| 10 | `theorem` | [forgetToLocallyRingedSpace_preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/forgettolocallyringedspace-preimage--7bbd3c48f520fd7ca1225319.md) | 96 | `result-track:7bbd3c48f520fd7ca122531990ede5d3c9273c5da43635ac4d61ed1f00ca3e6c` |
| 11 | `def` | [forgetToTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/forgettotop--6b2b9606a9e9ddc314e7a23d.md) | 103 | `declaration-track:6b2b9606a9e9ddc314e7a23deb69257e39467ad2261b6a4ceac743b410fc7684` |
| 12 | `instance` | [hasCoeToTopCat](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/hascoetotopcat--89c7a561ae6bb30dfb6b4704.md) | 108 | `declaration-track:89c7a561ae6bb30dfb6b47044b3b75a80582da0db4e40a4618c779474289f56e` |
| 13 | `theorem` | [id_val_base](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/id-val-base--f0e4868b861cc6c6627b2294.md) | 117 | `result-track:f0e4868b861cc6c6627b2294cbf77f54c364293114f24a71374e022beb4b355b` |
| 14 | `theorem` | [id_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/id-app--212f6de6e08238aa19dea422.md) | 122 | `result-track:212f6de6e08238aa19dea4220c93dab55a8fa24e75679b9d2ace798f6d9f01a1` |
| 15 | `theorem` | [comp_val](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/comp-val--4072b664c656e7759e34193c.md) | 129 | `result-track:4072b664c656e7759e34193c3b173e534ce1b9e330d422c348896c8088b33784` |
| 16 | `theorem` | [comp_coeBase](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/comp-coebase--53cfd9ea9525b297ae1c1930.md) | 134 | `result-track:53cfd9ea9525b297ae1c19307718041f59dab348fb88a707a60e7322c6332af0` |
| 17 | `theorem` | [comp_val_base](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/comp-val-base--5d86e678d002a9fbbe4a9245.md) | 141 | `result-track:5d86e678d002a9fbbe4a9245e987efecf11342e6b57bc286fe12c7de58ccd18c` |
| 18 | `theorem` | [comp_val_base_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/comp-val-base-apply--8d946e67c47916c9106611c4.md) | 146 | `result-track:8d946e67c47916c9106611c47590e2fb2d1d33754d102b9a5877fd37ed96f187` |
| 19 | `theorem` | [comp_val_c_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/comp-val-c-app--cc95578af0d8114daeb3082f.md) | 152 | `result-track:cc95578af0d8114daeb3082fe5c6388244c44cb1ad5c3f36ca459a36b2e994ce` |
| 20 | `theorem` | [congr_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/congr-app--6e2b58f5ddaae251faab5b6e.md) | 157 | `result-track:6e2b58f5ddaae251faab5b6e617dcb2e4025ed0146d628d670bf701426b56987` |
| 21 | `theorem` | [app_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/app-eq--b0c8112f46f63cb6de678341.md) | 162 | `result-track:b0c8112f46f63cb6de678341cc0010417cf891ad32085007d59e4e219ae44c0d` |
| 22 | `lemma` | [presheaf_map_eqToHom_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/presheaf-map-eqtohom-op--c0941af441594742adda1752.md) | 174 | `result-track:c0941af441594742adda1752efe6f71dbb5294557d4019c366ccdbc537b78f90` |
| 23 | `instance` | [is_locallyRingedSpace_iso](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/is-locallyringedspace-iso--9e5c5f364e01b1d52db30c4f.md) | 178 | `declaration-track:9e5c5f364e01b1d52db30c4fdd891b66a0d61a97b2890da62c6317de285f937b` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/instance--56d09f7ce949e563a683ac84.md) | 184 | `declaration-track:56d09f7ce949e563a683ac84ba767ca7aaaf594bb805ee7003eab9de1749c15a` |
| 25 | `theorem` | [inv_val_c_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/inv-val-c-app--31ffc93af0c573c284190b8e.md) | 189 | `result-track:31ffc93af0c573c284190b8e4dbad59bb74f4551ece32192e3ad3c2e465dd8ee` |
| 26 | `abbrev` | [Hom.appLe](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/hom-apple--0838922f45cf771ee087bfe8.md) | 203 | `declaration-track:0838922f45cf771ee087bfe8c93cb07a75ff94f3504c18f81198de30db107b04` |
| 27 | `def` | [specObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/specobj--7a9515fc30f728f4e2b3b8ea.md) | 210 | `declaration-track:7a9515fc30f728f4e2b3b8ea91eb1643dc03f25d2ceaa7a23eb23c9e729ae6fe` |
| 28 | `theorem` | [specObj_toLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/specobj-tolocallyringedspace--8dac260806631a0a53434475.md) | 216 | `result-track:8dac260806631a0a53434475f72dc4c49f5b300372a04e0d30ce3f49edd77f4a` |
| 29 | `def` | [specMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/specmap--6767366b92481dbe0e0864ec.md) | 223 | `declaration-track:6767366b92481dbe0e0864ec85a940f8fc6227057998ac605d076a148ab64aa4` |
| 30 | `theorem` | [specMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/specmap-id--ff8e3ec1f66025e064c0516f.md) | 228 | `result-track:ff8e3ec1f66025e064c0516fd58e4d3a433e9b9d4b7c8f4be4d14fd60fa6a344` |
| 31 | `theorem` | [specMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/specmap-comp--d6c25d8eb38f81d9cded543c.md) | 232 | `result-track:d6c25d8eb38f81d9cded543c9c8116939e3c91cb4bb88d56e95fd3d3f7f14176` |
| 32 | `def` | [Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/spec--84e52bc6a1f10746c368a92f.md) | 243 | `declaration-track:84e52bc6a1f10746c368a92f0c5a63a308aa41e362c5cceeb6d183eaa334c3e6` |
| 33 | `def` | [empty.](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/empty--974b96f45a67cde835a1f717.md) | 253 | `declaration-track:974b96f45a67cde835a1f71787b3a20e72dfa9fc4cd01cfc03f2991ec87cf2ba` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/instance--fadf297ae094dc9dc77fe686.md) | 261 | `declaration-track:fadf297ae094dc9dc77fe6865f13d13381780ed8f7072607427d9b837c4bede5` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/instance--730c568f4c341027dbc6e331.md) | 264 | `declaration-track:730c568f4c341027dbc6e3314c64a5b5b2e9b700563457aa9c4eb6083fb0cdd3` |
| 36 | `def` | [Γ](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/anonymous--504f4ccf8d0764617df50021.md) | 269 | `declaration-track:504f4ccf8d0764617df500217bf58c7cbdff090ca2d18d953f3cad80571bd3e6` |
| 37 | `theorem` | [Γ_def](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/def--cf3935dd84c330f69601bb5c.md) | 273 | `result-track:cf3935dd84c330f69601bb5c0308c17491e69095186befc4e9631e67fb9520a5` |
| 38 | `theorem` | [Γ_obj](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/obj--009fef9d61d75703440513cf.md) | 278 | `result-track:009fef9d61d75703440513cf7895ea12f309a0dbc22d970921aaf870ec6ef1a9` |
| 39 | `theorem` | [Γ_obj_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/obj-op--4287dc9c7f0417520c9470db.md) | 282 | `result-track:4287dc9c7f0417520c9470db73a0d914314519396768fa9fae141e457853ff11` |
| 40 | `theorem` | [Γ_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/map--5356e4c69c5074df98f508c3.md) | 287 | `result-track:5356e4c69c5074df98f508c302c69febc37fd6eaec50618dbb2a0ed2d448d7d1` |
| 41 | `theorem` | [Γ_map_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/map-op--eb9ff7549ba73db33ef6e977.md) | 291 | `result-track:eb9ff7549ba73db33ef6e9774d85e639ebdc2ef5da16a5e8685cf2d765c21e9e` |
| 42 | `def` | [basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/basicopen--c4561c5be3bf752c1e1e1980.md) | 300 | `declaration-track:c4561c5be3bf752c1e1e1980337d19f52bfce6b1e1985d75f52b8e61044d47b0` |
| 43 | `theorem` | [mem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/mem-basicopen--fa757a32661943119019a96f.md) | 305 | `result-track:fa757a32661943119019a96f087031d405b6d0c6fd4a5ec53b24b2410627c06c` |
| 44 | `theorem` | [mem_basicOpen_top'](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/mem-basicopen-top--9e48c64d0cbd9a9b1ce4d166.md) | 310 | `result-track:9e48c64d0cbd9a9b1ce4d1660e64d0ffb97d051e11fad598e43aed12c6a53e3a` |
| 45 | `theorem` | [mem_basicOpen_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/mem-basicopen-top--3c4ea10dd0ba2adbbf11956d.md) | 319 | `result-track:3c4ea10dd0ba2adbbf11956de7db68fbc16e86b7e888de4e191fa03db9eeec76` |
| 46 | `theorem` | [basicOpen_res](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/basicopen-res--a31335a2b79e96acc46f408e.md) | 325 | `result-track:a31335a2b79e96acc46f408e50694cc92f363980483dae693d0b88a861c309f7` |
| 47 | `theorem` | [basicOpen_res_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/basicopen-res-eq--17be432ef8e10cff7c59d08c.md) | 331 | `result-track:17be432ef8e10cff7c59d08cb494b3d5f347f6bd051914118a1d34523d8bf0ff` |
| 48 | `theorem` | [basicOpen_le](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/basicopen-le--7b6fa90dac03907e924d673b.md) | 337 | `result-track:7b6fa90dac03907e924d673ba6be55a19c5fb36063ba8b6028d44e5471a2afbd` |
| 49 | `theorem` | [preimage_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/preimage-basicopen--c19d98e3d5504345c1c68fff.md) | 342 | `result-track:c19d98e3d5504345c1c68fff723e78771bee291fbf35faeb1cc0baaef0dc2dc2` |
| 50 | `theorem` | [basicOpen_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/basicopen-zero--c70d8bf0bbea193a0ab6bde6.md) | 350 | `result-track:c70d8bf0bbea193a0ab6bde678e0d2069c9c95c249f6f011a9357847ef184222` |
| 51 | `theorem` | [basicOpen_mul](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/basicopen-mul--8d9c13396509102dc77e3a6c.md) | 355 | `result-track:8d9c13396509102dc77e3a6c1421f72ecab0fbbbab183231497aa79550d14f56` |
| 52 | `theorem` | [basicOpen_of_isUnit](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/basicopen-of-isunit--6f52981d30287b790af666bd.md) | 359 | `result-track:6f52981d30287b790af666bd3b86f2e3327889ea2535ba34f4cadade6a733aee` |
| 53 | `theorem` | [basicOpen_eq_of_affine](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/basicopen-eq-of-affine--d872b53ad4e74cb4ea968a47.md) | 367 | `result-track:d872b53ad4e74cb4ea968a478388b6ffdb64729c6aa3ee7dc53061a9c3c034b0` |
| 54 | `theorem` | [basicOpen_eq_of_affine'](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/declarations/basicopen-eq-of-affine--c8b50a6a80be7e92c8eed26c.md) | 382 | `result-track:c8b50a6a80be7e92c8eed26c23326aa200aac03465d5377e1ec115eb9f04cc34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
