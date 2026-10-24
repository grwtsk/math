# Verification target: GRWTSK.Algebra.LinearAlgebra.Functoriality.Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28f2f2968b87cce2349af273c5647bfcf53dc312",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28f2f2968b87cce2349af273c5647bfcf53dc312`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduceModIdealAux](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/reducemodidealaux--a60b25a3c00472f34ddd7072.md) | 46 | `declaration-track:a60b25a3c00472f34ddd7072d8f54377d01476adfc725faa6ea36f33a5c45361` |
| 2 | `theorem` | [reduceModIdealAux_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/reducemodidealaux-apply--da22fb62deb8e653b5be533f.md) | 55 | `result-track:da22fb62deb8e653b5be533f584a1b4e6481472249683f4b13724ee65b0d3f09` |
| 3 | `def` | [reduceModIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/reducemodideal--1ead5c7b897ae1a13047c15a.md) | 61 | `declaration-track:1ead5c7b897ae1a13047c15a200d3267289eb833e4f5130efea7986bd93b71f0` |
| 4 | `theorem` | [reduceModIdeal_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/reducemodideal-apply--b68adacbbc0fea70a39ecabb.md) | 73 | `result-track:b68adacbbc0fea70a39ecabbd05cf418339c1e2ae8f3f20e6c260993294a2c27` |
| 5 | `theorem` | [transitionMap_comp_reduceModIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/transitionmap-comp-reducemodideal--788cf3883b529fab05e47d32.md) | 84 | `result-track:788cf3883b529fab05e47d32b4a31a35260e9830d913200743105ef467633891` |
| 6 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map--34cee97c86fb265fdf2b9e0c.md) | 94 | `declaration-track:34cee97c86fb265fdf2b9e0c83c67788f0d818b9421f576fc8d97606387313e9` |
| 7 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map-id--15d03582ce244b41a3aad500.md) | 106 | `result-track:15d03582ce244b41a3aad5001369c9303567b352739d287e9e126ebeb3890275` |
| 8 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map-comp--fed16c8fbe2926e20a0e083f.md) | 109 | `result-track:fed16c8fbe2926e20a0e083f74e4a0b4936943b7ba621511ede15ebcd696d25f` |
| 9 | `theorem` | [map_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map-comp-apply--859e7c6cec3d369a9c1aa126.md) | 113 | `result-track:859e7c6cec3d369a9c1aa1260d7d5b48621a0bb000a73b86787fbeeb079203ab` |
| 10 | `theorem` | [map_zero](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map-zero--21f74e7b18250cab1bc42bbe.md) | 118 | `result-track:21f74e7b18250cab1bc42bbeec86963c58615509a124fe24935c19fa146768c7` |
| 11 | `def` | [adicCompletionAux](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/adiccompletionaux--9ab05cde0036a2851d73265f.md) | 124 | `declaration-track:9ab05cde0036a2851d73265f0f2e53e4844fa4289536fb387bf8c4f5dde24688` |
| 12 | `theorem` | [adicCompletionAux_val_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/adiccompletionaux-val-apply--c5bd0b50fb4512e5897076bd.md) | 131 | `result-track:c5bd0b50fb4512e5897076bdda93ce6201ac0f10bb73ad1f664627a86c5bc30f` |
| 13 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map--f195eb09ad25a187522be55a.md) | 136 | `declaration-track:f195eb09ad25a187522be55ac418ac144ecc1eb1a57b075f1966f4d3376d4886` |
| 14 | `theorem` | [map_val_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map-val-apply--1dcedd5596b32e4b11161220.md) | 146 | `result-track:1dcedd5596b32e4b111612205df0fc2da495cfdc8151b0bcd789b574088e1616` |
| 15 | `theorem` | [map_ext](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map-ext--20d9d906c9573f8d79fb4072.md) | 151 | `result-track:20d9d906c9573f8d79fb4072779dcc460e160586fd86c62b28a336fff1a9be9b` |
| 16 | `theorem` | [map_ext'](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map-ext--05876ddc426ce40726ae0e51.md) | 160 | `result-track:05876ddc426ce40726ae0e512e5f55552b2386318041d68df526c81dc62c247c` |
| 17 | `theorem` | [map_ext''](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map-ext--2cdfc4fd828949e3f96ff31e.md) | 169 | `result-track:2cdfc4fd828949e3f96ff31e1aaa19967c36e03110e3c8cd2ab2cb01b62c418f` |
| 18 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map-id--f4472ea8f36cfe6a8cbe5446.md) | 177 | `result-track:f4472ea8f36cfe6a8cbe5446e399780834f51310f84a44b7595c03f69bf277ec` |
| 19 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map-comp--d46fd0cfdc98641e2423a0a0.md) | 183 | `result-track:d46fd0cfdc98641e2423a0a0256306b950ccaa304462fb62ead3f7729b933260` |
| 20 | `theorem` | [map_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map-comp-apply--e81a4642c526db312d7e989e.md) | 188 | `result-track:e81a4642c526db312d7e989ec52422e743cba900276cd1ea6eca9c8210499c6f` |
| 21 | `theorem` | [map_mk](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map-mk--168819d63e618d40be727c86.md) | 194 | `result-track:168819d63e618d40be727c86fe9f9a4bf0980b29c86f21783121a79d279445ca` |
| 22 | `theorem` | [map_zero](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/map-zero--d693c1a23a196d3c61aa4bb3.md) | 200 | `result-track:d693c1a23a196d3c61aa4bb348082691778f7959e96a0da0f2ce128fcf559553` |
| 23 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/congr--6c4c81efd5b94f79c220a691.md) | 205 | `declaration-track:6c4c81efd5b94f79c220a691149b1aa20d5d29f059cf0d345135534661fd0722` |
| 24 | `theorem` | [congr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/congr-apply--f78cf97537671f7786aefe4b.md) | 211 | `result-track:f78cf97537671f7786aefe4b795a84ad87e178493806408c87b846cc1ca8bbd7` |
| 25 | `theorem` | [congr_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/congr-symm-apply--243f451b22491740f2d65d54.md) | 216 | `result-track:243f451b22491740f2d65d549a794b6c4f92a57673411dae671d51655971c625` |
| 26 | `def` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/pi--b2b05cf42b593fc2cd7042b2.md) | 244 | `declaration-track:b2b05cf42b593fc2cd7042b2cc9aa06a11d705c297bd7fd29ce34df276fba48b` |
| 27 | `def` | [sum](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/sum--284141d1e2761b1e1904c113.md) | 255 | `declaration-track:284141d1e2761b1e1904c113ab29966d474f529ace4fc9a0a5f3ae9e93f5a574` |
| 28 | `theorem` | [sum_lof](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/sum-lof--e03302f40a2489489ab9b18c.md) | 261 | `result-track:e03302f40a2489489ab9b18cf2fc0658674127d4a31e19012dad8ea318632721` |
| 29 | `theorem` | [sum_of](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/sum-of--f1e4375e23f1b5c46849348f.md) | 267 | `result-track:f1e4375e23f1b5c46849348f9792ce1856c8008ea13df144704c817e46cf69fe` |
| 30 | `def` | [sumInv](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/suminv--c1c2dc4470c0627c6fc92d51.md) | 277 | `declaration-track:c1c2dc4470c0627c6fc92d519f9d834ab3db67a61564a392e61bc5414f6d6435` |
| 31 | `theorem` | [component_sumInv](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/component-suminv--a3082c65e99aa944e74c3111.md) | 283 | `result-track:a3082c65e99aa944e74c31117fd010d0d1fc2e2aa098bf748203018d6c31f6a0` |
| 32 | `theorem` | [sumInv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/suminv-apply--7d5c6f6ab8ae3219ac6b5e6f.md) | 290 | `result-track:7d5c6f6ab8ae3219ac6b5e6fa37f3191068d6941e6750c0f96556b574817ce22` |
| 33 | `theorem` | [sumInv_comp_sum](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/suminv-comp-sum--a11bcb517a96905b1516a9cf.md) | 297 | `result-track:a11bcb517a96905b1516a9cf44c81cfee5d64f09db0afb72629a37a21e3c2cb4` |
| 34 | `theorem` | [sum_comp_sumInv](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/sum-comp-suminv--7dc1576f1f967da967a476b6.md) | 308 | `result-track:7dc1576f1f967da967a476b6bd4bed241ae07667ee10e0c57a7632f33d0a132f` |
| 35 | `def` | [sumEquivOfFintype](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/sumequivoffintype--b530333365b60c34aa5efd48.md) | 319 | `declaration-track:b530333365b60c34aa5efd48c2ef8aa66f928932542e5ac07cd178f466c72821` |
| 36 | `theorem` | [sumEquivOfFintype_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/sumequivoffintype-apply--a895921fd21362a62f5209e9.md) | 324 | `result-track:a895921fd21362a62f5209e969eb4dc92c98a37e7b890231ea4aa3027f5e8a59` |
| 37 | `theorem` | [sumEquivOfFintype_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/sumequivoffintype-symm-apply--ddb8c0485dbb34355ff40e6f.md) | 329 | `result-track:ddb8c0485dbb34355ff40e6f586f4847b8ed50cc2a6a556bd80f45d7f4e2ebb5` |
| 38 | `def` | [piEquivOfFintype](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/piequivoffintype--7fb1d910f9415937f4873e45.md) | 342 | `declaration-track:7fb1d910f9415937f4873e45cec94ddc5a0a25a07c097d16642c1650b15f7b83` |
| 39 | `theorem` | [piEquivOfFintype_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/piequivoffintype-apply--99933182c41cf64aeeea56f9.md) | 349 | `result-track:99933182c41cf64aeeea56f990d4787bc2be7e56d5cb7e5661541b963500cb8e` |
| 40 | `def` | [piEquivFin](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/piequivfin--f440d89509fee05088d40ece.md) | 354 | `declaration-track:f440d89509fee05088d40ece1397559c91bea6972f667ad917f189f075e09a65` |
| 41 | `theorem` | [piEquivFin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Functoriality/Variantfda6c76d255f4472e581f81eec021f0dd6a62e6d48dfd7dac01f93d7793df0ef.lean/declarations/piequivfin-apply--b6e7a2f52a9e4904c2699c05.md) | 359 | `result-track:b6e7a2f52a9e4904c2699c055fd4cc9fdfa88e9593f98d80a7636f553e92fc04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
