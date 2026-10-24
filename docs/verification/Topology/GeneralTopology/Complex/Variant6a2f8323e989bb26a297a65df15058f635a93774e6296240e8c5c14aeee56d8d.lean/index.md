# Verification target: GRWTSK.Topology.GeneralTopology.Complex.Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bd1b6e3a38715e4c862f35afa86bb5bd791d742",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bd1b6e3a38715e4c862f35afa86bb5bd791d742`.

Source path: `GRWTSK/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.QuadraticDiscriminant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Deriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cos_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/cos-eq-zero-iff--4ff483d203d06eaba83a2d18.md) | 39 | `result-track:4ff483d203d06eaba83a2d182b959eb1ec840fa1a532573fd19d2fb6eed2a232` |
| 2 | `theorem` | [cos_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/cos-ne-zero-iff--490a4ccf28e85209cc0cf713.md) | 50 | `result-track:490a4ccf28e85209cc0cf7136dbba1f1b9af36cccc41ed6321366610bd99d537` |
| 3 | `theorem` | [sin_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/sin-eq-zero-iff--63b5356c03b8c4638aff4cc1.md) | 54 | `result-track:63b5356c03b8c4638aff4cc1f4f8f7d5ee5f9dc741feab18b5c82ef8a94ab949` |
| 4 | `theorem` | [sin_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/sin-ne-zero-iff--86ed2fc9eead1d91237ef170.md) | 67 | `result-track:86ed2fc9eead1d91237ef1709b831ebe756028fc2e0d1f3499baeaa207a43c16` |
| 5 | `theorem` | [tan_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/tan-eq-zero-iff--a4767d615f0f140fd4c7f9fd.md) | 71 | `result-track:a4767d615f0f140fd4c7f9fd7b78cf5d835cc654563872d65aa7f68b1fdf623f` |
| 6 | `theorem` | [tan_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/tan-ne-zero-iff--050249f1cea17a0649638dcf.md) | 80 | `result-track:050249f1cea17a0649638dcfedbcf6b421a4b709f2a2a36fc5984f9761dd154a` |
| 7 | `theorem` | [tan_int_mul_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/tan-int-mul-pi-div-two--22d73ec02aefa77d2dfa43bd.md) | 84 | `result-track:22d73ec02aefa77d2dfa43bd614d582e3a127610080a2260d83d5b4e3d6f0030` |
| 8 | `theorem` | [cos_eq_cos_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/cos-eq-cos-iff--a614c8e7f5625f2db56339bb.md) | 88 | `result-track:a614c8e7f5625f2db56339bb23a50b2c404145b90a1e532240859e415a2b4098` |
| 9 | `theorem` | [sin_eq_sin_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/sin-eq-sin-iff--39245c4c6b171a4bf7718781.md) | 102 | `result-track:39245c4c6b171a4bf7718781b74a63d27807ef72072f277930101002ae01c514` |
| 10 | `theorem` | [tan_add](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/tan-add--e0349c6d6c8db137b6570fb8.md) | 108 | `result-track:e0349c6d6c8db137b6570fb8c25acc5e65a9f794d0edc3206da0d1bce2d6839a` |
| 11 | `theorem` | [tan_add'](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/tan-add--ffa462a16bd0825eaae8f65a.md) | 126 | `result-track:ffa462a16bd0825eaae8f65a0d862c8fdbf08d81dd57fb2216f37e4be223dfd2` |
| 12 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/macro-rules--1a25b5b2eaf0647ac3ae2b74.md) | 132 | `declaration-track:1a25b5b2eaf0647ac3ae2b74f592588b76be4132bf08e1a507a2f0a69bbee04c` |
| 13 | `theorem` | [tan_two_mul](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/tan-two-mul--81e5d233e9b25ee6de46dc88.md) | 134 | `result-track:81e5d233e9b25ee6de46dc88e91530eaba3c56f7aee4cc79f08f0154cb25adcb` |
| 14 | `theorem` | [tan_add_mul_I](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/tan-add-mul-i--9d36076ca27a4e45ff99f71f.md) | 141 | `result-track:9d36076ca27a4e45ff99f71fa45a4cfd98689687f18607f3515dd8f506fb7c3e` |
| 15 | `theorem` | [tan_eq](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/tan-eq--63cbde1f31deb5cf7949ddd4.md) | 150 | `result-track:63cbde1f31deb5cf7949ddd48bc010fa3dfff0cfa79dc39ec0c6972e2137772f` |
| 16 | `theorem` | [continuousOn_tan](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/continuouson-tan--1aa9811ac91df97ace57f5cf.md) | 162 | `result-track:1aa9811ac91df97ace57f5cf2e60faa89b245ca73ff70914641790d8d90ff026` |
| 17 | `theorem` | [continuous_tan](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/continuous-tan--cb292520d7b487c378972e17.md) | 167 | `result-track:cb292520d7b487c378972e17efbd62ba940fa619273ee8c13b5683225467f6a4` |
| 18 | `theorem` | [cos_eq_iff_quadratic](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/cos-eq-iff-quadratic--fd913f0103f03f633e0c86be.md) | 171 | `result-track:fd913f0103f03f633e0c86be12c603cc79c63378aa31b7f9cc11a70e5827ab06` |
| 19 | `theorem` | [cos_surjective](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/cos-surjective--dd6614bf6dba869686bfa1eb.md) | 179 | `result-track:dd6614bf6dba869686bfa1ebe06919b2ac5614e10091be2854863d3f95d19df0` |
| 20 | `theorem` | [range_cos](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/range-cos--97c7dd23a56ae68b23a03b7b.md) | 195 | `result-track:97c7dd23a56ae68b23a03b7b0b16d3e8220dacc441dc345c7546d4c3e00208f3` |
| 21 | `theorem` | [sin_surjective](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/sin-surjective--530c30b295caf3c5cb4e9ba8.md) | 199 | `result-track:530c30b295caf3c5cb4e9ba8daa983eb6fde9a0477b54495b4180dfdcf359049` |
| 22 | `theorem` | [range_sin](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/range-sin--2bba48b8cf9f8d8a24f13f91.md) | 206 | `result-track:2bba48b8cf9f8d8a24f13f919f86abced916b86e609cf594aebe7240d1bde765` |
| 23 | `theorem` | [cos_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/cos-eq-zero-iff--0f70983c71c40e535263dd13.md) | 216 | `result-track:0f70983c71c40e535263dd1333eac7be897044865c00726fc73f5877b03ce6ba` |
| 24 | `theorem` | [cos_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/cos-ne-zero-iff--08207c8bf1a7e49223f2d7a2.md) | 220 | `result-track:08207c8bf1a7e49223f2d7a2836fe9eadb51d7f49679a61aade691f3c2d3a263` |
| 25 | `theorem` | [cos_eq_cos_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/cos-eq-cos-iff--fe5c32e1fbb2a797d1731a29.md) | 224 | `result-track:fe5c32e1fbb2a797d1731a2933c286cb9c0af9db5e15044807de8bdfb1b635bb` |
| 26 | `theorem` | [sin_eq_sin_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/sin-eq-sin-iff--b7cc6598bb559c1b7503b5b2.md) | 228 | `result-track:b7cc6598bb559c1b7503b5b22b911f51eb5dcdbe69988c75ba0d29665b2bdf28` |
| 27 | `theorem` | [lt_sin_mul](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/lt-sin-mul--e3ddcc0e8c859434fe2d7a1c.md) | 233 | `result-track:e3ddcc0e8c859434fe2d7a1c407b25ae68bb05c9962b2879202ab01b02ca12e2` |
| 28 | `theorem` | [le_sin_mul](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/le-sin-mul--1f79328774af9873a5383e10.md) | 239 | `result-track:1f79328774af9873a5383e101b31c422f8a33bd7507fe92a4bb45bb10095daea` |
| 29 | `theorem` | [mul_lt_sin](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/mul-lt-sin--568a229add3ec9e2f875563b.md) | 245 | `result-track:568a229add3ec9e2f875563bc18a0bf1be32dde50c30e0752eb9a5af4756c251` |
| 30 | `theorem` | [mul_le_sin](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/declarations/mul-le-sin--107a9e5986ba6f1eb42430ca.md) | 253 | `result-track:107a9e5986ba6f1eb42430ca1df2b793a864e5df4aee2e13c5046ab2ada3a9fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
