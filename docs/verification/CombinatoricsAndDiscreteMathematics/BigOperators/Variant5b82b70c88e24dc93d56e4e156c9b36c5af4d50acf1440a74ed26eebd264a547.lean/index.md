# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "850207372860e745fbd2056a9f8ea88166819dc5",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `850207372860e745fbd2056a9f8ea88166819dc5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Ext` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/evaladdmonoidhom--804b8427d0cfabbb9def59c3.md) | 52 | `declaration-track:804b8427d0cfabbb9def59c3b077fda51d73ad9b9f74e728f0c642671f2b7650` |
| 2 | `theorem` | [coe_finset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/coe-finset-sum--9c718913f22a31c5693c1005.md) | 56 | `result-track:9c718913f22a31c5693c10050021e6ba4358e5db2bc013ce8e1008b67951423a` |
| 3 | `theorem` | [finset_sum_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/finset-sum-apply--510bff17b24bf9d2cdb098ad.md) | 61 | `result-track:510bff17b24bf9d2cdb098ad88fc1c5ad722034b53c889a244f64aa3bac885e9` |
| 4 | `def` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod--23ec096e13ea691b9abe17ff.md) | 73 | `declaration-track:23ec096e13ea691b9abe17ffb48dca5915ec2af2fdcf5de43f54a1b887115eae` |
| 5 | `theorem` | [_root_.map_dfinsuppProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/root-map-dfinsuppprod--1fd1950f59c52a63615a72d3.md) | 78 | `result-track:1fd1950f59c52a63615a72d348d64882a1d879231523b782a27b2fdc3cde875d` |
| 6 | `theorem` | [prod_mapRange_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-maprange-index--6c8ac7b70b248f5a27162ede.md) | 85 | `result-track:6c8ac7b70b248f5a27162ede89b0b09729d03e78b141c0219e6a2bf71edba32f` |
| 7 | `theorem` | [prod_zero_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-zero-index--ae47b91c174988047776da61.md) | 102 | `result-track:ae47b91c174988047776da61bb168bcce65c11694116f17a98e3e9694823db06` |
| 8 | `theorem` | [prod_single_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-single-index--f32ee48dc0e013a0dcc12fe6.md) | 107 | `result-track:f32ee48dc0e013a0dcc12fe6d91ab2bca09c8cd6880c68570e921b35aa598c34` |
| 9 | `theorem` | [prod_neg_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-neg-index--f93ba598ea36d2df0a20fb5d.md) | 116 | `result-track:f93ba598ea36d2df0a20fb5d78c8cb5f1ce4bda6912f97eff796c5a5970c314c` |
| 10 | `theorem` | [prod_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-comm--cb16fb8c5cf3e72858fb5f88.md) | 122 | `result-track:cb16fb8c5cf3e72858fb5f88095d01a52e4fa781affe9b3d736316c00f57d887` |
| 11 | `theorem` | [sum_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/sum-apply--d73ecef0af4aba2a4fd46314.md) | 131 | `result-track:d73ecef0af4aba2a4fd463142d8f8bfd5fb2aed503dd15d2a5d1421c088af5ec` |
| 12 | `theorem` | [support_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/support-sum--ca865e4311f2e16737fcc9a9.md) | 137 | `result-track:ca865e4311f2e16737fcc9a9fee0d8989e475c0dae56b437395c9d023db5e5eb` |
| 13 | `theorem` | [prod_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-one--b09353f6fd6729da828edac0.md) | 150 | `result-track:b09353f6fd6729da828edac0111e902fdfbbf9a65c8d59a9082b8fdb70803fb5` |
| 14 | `theorem` | [prod_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-mul--b527a5c6fb7ad8608e3d2c07.md) | 155 | `result-track:b527a5c6fb7ad8608e3d2c07acc38c9d47123f35ad37038a15c08d6d0117b429` |
| 15 | `theorem` | [prod_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-inv--07be2ba3c53e2c70c6b4065d.md) | 161 | `result-track:07be2ba3c53e2c70c6b4065dff54b6bc7daf27974988bffa5e269aea1a4e0be6` |
| 16 | `theorem` | [prod_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-eq-one--cab43e4ee43a8becac030bf3.md) | 167 | `result-track:cab43e4ee43a8becac030bf3aaf8e1ed156ae321066caee33448acbaef9030a1` |
| 17 | `theorem` | [smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/smul-sum--517f05c5caded5afad84e94b.md) | 171 | `result-track:517f05c5caded5afad84e94b168ef842fb6cb7059015a15d7bd59c1d30b5d0ac` |
| 18 | `theorem` | [prod_add_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-add-index--ead1dacb06b219d0b0f66f94.md) | 177 | `result-track:ead1dacb06b219d0b0f66f94b43aa9d147caaad14b37574c8b83062e57ddc465` |
| 19 | `theorem` | [prod_eq_prod_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-eq-prod-fintype--0a31d4ce6d80365a866d863f.md) | 195 | `result-track:0a31d4ce6d80365a866d863f99cd6be40a874c1a36da3d7895c32c450f053877` |
| 20 | `lemma` | [prod_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-eq-zero-iff--69d1d63edc06f47a07ef41f3.md) | 209 | `result-track:69d1d63edc06f47a07ef41f331a9de3b5caee2e98c6e804a99296d34628df9b6` |
| 21 | `lemma` | [prod_ne_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-ne-zero-iff--70a1ee64229041aaeafcf64e.md) | 210 | `result-track:70a1ee64229041aaeafcf64e21e3a4db529ff4f79eca127087ebd0c6e634d5c8` |
| 22 | `def` | [sumAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/sumaddhom--5a44d90e15d7db125d25da92.md) | 218 | `declaration-track:5a44d90e15d7db125d25da924481656d4dfe04ca90a65f3f982d4837ef94390e` |
| 23 | `theorem` | [sumAddHom_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/sumaddhom-single--65f927bb2c7e82cd5d002811.md) | 264 | `result-track:65f927bb2c7e82cd5d002811c961146287dce5d1bb56186f6a8d748634b20731` |
| 24 | `theorem` | [sumAddHom_comp_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/sumaddhom-comp-single--3a270a3666883ba8a1185d55.md) | 270 | `result-track:3a270a3666883ba8a1185d5596faa04806337fe7f68c217134eadcc710c45d25` |
| 25 | `theorem` | [sumAddHom_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/sumaddhom-apply--137555a126fbcdb1aeddd4b6.md) | 275 | `result-track:137555a126fbcdb1aeddd4b66a273be83139db650a2e39f12c9126880354fdf3` |
| 26 | `theorem` | [sumAddHom_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/sumaddhom-comm--c1042cba83385a94a7347b76.md) | 286 | `result-track:c1042cba83385a94a7347b768cb8a872ed338777b2628c7de84beefe31f7b93c` |
| 27 | `def` | [liftAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/liftaddhom--aa232a21d77528e0910292aa.md) | 298 | `declaration-track:aa232a21d77528e0910292aadac401c54d7e80ac6a7208fee0e8aec2844ccdf7` |
| 28 | `theorem` | [liftAddHom_singleAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/liftaddhom-singleaddhom--b8eedfd1ab4c635b647cc4b6.md) | 307 | `result-track:b8eedfd1ab4c635b647cc4b6516c9dacbba78475bff53a79f8246115c3da1f9d` |
| 29 | `theorem` | [liftAddHom_apply_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/liftaddhom-apply-single--08f3c251e64f1c20419a2a53.md) | 312 | `result-track:08f3c251e64f1c20419a2a53f736ebd75ce70daf4c2fbb86ebbacb3e4e85b338` |
| 30 | `theorem` | [liftAddHom_comp_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/liftaddhom-comp-single--7e83f3f600493d7a150b5ab7.md) | 316 | `result-track:7e83f3f600493d7a150b5ab742a47f1172f187144cce5e9ed9b6627f193eada2` |
| 31 | `theorem` | [comp_liftAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/comp-liftaddhom--b392afe8253daa08329e6810.md) | 320 | `result-track:b392afe8253daa08329e6810a08896466c2d327c817806fb37982549d70bf9fc` |
| 32 | `theorem` | [sumAddHom_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/sumaddhom-zero--5237d71872bbf98ce6257951.md) | 328 | `result-track:5237d71872bbf98ce62579516cc516341479712f31e6340a6175b8056e40845c` |
| 33 | `theorem` | [sumAddHom_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/sumaddhom-add--e0f5235ddd8372dff27807bb.md) | 333 | `result-track:e0f5235ddd8372dff27807bb6b2eb865565c53619f9ff08ae7c364f1410560b9` |
| 34 | `theorem` | [sumAddHom_singleAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/sumaddhom-singleaddhom--150688db77863b28f8948aec.md) | 338 | `result-track:150688db77863b28f8948aec1aba1e21854dd5f72645ab181427a391c2b4b883` |
| 35 | `theorem` | [comp_sumAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/comp-sumaddhom--c78c1ea2f9ab5fcef5cac427.md) | 342 | `result-track:c78c1ea2f9ab5fcef5cac4275f9cfa8c00430559b3dab67e947a51ec7e013af3` |
| 36 | `theorem` | [sum_sub_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/sum-sub-index--213727c2f31cb17a33c258af.md) | 346 | `result-track:213727c2f31cb17a33c258afab48668de9c1fb1caa17ed2f2bb0e6e19e5b2c7e` |
| 37 | `theorem` | [prod_finset_sum_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-finset-sum-index--763ffebc1ad9eca087809ea2.md) | 354 | `result-track:763ffebc1ad9eca087809ea2862ae0833b7ccb074e3e7ebdf29fd8632113bfb4` |
| 38 | `theorem` | [prod_sum_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-sum-index--13d4613a244f23cb5b4f4114.md) | 364 | `result-track:13d4613a244f23cb5b4f4114878d7cff837284e0c0f6591b6f1787379fa0216b` |
| 39 | `theorem` | [sum_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/sum-single--28366c57c176e695213504e0.md) | 373 | `result-track:28366c57c176e695213504e0accc09af45748787fdde80387d208f477076ca81` |
| 40 | `theorem` | [prod_subtypeDomain_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/prod-subtypedomain-index--60f7443fcc376a0aaf3bad37.md) | 380 | `result-track:60f7443fcc376a0aaf3bad376b4a3fa75e3f3a924ed409899c0afa97aa5cc838` |
| 41 | `theorem` | [subtypeDomain_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/subtypedomain-sum--72f0e53d3adb43e0d87ac1e1.md) | 385 | `result-track:72f0e53d3adb43e0d87ac1e1ffd26f33be7f20657b48f27527330021bf8eb7c6` |
| 42 | `theorem` | [subtypeDomain_finsupp_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/subtypedomain-finsupp-sum--71da34e48af1134aacc2e6ee.md) | 390 | `result-track:71da34e48af1134aacc2e6ee84d7a3747c3e1875e185d1cf2e1daa05646d4a97` |
| 43 | `theorem` | [coe_dfinsuppProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/coe-dfinsuppprod--4ee00f0c05a2b1f13c67e330.md) | 423 | `result-track:4ee00f0c05a2b1f13c67e330ce4af35273112d05c32fb272aa7a3de06af7a854` |
| 44 | `theorem` | [dfinsuppProd_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/dfinsuppprod-apply--12a08f2068b8d6d9b582a666.md) | 433 | `result-track:12a08f2068b8d6d9b582a666a38deaac97bce81170a222a8d21f3adc0d3dbdfd` |
| 45 | `theorem` | [map_dfinsuppSumAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/map-dfinsuppsumaddhom--de90664a6a46a805f543d1b7.md) | 454 | `result-track:de90664a6a46a805f543d1b73e636af9044968ca2aeed760d125d3169a6c740f` |
| 46 | `theorem` | [dfinsuppSumAddHom_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/dfinsuppsumaddhom-apply--3ff27bf4c099218e1e838089.md) | 461 | `result-track:3ff27bf4c099218e1e838089fb9d61cc4e8b89e830702942b9beb886240ef1d3` |
| 47 | `theorem` | [coe_dfinsuppSumAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/coe-dfinsuppsumaddhom--1bd37d8ee971c946d8490ad5.md) | 469 | `result-track:1bd37d8ee971c946d8490ad5422b1ad14c8512c1d43e3c740e20eab9d6883bc8` |
| 48 | `theorem` | [map_dfinsuppSumAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/map-dfinsuppsumaddhom--9cb84654359ce54398a1c583.md) | 484 | `result-track:9cb84654359ce54398a1c583dd6574b4494c1d94d23d69c76c3fd736cdea6276` |
| 49 | `theorem` | [map_dfinsuppSumAddHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5b82b70c88e24dc93d56e4e156c9b36c5af4d50acf1440a74ed26eebd264a547.lean/declarations/map-dfinsuppsumaddhom--02ce8ea35d17ffc4bf5e7860.md) | 500 | `result-track:02ce8ea35d17ffc4bf5e7860751137c2b71a643f3cdf94840ab72f9a208aa91d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
