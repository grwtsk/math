# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbc86d829202eba8ec30dab30e72cdd08107923a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbc86d829202eba8ec30dab30e72cdd08107923a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Notation.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instOne](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/instone--bff396c8b9f04c5cd3b8c0d0.md) | 30 | `declaration-track:bff396c8b9f04c5cd3b8c0d07a53ab88c24f13848213a7757ff1a90235eca180` |
| 2 | `lemma` | [one_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/one-apply--e9d7c37526790eccaa2e2529.md) | 33 | `result-track:e9d7c37526790eccaa2e2529ed5114f0b47d9b022af3520231f7ae56373aeb34` |
| 3 | `lemma` | [one_def](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/one-def--90a1e4c2cc6883a41f115098.md) | 36 | `result-track:90a1e4c2cc6883a41f115098c8488a4cebfa77993d56ef2f85136ff799126f4e` |
| 4 | `lemma` | [_root_.Function.const_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/root-function-const-one--36b0f8ce86e72fa9816fb415.md) | 40 | `result-track:36b0f8ce86e72fa9816fb4153d6ea449eb4cb8fc2e0f5a986e71d0783dbe383b` |
| 5 | `lemma` | [one_comp](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/one-comp--b8d1e51ae65eb3e2dc498efa.md) | 42 | `result-track:b8d1e51ae65eb3e2dc498efa44226608f3df7f2e2fa8d5af769b3d4f32a59b02` |
| 6 | `lemma` | [comp_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/comp-one--f3d809fdb836d4016f41779f.md) | 43 | `result-track:f3d809fdb836d4016f41779fd5e5494aef819020d2a62e939a91d22e19dd3ec1` |
| 7 | `instance` | [instMul](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/instmul--fbd0329eacd2ab609e15654d.md) | 51 | `declaration-track:fbd0329eacd2ab609e15654d5688a07564024a6569ff5f8d0e96965131b82f82` |
| 8 | `lemma` | [mul_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/mul-apply--3503dafa9aeb3e4bba6f7bac.md) | 54 | `result-track:3503dafa9aeb3e4bba6f7bacd5fce33b934eb57da160ee164899a1e774d845e8` |
| 9 | `lemma` | [mul_def](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/mul-def--13c00e8aca33cd9f6cf2f3f0.md) | 57 | `result-track:13c00e8aca33cd9f6cf2f3f030ee17694b369da414d083c3c0167075e638d1ff` |
| 10 | `lemma` | [_root_.Function.const_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/root-function-const-mul--6fff2e7b45d3535f955d4c3b.md) | 62 | `result-track:6fff2e7b45d3535f955d4c3be36091facc3ba52f06f693957956b47b60c3c50f` |
| 11 | `lemma` | [mul_comp](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/mul-comp--533c68e0790082bf014305c8.md) | 65 | `result-track:533c68e0790082bf014305c82b1a1aed9db4232936c954158cf5cec9f05b2723` |
| 12 | `instance` | [instInv](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/instinv--8e84faa3e1f6f834d908b2d5.md) | 73 | `declaration-track:8e84faa3e1f6f834d908b2d565a2fee5e3f8107d83ee59658456111f1d8e9ba5` |
| 13 | `lemma` | [inv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/inv-apply--5ab1409227e59c3500690354.md) | 76 | `result-track:5ab1409227e59c350069035491b2d2d056fae249fc04a9d0149936b9209a1453` |
| 14 | `lemma` | [inv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/inv-def--19472e834f2f906a04448595.md) | 79 | `result-track:19472e834f2f906a04448595160ba0689e3cb099417e88c3559f09495c11ed71` |
| 15 | `lemma` | [_root_.Function.const_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/root-function-const-inv--63aa580d7c481b4c031178a7.md) | 84 | `result-track:63aa580d7c481b4c031178a79dd3fe5079f4e2f6cb862569424e018584c6e925` |
| 16 | `lemma` | [inv_comp](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/inv-comp--e6a0ac86779b66dcb61d8aea.md) | 87 | `result-track:e6a0ac86779b66dcb61d8aeac6f105b8cdc587990a0c753b09d336607fed1cb1` |
| 17 | `instance` | [instDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/instdiv--d230223526603ec87d5469f1.md) | 94 | `declaration-track:d230223526603ec87d5469f10234eb9caeaa4e4856222d28e82c2f57a2ff7166` |
| 18 | `lemma` | [div_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/div-apply--29f903cd68083ffceaea3bfb.md) | 97 | `result-track:29f903cd68083ffceaea3bfba49e3be52a1c9711917734ef1452b7053e3a5660` |
| 19 | `lemma` | [div_def](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/div-def--7c629b45e7df5059826bf8f3.md) | 100 | `result-track:7c629b45e7df5059826bf8f3d026e3eef22bf204208ff16464488d256afbbd12` |
| 20 | `lemma` | [div_comp](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/div-comp--4fcb3393fc9a8235f93a112f.md) | 105 | `result-track:4fcb3393fc9a8235f93a112ffe7f9d6ca01c284995cf473c37801845733d6a34` |
| 21 | `lemma` | [_root_.Function.const_div](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/root-function-const-div--ebf5fff2cfc2437ec869abda.md) | 108 | `result-track:ebf5fff2cfc2437ec869abda8aff2d114e8d05cbbedec27fba56011bacf39976` |
| 22 | `instance` | [instSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/instsmul--225a5f545cea68d445ac141c.md) | 115 | `declaration-track:225a5f545cea68d445ac141c6d6184c1252b31f1959344d07ebecdc2153938ae` |
| 23 | `instance` | [instPow](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/instpow--18d0162148e452bf3c73b4f3.md) | 120 | `declaration-track:18d0162148e452bf3c73b4f3e197e4b7ed5e1426907513200bb48b2251379d58` |
| 24 | `lemma` | [pow_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/pow-apply--25e6c75663b19d28924720b0.md) | 123 | `result-track:25e6c75663b19d28924720b0198e58cc6c732f905bc4f20891fea109c1ecb895` |
| 25 | `lemma` | [pow_def](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/pow-def--1248d0e909809640da443c70.md) | 126 | `result-track:1248d0e909809640da443c70ab6a98f6bfe7aef61a454ff771e2cad764b922d3` |
| 26 | `lemma` | [_root_.Function.const_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/root-function-const-pow--6ce36ecb5173b23e1a53733a.md) | 131 | `result-track:6ce36ecb5173b23e1a53733a5db4465577be3d342cfab42202c8b9c85e94e96f` |
| 27 | `lemma` | [pow_comp](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variant763ff33918b7ee4f2c52f5f6a5a756e799f744efd6620330246b047deb0e5e27.lean/declarations/pow-comp--dd97569902e2633fc90d8cf0.md) | 134 | `result-track:dd97569902e2633fc90d8cf0015ade002bcd8fb2a5d616f27463463681bcdba2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
