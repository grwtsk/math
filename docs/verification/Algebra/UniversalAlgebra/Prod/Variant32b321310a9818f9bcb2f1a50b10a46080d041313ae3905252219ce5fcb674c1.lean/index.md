# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prod.Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bf195a8414c7fd2fa8ec8de7aed283166ad7afd",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bf195a8414c7fd2fa8ec8de7aed283166ad7afd`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Util.AssertExists` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instOne](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/instone--587c73e9fa099547a41059bb.md) | 36 | `declaration-track:587c73e9fa099547a41059bbfefb857c380435aecdf26b42816505d548f532ff` |
| 2 | `theorem` | [fst_one](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/fst-one--206464605b67625572b94b6a.md) | 40 | `result-track:206464605b67625572b94b6a969d7a9f6b946dcefdb2e9fa1d01091d2d3907f2` |
| 3 | `theorem` | [snd_one](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/snd-one--cb17864aa17e7479193fa4f2.md) | 44 | `result-track:cb17864aa17e7479193fa4f2ac2b3d7a1b0420690ba3fdeb17eb959834f5b747` |
| 4 | `theorem` | [one_eq_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/one-eq-mk--0fd0dbca8fae7982081809aa.md) | 48 | `result-track:0fd0dbca8fae7982081809aa3c2c025e1fd3c593f164f60ea1e330b74a04e759` |
| 5 | `theorem` | [mk_one_one](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/mk-one-one--7413d44bc88e962ca3accd36.md) | 52 | `result-track:7413d44bc88e962ca3accd3650e11d00080014c202a8d6f0f0c6a4d04b581bc2` |
| 6 | `theorem` | [mk_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/mk-eq-one--6caa19053c3f800056883f88.md) | 55 | `result-track:6caa19053c3f800056883f88b9a380844a562acd64aae3746d30629cef239f4a` |
| 7 | `theorem` | [swap_one](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/swap-one--7a9e9161e1cadb744c7c1cde.md) | 58 | `result-track:7a9e9161e1cadb744c7c1cde9aa0ba3cca0903e46bb07d68ee06bb2849425a7f` |
| 8 | `instance` | [instMul](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/instmul--c578f9228eb206f04c1b9f92.md) | 68 | `declaration-track:c578f9228eb206f04c1b9f92d93189c6fe252c1158d45c6f08a7d7d5886a4074` |
| 9 | `theorem` | [fst_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/fst-mul--7f167b0b99a8d35acb0850bd.md) | 72 | `result-track:7f167b0b99a8d35acb0850bd33c2e28252b232790f0916bf61d039e2a4c224dd` |
| 10 | `theorem` | [snd_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/snd-mul--b50667d2b9653339089561eb.md) | 75 | `result-track:b50667d2b9653339089561ebb94358a1344d9f501b01ac3c123dd9ed6e5ee54b` |
| 11 | `theorem` | [mk_mul_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/mk-mul-mk--d718a48e0ec59608982e4dc3.md) | 78 | `result-track:d718a48e0ec59608982e4dc36c91a2cebf42802c46d503666f7a13235755e5a6` |
| 12 | `theorem` | [swap_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/swap-mul--e1f003ae530dcd8b0d3b8436.md) | 81 | `result-track:e1f003ae530dcd8b0d3b84367bf336d8810b6fb2890b5318c7dea7f64f341438` |
| 13 | `theorem` | [mul_def](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/mul-def--00c9e06388481a85d50fa843.md) | 84 | `result-track:00c9e06388481a85d50fa843b3742e375ccd2cfb00cd7a56f026d07eb21fac3e` |
| 14 | `instance` | [instInv](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/instinv--f70e080075e0fc00f0f2bf52.md) | 93 | `declaration-track:f70e080075e0fc00f0f2bf521a7da4fb2c4880cb93508ee14565e114ee767b54` |
| 15 | `theorem` | [fst_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/fst-inv--838d90434dd6ffe2359d2531.md) | 97 | `result-track:838d90434dd6ffe2359d2531ee9c887e7c4481c3e2242126012ff8d60b5ade71` |
| 16 | `theorem` | [snd_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/snd-inv--82d750d5d9f9103b59e580ad.md) | 100 | `result-track:82d750d5d9f9103b59e580ad39ca9c449d88996b6f5b3dff9fe6099e77de697b` |
| 17 | `theorem` | [inv_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/inv-mk--ac593892c45d1626074f7ab6.md) | 103 | `result-track:ac593892c45d1626074f7ab622c53b3be84fd5b6358017e393d96442546cb6bf` |
| 18 | `theorem` | [swap_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/swap-inv--68d409d60ad5cea20eb48cf0.md) | 106 | `result-track:68d409d60ad5cea20eb48cf0b43884ab77bd5299ceac1be83994389c9c40be74` |
| 19 | `instance` | [instDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/instdiv--7222b8ec1c32c7b917ce43ba.md) | 115 | `declaration-track:7222b8ec1c32c7b917ce43baecece1dd26dfdaf8e61d6994e1d6662c5caae515` |
| 20 | `theorem` | [fst_div](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/fst-div--dbac25b612dc36bec17732cb.md) | 119 | `result-track:dbac25b612dc36bec17732cbb12d709e7da93ae88db17b3895cf541e820b513a` |
| 21 | `theorem` | [snd_div](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/snd-div--e682b2e3ce4d1788fb7473d3.md) | 122 | `result-track:e682b2e3ce4d1788fb7473d392f232c28a5d017e04ef84333d1cd99ce975c94b` |
| 22 | `theorem` | [mk_div_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/mk-div-mk--68ed369e841ce17fcd984c48.md) | 125 | `result-track:68ed369e841ce17fcd984c48caf6432daa862e315a343f89b4262a4f15e7979d` |
| 23 | `theorem` | [swap_div](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/swap-div--ed81d4acb4611b9051475493.md) | 128 | `result-track:ed81d4acb4611b90514754937e5149b7c8558c45a97f5133dd2f7628fd0c169f` |
| 24 | `lemma` | [div_def](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/div-def--57f02d6e1095eb2868783829.md) | 130 | `result-track:57f02d6e1095eb28687838293204606ba2aeabcd55204d423188bef970491c71` |
| 25 | `instance` | [instSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/instsmul--0602378d89d98cdfba7315a7.md) | 139 | `declaration-track:0602378d89d98cdfba7315a77a626b1a239f36cdd989a4cc22d18b3f6027c6e7` |
| 26 | `lemma` | [smul_fst](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/smul-fst--013b454cbbba38e9af25e00e.md) | 141 | `result-track:013b454cbbba38e9af25e00eac8d61b2d86e2e79825e657856b5b486b6f312bb` |
| 27 | `lemma` | [smul_snd](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/smul-snd--b9040c9e348d54c58f3bb5f3.md) | 143 | `result-track:b9040c9e348d54c58f3bb5f338e3c8a986b6c1fec3bc4f2786826dfe4c886367` |
| 28 | `lemma` | [smul_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/smul-mk--a84bccba1d724d760a5e25e3.md) | 146 | `result-track:a84bccba1d724d760a5e25e36584b42c8a645e3692b153e8950eba61a3905566` |
| 29 | `lemma` | [smul_def](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/smul-def--482e3b3bd724bccd0a801f52.md) | 149 | `result-track:482e3b3bd724bccd0a801f525d203d57756d9d41ab9e24b107408ef91cb929f3` |
| 30 | `lemma` | [smul_swap](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/smul-swap--5a24449c9ffb555173942b64.md) | 151 | `result-track:5a24449c9ffb555173942b64feb06113fedae8dc09052cfea3c8b608947b5b8b` |
| 31 | `instance` | [instPow](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/instpow--9736cdb508e933f1114f88ae.md) | 160 | `declaration-track:9736cdb508e933f1114f88ae2cbcaa34a69f976b97806d37041f99556b3381dc` |
| 32 | `lemma` | [pow_fst](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/pow-fst--d1bcef67e4d3d2913538aaf6.md) | 163 | `result-track:d1bcef67e4d3d2913538aaf6a6f0c4cfedd032f8c0972af6ed23948727743407` |
| 33 | `lemma` | [pow_snd](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/pow-snd--22c8ade29c7a210a4bc70200.md) | 166 | `result-track:22c8ade29c7a210a4bc702001f3142d8f5fe9b45e59e6e55744999d33be951c7` |
| 34 | `lemma` | [pow_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/pow-mk--9d6d35949e2b9527f8857bd3.md) | 169 | `result-track:9d6d35949e2b9527f8857bd3844bb9f0da3147e3a8f87ba279b8433538f96a6c` |
| 35 | `lemma` | [pow_def](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/pow-def--07a2b719c92588cbebde5bad.md) | 172 | `result-track:07a2b719c92588cbebde5badec10a69abc5c907d590ca4ff4a956d367d52f273` |
| 36 | `lemma` | [pow_swap](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variant32b321310a9818f9bcb2f1a50b10a46080d041313ae3905252219ce5fcb674c1.lean/declarations/pow-swap--47b5c296f6486793f654c4e9.md) | 175 | `result-track:47b5c296f6486793f654c4e945ea064855bbfa0b54efd50a822bc13fc35b96c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
