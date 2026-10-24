# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimits.Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e872975c3cf21ed8f6318c8999bacd445f4859b",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e872975c3cf21ed8f6318c8999bacd445f4859b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.UnivLE` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Quot.Rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quot-rel--61d1b464f2488bfa403c2ac8.md) | 34 | `declaration-track:61d1b464f2488bfa403c2ac81c24fb886ff21d1cecd622571ef9a317fa7e090a` |
| 2 | `def` | [Quot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quot--4b89083720fdb22b734e70e8.md) | 41 | `declaration-track:4b89083720fdb22b734e70e8f61a02accebf2a65959ac020b7b440c7c6e044a0` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/instance--b9906fc1f149c679c97bfb45.md) | 44 | `declaration-track:b9906fc1f149c679c97bfb45e7124124d29436d8eb8a8b86e48427cb22a44c80` |
| 4 | `def` | [Quot.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quot--dca10c48501a8265e3b94ee7.md) | 48 | `declaration-track:dca10c48501a8265e3b94ee7bb59456760747143bbbd999ca784a1393ba5ffe7` |
| 5 | `lemma` | [Quot.jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quot-jointly-surjective--e4900bb01cc0d8766e2442da.md) | 51 | `result-track:e4900bb01cc0d8766e2442da3e4d1058ad12752ee68e64a83acb06d025a33dd0` |
| 6 | `def` | [Quot.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quot-desc--b82fb1f652da6effd1167a48.md) | 60 | `declaration-track:b82fb1f652da6effd1167a4845bfbd917e8e84d84fdaf428a5dbd18a7eb14cdb` |
| 7 | `lemma` | [Quot.ι_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quot-desc--e57b1bbc12e3d21ffc63e56f.md) | 66 | `result-track:e57b1bbc12e3d21ffc63e56fb211d6abf88ca563015444feccfc8f28cdf4b224` |
| 8 | `lemma` | [Quot.map_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quot-map--a9f9626b9c34a3c8bde7a3a7.md) | 69 | `result-track:a9f9626b9c34a3c8bde7a3a7a81e6931f7ba174e235c08297fdc1ee7f7e56e78` |
| 9 | `def` | [quotToQuotUlift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quottoquotulift--ed5333e2105a92507553f0b1.md) | 75 | `declaration-track:ed5333e2105a92507553f0b17a7d4f11364203ebd9cccd02d161a347e78997d3` |
| 10 | `lemma` | [quotToQuotUlift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quottoquotulift--68db6ef7de5d6d4d440d078f.md) | 85 | `result-track:68db6ef7de5d6d4d440d078f951bfed8e67fb2f78b9fda3311cae6c2e5269c3f` |
| 11 | `def` | [quotUliftToQuot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quotulifttoquot--619c1f6cd8469f32c9c6058a.md) | 92 | `declaration-track:619c1f6cd8469f32c9c6058a5f5446f05761a880bd59bfb062ae5342bfb3f8c7` |
| 12 | `lemma` | [quotUliftToQuot_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quotulifttoquot--a67f5d6242758f50e345075e.md) | 97 | `result-track:a67f5d6242758f50e345075e83e1a8317f0cb976e66b535cea4214b38f752069` |
| 13 | `def` | [quotQuotUliftEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quotquotuliftequiv--3f6ec86d4d086b2b6643dcac.md) | 105 | `declaration-track:3f6ec86d4d086b2b6643dcac334497f7356ea995a5652a0e026dbe04e273ccc4` |
| 14 | `lemma` | [Quot.desc_quotQuotUliftEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quot-desc-quotquotuliftequiv--28100185025b569e30a04784.md) | 116 | `result-track:28100185025b569e30a0478495ddca6bd1e319bffdcf3646af238906e4097dae` |
| 15 | `def` | [toCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/tococone--fd35248bb6013dd21d6b1a7a.md) | 125 | `declaration-track:fd35248bb6013dd21d6b1a7afb70549fe8882942abd6f8ac21e1d05e29a9d401` |
| 16 | `lemma` | [Quot.desc_toCocone_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quot-desc-tococone-desc--e4fdf86920427b95c9bebd2c.md) | 129 | `result-track:e4fdf86920427b95c9bebd2c0ad8e3373ad26b73d3a65243d3c49b99a9bc2dc4` |
| 17 | `theorem` | [isColimit_iff_bijective_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/iscolimit-iff-bijective-desc--3431589feed12700e7e9b9f7.md) | 134 | `result-track:3431589feed12700e7e9b9f7c2d35f9094b96497edb381c131630d0c31babcd4` |
| 18 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimitcocone--3c12b45ef1290a87ebd4a43f.md) | 168 | `declaration-track:3c12b45ef1290a87ebd4a43f01d3ac027ff103141d2f330941f0a490f86a5cca` |
| 19 | `theorem` | [Quot.desc_colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/quot-desc-colimitcocone--5b9530ee21ba5c6935445450.md) | 175 | `result-track:5b9530ee21ba5c693544545003bd80260d647152b94782a00cad9105ec3f0b96` |
| 20 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimitcoconeiscolimit--0cfc85851c9d1b31c99a8a7b.md) | 181 | `declaration-track:0cfc85851c9d1b31c99a8a7b29164a9422e4ba87a5df48c9b94d4310a755e2ee` |
| 21 | `theorem` | [hasColimit_iff_small_quot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/hascolimit-iff-small-quot--11d7573dd7e72d530ecb7ea6.md) | 187 | `result-track:11d7573dd7e72d530ecb7ea6081fb7c359b27f8386d9502bd7d95cc175a340bd` |
| 22 | `theorem` | [small_quot_of_hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/small-quot-of-hascolimit--b7a734b0161c5cfa7c252f5f.md) | 192 | `result-track:b7a734b0161c5cfa7c252f5f01976f83e58265f5358dca9fa1187634414cc5b7` |
| 23 | `instance` | [hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/hascolimit--7ca0af8d0078b83d0c8f1736.md) | 195 | `declaration-track:7ca0af8d0078b83d0c8f173625878d79904f7bb34d0ad8dc1a74483650a99550` |
| 24 | `instance` | [hasColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/hascolimitsofshape--e80265eb6a96f67b271fc374.md) | 198 | `declaration-track:e80265eb6a96f67b271fc3747b37e8fd467ea10db87debea8e8143f09fd59c61` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/instance--6eff21ac19ae41163513a4a0.md) | 202 | `declaration-track:6eff21ac19ae41163513a4a05226afae8c3456733ea18f85faad9eb173cfc5cc` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/example--48b3fd6c4696e9333db0abcd.md) | 207 | `declaration-track:48b3fd6c4696e9333db0abcd2d73a03b876cbb238cd9fced9cb2df06f7d98d96` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/example--f9a60b05d726a04d070d4f60.md) | 208 | `declaration-track:f9a60b05d726a04d070d4f60402a29949d688f96efabb6348b6ee84a08d8040a` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/example--d675d31c9790bb5bb7755f15.md) | 210 | `declaration-track:d675d31c9790bb5bb7755f15c44ecf531c47075e935d1d0ec41e6147c14ff66e` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/example--1e69071669c22c2bcd99e126.md) | 211 | `declaration-track:1e69071669c22c2bcd99e126a72509d5774736516b7b931523d225036df5a379` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/example--2dedaccb9858ceab66bd7459.md) | 213 | `declaration-track:2dedaccb9858ceab66bd74593422716e01f8566059a357dee4cdfb7b95201aff` |
| 31 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimitcocone--4dd5c505733b756f05de7477.md) | 223 | `declaration-track:4dd5c505733b756f05de74772b0fcde6e15fe2fcf43ca39c55722b370cdd9c9b` |
| 32 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimitcoconeiscolimit--f5aec7c269a1b74381ffadc4.md) | 230 | `declaration-track:f5aec7c269a1b74381ffadc42a4ef9ff23064f0a6814daeb222bb40bedc29c3c` |
| 33 | `def` | [colimitEquivQuot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimitequivquot--9441ac8c3e7889ebf74173ea.md) | 250 | `declaration-track:9441ac8c3e7889ebf74173ea316f79379ea24094859e24bf31c5c092a33c9e01` |
| 34 | `theorem` | [colimitEquivQuot_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimitequivquot-symm-apply--422fe33b2a8c262e803f077e.md) | 255 | `result-track:422fe33b2a8c262e803f077e3456ad2a6702cce4daa638115fe6edca163cd068` |
| 35 | `theorem` | [colimitEquivQuot_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimitequivquot-apply--4d988e31edfb54f70653528f.md) | 260 | `result-track:4d988e31edfb54f70653528f18895c1da19c1164befdf48ad071fc89f9112d59` |
| 36 | `theorem` | [Colimit.w_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimit-w-apply--6a505bf18e15b98e15078376.md) | 267 | `result-track:6a505bf18e15b98e150783765b5e4b136c788682a2fddb2c5dcf495419b59b64` |
| 37 | `theorem` | [Colimit.ι_desc_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimit-desc-apply--469a6e6c0ff3d9ec1c28f378.md) | 272 | `result-track:469a6e6c0ff3d9ec1c28f3785037b645ccb1b9274d0d9294ec63973c2c964949` |
| 38 | `theorem` | [Colimit.ι_map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimit-map-apply--a4a95621cf56bf427d2a3887.md) | 277 | `result-track:a4a95621cf56bf427d2a388796e54b885bc548e24eb19f14d4bc55d045e5a567` |
| 39 | `theorem` | [Colimit.w_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimit-w-apply--09be41af7b5253cb9e860679.md) | 282 | `result-track:09be41af7b5253cb9e860679fa92573ea726eb71a5f346f939531e7f2f79de23` |
| 40 | `theorem` | [Colimit.ι_desc_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimit-desc-apply--7fc588f11948722587e7e049.md) | 287 | `result-track:7fc588f11948722587e7e049cdf1c0aab702a90b90b7f3d74ffa4e8cbae7aa54` |
| 41 | `theorem` | [Colimit.ι_map_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimit-map-apply--118ec0df94c4290098dcb050.md) | 292 | `result-track:118ec0df94c4290098dcb050b18d72e6520eeeb5daa08fa6e53be0e0c77650c5` |
| 42 | `theorem` | [colimit_sound](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimit-sound--123f70f5460864580cd8974c.md) | 297 | `result-track:123f70f5460864580cd8974c5ed43197d00a8f59a885b8afc941d57454041af8` |
| 43 | `theorem` | [colimit_sound'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimit-sound--0ea46e21bbc33eb34cc63e0d.md) | 302 | `result-track:0ea46e21bbc33eb34cc63e0dd1d742e431062977eb09dbe23f310b13fc0d486f` |
| 44 | `theorem` | [colimit_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/colimit-eq--62e716d8610f296dce96f8c0.md) | 309 | `result-track:62e716d8610f296dce96f8c0d0ada03e62ef1ee35c25ed9e0b0d5f1d115df1ac` |
| 45 | `theorem` | [jointly_surjective_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/jointly-surjective-of-iscolimit--a931a779fa4bd6e74033ce5f.md) | 315 | `result-track:a931a779fa4bd6e74033ce5f531ca45e8b33c8350c0ed23c0e1557b2347ebca3` |
| 46 | `theorem` | [jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/jointly-surjective--70d3b48cb95babe8afae085a.md) | 325 | `result-track:70d3b48cb95babe8afae085a9d8a24fe701f702110c9bba6450b00a9798ae33a` |
| 47 | `theorem` | [jointly_surjective'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/jointly-surjective--4b904f237486c23593b7cc23.md) | 330 | `result-track:4b904f237486c23593b7cc2384769e05649d71bb5b312a9efc3972bd90f99f3a` |
| 48 | `theorem` | [nonempty_of_nonempty_colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant5a8d59c66acb6b676fadf3fac916ec485f228b54dd107521baebec4749501b6c.lean/declarations/nonempty-of-nonempty-colimit--a3faa798d2321eedb0cb0cb9.md) | 335 | `result-track:a3faa798d2321eedb0cb0cb9e0cf4526570bedf1aa025b38641f1b3c97ac74a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
