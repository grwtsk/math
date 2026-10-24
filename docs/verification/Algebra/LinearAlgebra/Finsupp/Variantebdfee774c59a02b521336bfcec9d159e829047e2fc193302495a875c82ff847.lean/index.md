# Verification target: GRWTSK.Algebra.LinearAlgebra.Finsupp.Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33b06cbc44bac9d5ad5368078d6fd7ac649ec5d1",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33b06cbc44bac9d5ad5368078d6fd7ac649ec5d1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Finsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.TensorProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.SumProd` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsuppLeft](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppleft--2fdbac8f3d06e783c62d9889.md) | 80 | `declaration-track:2fdbac8f3d06e783c62d9889d100a4c35448816e21a3c3cba21dffe341f6c5bf` |
| 2 | `lemma` | [finsuppLeft_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppleft-apply-tmul--0eb7dd4c4cf697e5bf5f3213.md) | 87 | `result-track:0eb7dd4c4cf697e5bf5f32137a911fd967f271643b27fde41bf5a9d9ce197adb` |
| 3 | `lemma` | [finsuppLeft_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppleft-apply-tmul-apply--536815a57846578d5ab08673.md) | 95 | `result-track:536815a57846578d5ab086734dd9cb29fee2a6e334b53422c1294b3f95ab46c7` |
| 4 | `theorem` | [finsuppLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppleft-apply--f88f8c8488ebc00dafd35f25.md) | 100 | `result-track:f88f8c8488ebc00dafd35f2538d6fbb1d0956f68d6b24bd8c1ab77c87acbf08b` |
| 5 | `lemma` | [finsuppLeft_symm_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppleft-symm-apply-single--e744be22511cc6b71b056e4b.md) | 108 | `result-track:e744be22511cc6b71b056e4b2e9880f25ec7b7938320e2f316f8425a1f26f3d3` |
| 6 | `def` | [finsuppRight](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppright--bf9f0f427469191ea7981326.md) | 115 | `declaration-track:bf9f0f427469191ea79813266236bbf3ccbabcf5eb89f83c30f85c799c92e183` |
| 7 | `lemma` | [finsuppRight_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppright-apply-tmul--dc871d54b8ccb66eca3d4a18.md) | 122 | `result-track:dc871d54b8ccb66eca3d4a18174462754196f86710fb6a63cccb92fade3505f2` |
| 8 | `lemma` | [finsuppRight_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppright-apply-tmul-apply--d1841305bfeef1fa89968a04.md) | 130 | `result-track:d1841305bfeef1fa89968a048fe12b04cfab953611434eefb957639af7c93335` |
| 9 | `theorem` | [finsuppRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppright-apply--8663f57d1af697c2d8c3ba87.md) | 135 | `result-track:8663f57d1af697c2d8c3ba87fac2d6326da14d4dfd88b7c91080bcc7c288a176` |
| 10 | `lemma` | [finsuppRight_symm_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppright-symm-apply-single--848a72bb5e5056d9e24375f6.md) | 143 | `result-track:848a72bb5e5056d9e24375f6196dc27eec6204638adcad6435c63453ff50a824` |
| 11 | `lemma` | [finsuppLeft_smul'](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppleft-smul--156cee17cd7d545100b11d5b.md) | 151 | `result-track:156cee17cd7d545100b11d5bb0ebea84f67024e7d4ec03e7003ee1899b1382e2` |
| 12 | `def` | [finsuppLeft'](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppleft--4e976b1f64b8b937ede436ee.md) | 161 | `declaration-track:4e976b1f64b8b937ede436ee04954dd22b8de19485da8354e1c4c34213a8beb1` |
| 13 | `lemma` | [finsuppLeft'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppleft-apply--a2b2ae2aeb41c64cf0ae85fb.md) | 167 | `result-track:a2b2ae2aeb41c64cf0ae85fb9060a45e1389a8aaf4c960c1ee17ea4215815236` |
| 14 | `def` | [finsuppScalarLeft](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppscalarleft--e3f457bf574ecdc1643374fa.md) | 180 | `declaration-track:e3f457bf574ecdc1643374faa03b43141b6d8c6af286a1e0e2ba14aa6d3f4e89` |
| 15 | `lemma` | [finsuppScalarLeft_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppscalarleft-apply-tmul-apply--8b5ae509e44add8fcee98bfb.md) | 186 | `result-track:8b5ae509e44add8fcee98bfb9c4b93a7014b78ec9e795a7c4270cefb8925d116` |
| 16 | `lemma` | [finsuppScalarLeft_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppscalarleft-apply-tmul--dfe296060ac5b41d8cf55355.md) | 190 | `result-track:dfe296060ac5b41d8cf55355f9f3f8571cd0eb7e51501b40409bfba86923a247` |
| 17 | `lemma` | [finsuppScalarLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppscalarleft-apply--f239b5c31373d83237e5bba1.md) | 196 | `result-track:f239b5c31373d83237e5bba1da7439d6e69c7b2ffe69c9a679505e4dfc45a06a` |
| 18 | `lemma` | [finsuppScalarLeft_symm_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppscalarleft-symm-apply-single--0a217fb5b6649376e57767d3.md) | 201 | `result-track:0a217fb5b6649376e57767d38bec65ed50e9a0ad32eb7014663c2ced8c9ce026` |
| 19 | `def` | [finsuppScalarRight](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppscalarright--e703c81afae705b75de50c80.md) | 209 | `declaration-track:e703c81afae705b75de50c80fd5f305011ab94cdf7a4aa4fb695011ea2083310` |
| 20 | `lemma` | [finsuppScalarRight_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppscalarright-apply-tmul-apply--6c50ccb8f8402c8f9829b742.md) | 216 | `result-track:6c50ccb8f8402c8f9829b742f507020a2bd17ee7fa7265629aacd4c5209126e5` |
| 21 | `lemma` | [finsuppScalarRight_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppscalarright-apply-tmul--f14854726a88dc77c047f716.md) | 220 | `result-track:f14854726a88dc77c047f7165e169f6bc2653311c5f448b68506581454270262` |
| 22 | `lemma` | [finsuppScalarRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppscalarright-apply--a2aa2b382ad60c625bf3ffd4.md) | 226 | `result-track:a2aa2b382ad60c625bf3ffd47d7c5e9d0ffeb3c64c748f0e53407d12ddc56b77` |
| 23 | `lemma` | [finsuppScalarRight_symm_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsuppscalarright-symm-apply-single--61e75500dd55b9d510c69dfd.md) | 231 | `result-track:61e75500dd55b9d510c69dfdea7d6e08d03ed5f38de709c63701ac46965a1441` |
| 24 | `theorem` | [Finsupp.linearCombination_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupp-linearcombination-one-tmul--5244d9117270956b60a099b1.md) | 244 | `result-track:5244d9117270956b60a099b1d826879f109cd5c83ce4b4ee3806f0be41920ecc` |
| 25 | `def` | [finsuppTensorFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupp--b194e68b1c4100da9217e07e.md) | 253 | `declaration-track:b194e68b1c4100da9217e07e3e61a79eace09282cbee9707038212e72d3d01f0` |
| 26 | `theorem` | [finsuppTensorFinsupp_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupp-single--848b5677137b23f87fc76831.md) | 260 | `result-track:848b5677137b23f87fc768313bb42264d312677f66b0302ad8b7235375832384` |
| 27 | `theorem` | [finsuppTensorFinsupp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupp-apply--30dbbfe2b66686980c90d42e.md) | 266 | `result-track:30dbbfe2b66686980c90d42e57e778c236d31c9bf3a9c5ba22f0a51893f660da` |
| 28 | `theorem` | [finsuppTensorFinsupp_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupp-symm-single--ff9e7ebcbd5333067272a3f4.md) | 281 | `result-track:ff9e7ebcbd5333067272a3f42a6d9106c2e9b468c9968a791fd17222a880c7c2` |
| 29 | `def` | [finsuppTensorFinsuppLid](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupplid--3dce94420ecaf5a49696b1b0.md) | 288 | `declaration-track:3dce94420ecaf5a49696b1b027bd545976dc508080f3a28068ebf6a1cb9fe224` |
| 30 | `theorem` | [finsuppTensorFinsuppLid_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupplid-apply-apply--bd2f586a09ad32d7226746bf.md) | 292 | `result-track:bd2f586a09ad32d7226746bf6dabf57150b0f55da2d3ee49c032a4d77aeed46d` |
| 31 | `theorem` | [finsuppTensorFinsuppLid_single_tmul_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupplid-single-tmul-single--a187b15e735929abedb2b3c6.md) | 297 | `result-track:a187b15e735929abedb2b3c63f5cea2ff39a22f0a20c33056c833c34583fe2d9` |
| 32 | `theorem` | [finsuppTensorFinsuppLid_symm_single_smul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupplid-symm-single-smul--ed8227b1b81e384afb817ce5.md) | 303 | `result-track:ed8227b1b81e384afb817ce52324800b3264f0bf6fbb10e079e73296fa5e7fdf` |
| 33 | `def` | [finsuppTensorFinsuppRid](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupprid--fab0dd567ed8cd85883f5ee6.md) | 310 | `declaration-track:fab0dd567ed8cd85883f5ee6c348a2b117934a020976a421e1b389c467c3435e` |
| 34 | `theorem` | [finsuppTensorFinsuppRid_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupprid-apply-apply--c1c485dd6e5dcdb0f8a0a31b.md) | 314 | `result-track:c1c485dd6e5dcdb0f8a0a31b3fba95a2e102c601628c947d894d1ad55df4525d` |
| 35 | `theorem` | [finsuppTensorFinsuppRid_single_tmul_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupprid-single-tmul-single--0a11cb530552585487770378.md) | 319 | `result-track:0a11cb5305525854877703785eebfa35c4586d2dd7826e8d9542e2189a8d49f9` |
| 36 | `theorem` | [finsuppTensorFinsuppRid_symm_single_smul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupprid-symm-single-smul--a188aa8f250462d399472fb9.md) | 325 | `result-track:a188aa8f250462d399472fb95c9ddddfc4a06a6e91fe70a68c4289a2284c5aa4` |
| 37 | `def` | [finsuppTensorFinsupp'](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupp--e5e9501e818d2bef650ee4b2.md) | 332 | `declaration-track:e5e9501e818d2bef650ee4b2678e1e17d095acacd5edb818ee6eda7ea6d15875` |
| 38 | `theorem` | [finsuppTensorFinsupp'_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupp-apply-apply--54827c6c7dd5ff7601ae900d.md) | 336 | `result-track:54827c6c7dd5ff7601ae900dd27a0360cd1684dda234619fec77b4b58e903f8a` |
| 39 | `theorem` | [finsuppTensorFinsupp'_single_tmul_single](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupp-single-tmul-single--7e1c820113b1ad5b144e733e.md) | 341 | `result-track:7e1c820113b1ad5b144e733eaef960219dda7a67cce2a27577b4b8f57b1efa8e` |
| 40 | `theorem` | [finsuppTensorFinsupp'_symm_single_mul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupp-symm-single-mul--931391dc6f518b891deaf962.md) | 346 | `result-track:931391dc6f518b891deaf962a24702afdb004ffbf5d4b6936f2c03ba13d306a4` |
| 41 | `theorem` | [finsuppTensorFinsupp'_symm_single_eq_single_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupp-symm-single-eq-single-one-tmul--db7d996406084d0ffd36caf9.md) | 351 | `result-track:db7d996406084d0ffd36caf9a1bfb6b257d8911708241eb315a397d2a1a12a85` |
| 42 | `theorem` | [finsuppTensorFinsupp'_symm_single_eq_tmul_single_one](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupp-symm-single-eq-tmul-single-one--e4724b68a4f3043b60e75519.md) | 357 | `result-track:e4724b68a4f3043b60e75519f6bdde5b3162465dac6e4fe0d0823d1926f34fdb` |
| 43 | `theorem` | [finsuppTensorFinsuppLid_self](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupplid-self--a04feeda3cd9eb57d9b9627c.md) | 363 | `result-track:a04feeda3cd9eb57d9b9627cce52c479dc07fe5a3552a8c7a4dc6f29ce0e90f2` |
| 44 | `theorem` | [finsuppTensorFinsuppRid_self](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/declarations/finsupptensorfinsupprid-self--62ef0868389731a44c29cbc1.md) | 366 | `result-track:62ef0868389731a44c29cbc1058b11493390798d5a4eea65973929006fab9624` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
