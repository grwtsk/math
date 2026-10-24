# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Gcd.Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4815a34a543a8bf5e44c3406b39c0ac771b42760",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4815a34a543a8bf5e44c3406b39c0ac771b42760`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean.json)

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
| 1 | `def` | [Coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime--761a7057e8cdba1ec1122408.md) | 28 | `declaration-track:761a7057e8cdba1ec1122408440df0dbe5d443f714bae63f15de68580f8516d2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/instance--ead8ef49834dbea49accb543.md) | 31 | `declaration-track:ead8ef49834dbea49accb543668301186e48da960c8679a92de531e693c4ac1b` |
| 3 | `theorem` | [coprime_iff_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-iff-gcd-eq-one--c5c266b7b86e3bc259e3fbb6.md) | 33 | `result-track:c5c266b7b86e3bc259e3fbb6c823b76225f798146e95acc56e6387f5e7f29c58` |
| 4 | `theorem` | [Coprime.gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-gcd-eq-one--a2ceed89ae7d48aab4b8517a.md) | 35 | `result-track:a2ceed89ae7d48aab4b8517a932b34920356eb4a16fae7f95fca1c04175f888a` |
| 5 | `theorem` | [Coprime.symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-symm--b06442c127dfdc6757bec7b4.md) | 37 | `result-track:b06442c127dfdc6757bec7b4db20aee92327e2090b5646e626c97532a1718c66` |
| 6 | `theorem` | [coprime_comm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-comm--eea3fa9dcf2e93495b38d1fb.md) | 39 | `result-track:eea3fa9dcf2e93495b38d1fbbdf501ddf8a21cc525b63190e3d6e77bde8a74c9` |
| 7 | `theorem` | [Coprime.dvd_of_dvd_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-dvd-of-dvd-mul-right--ea0eb449ac40a51fd1160153.md) | 41 | `result-track:ea0eb449ac40a51fd11601531ba5138c2ecf6bf78ae640fb55eb569e6f2c0cc1` |
| 8 | `theorem` | [Coprime.dvd_of_dvd_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-dvd-of-dvd-mul-left--5268bffd81f6318fea0f34ff.md) | 45 | `result-track:5268bffd81f6318fea0f34ffd350623ddc1bf75884c11d4ab4e58cd1957ab5e5` |
| 9 | `theorem` | [Coprime.gcd_mul_left_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-gcd-mul-left-cancel--9abd859063db8db37eeab528.md) | 48 | `result-track:9abd859063db8db37eeab528bc2a3de03bebcd3bd423eca91b9bde9564a3ec6c` |
| 10 | `theorem` | [Coprime.gcd_mul_right_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-gcd-mul-right-cancel--ee24d032867d42fbdf8c20f8.md) | 55 | `result-track:ee24d032867d42fbdf8c20f85ec0318801c3d4e2fcb670b78159e4fff841ed88` |
| 11 | `theorem` | [Coprime.gcd_mul_left_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-gcd-mul-left-cancel-right--d93f2e9c373d356851ca1573.md) | 58 | `result-track:d93f2e9c373d356851ca1573167fae734eaaf97f595a5cc174e10340a2275d48` |
| 12 | `theorem` | [Coprime.gcd_mul_right_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-gcd-mul-right-cancel-right--c62fd2d1c7f7499bf72ca4d2.md) | 62 | `result-track:c62fd2d1c7f7499bf72ca4d29c9ca3c273f343334e5607f2bfac1cb6082868ff` |
| 13 | `theorem` | [coprime_div_gcd_div_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-div-gcd-div-gcd--56ee87386a102f26bbeca7c0.md) | 66 | `result-track:56ee87386a102f26bbeca7c093515b2f4453dd83079d112f659b074bd34af3d8` |
| 14 | `theorem` | [not_coprime_of_dvd_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/not-coprime-of-dvd-of-dvd--ce7f6ade2eb85203bc7f6f5c.md) | 70 | `result-track:ce7f6ade2eb85203bc7f6f5c0aa892df58d6096768aadd2c5d737a22df4f4077` |
| 15 | `theorem` | [exists_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/exists-coprime--8825d2bebae5075f88f37cbc.md) | 74 | `result-track:8825d2bebae5075f88f37cbce74ea8996f9fff9acbc6a174c5a4444f5277138b` |
| 16 | `theorem` | [exists_coprime'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/exists-coprime--9c1b319ffca1c252d14e177a.md) | 86 | `result-track:9c1b319ffca1c252d14e177a0449a8076d917b5447e5b508e031800c5037a06b` |
| 17 | `theorem` | [Coprime.mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-mul--a63c02e0f56cfb248ba12850.md) | 90 | `result-track:a63c02e0f56cfb248ba12850fdfdab60310f2040c828cf8435c33392b422dc47` |
| 18 | `theorem` | [Coprime.mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-mul-right--d13053b48c48c9114cb6ec92.md) | 93 | `result-track:d13053b48c48c9114cb6ec9274b2978839b67ee8b7df161051524093e60bac15` |
| 19 | `theorem` | [Coprime.coprime_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-coprime-dvd-left--661f708ad337cf12458f0894.md) | 96 | `result-track:661f708ad337cf12458f08946b65eadddf16cc07301ce961c307b3bc78312589` |
| 20 | `theorem` | [Coprime.coprime_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-coprime-dvd-right--691ef061e5aa65e9d462d187.md) | 102 | `result-track:691ef061e5aa65e9d462d1877997c8a8a76c23d5e612a7900a04f98fef14e1c0` |
| 21 | `theorem` | [Coprime.coprime_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-coprime-mul-left--a771463f8ada2285c18bfafa.md) | 105 | `result-track:a771463f8ada2285c18bfafa52926df62844a97113d6badc7c2fc0fdd4b03d09` |
| 22 | `theorem` | [Coprime.coprime_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-coprime-mul-right--4ff990c533d88b306b072647.md) | 108 | `result-track:4ff990c533d88b306b07264744d886c9e7dcea21df8166f6612defcbd61b73ba` |
| 23 | `theorem` | [Coprime.coprime_mul_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-coprime-mul-left-right--3a70f4ada5b123ff1e1bc2c9.md) | 111 | `result-track:3a70f4ada5b123ff1e1bc2c96a533d4338caf345104e05e48252617773dda0ef` |
| 24 | `theorem` | [Coprime.coprime_mul_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-coprime-mul-right-right--d3c672e5f6193fd2d44dd9af.md) | 114 | `result-track:d3c672e5f6193fd2d44dd9afa83fe3b7ffc693228cf7cb8b93b0b31767be43dc` |
| 25 | `theorem` | [Coprime.coprime_div_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-coprime-div-left--65f1c4fcec03cc6a588d4354.md) | 117 | `result-track:65f1c4fcec03cc6a588d43548d573f044005efdc73130217cd2387524719a6dd` |
| 26 | `theorem` | [Coprime.coprime_div_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-coprime-div-right--4a3ce1d70b844de1ca1860f3.md) | 129 | `result-track:4a3ce1d70b844de1ca1860f3093afb2c4846de27d80225129b1ed25d27e3f0b4` |
| 27 | `theorem` | [coprime_mul_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-mul-iff-left--f29f206e6568e11384045da5.md) | 132 | `result-track:f29f206e6568e11384045da541096870db7559ccc814960cea14cee1f727906b` |
| 28 | `theorem` | [coprime_mul_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-mul-iff-right--40d811ba79de5f323f41979f.md) | 136 | `result-track:40d811ba79de5f323f41979f382f8679b971d8b252612716360381d47e55903b` |
| 29 | `theorem` | [Coprime.gcd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-gcd-left--b1d518feb141313bf930850d.md) | 139 | `result-track:b1d518feb141313bf930850d38006304fcd643912bcff91e350cde3161d203b3` |
| 30 | `theorem` | [Coprime.gcd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-gcd-right--3909619d4e68d603b5969ca5.md) | 142 | `result-track:3909619d4e68d603b5969ca51e4e40473905d457ba81547f128a2a01745b5ffe` |
| 31 | `theorem` | [Coprime.gcd_both](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-gcd-both--42bc0f10afeb63b31e9e9a7e.md) | 145 | `result-track:42bc0f10afeb63b31e9e9a7e0e9c25d4ea0553f3a414ebb86e5ba8fafb48595a` |
| 32 | `theorem` | [Coprime.mul_dvd_of_dvd_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-mul-dvd-of-dvd-of-dvd--1c747876a61f88a020707123.md) | 148 | `result-track:1c747876a61f88a020707123af70ff29b097969fbeb3f06cbeb0caeede88ce90` |
| 33 | `theorem` | [coprime_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-zero-left--d3fe870fe882a7a8f8576d2a.md) | 152 | `result-track:d3fe870fe882a7a8f8576d2a7e9f1973b31644e6750e21e066b55929443c4ef6` |
| 34 | `theorem` | [coprime_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-zero-right--30718669cda00889245138c4.md) | 154 | `result-track:30718669cda00889245138c403a41523a97de7182fa69feb1184ddf81d7fb1d4` |
| 35 | `theorem` | [coprime_one_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-one-left--64e1b2ddcd080cc8c16f40b0.md) | 156 | `result-track:64e1b2ddcd080cc8c16f40b0c92583c7f47e3c2188d2b3b112c90cb6a3f1213a` |
| 36 | `theorem` | [coprime_one_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-one-right--fc96a0fdd353888db98eaee6.md) | 158 | `result-track:fc96a0fdd353888db98eaee680a70d9acd826dc9bb7d743267c77c36bf816f71` |
| 37 | `theorem` | [coprime_one_left_eq_true](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-one-left-eq-true--f4e392e62d162c00e42819fa.md) | 160 | `result-track:f4e392e62d162c00e42819faef45f07f54b44f9ebab9d1d5a7b5654fa99583c6` |
| 38 | `theorem` | [coprime_one_right_eq_true](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-one-right-eq-true--af9fb36164866b444a0ec350.md) | 162 | `result-track:af9fb36164866b444a0ec35091daf95e17e5deb7bbddb2daaf680de5ab62f0b1` |
| 39 | `theorem` | [coprime_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-self--e13671752a4519865f3a237e.md) | 164 | `result-track:e13671752a4519865f3a237e47f894133e946960c5d95092609be419c3c07203` |
| 40 | `theorem` | [Coprime.pow_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-pow-left--be39d1c98374dab950329b04.md) | 166 | `result-track:be39d1c98374dab950329b04a1032fcf65005b625a63007bce4e9f0095f79744` |
| 41 | `theorem` | [Coprime.pow_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-pow-right--aaf3d8ed9c7caf81d316045f.md) | 171 | `result-track:aaf3d8ed9c7caf81d316045f639ffae56ed7b234d8b3125942b4bac73c0b233f` |
| 42 | `theorem` | [Coprime.pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-pow--76ef0761ed8961d2303905fb.md) | 174 | `result-track:76ef0761ed8961d2303905fb81cfe075762306ff2e7c407038c2e5b0cb9838c7` |
| 43 | `theorem` | [Coprime.eq_one_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-eq-one-of-dvd--96bb3de58cca530b13389ce9.md) | 177 | `result-track:96bb3de58cca530b13389ce99cb2d17a6bd67606ba221a4c146093c101c8603e` |
| 44 | `theorem` | [Coprime.gcd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/coprime-gcd-mul--cc57d4e51abfe935ea7bdccc.md) | 180 | `result-track:cc57d4e51abfe935ea7bdccccdc684fa330e118437b85c11b50925e05c73b051` |
| 45 | `theorem` | [gcd_mul_gcd_of_coprime_of_mul_eq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean/declarations/gcd-mul-gcd-of-coprime-of-mul-eq-mul--8bb080c2276c593948faf785.md) | 187 | `result-track:8bb080c2276c593948faf785230955855bc847006ddd7140688c04f2c150820e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
