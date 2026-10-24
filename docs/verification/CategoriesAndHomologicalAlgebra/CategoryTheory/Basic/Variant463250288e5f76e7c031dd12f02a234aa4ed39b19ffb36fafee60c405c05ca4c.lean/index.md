# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42ac94d4fd7f02303ed24238f416f383abff17a0",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42ac94d4fd7f02303ed24238f416f383abff17a0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/sset--0338a3974d9346414f9e9355.md) | 40 | `declaration-track:0338a3974d9346414f9e93555676888f581fbc35224e922d739e92b5e066a53d` |
| 2 | `instance` | [largeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/largecategory--f497ccb6db6e04c25cceddb2.md) | 45 | `declaration-track:f497ccb6db6e04c25cceddb21eb342bf8355e1af7730a57be9951e797670eb33` |
| 3 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/haslimits--0fb7a7e26a59eb578d8e9de4.md) | 49 | `declaration-track:0fb7a7e26a59eb578d8e9de493295dc8410c8143e693d8ddc1aa0b30bc47386c` |
| 4 | `instance` | [hasColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/hascolimits--a571370bc5e8ffab833f170f.md) | 53 | `declaration-track:a571370bc5e8ffab833f170fa82de1353739cb08736c8c1f0b67e3ea28b3334c` |
| 5 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/hom-ext--0922259a3dfdeec5b4a4f961.md) | 58 | `result-track:0922259a3dfdeec5b4a4f961ba6073ed941e400e970bc8c788e6144949fd530f` |
| 6 | `lemma` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-app--da0f4b57a4e2b6ed5d320736.md) | 62 | `result-track:da0f4b57a4e2b6ed5d320736e1a5df70d139df25ac191f4bbf0870fcc9e71584` |
| 7 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/const--339572df34a752f51814edb1.md) | 67 | `declaration-track:339572df34a752f51814edb1b204c20317d346f5f384c79ed89a7c7e593e5140` |
| 8 | `lemma` | [comp_const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-const--28390fe47287fbf2eb1a2b52.md) | 76 | `result-track:28390fe47287fbf2eb1a2b525d0dbcc99e5aa6bcc549cf526b7b89bc0a639d16` |
| 9 | `lemma` | [const_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/const-comp--447e57c6bbba146adc51a6a9.md) | 80 | `result-track:447e57c6bbba146adc51a6a91c5768417f073b196c88da2c69e753efc0eb3d89` |
| 10 | `def` | [uliftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/uliftfunctor--e8510a3b94990f004b7cbd01.md) | 86 | `declaration-track:e8510a3b94990f004b7cbd017905e653944ba41662c54694ea51fbdae123b97f` |
| 11 | `def` | [Truncated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/truncated--66f51f878529a4a8597a9689.md) | 90 | `declaration-track:66f51f878529a4a8597a96896a863d73f533ed144590384103524ae4b4021258` |
| 12 | `instance` | [largeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/largecategory--3fb1f463a971573b189fe3b6.md) | 95 | `declaration-track:3fb1f463a971573b189fe3b6d4bd14984fa27a04efefec20976ed83d810fa509` |
| 13 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/haslimits--64d78b2a1233ef522dd4c57e.md) | 99 | `declaration-track:64d78b2a1233ef522dd4c57ef71586649acec987e5aa7e7cc77218db7febf788` |
| 14 | `instance` | [hasColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/hascolimits--f3604ef94a59d78d2b046f85.md) | 103 | `declaration-track:f3604ef94a59d78d2b046f85f7a30c702938dd833afeaaaeaa6025dc877d5c2a` |
| 15 | `def` | [uliftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/uliftfunctor--4c652d1cbd5e7a7e4dd8e380.md) | 109 | `declaration-track:4c652d1cbd5e7a7e4dd8e380e6db58e4feeced1500a7062e7492181b185b32fa` |
| 16 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/hom-ext--e9cfb8bd623cbd8bc353830d.md) | 113 | `result-track:e9cfb8bd623cbd8bc353830d92b3a03572b35b8bb964d1992a59da77cd0e4eab` |
| 17 | `abbrev` | [trunc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/trunc--7217134cf46c03a355670f5d.md) | 118 | `declaration-track:7217134cf46c03a355670f5dbc3a8c08dbeed97570b6c0e0eae2a78530ab8cca` |
| 18 | `abbrev` | [truncation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/truncation--aa0917e54b69d2ebe6d210c7.md) | 125 | `declaration-track:aa0917e54b69d2ebe6d210c7d950a087e17c627b714fc9a51013d2fe36d7dbe1` |
| 19 | `def` | [truncationCompTrunc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/truncationcomptrunc--aebd957bf6e1e982755de0ad.md) | 128 | `declaration-track:aebd957bf6e1e982755de0ad9abfddf31fbb29c40a2d8b077772d6188848739f` |
| 20 | `abbrev` | [Truncated.sk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/truncated-sk--4b6bdd02503f32943e40c291.md) | 137 | `declaration-track:4b6bdd02503f32943e40c291f0bdb258f26aad46cc60ac50105ec5d16b292570` |
| 21 | `abbrev` | [Truncated.cosk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/truncated-cosk--206d387bef93fb4694afe2f3.md) | 141 | `declaration-track:206d387bef93fb4694afe2f3d89b80f3bad51a3988694bd870114ced2af0a6c6` |
| 22 | `abbrev` | [sk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/sk--abfa444bee92184105fa32ed.md) | 145 | `declaration-track:abfa444bee92184105fa32edf27d3ad9332535b9541b2ca7a44b0869c98c02d7` |
| 23 | `abbrev` | [cosk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/cosk--df378c2ec3428347cd9f74a5.md) | 148 | `declaration-track:df378c2ec3428347cd9f74a543af6003cb209c93d54d7304fe507afe0c96f976` |
| 24 | `def` | [skAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/skadj--63add486682da934e8a3abdf.md) | 155 | `declaration-track:63add486682da934e8a3abdfac376bd3f0d95faf20e62c16c5ba7ffffec3ba9d` |
| 25 | `def` | [coskAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/coskadj--7d26b3ec2d5ce095c2de3069.md) | 159 | `declaration-track:7d26b3ec2d5ce095c2de30691421b1a600e332e550d1578b480b0aab317667ce` |
| 26 | `instance` | [cosk_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/cosk-reflective--95b84ed2840f81024ad2baf1.md) | 164 | `declaration-track:95b84ed2840f81024ad2baf14d30c31501070f00908cb1365fd6bab705774f16` |
| 27 | `instance` | [sk_coreflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/sk-coreflective--c4ee0b988aa737e590ae521f.md) | 167 | `declaration-track:c4ee0b988aa737e590ae521f7f0fa87ca615ab35e6f5de2ae426bf9e97d78cea` |
| 28 | `def` | [cosk.fullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/cosk-fullyfaithful--be1dc5d7a49c7b9aece181f1.md) | 171 | `declaration-track:be1dc5d7a49c7b9aece181f14849d7ec0daa4822ab24cc12aa20b76992d07b75` |
| 29 | `instance` | [cosk.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/cosk-full--10f0c7fa7988147ece701e30.md) | 175 | `declaration-track:10f0c7fa7988147ece701e30bce1ca2c3a2d872f2c1faf70cc562b5691370ca0` |
| 30 | `instance` | [cosk.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/cosk-faithful--44c007854f2401ed495fed66.md) | 178 | `declaration-track:44c007854f2401ed495fed66e05c213fdc073ae5bebffc4861b6e11b06e26f01` |
| 31 | `instance` | [coskAdj.reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/coskadj-reflective--e6c04b7078eedbb32149fde1.md) | 181 | `declaration-track:e6c04b7078eedbb32149fde182ee70a7c2b01ceb7a7deca9a952ee291551ffd0` |
| 32 | `def` | [sk.fullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/sk-fullyfaithful--1515bf198416845c372bb1e6.md) | 185 | `declaration-track:1515bf198416845c372bb1e6d5167679220ad7c4b254d0cf45768e74043730c6` |
| 33 | `instance` | [sk.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/sk-full--0bd1e65f2f8c8f9514a3a284.md) | 188 | `declaration-track:0bd1e65f2f8c8f9514a3a28447cecabd301b0880e8415971ad1b2d8f8751ba97` |
| 34 | `instance` | [sk.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/sk-faithful--42f0ba7cdd6e0f2f5b21026d.md) | 190 | `declaration-track:42f0ba7cdd6e0f2f5b21026da116ca0a774811895e77d12ed8980abbadcd1709` |
| 35 | `instance` | [skAdj.coreflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/skadj-coreflective--0009549778ab576e6313ee18.md) | 193 | `declaration-track:0009549778ab576e6313ee18c3e3682c26a1ebb2f163b3592a8b13d1f1cbe763` |
| 36 | `abbrev` | [Augmented](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/augmented--272b1422592e88b10764a869.md) | 202 | `declaration-track:272b1422592e88b10764a869933ad43df169e30c33385479c334ea3ad402c604` |
| 37 | `lemma` | [δ_comp_δ_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-apply--78e04e0c9b54095f0c59879c.md) | 208 | `result-track:78e04e0c9b54095f0c59879ca337d0373a8fdd84d72474dbf3c0ee0b9c4a9b84` |
| 38 | `lemma` | [δ_comp_δ'_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-apply--c2f6443d02fcf0bc094e98d4.md) | 211 | `result-track:c2f6443d02fcf0bc094e98d413da8792be0dfd2c956061a523157c5342493813` |
| 39 | `lemma` | [δ_comp_δ''_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-apply--716cbe032aa5550b4911a419.md) | 216 | `result-track:716cbe032aa5550b4911a41921634ca38292c0455fa2a970cff8e01cd1bd53e9` |
| 40 | `lemma` | [δ_comp_δ_self_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-self-apply--665be090c7e3f781f2d0823d.md) | 221 | `result-track:665be090c7e3f781f2d0823d74376e47a3881acec5eae9a3861742bcf1666ec4` |
| 41 | `lemma` | [δ_comp_δ_self'_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-self-apply--42f826074361136d173cb7ce.md) | 224 | `result-track:42f826074361136d173cb7ce62dfaaf73391661be4db264a72611aa808fea124` |
| 42 | `lemma` | [δ_comp_σ_of_le_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-of-le-apply--365ac3480dc8e03ff87c4bbb.md) | 227 | `result-track:365ac3480dc8e03ff87c4bbb5caf05254a493c65de14ac0746e40d43c92e02ce` |
| 43 | `lemma` | [δ_comp_σ_self_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-self-apply--d89f4f66122924c37c0d916e.md) | 232 | `result-track:d89f4f66122924c37c0d916eab99429c61c846e0603be59a5f730fb2068da924` |
| 44 | `lemma` | [δ_comp_σ_self'_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-self-apply--6068d295811fc54cca187ff5.md) | 235 | `result-track:6068d295811fc54cca187ff54d283796e8ccbde5b343a9e1cd10028e570d76f1` |
| 45 | `lemma` | [δ_comp_σ_succ_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-succ-apply--893eece6d472eeb4df673b99.md) | 239 | `result-track:893eece6d472eeb4df673b9909d44cba4bc3aba50c6b16d8bf0ad4afbb74b6de` |
| 46 | `lemma` | [δ_comp_σ_succ'_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-succ-apply--3c517a9d42ed9dff26829dbe.md) | 242 | `result-track:3c517a9d42ed9dff26829dbe037ee134246539d3321411e96b3796af72aa246c` |
| 47 | `lemma` | [δ_comp_σ_of_gt_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-of-gt-apply--33aba0b7e09c7cf70f7b08d7.md) | 245 | `result-track:33aba0b7e09c7cf70f7b08d76130c33b8378693317b1716b1e1f4d5eec035e35` |
| 48 | `lemma` | [δ_comp_σ_of_gt'_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-of-gt-apply--cbb29bedf2ae4696064491fd.md) | 249 | `result-track:cbb29bedf2ae4696064491fd310d86118993111baa23d6a4da8cc5df5716807d` |
| 49 | `lemma` | [σ_comp_σ_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/comp-apply--32be0494e6cf4d465d7cc1ad.md) | 255 | `result-track:32be0494e6cf4d465d7cc1adec74d659f5028c399de774689a630199c02b4b01` |
| 50 | `lemma` | [δ_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/naturality-apply--eafa0ae157b8d54e72026584.md) | 262 | `result-track:eafa0ae157b8d54e7202658447b32aff5a33a865b5d997128dcbd504460b36d1` |
| 51 | `lemma` | [σ_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant463250288e5f76e7c031dd12f02a234aa4ed39b19ffb36fafee60c405c05ca4c.lean/declarations/naturality-apply--0b29d4ea1aa99937c9b94913.md) | 267 | `result-track:0b29d4ea1aa99937c9b94913f3c0a27503646f39c8ed1cb068d14bea0fba9378` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
