# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Coprime.Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83a0d8be18a5fbf27e207fbcd2c9f4b048db74bf",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83a0d8be18a5fbf27e207fbcd2c9f4b048db74bf`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Dvd` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime--d674e6e005994ac026ba3f7d.md) | 33 | `declaration-track:d674e6e005994ac026ba3f7d7e69b305f42f45e3d59309da567b9241e129cfb5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/instance--5450dbeb6e77314bd210228b.md) | 36 | `declaration-track:5450dbeb6e77314bd210228b1aef8416d02dfe3283ff601d69b2acb04cae4044` |
| 3 | `theorem` | [coprime_iff_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-iff-gcd-eq-one--4911005aef36c24e00a8d19c.md) | 38 | `result-track:4911005aef36c24e00a8d19c83ffc831c72b0f9326cc90655f6b0e8f79eff29a` |
| 4 | `theorem` | [Coprime.gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-gcd-eq-one--64deb94d7111ef399b2736e2.md) | 40 | `result-track:64deb94d7111ef399b2736e2e4d61cdd944216a53e3a3f8b480f9388d3303037` |
| 5 | `theorem` | [Coprime.symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-symm--460aa54bc44fa2f4a107d584.md) | 42 | `result-track:460aa54bc44fa2f4a107d5844491e2ae0535492932a86f2e3b4a0c0973067912` |
| 6 | `theorem` | [coprime_comm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-comm--c9b520dc39020b37e724e870.md) | 44 | `result-track:c9b520dc39020b37e724e8704c07e276a0392b31a1aba17219a70a1d99083d14` |
| 7 | `theorem` | [Coprime.dvd_of_dvd_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-dvd-of-dvd-mul-right--02671ce0829efcb99d7f525e.md) | 46 | `result-track:02671ce0829efcb99d7f525ed25bd184a2f5a03fae6b84af83f79b6ab688d54f` |
| 8 | `theorem` | [Coprime.dvd_of_dvd_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-dvd-of-dvd-mul-left--495a35d9c218936c25307673.md) | 50 | `result-track:495a35d9c218936c253076737b3fc31e1a542ecb9b643cd0a2950dc0fc676b72` |
| 9 | `theorem` | [Coprime.gcd_mul_left_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-gcd-mul-left-cancel--b11251f2c01a3a6d06468fdf.md) | 53 | `result-track:b11251f2c01a3a6d06468fdfacdb6ebce271aff33dce2a4c644d4508273929d3` |
| 10 | `theorem` | [Coprime.gcd_mul_right_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-gcd-mul-right-cancel--0fc305a12defcd2b99da2d70.md) | 60 | `result-track:0fc305a12defcd2b99da2d70344d50226187a33dbe205d668dc67d33be942e8b` |
| 11 | `theorem` | [Coprime.gcd_mul_left_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-gcd-mul-left-cancel-right--45975884f95ab5ed9e2d494a.md) | 63 | `result-track:45975884f95ab5ed9e2d494ab2927a559b753cf4ad10c199ec5f1a4cbeda22aa` |
| 12 | `theorem` | [Coprime.gcd_mul_right_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-gcd-mul-right-cancel-right--fd2095448a311fad16032c5e.md) | 67 | `result-track:fd2095448a311fad16032c5e68dfa48f8ffd04e43311f67e37b85cb1585e984f` |
| 13 | `theorem` | [coprime_div_gcd_div_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-div-gcd-div-gcd--4686d1cf2a47d544359f69ce.md) | 71 | `result-track:4686d1cf2a47d544359f69ce54f0727f3b740190172216615f712d3cba613e87` |
| 14 | `theorem` | [not_coprime_of_dvd_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/not-coprime-of-dvd-of-dvd--62f0b8b0d6f17101fdc617e3.md) | 75 | `result-track:62f0b8b0d6f17101fdc617e32d32837c14e5a0fd4438763b4cf08a479e77dda5` |
| 15 | `theorem` | [exists_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/exists-coprime--b91d40023e9d3ea79b5903be.md) | 79 | `result-track:b91d40023e9d3ea79b5903be852487ea1227e923e65d6a078a7c62a157c856f0` |
| 16 | `theorem` | [exists_coprime'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/exists-coprime--4161c0e57a0c66a7de8d9b87.md) | 91 | `result-track:4161c0e57a0c66a7de8d9b8703d67d8ed2ea27032b7b15abf2642266fa58d5f1` |
| 17 | `theorem` | [Coprime.mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-mul-left--4d9bb4e939c5e3a71fd498a3.md) | 95 | `result-track:4d9bb4e939c5e3a71fd498a3f90e6a57ec46c4b9a38b49e179f6e32c49419650` |
| 18 | `theorem` | [Coprime.mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-mul-right--e0c60508397b47dd5528a92c.md) | 98 | `result-track:e0c60508397b47dd5528a92ce16ed023b3bf4be41dbb00251af918e6d4550a36` |
| 19 | `theorem` | [Coprime.coprime_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-coprime-dvd-left--6aec66d69a37af669f52d138.md) | 101 | `result-track:6aec66d69a37af669f52d138931ecf595ae317ca31554e397cebb550bfcada79` |
| 20 | `theorem` | [Coprime.coprime_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-coprime-dvd-right--9f960597627c8c69d2849ccd.md) | 107 | `result-track:9f960597627c8c69d2849ccdd5ef397cfd9b654c9794bb6e052f6850bb9f10e7` |
| 21 | `theorem` | [Coprime.coprime_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-coprime-mul-left--5d6a1cc43722feaf9843f23a.md) | 110 | `result-track:5d6a1cc43722feaf9843f23a9c444cc3ec59a0e119186fd18800ca54ccdf9a72` |
| 22 | `theorem` | [Coprime.coprime_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-coprime-mul-right--a6090dd74a5d0eeb08b92a45.md) | 113 | `result-track:a6090dd74a5d0eeb08b92a456317d5183cad7e038b21b0ae2f3ebd88392d7170` |
| 23 | `theorem` | [Coprime.coprime_mul_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-coprime-mul-left-right--56ce8bacd4d14cccccfdf518.md) | 116 | `result-track:56ce8bacd4d14cccccfdf518ba479cc259b76b8152b7874670326787ac78ae88` |
| 24 | `theorem` | [Coprime.coprime_mul_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-coprime-mul-right-right--1873a9aaa5c471011c49a410.md) | 119 | `result-track:1873a9aaa5c471011c49a410b852828b794f9f8a907cb7911ee1d741b18ac180` |
| 25 | `theorem` | [Coprime.coprime_div_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-coprime-div-left--07554c004b1e872dcd3445b2.md) | 122 | `result-track:07554c004b1e872dcd3445b2465a46a5b0464a6a6e6fce641c2667f8794626e9` |
| 26 | `theorem` | [Coprime.coprime_div_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-coprime-div-right--279c0bc8cb2aec5c4ab03567.md) | 134 | `result-track:279c0bc8cb2aec5c4ab03567893d8c5c6c7b36338c3ead55e022127637aedf03` |
| 27 | `theorem` | [coprime_mul_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-mul-iff-left--74d6dd2c203b68359b3da2a2.md) | 137 | `result-track:74d6dd2c203b68359b3da2a29d0d070d57563d3149a542e388f00aeae053f63c` |
| 28 | `theorem` | [coprime_mul_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-mul-iff-right--79113f49b1bdeaa3a8ad95d0.md) | 141 | `result-track:79113f49b1bdeaa3a8ad95d02ecaf5048c455daa703fc7119424c1c83340780c` |
| 29 | `theorem` | [Coprime.gcd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-gcd-left--6a51e68901fd4da121e719f6.md) | 144 | `result-track:6a51e68901fd4da121e719f6bdc0f9d440c1a2dd6dc686506174975ccfb186c2` |
| 30 | `theorem` | [Coprime.gcd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-gcd-right--5b52343a96135f86723c7700.md) | 147 | `result-track:5b52343a96135f86723c7700a5edc48acdf49cdfdf0203a656ba1f0c37816e15` |
| 31 | `theorem` | [Coprime.gcd_both](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-gcd-both--1735ef19794fb3ccfa96bb68.md) | 150 | `result-track:1735ef19794fb3ccfa96bb68814146db210164c951a70b14b6c340b1bd852a57` |
| 32 | `theorem` | [Coprime.mul_dvd_of_dvd_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-mul-dvd-of-dvd-of-dvd--b731a8d9e176f9a5833606a9.md) | 153 | `result-track:b731a8d9e176f9a5833606a91bf9f7df4ce4b84e149fbc34c8ef03618b9d526b` |
| 33 | `theorem` | [coprime_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-zero-left--944752917e4760a8ca2b1d32.md) | 157 | `result-track:944752917e4760a8ca2b1d320c7cd5d97603c07049d7dc03150fa730b6f6c174` |
| 34 | `theorem` | [coprime_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-zero-right--56264ee491df29b6fc6165cf.md) | 159 | `result-track:56264ee491df29b6fc6165cff7681226cea6d270ed7fdaa5ca609b0ef16cce36` |
| 35 | `theorem` | [coprime_one_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-one-left--4a94198b822982708d450820.md) | 161 | `result-track:4a94198b822982708d4508203c4d428eadbec4cb764bdd9a9cc0c1b59e6fa280` |
| 36 | `theorem` | [coprime_one_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-one-right--6c6d0358f33ac4c4648191a2.md) | 163 | `result-track:6c6d0358f33ac4c4648191a25999ccb9a305926de0cb97380251d1922f5aca76` |
| 37 | `theorem` | [coprime_one_left_eq_true](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-one-left-eq-true--8d2c7fde288387d94cb9a5d9.md) | 165 | `result-track:8d2c7fde288387d94cb9a5d976d00db82a81e1427b091dca74d09411f4d3c9a4` |
| 38 | `theorem` | [coprime_one_right_eq_true](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-one-right-eq-true--df39975ec76966d1b050292c.md) | 167 | `result-track:df39975ec76966d1b050292ce8085534791c2bd8b9f4ab6c65b6cf86f93f97ae` |
| 39 | `theorem` | [coprime_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-self--d919b27096efedc79aa547fd.md) | 169 | `result-track:d919b27096efedc79aa547fd7b0e8da9bbd6be23d7b9ac47f8bcb0d6340a1cb2` |
| 40 | `theorem` | [Coprime.pow_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-pow-left--0585c1d1922cd3d7edad85ec.md) | 171 | `result-track:0585c1d1922cd3d7edad85ec6909581e1c8704dac191fd13268698d3855e21b0` |
| 41 | `theorem` | [Coprime.pow_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-pow-right--32dca18e5180fa6cb2d88f4a.md) | 176 | `result-track:32dca18e5180fa6cb2d88f4a0076dab7e68e1d01b37c0ff4e4eec718ca79fff7` |
| 42 | `theorem` | [Coprime.pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-pow--d5db51c533c5b046311ada87.md) | 179 | `result-track:d5db51c533c5b046311ada879f68ed9118ca800c3b95814da7a8b2ea995cc7df` |
| 43 | `theorem` | [Coprime.eq_one_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-eq-one-of-dvd--976356f435e50858c7bb68fd.md) | 182 | `result-track:976356f435e50858c7bb68fd8e5192c4777a0882c660f3c5fc7e9fa64379d7a0` |
| 44 | `theorem` | [Coprime.gcd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-gcd-mul--1b8e851aac644e1ea59971a5.md) | 185 | `result-track:1b8e851aac644e1ea59971a5dc14f0b9a2aff378733f891c8fe49e10ae0dfd6c` |
| 45 | `theorem` | [Coprime.mul_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/coprime-mul-gcd--20ffab00bbb1631d20385337.md) | 192 | `result-track:20ffab00bbb1631d20385337ca2b1d89713679e01f3d04fde5ac00eb4b9e14bd` |
| 46 | `theorem` | [gcd_mul_gcd_of_coprime_of_mul_eq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Coprime/Variantf80b443e3a17959156b2bc3a1224300211f0e19be28788c41b804db22741fb97.lean/declarations/gcd-mul-gcd-of-coprime-of-mul-eq-mul--dddece283ab8d4cbcca5dbc9.md) | 195 | `result-track:dddece283ab8d4cbcca5dbc92d20b8b9f5a85c69c46f14b3a0c4f4829ed8676b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
