# Verification target: GRWTSK.Algebra.GroupTheory.SMul.Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1d97cc87630b6d11bd1979aa7527a99699e18df",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1d97cc87630b6d11bd1979aa7527a99699e18df`.

Source path: `GRWTSK/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean.json)

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
| 1 | `def` | [IsSMulRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/issmulregular--bf777f562ffec2163d9c6d49.md) | 52 | `declaration-track:bf777f562ffec2163d9c6d49b46dbf9e0a14bfd7afea23f97d3604738425b8a2` |
| 2 | `theorem` | [IsLeftRegular.isSMulRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/isleftregular-issmulregular--b030d62f3dca9619b6094b33.md) | 56 | `result-track:b030d62f3dca9619b6094b3370b3847ff7744305d7bddeeb45071856548fe684` |
| 3 | `theorem` | [isLeftRegular_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/isleftregular-iff--1f9e5c50d759d701ebd46ba4.md) | 62 | `result-track:1f9e5c50d759d701ebd46ba4498d74bf9fba453c1133a7dd230d1d543c8338f6` |
| 4 | `theorem` | [IsRightRegular.isSMulRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/isrightregular-issmulregular--e7a0ade2afe6bf8aa4bf0767.md) | 66 | `result-track:e7a0ade2afe6bf8aa4bf0767e9fd9ed1c2102fe24544bc5abb29fd00f730c407` |
| 5 | `theorem` | [isRightRegular_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/isrightregular-iff--8da58e4244c2bc2d4a0850d5.md) | 73 | `result-track:8da58e4244c2bc2d4a0850d5a053ba840a7f67c1fe929e7cdbe165fce58edfc2` |
| 6 | `lemma` | [isSMulRegular_map](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/issmulregular-map--e8d89db0658851d99fabca40.md) | 80 | `result-track:e8d89db0658851d99fabca404937ee6d0cd60d88b12f23a51bd175bdd27c0867` |
| 7 | `theorem` | [isAddTorsionFree_iff'](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/isaddtorsionfree-iff--7d2a1327adea9e923426aec7.md) | 86 | `result-track:7d2a1327adea9e923426aec780245df1394bd1a578e43c659c9b6398cdeeb64e` |
| 8 | `theorem` | [nat_of_isAddTorsionFree](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/nat-of-isaddtorsionfree--cd91288db4bec00a26f83841.md) | 91 | `result-track:cd91288db4bec00a26f83841f3b7c95819faac5c3abcbcc5f2a49b5d7a736f11` |
| 9 | `theorem` | [natAbs_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/natabs-iff--2a295c9c117717cae7a525eb.md) | 95 | `result-track:2a295c9c117717cae7a525eb537e681fb3c36be34fe6fb326d9b9eb04882870f` |
| 10 | `theorem` | [smul](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/smul--f63111fdd75f3d98081b5d2d.md) | 111 | `result-track:f63111fdd75f3d98081b5d2db17e3511b1639259aae2600e6312cb3ccbbba23c` |
| 11 | `theorem` | [of_smul](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/of-smul--331ab05f0fca32164c530544.md) | 119 | `result-track:331ab05f0fca32164c53054426b3642b2162d4c13e5b6cbbd23f3cbcaea188e4` |
| 12 | `theorem` | [smul_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/smul-iff--f2e7ecb7a23a9dd4bc0abc4c.md) | 130 | `result-track:f2e7ecb7a23a9dd4bc0abc4cc62e8cb152a4bb051b6bd0c3b5b32a02c7112f91` |
| 13 | `theorem` | [isLeftRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/isleftregular--9a1897c9bd9050e2b4df9846.md) | 134 | `result-track:9a1897c9bd9050e2b4df9846ef4a41279c20aea6362fa90c03679e90633b047c` |
| 14 | `theorem` | [isRightRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/isrightregular--1b67563100b846609260cfa7.md) | 138 | `result-track:1b67563100b846609260cfa7691224cd2725f5c705898108de559eee351ea336` |
| 15 | `theorem` | [mul](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/mul--85ada3983356535c2b99f813.md) | 143 | `result-track:85ada3983356535c2b99f81390466395d4782a428cfc1526f300cf4145869335` |
| 16 | `theorem` | [of_mul](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/of-mul--8c88202300edc5d07ed3123e.md) | 148 | `result-track:8c88202300edc5d07ed3123e533ddf33f66e2fe593e5b84aef8122aad3d5aa4d` |
| 17 | `theorem` | [mul_iff_right](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/mul-iff-right--e5e8746b6f69fe6c287e8031.md) | 154 | `result-track:e5e8746b6f69fe6c287e80316104f5f4a7049acd3f76f19ae5a5e8222ffe5dea` |
| 18 | `theorem` | [mul_and_mul_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/mul-and-mul-iff--d35c8ad8ed3ce64867bb72ec.md) | 163 | `result-track:d35c8ad8ed3ce64867bb72ec901673a5d3c4a49f090aa5a678c81d1481e238ff` |
| 19 | `theorem` | [one](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/one--727bf17334d321b08cefa300.md) | 181 | `result-track:727bf17334d321b08cefa300876616c91698fcd65817a6cbe40960174835a823` |
| 20 | `theorem` | [of_mul_eq_one](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/of-mul-eq-one--d74918b55ed5b6467e44eb3e.md) | 190 | `result-track:d74918b55ed5b6467e44eb3e303658b1c183d9a4738140cfac694616a004fce9` |
| 21 | `theorem` | [pow](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/pow--d95f1f365d1baa366df7b80d.md) | 196 | `result-track:d95f1f365d1baa366df7b80d5c5045c05a60bf985424da22eccf2db7150c0928` |
| 22 | `theorem` | [pow_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/pow-iff--07b5be985d156434695d6e25.md) | 206 | `result-track:07b5be985d156434695d6e25356f9f90a39d720981c66fe6ed9db3c6e83e6519` |
| 23 | `theorem` | [of_smul_eq_one](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/of-smul-eq-one--9c99d3490637c1431d439212.md) | 220 | `result-track:9c99d3490637c1431d43921251c41daf59c6b4e6138b869a0c2d71e8af43e125` |
| 24 | `theorem` | [mul_iff](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/mul-iff--266b7508ac792959f469e10a.md) | 235 | `result-track:266b7508ac792959f469e10a8a6d3cfe10804041e55a437b073a6e217aa197f0` |
| 25 | `theorem` | [IsSMulRegular.all](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/issmulregular-all--415a93f892e8575d3f899ead.md) | 246 | `result-track:415a93f892e8575d3f899ead9253e879f58d956295aae2ea447da659c3c1ded7` |
| 26 | `theorem` | [isSMulRegular_of_group](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/issmulregular-of-group--e49f8164cdf622674af62ddd.md) | 255 | `result-track:e49f8164cdf622674af62ddd6f9da9c0455984c88e58441812f0f8b3a5b82e6d` |
| 27 | `theorem` | [Units.isSMulRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/units-issmulregular--8c83b8c984e73bffce1661ae.md) | 267 | `result-track:8c83b8c984e73bffce1661ae2e09a4865c8139e86687bf3c0527d50e5fc50dea` |
| 28 | `theorem` | [IsUnit.isSMulRegular](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/isunit-issmulregular--c0a5859317d3d6aa2c739c46.md) | 273 | `result-track:c0a5859317d3d6aa2c739c46e612bce9e60fd0b11ebe16b14e187ff06c448f8c` |
| 29 | `lemma` | [Equiv.isSMulRegular_congr](../../../../../mathematics/Algebra/GroupTheory/SMul/Variantb42edb70437f5ae4b4247a15b659e70597d8d1105d0146444f3bb5fc6d8f5013.lean/declarations/equiv-issmulregular-congr--3b6621546c02abbad6d77d46.md) | 280 | `result-track:3b6621546c02abbad6d77d4696f45ff4a8af86c7db7669287d98a2fc52fff4e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
