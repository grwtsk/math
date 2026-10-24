# Verification target: GRWTSK.Analysis.MeasureTheory.Cylinders.Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2261215ff3185093223f568f51086decdc99edc",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2261215ff3185093223f568f51086decdc99edc`.

Source path: `GRWTSK/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.PiSystem` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/squarecylinders--5f60342392b37e92be523c9a.md) | 55 | `declaration-track:5f60342392b37e92be523c9aadcef5f6a2d89c9f2595fbd40fface21fba60e82` |
| 2 | `theorem` | [squareCylinders_eq_iUnion_image](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/squarecylinders-eq-iunion-image--f26ef2e50574b2643a976b73.md) | 58 | `result-track:f26ef2e50574b2643a976b73bb8cfa16e5774545f11f0be310500ab2d66b73fe` |
| 3 | `theorem` | [isPiSystem_squareCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/ispisystem-squarecylinders--6fb70baae525864cd5aa4b85.md) | 64 | `result-track:6fb70baae525864cd5aa4b8545277b2c35160bc0f691ac042bfacce17aa971d7` |
| 4 | `theorem` | [comap_eval_le_generateFrom_squareCylinders_singleton](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/comap-eval-le-generatefrom-squarecylinders-singleton--d5d9fad2d29bedfd3993c16b.md) | 108 | `result-track:d5d9fad2d29bedfd3993c16bc901287502078ebfdd70c972e1967e6e26caf7f7` |
| 5 | `theorem` | [generateFrom_squareCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/generatefrom-squarecylinders--ab38cc1782211cb7f20f63a0.md) | 130 | `result-track:ab38cc1782211cb7f20f63a04f11d990f83b01ce8728a31a8fcd09a0a79b151d` |
| 6 | `def` | [cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/cylinder--a84937548f019222d59897da.md) | 153 | `declaration-track:a84937548f019222d59897da3f4f924f9a3822b774ded106b9e5f1411689bd57` |
| 7 | `theorem` | [mem_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/mem-cylinder--e75b968bb609b4b48e877dfb.md) | 157 | `result-track:e75b968bb609b4b48e877dfbdb839a5fe309b401ae602e3168130ddb7de1772d` |
| 8 | `theorem` | [cylinder_empty](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/cylinder-empty--e63efb1c9051b426751f7d21.md) | 162 | `result-track:e63efb1c9051b426751f7d21cea0bbba9e3404a612525bbea0f1db5995f0d32f` |
| 9 | `theorem` | [cylinder_univ](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/cylinder-univ--f2d59a64941e01a623c46578.md) | 166 | `result-track:f2d59a64941e01a623c46578b7e4b81c9e3aa225c311f8d199226c379732e263` |
| 10 | `theorem` | [cylinder_eq_empty_iff](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/cylinder-eq-empty-iff--1f0b6d9dd39b10c7ef76da55.md) | 170 | `result-track:1f0b6d9dd39b10c7ef76da557efae47d773655a211bf20e4f8a2c61adb25c289` |
| 11 | `theorem` | [inter_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/inter-cylinder--783cffede11d2b18a41b8718.md) | 186 | `result-track:783cffede11d2b18a41b8718d2ab8147fe0d2cc653107a445292a50aa46c8b7c` |
| 12 | `theorem` | [inter_cylinder_same](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/inter-cylinder-same--7f9123ee0ecfac7ef253e6de.md) | 194 | `result-track:7f9123ee0ecfac7ef253e6de57596efba309a542a04fb7e7de41bd63ab86e99c` |
| 13 | `theorem` | [union_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/union-cylinder--53a4d4fecf4c6110715f7373.md) | 198 | `result-track:53a4d4fecf4c6110715f7373d7caf812a03484d2934d27acae62afbae4fd8e10` |
| 14 | `theorem` | [union_cylinder_same](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/union-cylinder-same--cf4c4d596f0cd75979566c01.md) | 206 | `result-track:cf4c4d596f0cd75979566c011ba66e1a310926bc9a4a85a040a324d6a1178f2d` |
| 15 | `theorem` | [compl_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/compl-cylinder--f81c129310a44d6f86bfa5f8.md) | 210 | `result-track:f81c129310a44d6f86bfa5f8924baf15f82aa5cc1d6c0885fda5ad2ee9b82620` |
| 16 | `theorem` | [diff_cylinder_same](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/diff-cylinder-same--590872057873ac2aa6061747.md) | 214 | `result-track:590872057873ac2aa60617472d41afe0e9e07bf714266db1bc4b543b85f55dfd` |
| 17 | `theorem` | [eq_of_cylinder_eq_of_subset](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/eq-of-cylinder-eq-of-subset--94d200201350d57f6554a0e2.md) | 218 | `result-track:94d200201350d57f6554a0e24e6de1fab9ea5b684afc4f5ecb42e1e89142a3d9` |
| 18 | `theorem` | [cylinder_eq_cylinder_union](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/cylinder-eq-cylinder-union--01beb1f61399682d45b07519.md) | 231 | `result-track:01beb1f61399682d45b07519e078db59f445ab4c112ae10524da58259f5689b7` |
| 19 | `theorem` | [disjoint_cylinder_iff](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/disjoint-cylinder-iff--a41e7b66aa177bfd45e81f9d.md) | 237 | `result-track:a41e7b66aa177bfd45e81f9d25f75e64af849b33ec428c4f82e426818bb43d47` |
| 20 | `theorem` | [IsClosed.cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/isclosed-cylinder--6d00fd182c1ffb3f891fa8cc.md) | 245 | `result-track:6d00fd182c1ffb3f891fa8ccfda32c4e88c65d414856e629b04ca778348d15e4` |
| 21 | `theorem` | [_root_.MeasurableSet.cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/root-measurableset-cylinder--9316ee7a293dffad9d070cdf.md) | 249 | `result-track:9316ee7a293dffad9d070cdfd647f51825c26e8dd4c7d060dc944332565e091b` |
| 22 | `theorem` | [dependsOn_cylinder_indicator_const](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/dependson-cylinder-indicator-const--095d54d66aea354542fbf43c.md) | 255 | `result-track:095d54d66aea354542fbf43ce548e3c6ad323cdbe28e590f314860f8a2217f1a` |
| 23 | `def` | [measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurablecylinders--d38cb72f19e56a90c19150d1.md) | 267 | `declaration-track:d38cb72f19e56a90c19150d11616ab64325225af2029bf355ce27a635274429e` |
| 24 | `theorem` | [empty_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/empty-mem-measurablecylinders--e20ab8586979e68472346f30.md) | 270 | `result-track:e20ab8586979e68472346f30f9198c5b06cd64919a11ee462a684d89bb26ee22` |
| 25 | `theorem` | [mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/mem-measurablecylinders--ee6b71649386b24ff1669648.md) | 278 | `result-track:ee6b71649386b24ff1669648ac13c563611e1619155967ab10de3b37c718c154` |
| 26 | `theorem` | [_root_.MeasurableSet.of_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/root-measurableset-of-mem-measurablecylinders--f0306e5e474399ad8333159a.md) | 283 | `result-track:f0306e5e474399ad8333159a69927e45827607ff42cc87d7c90ccdc991efa0c9` |
| 27 | `def` | [measurableCylinders.finset](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurablecylinders-finset--ce26e008b9d59cf04e2dd5ee.md) | 289 | `declaration-track:ce26e008b9d59cf04e2dd5ee31fdfa77028be6186d23bd540c8ac8f31d0849b4` |
| 28 | `def` | [measurableCylinders.set](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurablecylinders-set--144f771a0b7ff1137a8d0be6.md) | 293 | `declaration-track:144f771a0b7ff1137a8d0be6d46825e9e5503d644db37c612d297addc0198d46` |
| 29 | `theorem` | [measurableCylinders.measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurablecylinders-measurableset--ad067612bd4f11f8c48ed8b7.md) | 297 | `result-track:ad067612bd4f11f8c48ed8b7ca762dd9134d493433bd1d6ed740ed0fa3e0dbef` |
| 30 | `theorem` | [measurableCylinders.eq_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurablecylinders-eq-cylinder--bf6cf29741cb00d4b90acc3e.md) | 301 | `result-track:bf6cf29741cb00d4b90acc3e66e988a11325e0540417516429f99c3fcf01cbcc` |
| 31 | `theorem` | [cylinder_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/cylinder-mem-measurablecylinders--f92072089308d37be774b80b.md) | 305 | `result-track:f92072089308d37be774b80b09f56e723f994fa62718ccd8bb59315dc427bc3a` |
| 32 | `theorem` | [inter_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/inter-mem-measurablecylinders--10224732089ef9201f917cdd.md) | 310 | `result-track:10224732089ef9201f917cdda1936a68d980161783fbd06c0fdd0215abf8583a` |
| 33 | `theorem` | [isPiSystem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/ispisystem-measurablecylinders--84bac9d4ad2967dfade05d11.md) | 325 | `result-track:84bac9d4ad2967dfade05d11c553d2dccf60d8bcd3f110c5d8a8a0f96bd85520` |
| 34 | `theorem` | [compl_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/compl-mem-measurablecylinders--47f9082905688cf414389d3b.md) | 328 | `result-track:47f9082905688cf414389d3ba59b8b9d11683683712068dff996513b03d31d44` |
| 35 | `theorem` | [univ_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/univ-mem-measurablecylinders--0979aae9d58fe39b0a15a444.md) | 335 | `result-track:0979aae9d58fe39b0a15a444ce8a66b473a8a51268718fbd17b9974ae0a1ff55` |
| 36 | `theorem` | [union_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/union-mem-measurablecylinders--0fdece155e256c7d83d97777.md) | 339 | `result-track:0fdece155e256c7d83d977771b0f9c0e892bc8d93b9725f96757de107b9e891e` |
| 37 | `theorem` | [diff_mem_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/diff-mem-measurablecylinders--c001193eea7f01a998f72e88.md) | 346 | `result-track:c001193eea7f01a998f72e88e1bc8832bd4ac6bb3254b90af138755812e98d8c` |
| 38 | `theorem` | [generateFrom_measurableCylinders](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/generatefrom-measurablecylinders--165a80e65f88eb73bddbb8c4.md) | 353 | `result-track:165a80e65f88eb73bddbb8c4fc460ce01a68150676c918df2c293eb29d9437f1` |
| 39 | `theorem` | [measurableCylinders_nat](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurablecylinders-nat--e6b3c2066e98c4e925cce70e.md) | 371 | `result-track:e6b3c2066e98c4e925cce70e1dea15d05a31ac23ed24c4208a048a3affdbeab0` |
| 40 | `def` | [cylinderEvents](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/cylinderevents--3252340a2276e17de2892a38.md) | 394 | `declaration-track:3252340a2276e17de2892a38d950871afa1df23044662f8591cb5cf098c4c00d` |
| 41 | `lemma` | [cylinderEvents_univ](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/cylinderevents-univ--62ec0b87d931f13919d77902.md) | 396 | `result-track:62ec0b87d931f13919d77902798d4a9a25b3b082617fa5b67190bcdba6420c7e` |
| 42 | `lemma` | [cylinderEvents_mono](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/cylinderevents-mono--5654f55677cf74392e844c7e.md) | 400 | `result-track:5654f55677cf74392e844c7e2dc30a878cc7be7301db40563c609dc64bc7cc49` |
| 43 | `lemma` | [cylinderEvents_le_pi](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/cylinderevents-le-pi--872086232736082c96a98bdb.md) | 403 | `result-track:872086232736082c96a98bdb0570fa7fa6324eba794b39a6c398d9d3383c250b` |
| 44 | `lemma` | [measurable_cylinderEvents_iff](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurable-cylinderevents-iff--b3c50b0bc2ccb3086190325f.md) | 406 | `result-track:b3c50b0bc2ccb3086190325ff120f14a0656a2d653f534cb72fd224165ebbc1e` |
| 45 | `lemma` | [measurable_cylinderEvent_apply](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurable-cylinderevent-apply--098bf78f8a5d814b2a31b9b0.md) | 412 | `result-track:098bf78f8a5d814b2a31b9b0b7287cdb64170a03e073f7657f77c6d8e50dff06` |
| 46 | `lemma` | [Measurable.eval_cylinderEvents](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurable-eval-cylinderevents--4c6de0f13f9aa3aa54b7f010.md) | 417 | `result-track:4c6de0f13f9aa3aa54b7f01085128b40b5175d15867875b6cdef27cf872fd1e2` |
| 47 | `lemma` | [measurable_cylinderEvents_lambda](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurable-cylinderevents-lambda--ab5ab55dd2837b77ed760f21.md) | 422 | `result-track:ab5ab55dd2837b77ed760f21309addb156d578095a05671b31f35f9b4c89ad99` |
| 48 | `lemma` | [measurable_update_cylinderEvents'](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurable-update-cylinderevents--497043f322b84f11721a7e1c.md) | 427 | `result-track:497043f322b84f11721a7e1c8c49d00d6ab70047ae6071a16884017255f417c4` |
| 49 | `lemma` | [measurable_uniqueElim_cylinderEvents](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurable-uniqueelim-cylinderevents--99a171157c8cef6a8ab7d75a.md) | 439 | `result-track:99a171157c8cef6a8ab7d75a3f0f4b9ed1356a3dfdfbf85e3d69575bc447d2db` |
| 50 | `lemma` | [measurable_update_cylinderEvents](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurable-update-cylinderevents--0bb1353a2bfb3aa2399dcf63.md) | 447 | `result-track:0bb1353a2bfb3aa2399dcf638fa065cf5d454db73e3773e66b52ec812243d364` |
| 51 | `lemma` | [measurable_update_cylinderEvents_left](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurable-update-cylinderevents-left--eec530b2d7b15e2f606f63b2.md) | 451 | `result-track:eec530b2d7b15e2f606f63b2dd54d65ffb2b708a67c49ed272b3db6dd84e6f3b` |
| 52 | `lemma` | [measurable_restrict_cylinderEvents](../../../../../mathematics/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/declarations/measurable-restrict-cylinderevents--2a1572a5fd3f3d4c40512b85.md) | 455 | `result-track:2a1572a5fd3f3d4c40512b85a7dbd5b7fd6696e15806392654002d713e57f40c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
