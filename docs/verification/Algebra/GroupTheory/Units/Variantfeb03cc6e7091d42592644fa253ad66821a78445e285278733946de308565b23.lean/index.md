# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f9b58642dc0c8fdc24941b2507d4e8a94aeee8a",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f9b58642dc0c8fdc24941b2507d4e8a94aeee8a`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Group.isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/group-isunit--60cfe40fcc31fe5c01056c4f.md) | 43 | `result-track:60cfe40fcc31fe5c01056c4ffa960367b24979b81f4cfb6600a284f079e629a2` |
| 2 | `theorem` | [IsUnit.eq_on_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/isunit-eq-on-inv--92c7235fb79df7868772ea07.md) | 55 | `result-track:92c7235fb79df7868772ea0792374366e4c5c1e6cbb9c8073cc145cf42d17e88` |
| 3 | `theorem` | [eq_on_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/eq-on-inv--5cc386bf060cacdea91d894b.md) | 66 | `result-track:5cc386bf060cacdea91d894bf61025ea80ab29be10e2afe270eb78262ada3681` |
| 4 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/map--8e4aa73e6715344c1fdb18e2.md) | 80 | `declaration-track:8e4aa73e6715344c1fdb18e2d324cb7e827142b5766dfe5db42db9dfdc905df8` |
| 5 | `theorem` | [coe_map](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/coe-map--c710759d20856b3d5f6fa1d2.md) | 90 | `result-track:c710759d20856b3d5f6fa1d2865f5077dc344b5e713b6eb27b37003717614339` |
| 6 | `theorem` | [coe_map_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/coe-map-inv--6f34e86013f17d1398fe88f3.md) | 95 | `result-track:6f34e86013f17d1398fe88f39f5c6aba0acafa59b6c5dd811b84aef6de29e2c6` |
| 7 | `theorem` | [map_comp](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/map-comp--dc7bf0cfcef34e26c7dcc74a.md) | 100 | `result-track:dc7bf0cfcef34e26c7dcc74adf3f4a75a9bd1380962378f1e8cf31d7b0a1460c` |
| 8 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/map-id--bfb9edf836aa484841e37384.md) | 107 | `result-track:bfb9edf836aa484841e3738471bb9bfe9dedef7f6165761910c15b2d518f7601` |
| 9 | `def` | [coeHom](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/coehom--f41efa8391fa606be5c35594.md) | 113 | `declaration-track:f41efa8391fa606be5c355948cbb68cd7e5fc095caa04aecc27eea9a33fd3a09` |
| 10 | `theorem` | [coeHom_apply](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/coehom-apply--18de52cd431b353cf7d06898.md) | 121 | `result-track:18de52cd431b353cf7d068980705e08026c0306a9a1431568bec80a5b3b28397` |
| 11 | `theorem` | [val_pow_eq_pow_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/val-pow-eq-pow-val--3bc16879deee6a32e26573c0.md) | 126 | `result-track:3bc16879deee6a32e26573c0a0e70635bbbf3e62979e4e8250cc0fa021a5f6f2` |
| 12 | `theorem` | [val_div_eq_div_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/val-div-eq-div-val--63cdb818eae6d1b9a55cc4b8.md) | 136 | `result-track:63cdb818eae6d1b9a55cc4b8975a0bb6815d384ba62fd9190a6ed265f1cd5631` |
| 13 | `theorem` | [val_zpow_eq_zpow_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/val-zpow-eq-zpow-val--abb2e1e949bbc17590a85ab3.md) | 142 | `result-track:abb2e1e949bbc17590a85ab3d8ef1455dd2228c772be1135ef19f14e0f1d191c` |
| 14 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.GroupIsUnit.Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.divp_eq_div](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/root-grwtsk-algebra-grouptheory-groupisunit-variant9f0ff1321764dae32a8a7--15609ccfc93c9f93fa539473.md) | 148 | `result-track:15609ccfc93c9f93fa539473d85407b3b7a887c3162355bead1606e7ec51f624` |
| 15 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.GroupIsUnit.Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.map_units_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/root-grwtsk-algebra-grouptheory-groupisunit-variant9f0ff1321764dae32a8a7--e8660f623c0ee138ca3d884e.md) | 153 | `result-track:e8660f623c0ee138ca3d884e7c36b8bd20eaf9a09cab797f837fab46c5c17021` |
| 16 | `def` | [liftRight](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/liftright--5ae0373b53c1e1d9b25ff6ab.md) | 165 | `declaration-track:5ae0373b53c1e1d9b25ff6ab5b072abca1b2244517b9e3f6f4beace39b342ca0` |
| 17 | `theorem` | [coe_liftRight](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/coe-liftright--22c1de3202cd9e820f0c7823.md) | 173 | `result-track:22c1de3202cd9e820f0c78231970c20f322df616d0a5af20ee5bc61f2d51b916` |
| 18 | `theorem` | [mul_liftRight_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-liftright-inv--1a555cfcad3dbfc1a92dcbf5.md) | 179 | `result-track:1a555cfcad3dbfc1a92dcbf514554693e9f51dcf8461b43b72c6fa43a740368e` |
| 19 | `theorem` | [liftRight_inv_mul](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/liftright-inv-mul--8999607d0ecea212a02ea755.md) | 186 | `result-track:8999607d0ecea212a02ea755d7c1f19dcaab523b00787b8600b0c569dba13066` |
| 20 | `def` | [toHomUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/tohomunits--b6fd4796b67d80a6af9fd282.md) | 203 | `declaration-track:b6fd4796b67d80a6af9fd282839e167f74a99900cd25ede631f2a0ed80b82196` |
| 21 | `theorem` | [coe_toHomUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/coe-tohomunits--bda45d53a75e2a094d010d0b.md) | 211 | `result-track:bda45d53a75e2a094d010d0b412f64b3eff21ecee3adf0e149bf78fd8e94e65f` |
| 22 | `theorem` | [map](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/map--cbd2c34227a11ea208081a27.md) | 227 | `result-track:cbd2c34227a11ea208081a276a8de8edcf9b85f53ae0032e4f83bf78f3d27f1b` |
| 23 | `theorem` | [of_leftInverse](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/of-leftinverse--527349530438a6d3d7c5845d.md) | 233 | `result-track:527349530438a6d3d7c5845dab7114caee02b8cebb761e3f5bf540e220cf7b87` |
| 24 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.GroupIsUnit.Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.isUnit_map_of_leftInverse](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/root-grwtsk-algebra-grouptheory-groupisunit-variant9f0ff1321764dae32a8a7--ba0510a4daa464cdf91ceaab.md) | 240 | `result-track:ba0510a4daa464cdf91ceaabbd3e25e8b2c80ee8b96c6c25dd8d8550268a82f5` |
| 25 | `def` | [liftRight](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/liftright--2ec09348478c1fb9e3e679bd.md) | 251 | `declaration-track:2ec09348478c1fb9e3e679bdde83641e8af62a6630d2a7dceeacd0c17f336f61` |
| 26 | `theorem` | [coe_liftRight](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/coe-liftright--fd0282184261c4c39091d540.md) | 257 | `result-track:fd0282184261c4c39091d5405fc95c89de434bde518ac4d747ffaa4e9e70f113` |
| 27 | `theorem` | [mul_liftRight_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-liftright-inv--44eb5c09d37e261e1bf66272.md) | 263 | `result-track:44eb5c09d37e261e1bf66272aae617a6155167e3fd3a532d7218cfae8425c77a` |
| 28 | `theorem` | [liftRight_inv_mul](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/liftright-inv-mul--beb658472dac74b71f757e7d.md) | 269 | `result-track:beb658472dac74b71f757e7d06d4b0815eed3b8f20aa24420ac3cb2e5a939c60` |
| 29 | `def` | [unit'](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/unit--1ff910f6fa65dc315ffc6e28.md) | 288 | `declaration-track:1ff910f6fa65dc315ffc6e2846ae689e419c975f5a318ad9d1f2dbd4dadd56a4` |
| 30 | `theorem` | [val_inv_unit'](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/val-inv-unit--650b04ff4b2a774ca5f64488.md) | 296 | `result-track:650b04ff4b2a774ca5f644888e5b88c5bd3b6bc814dcdc03ab641eed3d4b5e97` |
| 31 | `theorem` | [mul_inv_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-inv-cancel-left--90747c8a20dfbeda4f4b8551.md) | 301 | `result-track:90747c8a20dfbeda4f4b8551c2c8bcb1f68efadaaa680f94d4ceca719146a06f` |
| 32 | `theorem` | [inv_mul_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/inv-mul-cancel-left--dfd83fa9e74f0486a2d3d5b9.md) | 307 | `result-track:dfd83fa9e74f0486a2d3d5b9d5d1cf9517432ce6222a72d088f5579cb5ca68a4` |
| 33 | `theorem` | [mul_inv_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-inv-cancel-right--0ebfc05eb778ec0fa9905ce4.md) | 313 | `result-track:0ebfc05eb778ec0fa9905ce41923a39e5514e1033a6dc2beaeea20f076f8a097` |
| 34 | `theorem` | [inv_mul_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/inv-mul-cancel-right--f6650a1106853e55ac66906a.md) | 319 | `result-track:f6650a1106853e55ac66906ac21c6671849acc4d1448c82fabcd891454d8c8a6` |
| 35 | `theorem` | [div_self](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/div-self--5c7b087cb4bcf10042c3f8b6.md) | 325 | `result-track:5c7b087cb4bcf10042c3f8b6017a05db63430e088417a8e864c14d8b408baa4d` |
| 36 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/eq-mul-inv-iff-mul-eq--99f9b0c2f661865bdf310515.md) | 330 | `result-track:99f9b0c2f661865bdf310515831e5f95463e4dd79214dd56f7102da708c0b5d9` |
| 37 | `theorem` | [eq_inv_mul_iff_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/eq-inv-mul-iff-mul-eq--c4409902e53a43e398020fbb.md) | 336 | `result-track:c4409902e53a43e398020fbb2c5d15ceb38bbcb025452396ff18cf3f87bfdaa5` |
| 38 | `theorem` | [inv_mul_eq_iff_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/inv-mul-eq-iff-eq-mul--fd39dc4ec9b2dd72de807587.md) | 342 | `result-track:fd39dc4ec9b2dd72de807587b3e25d319c2dcf791fd149dd98bfc7ff4f1f7a3b` |
| 39 | `theorem` | [mul_inv_eq_iff_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-inv-eq-iff-eq-mul--471eb153ee9221e93d20c739.md) | 348 | `result-track:471eb153ee9221e93d20c739738dd29b2a91e08b5fda1788d18a3e15387a5c7c` |
| 40 | `theorem` | [mul_inv_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-inv-eq-one--d1726d5ac91d92d6b69420a2.md) | 354 | `result-track:d1726d5ac91d92d6b69420a2ee3e1429d00baf32c859c4c72ae8ea73f1568d43` |
| 41 | `theorem` | [inv_mul_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/inv-mul-eq-one--790f6b1bab01d07cade4e0da.md) | 360 | `result-track:790f6b1bab01d07cade4e0dad73058533a1cbdcd27753c964df19b150d552ac0` |
| 42 | `theorem` | [mul_eq_one_iff_eq_inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-eq-one-iff-eq-inv--b0b221e7eb28939d95d3e51f.md) | 366 | `result-track:b0b221e7eb28939d95d3e51feb650030ac54762c11b9badb98cc8711dd4a33f7` |
| 43 | `theorem` | [mul_eq_one_iff_inv_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-eq-one-iff-inv-eq--1c1ca00be399be53760423d0.md) | 372 | `result-track:1c1ca00be399be53760423d0ae0de3b15a3faee8127eaf7042b7acba73cc9a12` |
| 44 | `theorem` | [div_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/div-mul-cancel--1dce4c685780760522511984.md) | 378 | `result-track:1dce4c68578076052251198440a19dba8ebafddc105f13a67e77616b77eddbf7` |
| 45 | `theorem` | [mul_div_cancel](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-div-cancel--712539b2bd30e4b162208f5b.md) | 384 | `result-track:712539b2bd30e4b162208f5b8ae2bb1d3f5a1d4469506101ac2181be7842a26a` |
| 46 | `theorem` | [mul_one_div_cancel](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-one-div-cancel--d700ae2d28503f433f8c7836.md) | 390 | `result-track:d700ae2d28503f433f8c7836a960bcd4e1ff55afd6b01f56035668963c3a3a31` |
| 47 | `theorem` | [one_div_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/one-div-mul-cancel--d201a54bb0e93da4f1363a89.md) | 395 | `result-track:d201a54bb0e93da4f1363a89538845f9dbb462747a6fb386ce946aa59d03794a` |
| 48 | `theorem` | [inv](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/inv--a29b9ec197f8983a60dadb14.md) | 400 | `result-track:a29b9ec197f8983a60dadb1469b6a3a9ae0cc7ded5fdb95c583d8b8f816a2885` |
| 49 | `theorem` | [div](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/div--28d2d270385425233209c512.md) | 408 | `result-track:28d2d270385425233209c512fd723f7327a0aa60a19e3c4096f31eee38cd2cdc` |
| 50 | `theorem` | [div_left_inj](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/div-left-inj--fd0f24c589acd29e63be2449.md) | 415 | `result-track:fd0f24c589acd29e63be244991d79309e66b66719cbe5ef3652e1391050a054e` |
| 51 | `theorem` | [div_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/div-eq-iff--bd8bdc5ba1d46eeeb21f0d0e.md) | 422 | `result-track:bd8bdc5ba1d46eeeb21f0d0ecffb81cbac3dddf835348b67fa5eda1ead0cc7b3` |
| 52 | `theorem` | [eq_div_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/eq-div-iff--5a0e6853aa1c43bd2d07ddde.md) | 428 | `result-track:5a0e6853aa1c43bd2d07ddde6b91c40b01b883c78b4bcdbab9cce1cc49f5319b` |
| 53 | `theorem` | [div_eq_of_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/div-eq-of-eq-mul--fc136b23bc691e119e5a87ed.md) | 434 | `result-track:fc136b23bc691e119e5a87ed0a054010442e1a1aafbcab008e0c12c69278c1e5` |
| 54 | `theorem` | [eq_div_of_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/eq-div-of-mul-eq--6526b0f5e43f171c7dfe5c69.md) | 440 | `result-track:6526b0f5e43f171c7dfe5c690aedea017f18a3515bc8f396378920817d17fcd4` |
| 55 | `theorem` | [div_eq_one_iff_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/div-eq-one-iff-eq--3f24b31d3dfe7ed476bbab67.md) | 446 | `result-track:3f24b31d3dfe7ed476bbab674ed63c0eb7732bbefc4900351aa4a79f438e4d33` |
| 56 | `theorem` | [div_mul_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/div-mul-left--f2235923e885cabc2983f308.md) | 453 | `result-track:f2235923e885cabc2983f308d2422e0e0d4d1638733ddc1ac4a37bd7c5f02bb4` |
| 57 | `theorem` | [mul_div_mul_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-div-mul-right--ff207f322365315ee4b00461.md) | 459 | `result-track:ff207f322365315ee4b004614d089003b5730f5da428959e176da4e0d6a5ddf6` |
| 58 | `theorem` | [mul_mul_div](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-mul-div--b2275c4c39e21d0c93394a2c.md) | 465 | `result-track:b2275c4c39e21d0c93394a2c8e7a51a8b3407f6db475ae05bdb6bedff6d883b1` |
| 59 | `theorem` | [div_mul_right](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/div-mul-right--db8ff9bfab93a748af204b83.md) | 476 | `result-track:db8ff9bfab93a748af204b835bfd692b4e80a963d4361b00a71c1794ed370897` |
| 60 | `theorem` | [mul_div_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-div-cancel-left--61474a4d18cf7cb0e5265195.md) | 482 | `result-track:61474a4d18cf7cb0e52651950eda53df1c05470a39b400521f704cc07a872e8a` |
| 61 | `theorem` | [mul_div_cancel'](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-div-cancel--45163349e6395906d92b7331.md) | 488 | `result-track:45163349e6395906d92b73314f3a1f187917e982e22a3292ddf7a22d03d691de` |
| 62 | `theorem` | [mul_div_mul_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-div-mul-left--fb1cdea6e3364e3cede835b8.md) | 494 | `result-track:fb1cdea6e3364e3cede835b89131c86a97eeeaca11b448f7c253a20e30a85018` |
| 63 | `theorem` | [mul_eq_mul_of_div_eq_div](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/mul-eq-mul-of-div-eq-div--27b6ba91ba898f6e9c9f247e.md) | 500 | `result-track:27b6ba91ba898f6e9c9f247e888b927e15743d3852974052b72d8f53a83a6504` |
| 64 | `theorem` | [div_eq_div_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/div-eq-div-iff--439a928258864dbdaa0cde42.md) | 507 | `result-track:439a928258864dbdaa0cde426209c4ec1a4bdc6035e472f923266e5b8f74dd37` |
| 65 | `theorem` | [div_div_cancel](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/div-div-cancel--ef445900069802c1b17a81b1.md) | 515 | `result-track:ef445900069802c1b17a81b153c82aef1967319b8125b652e125b7fe14514e1f` |
| 66 | `theorem` | [div_div_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/declarations/div-div-cancel-left--a0e72b6b4c1d002f3279e4db.md) | 521 | `result-track:a0e72b6b4c1d002f3279e4dbb6d605f70160fe3be0f9d52d355482ee3e24e255` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
