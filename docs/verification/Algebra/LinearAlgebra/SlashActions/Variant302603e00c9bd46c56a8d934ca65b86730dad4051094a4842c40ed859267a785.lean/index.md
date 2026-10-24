# Verification target: GRWTSK.Algebra.LinearAlgebra.SlashActions.Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfeaac323c9245e88190e81b5e54bffc0102789f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfeaac323c9245e88190e81b5e54bffc0102789f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SlashAction](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/slashaction--80fcc7ddbce3c247bc8bbc9a.md) | 44 | `declaration-track:80fcc7ddbce3c247bc8bbc9abcd66110c0bcc45306cc456f90c121154e971022` |
| 2 | `theorem` | [SlashAction.neg_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/slashaction-neg-slash--70ed9f175804ea8acea07f63.md) | 56 | `result-track:70ed9f175804ea8acea07f63cf7261a55a57951c21eaaf486f756cc9b02d5822` |
| 3 | `lemma` | [SlashAction.sum_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/slashaction-sum-slash--cc535418c9b5d29184a535a9.md) | 63 | `result-track:cc535418c9b5d29184a535a9af4e06fc923d1132b7eefa89bc2948c5365f6be0` |
| 4 | `def` | [monoidHomSlashAction](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/monoidhomslashaction--1cadcff6feded9413c0a0661.md) | 73 | `declaration-track:1cadcff6feded9413c0a0661f93e93255e90998e75794d5ed4c7f6b5f6af835e` |
| 5 | `lemma` | [SlashAction.slash_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/slashaction-slash-eq-zero-iff--a2db60d0ec9549388f3a0f6e.md) | 82 | `result-track:a2db60d0ec9549388f3a0f6e1859c64b867a3d50aa49064e5ea1b0f63cefb8d2` |
| 6 | `def` | [privateSlash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/privateslash--8006bea04f6c9fd1bcf3f03a.md) | 99 | `declaration-track:8006bea04f6c9fd1bcf3f03abed53500a59afdabc52323dbd2961be2c22b1357` |
| 7 | `theorem` | [slash_mul](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/slash-mul--b6cc8940a5718bdafbe24c3a.md) | 107 | `result-track:b6cc8940a5718bdafbe24c3a829e81d55747a066af932891913035ecb60e3af6` |
| 8 | `theorem` | [add_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/add-slash--bc8fe96a71ddff40b96a780f.md) | 122 | `result-track:bc8fe96a71ddff40b96a780fbd702b2a0f868b095b6e9252e33de7cef2a1515e` |
| 9 | `theorem` | [slash_one](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/slash-one--1da90bd9eb51f17a91e1ebab.md) | 128 | `result-track:1da90bd9eb51f17a91e1ebabc302fe337b74f972518298810ae31ab97bc8e649` |
| 10 | `theorem` | [zero_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/zero-slash--95fecd36e21869ca74eae31a.md) | 132 | `result-track:95fecd36e21869ca74eae31a3d28cd6e768c56ac4771ecc8bd57fbe8e51e8793` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/instance--e126710dcfb994165c7d6d21.md) | 138 | `declaration-track:e126710dcfb994165c7d6d210524a5eac9527a8edf1302e06933ce3a3c88c247` |
| 12 | `theorem` | [slash_def](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/slash-def--29ccbd657d2f1abeca7790b7.md) | 147 | `result-track:29ccbd657d2f1abeca7790b733a00277ce0dcd2229cf6775243a92f27cbbb966` |
| 13 | `theorem` | [slash_apply](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/slash-apply--7537f12dcffca7cd23662862.md) | 151 | `result-track:7537f12dcffca7cd2366286219c6f048a703359f899f0de0950b0cb9af558e79` |
| 14 | `theorem` | [smul_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/smul-slash--5809050c1de473974554fb79.md) | 155 | `result-track:5809050c1de473974554fb79e69177973afca69cbe4248c3164a474012d030bb` |
| 15 | `instance` | [SLAction](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/slaction--13af43a953efcda727748514.md) | 160 | `declaration-track:13af43a953efcda72774851485e9b232d915bca0b8b06c7d6aa29be179384377` |
| 16 | `theorem` | [SL_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/sl-slash--24b224f4e7a9453c7821d593.md) | 163 | `result-track:24b224f4e7a9453c7821d5932db62eb33215dbac07eb53d23373d67c8bbb875f` |
| 17 | `theorem` | [SL_slash_def](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/sl-slash-def--460466a5f60ebb2f9cb93223.md) | 166 | `result-track:460466a5f60ebb2f9cb932238664049a21d668984a6778216c1517b5a883e320` |
| 18 | `theorem` | [SL_slash_apply](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/sl-slash-apply--d91fad0bb7f9e4c5ed78e0dc.md) | 170 | `result-track:d91fad0bb7f9e4c5ed78e0dc3e9b2f6dae0450306e32285e9c112567d7e8bf3a` |
| 19 | `theorem` | [SL_smul_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/sl-smul-slash--3888f89e87a03b49c1a9ea4f.md) | 175 | `result-track:3888f89e87a03b49c1a9ea4ff36b8222a4c7d041f29be59eed559f9cc5e4aa7b` |
| 20 | `theorem` | [is_invariant_const](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/is-invariant-const--608630456a79b02918980602.md) | 181 | `result-track:608630456a79b02918980602c40188a8a794106f71d0d70105c72e89ec1692c2` |
| 21 | `theorem` | [is_invariant_one](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/is-invariant-one--80da8774cdde9c4f30981b5e.md) | 187 | `result-track:80da8774cdde9c4f30981b5e7e4acefebcadfbff8db1b85a58be7e5ab326af9e` |
| 22 | `theorem` | [is_invariant_one'](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/is-invariant-one--432d42c6bab8aff01e4f6a55.md) | 192 | `result-track:432d42c6bab8aff01e4f6a553396cb8b8d0c7aa8721477f1a33c9393d374d435` |
| 23 | `theorem` | [slash_action_eq'_iff](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/slash-action-eq-iff--53b9e37defbe0d32fae8b4d9.md) | 198 | `result-track:53b9e37defbe0d32fae8b4d9f08aebcfe6865878578ff26ae30f79a2c0950fdf` |
| 24 | `theorem` | [mul_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/mul-slash--74c34fece5ef32818f410326.md) | 206 | `result-track:74c34fece5ef32818f410326d7957d2b39f46b673ffe59548972436bc7cd91d4` |
| 25 | `theorem` | [mul_slash_SL2](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/mul-slash-sl2--680f0bcd7f130cd015d2f738.md) | 219 | `result-track:680f0bcd7f130cd015d2f738b7521f727372d03125bc1f264c67ecdf7c62358b` |
| 26 | `theorem` | [div_slash_SL2](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/div-slash-sl2--483c7b0a6f5f42cb3074911b.md) | 223 | `result-track:483c7b0a6f5f42cb3074911b1dfeda03d0a2b8b850cebabe91922ef8f7656e84` |
| 27 | `lemma` | [prod_slash_sum_weights](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/prod-slash-sum-weights--14228aec51799b55e52a8d70.md) | 231 | `result-track:14228aec51799b55e52a8d705f0d45a4060656fef89f0da7ca5ea1baa9b3d2be` |
| 28 | `lemma` | [prod_slash](../../../../../mathematics/Algebra/LinearAlgebra/SlashActions/Variant302603e00c9bd46c56a8d934ca65b86730dad4051094a4842c40ed859267a785.lean/declarations/prod-slash--3a2c4a46a5827e7bddef23a6.md) | 253 | `result-track:3a2c4a46a5827e7bddef23a6c4ad27ea5447ee756347e62ebd6a32f6c2c3fcf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
