# Verification target: GRWTSK.Algebra.LinearAlgebra.Hom.Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ead4dc19bf0ccd24d8dbe1def7cfaac4885bf9c",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ead4dc19bf0ccd24d8dbe1def7cfaac4885bf9c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Coalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coalghom--b1b1b39acad9e1edf4c756b1.md) | 33 | `declaration-track:b1b1b39acad9e1edf4c756b1bd2da5985f129cb618348513520b38709103734f` |
| 2 | `class` | [CoalgHomClass](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coalghomclass--93eb647661c558ab722cfdeb.md) | 47 | `declaration-track:93eb647661c558ab722cfdebd6cf175980a80415c6ef8d1707b7e7e85acb58e7` |
| 3 | `def` | [toCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/tocoalghom--da8239726492b581586fe3ea.md) | 67 | `declaration-track:da8239726492b581586fe3ea806762ed56a753de24c8b914e7d4d90fcd29fa5b` |
| 4 | `instance` | [instCoeToCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/instcoetocoalghom--b19069b22013bb99de68741b.md) | 73 | `declaration-track:b19069b22013bb99de68741be9fc9fe8c1f3dc141a13f13b70e8be8c5f85395d` |
| 5 | `theorem` | [counit_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/counit-comp-apply--b40e55a68cf74388275ca54a.md) | 77 | `result-track:b40e55a68cf74388275ca54a8fa4bb060548cc2f8b861c4adaa4b5beb6146ee5` |
| 6 | `theorem` | [map_comp_comul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/map-comp-comul-apply--7a00d0a0b9d371ded29ca051.md) | 81 | `result-track:7a00d0a0b9d371ded29ca051bc5230f792d3e787e4ce968aa72cc30ed5953ec6` |
| 7 | `instance` | [funLike](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/funlike--87e34673d8dd0839356e34e8.md) | 97 | `declaration-track:87e34673d8dd0839356e34e8e62e18b7161258b41679d9bec3a0c93e04c74e97` |
| 8 | `instance` | [coalgHomClass](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coalghomclass--e4bafaf9218052dfcbe832f9.md) | 104 | `declaration-track:e4bafaf9218052dfcbe832f9ac69cbfd3ce7c69c2b2792395ccb6c0673af09d0` |
| 9 | `def` | [Simps.apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/simps-apply--643994c6b04717b60447a3f1.md) | 111 | `declaration-track:643994c6b04717b60447a3f1b1781ea84376a6d7f0f6482d48dcc89d13fc3e12` |
| 10 | `theorem` | [coe_coe](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coe-coe--951c29bfd21b6f6f33041d68.md) | 119 | `result-track:951c29bfd21b6f6f33041d68ea9d1b881263d2ceae8940fa629e207f8fd34c93` |
| 11 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coe-mk--83668ebceadd9a23eb13bf16.md) | 124 | `result-track:83668ebceadd9a23eb13bf16bd7e8d13ca7432667e33bac88f330e8b5d7bac8f` |
| 12 | `theorem` | [coe_mks](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coe-mks--fe41ad1979d4ed3c480e1c68.md) | 128 | `result-track:fe41ad1979d4ed3c480e1c68cbf71e9a91fe5c4d09f6a870948d7357b720ccde` |
| 13 | `theorem` | [coe_linearMap_mk](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coe-linearmap-mk--f5d97b0bb936a1fa62340bfc.md) | 132 | `result-track:f5d97b0bb936a1fa62340bfc636f35065948aefd44e05133801d796195f9c1be` |
| 14 | `theorem` | [toLinearMap_eq_coe](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/tolinearmap-eq-coe--bb9d7bd9a4f470dd2eb566f4.md) | 136 | `result-track:bb9d7bd9a4f470dd2eb566f4855636635b28bdb28a8b52d1dbf942bf95693282` |
| 15 | `theorem` | [coe_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coe-tolinearmap--71399b33e21efa7fe7b8b904.md) | 140 | `result-track:71399b33e21efa7fe7b8b90440272e3984dab3ff9c24a5ca2353a7b4d52e8bdd` |
| 16 | `theorem` | [coe_toAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coe-toaddmonoidhom--be29f91557a02d7522378a5e.md) | 144 | `result-track:be29f91557a02d7522378a5ea370cb6e23dd8ccd10ac6ca222ceb10ec8e3d259` |
| 17 | `theorem` | [coe_fn_injective](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coe-fn-injective--c75c6279a1317852602cfc6a.md) | 147 | `result-track:c75c6279a1317852602cfc6acc8dd0c5f7a3a85909ed20f8e980f8edc88e700d` |
| 18 | `theorem` | [coe_fn_inj](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coe-fn-inj--febc370076532904c83ac13a.md) | 150 | `result-track:febc370076532904c83ac13a684cbfa00f34adb727f860afe084f34911231c12` |
| 19 | `theorem` | [coe_linearMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coe-linearmap-injective--fc1851bd81296cdc48094d30.md) | 153 | `result-track:fc1851bd81296cdc48094d30993dfb42220b4c6e9ab2eed28d05e553a6ac6c8f` |
| 20 | `theorem` | [coe_addMonoidHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coe-addmonoidhom-injective--56c6147a670874b82c3cda10.md) | 157 | `result-track:56c6147a670874b82c3cda10c76f8531b7df141213f8ea0f80bcf21e8cdfe431` |
| 21 | `theorem` | [congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/congr-fun--acf77816b5a8b6c27ac19c8b.md) | 160 | `result-track:acf77816b5a8b6c27ac19c8bbe4892367fc4e86ab1b5c5b2f82ccfba4fb1bb7e` |
| 22 | `theorem` | [congr_arg](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/congr-arg--4036e0953afd7ec6b80d7337.md) | 163 | `result-track:4036e0953afd7ec6b80d7337ec6acd17b1019a23fec1f2619eea7ba4a505a675` |
| 23 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/ext--a8425bc0f19c2ae3a0fbd6ac.md) | 167 | `result-track:a8425bc0f19c2ae3a0fbd6ace6a8c36a92acfa4b4ad1c95d480ca89d68de6d77` |
| 24 | `theorem` | [ext_of_ring](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/ext-of-ring--628db34e2c6ae06c4179bb40.md) | 171 | `result-track:628db34e2c6ae06c4179bb4084bcf3cdbdf868660c3db69a5bacba5544c6958e` |
| 25 | `theorem` | [mk_coe](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/mk-coe--5b784dcad47dc137eda0de66.md) | 175 | `result-track:5b784dcad47dc137eda0de66427f5bb3ae0c7df76514ccded73b0e467e72d6f3` |
| 26 | `def` | [copy](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/copy--68c99dca93c879bd235aba5e.md) | 180 | `declaration-track:68c99dca93c879bd235aba5ed093ac7f1ec0ac5d99b0d92b43dcebd76a12a87d` |
| 27 | `theorem` | [coe_copy](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coe-copy--0aebfda8a2a53ad013dc8062.md) | 187 | `result-track:0aebfda8a2a53ad013dc806283db803831ff016b77b40f3b90781ad7cb37e845` |
| 28 | `theorem` | [copy_eq](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/copy-eq--331037b8bbf886e8e9bb4b35.md) | 190 | `result-track:331037b8bbf886e8e9bb4b35502deda83240037dda8ef1350b47cf78b7ad6934` |
| 29 | `def` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/id--bdf0ace66a756158bcb4b52a.md) | 196 | `declaration-track:bdf0ace66a756158bcb4b52ad1a331e1cc54a0c35e3d0e01de13e306cf931920` |
| 30 | `theorem` | [coe_id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coe-id--65021fe3bcaa172e4da3f697.md) | 204 | `result-track:65021fe3bcaa172e4da3f6970fb839cc0fccc5b2ea747031468e537243cb4e9e` |
| 31 | `theorem` | [id_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/id-tolinearmap--c5938b46ce7112352495f4de.md) | 208 | `result-track:c5938b46ce7112352495f4de9c1e04d9f3279bacd407802085ca0734b7d72bb2` |
| 32 | `def` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/comp--971622dbf464a1d329ce375b.md) | 211 | `declaration-track:971622dbf464a1d329ce375bba33820befde442f8de756928eec9c87a2674e1a` |
| 33 | `theorem` | [coe_comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/coe-comp--05d8f8bbaa24f70988d9f6be.md) | 217 | `result-track:05d8f8bbaa24f70988d9f6bee556a2b572ba83f69d1f6622b5aa0aed668c7ad8` |
| 34 | `theorem` | [comp_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/comp-tolinearmap--393cd04d8dfe87d94d6114a5.md) | 220 | `result-track:393cd04d8dfe87d94d6114a51876e399b32c4c82e60960d7470af0748988a73b` |
| 35 | `theorem` | [comp_id](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/comp-id--ca1bc4e3721f97869fe59d83.md) | 226 | `result-track:ca1bc4e3721f97869fe59d83739c14c3af565bc24be0670a91065de3d21f2ac1` |
| 36 | `theorem` | [id_comp](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/id-comp--43b96d67e46a39c7d956a668.md) | 230 | `result-track:43b96d67e46a39c7d956a6689731fa817c4340e9533af68f55fd7f52c4d61b2e` |
| 37 | `theorem` | [comp_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/comp-assoc--48727670a231b751b8e853bb.md) | 233 | `result-track:48727670a231b751b8e853bb1b5f7872ac43b8043033d6a06d9ecd960202df7d` |
| 38 | `theorem` | [map_smul_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/map-smul-of-tower--a4454593d7188fce44db7500.md) | 237 | `result-track:a4454593d7188fce44db7500a1efcc39487a376d9ec04d47f8656b1febda27ac` |
| 39 | `instance` | [End](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/end--09835a9e77938b3c75248e7f.md) | 242 | `declaration-track:09835a9e77938b3c75248e7fe458c060236886d1abd5b51ae36611db10a3e36d` |
| 40 | `theorem` | [one_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/one-apply--46d996aeebc58b070cb237aa.md) | 250 | `result-track:46d996aeebc58b070cb237aadd835ddf2183fc6c9cf4d75e494179b30d28e280` |
| 41 | `theorem` | [mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/mul-apply--ae15286acde7113168070a39.md) | 254 | `result-track:ae15286acde7113168070a394877718ebd482a477416134c4989a7d3d439f607` |
| 42 | `def` | [counitCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/counitcoalghom--e23ca8acf9f80ccddde885c6.md) | 269 | `declaration-track:e23ca8acf9f80ccddde885c62ce76278bfbc20928b68bee5e299075d135ebcdd` |
| 43 | `theorem` | [counitCoalgHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/counitcoalghom-apply--1e8c35dd60514f50b1d4dbcc.md) | 278 | `result-track:1e8c35dd60514f50b1d4dbccc5d83e5376a2dbcd12298dcaace4582218153b62` |
| 44 | `theorem` | [counitCoalgHom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/counitcoalghom-tolinearmap--a54371b24c73e49bcca7d752.md) | 282 | `result-track:a54371b24c73e49bcca7d75250dd086ef9d0c3fa6608a30c131c3628c6572c28` |
| 45 | `instance` | [subsingleton_to_ring](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/subsingleton-to-ring--0cd0bed93f2fc21a04a19d26.md) | 287 | `declaration-track:0cd0bed93f2fc21a04a19d26b192a465d53bfa14724a1a8afa31a054031a0737` |
| 46 | `theorem` | [ext_to_ring](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/ext-to-ring--b9d441851fe90f6a4b0e4430.md) | 295 | `result-track:b9d441851fe90f6a4b0e443038a26b572594810c44c5466c6916c7c7a040e147` |
| 47 | `def` | [Repr.induced](../../../../../mathematics/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/declarations/repr-induced--0e0e08ece678e5e3bd240e89.md) | 302 | `declaration-track:0e0e08ece678e5e3bd240e891365801e47b2b8a585534f5234903f8bd598cac4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
