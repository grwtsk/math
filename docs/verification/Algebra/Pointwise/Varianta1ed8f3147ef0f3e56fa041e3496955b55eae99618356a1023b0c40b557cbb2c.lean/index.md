# Verification target: GRWTSK.Algebra.Pointwise.Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0e11fa05f8d9117b7e1f56b3c7bc3b87cb96743",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0e11fa05f8d9117b7e1f56b3c7bc3b87cb96743`.

Source path: `GRWTSK/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseDistribMulAction](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/pointwisedistribmulaction--6c75127ffa340ab341c79751.md) | 42 | `declaration-track:6c75127ffa340ab341c79751e72b564533dc3444767ffb969c682977a99d73ae` |
| 2 | `def` | [pointwiseMulSemiringAction](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/pointwisemulsemiringaction--c30c2ee3d980a8b4c5f42f65.md) | 59 | `declaration-track:c30c2ee3d980a8b4c5f42f65bb73ba8c4ddac76b6b404258c09ae5d5b2f6fc11` |
| 3 | `theorem` | [pointwise_smul_def](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/pointwise-smul-def--1438cf81d4289ca511057f60.md) | 66 | `result-track:1438cf81d4289ca511057f60ca24e8f037e59499040daac7c26817572261a9a6` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/instance--ef3b491ad10bac7ee599b1b5.md) | 70 | `declaration-track:ef3b491ad10bac7ee599b1b580a86b1ca65004f49001f022da4edcaaab4a28e7` |
| 5 | `theorem` | [smul_mem_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/smul-mem-pointwise-smul--90aa28b00901cf941484b9b7.md) | 79 | `result-track:90aa28b00901cf941484b9b7104ce484179339641502fb06da482c6bb781ba7b` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/instance--4361d1aa7178553511b9c275.md) | 82 | `declaration-track:4361d1aa7178553511b9c275b76bb8478bec6c8b985bd04606f045d2ac284791` |
| 7 | `theorem` | [smul_bot](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/smul-bot--1a39dd4d4e0975b9c8e520cb.md) | 88 | `result-track:1a39dd4d4e0975b9c8e520cb2bd6e327c5876375668041b971cf7b9b4e6dd26f` |
| 8 | `theorem` | [smul_sup](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/smul-sup--c908fd115009b387f3169990.md) | 91 | `result-track:c908fd115009b387f3169990061acd044b9693430968c8a548058bdfc113fd89` |
| 9 | `theorem` | [smul_closure](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/smul-closure--275c3876a1d1ab8fb070c6a7.md) | 94 | `result-track:275c3876a1d1ab8fb070c6a78d0246cac1cb0b489705be8f45801d402497c495` |
| 10 | `instance` | [pointwise_central_scalar](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/pointwise-central-scalar--a5a115f51e012a9feddd0053.md) | 97 | `declaration-track:a5a115f51e012a9feddd005395fb4ea74230023e900f7f384d3aca1b904c1f21` |
| 11 | `theorem` | [pointwise_smul_toAddSubmonoid](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/pointwise-smul-toaddsubmonoid--d5e87eba1783e70ea19a49ff.md) | 102 | `result-track:d5e87eba1783e70ea19a49ff9c8d70cd2845457bcf1887ae3d0f52782bc56538` |
| 12 | `theorem` | [pointwise_smul_toAddSubgroup](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/pointwise-smul-toaddsubgroup--baf6bf5a412d9d88ccfba100.md) | 109 | `result-track:baf6bf5a412d9d88ccfba10033d5b55532a1a9cc6628b11cff5c298962024aa1` |
| 13 | `theorem` | [pointwise_smul_eq_comap](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/pointwise-smul-eq-comap--19412ff169ff20c249c13829.md) | 123 | `result-track:19412ff169ff20c249c1382980a97d6ad401eb0688862f479626260c48a3b237` |
| 14 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/smul-mem-pointwise-smul-iff--78cfe79f99f364902bd70ce0.md) | 130 | `result-track:78cfe79f99f364902bd70ce0be0394ce6545c755b348585ad6bdaf4ffda9a1a0` |
| 15 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--ec80e8d6c36403dc589d6b21.md) | 133 | `result-track:ec80e8d6c36403dc589d6b21fc3e79ee6eb73b05b5e678d4c321fbb0db7c9fc5` |
| 16 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/mem-inv-pointwise-smul-iff--9a0e9acc9a09e3f55d2d5b7d.md) | 138 | `result-track:9a0e9acc9a09e3f55d2d5b7d6a73cc12b8f3653ae053fd11f197ad8d8a4d8bcd` |
| 17 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/pointwise-smul-le-pointwise-smul-iff--2e2d764809d9aaad02ab3182.md) | 142 | `result-track:2e2d764809d9aaad02ab31828474c7f10681e0ecb5b8c028ad3586e1b533ef44` |
| 18 | `theorem` | [pointwise_smul_subset_iff](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/pointwise-smul-subset-iff--d0391e9de08be4d91a5144fa.md) | 145 | `result-track:d0391e9de08be4d91a5144fa7a024f909a360090f0509edfbbb82f251af1de00` |
| 19 | `theorem` | [subset_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/subset-pointwise-smul-iff--f62884ade5639c939431ff3c.md) | 148 | `result-track:f62884ade5639c939431ff3c8ea117b799b046f6db0f1382386aada7d504aa00` |
| 20 | `instance` | [IsPrime.smul](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/isprime-smul--a8e6800ea6132eb397df3599.md) | 151 | `declaration-track:a8e6800ea6132eb397df35998f2751ad4c6da982bff3a8adae69ebd2fbd670c5` |
| 21 | `theorem` | [IsPrime.smul_iff](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/isprime-smul-iff--7bd88a257d10060c34712cb9.md) | 156 | `result-track:7bd88a257d10060c34712cb98f309a51d3a33bd1f7da4ac293727758fea4ef36` |
| 22 | `theorem` | [inertia_smul](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/inertia-smul--d5f963761048141446182058.md) | 159 | `result-track:d5f9637610481414461820587ecd938454a435684e49a73710b24f258b6aba40` |
| 23 | `theorem` | [inertia_le_stabilizer](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/inertia-le-stabilizer--b8ee3a034a83c3d01d404d06.md) | 167 | `result-track:b8ee3a034a83c3d01d404d064042d002ac17620fd56f8dff1e40272bace48523` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/instance--2a00ed2e58394afbf2cc337d.md) | 173 | `declaration-track:2a00ed2e58394afbf2cc337d8741f641909237134a06a8f9793b418d4bd3db66` |
| 25 | `def` | [stabilizerEquiv](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/stabilizerequiv--dd633b533a94dac738cc5910.md) | 184 | `declaration-track:dd633b533a94dac738cc59108e1922ae34c6acb32f1f1f12527fec94209f002f` |
| 26 | `theorem` | [stabilizerEquiv_apply_smul](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/stabilizerequiv-apply-smul--21f1b5ba73806fa482a3be8c.md) | 191 | `result-track:21f1b5ba73806fa482a3be8c9967548cc8ccfef6f39c7c38742c50e676a21308` |
| 27 | `theorem` | [stabilizerEquiv_symm_apply_smul](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/stabilizerequiv-symm-apply-smul--61382ed374b97836d8bbbd44.md) | 197 | `result-track:61382ed374b97836d8bbbd44728817beb21ad9f804be644a0fe659833c4f9e4a` |
| 28 | `def` | [inertiaEquiv](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/inertiaequiv--6447fe559f8ddb526f2c75c0.md) | 208 | `declaration-track:6447fe559f8ddb526f2c75c06b16d0003e68ad3ebc85f21b14780984e06a49a9` |
| 29 | `theorem` | [inertiaEquiv_apply_smul](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/inertiaequiv-apply-smul--3153394b56d0aeb19d9123c2.md) | 215 | `result-track:3153394b56d0aeb19d9123c2c3c189befc8b14a071755221e6288f9a22b4c411` |
| 30 | `theorem` | [inertiaEquiv_symm_apply_smul](../../../../mathematics/Algebra/Pointwise/Varianta1ed8f3147ef0f3e56fa041e3496955b55eae99618356a1023b0c40b557cbb2c.lean/declarations/inertiaequiv-symm-apply-smul--ba512b89bee8ebd1a49a94a2.md) | 222 | `result-track:ba512b89bee8ebd1a49a94a2f5a0f10ba52521ee0bd540748dae7960f9656a1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
