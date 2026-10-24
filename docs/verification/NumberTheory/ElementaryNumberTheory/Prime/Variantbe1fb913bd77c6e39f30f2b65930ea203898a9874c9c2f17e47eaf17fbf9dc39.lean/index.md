# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Prime.Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad9cc5364822d40c2c75b1c5a44992485ab146d5",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad9cc5364822d40c2c75b1c5a44992485ab146d5`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/topnat--db5f2d18b2e99d77047896c5.md) | 23 | `declaration-track:db5f2d18b2e99d77047896c5f1fd5195efdbb510686d452e46b721a96e1c488c` |
| 2 | `instance` | [coePNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coepnat--20c7a87fc0896a5cfa234660.md) | 26 | `declaration-track:20c7a87fc0896a5cfa23466053d34ba6aaa5046d3f9d920e3d3277aef55772ca` |
| 3 | `theorem` | [coe_pnat_nat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coe-pnat-nat--eeef38af30be5cc0a372e8e4.md) | 31 | `result-track:eeef38af30be5cc0a372e8e4072b4b1badbd6d93bcde4a88505665c9a57aaede` |
| 4 | `theorem` | [coe_pnat_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coe-pnat-injective--146d5c7b7921ca4acf5727fe.md) | 35 | `result-track:146d5c7b7921ca4acf5727fef0198e1d9663a9e7517627e5b854214cf9605f05` |
| 5 | `theorem` | [coe_pnat_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coe-pnat-inj--c3f693b936db3a43cb92a6bd.md) | 40 | `result-track:c3f693b936db3a43cb92a6bdd18355620eab8c72fdbc74e9f6cebd580c322c4c` |
| 6 | `def` | [gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/gcd--54ff4b5821677ab62f951310.md) | 52 | `declaration-track:54ff4b5821677ab62f951310674d65362d06b9ee5bc8e6a0c8b06f4880d61686` |
| 7 | `def` | [lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/lcm--9790a8e13c20c3baad299a84.md) | 58 | `declaration-track:9790a8e13c20c3baad299a8489a2c926fdc66a35ca505dccbdc7548f93dc22f1` |
| 8 | `theorem` | [gcd_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/gcd-coe--3d0a78f02692c5a165553617.md) | 66 | `result-track:3d0a78f02692c5a16555361798ce1231d1e87ef5e9b37d21d304f6a12cdbc5ff` |
| 9 | `theorem` | [lcm_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/lcm-coe--7c21964882a5c5d7b46d4bac.md) | 71 | `result-track:7c21964882a5c5d7b46d4bac1940aaea8e5c82cc192d09179943a4677c93dd37` |
| 10 | `theorem` | [gcd_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/gcd-dvd-left--30cbbfcc1585ab892e65ac6e.md) | 75 | `result-track:30cbbfcc1585ab892e65ac6e535db5044fb3c514d27028966a459babed35a0f7` |
| 11 | `theorem` | [gcd_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/gcd-dvd-right--7a1eb96eacb1a4ae71b794ce.md) | 79 | `result-track:7a1eb96eacb1a4ae71b794cecc5d24671e0c1eba4a6a033166304e7821f9bb81` |
| 12 | `theorem` | [dvd_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/dvd-gcd--d2c6f07db36944e67e857746.md) | 83 | `result-track:d2c6f07db36944e67e857746dfc09e8acae928d1645f418245c599e5c9b9d8fa` |
| 13 | `theorem` | [dvd_lcm_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/dvd-lcm-left--984d648eb06860848691f163.md) | 87 | `result-track:984d648eb06860848691f16326f89dc30872d2f20ad7e04a1a5b595bdbbc596b` |
| 14 | `theorem` | [dvd_lcm_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/dvd-lcm-right--33836623f9126baf0ba67466.md) | 91 | `result-track:33836623f9126baf0ba67466e77ade23749a4668ef824a8bfee28e33a267da15` |
| 15 | `theorem` | [lcm_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/lcm-dvd--ea7231fefd28a2d461c374ed.md) | 95 | `result-track:ea7231fefd28a2d461c374ed54df3f3fe8ac1e00b6d540c3af2cff4cf0fda7b3` |
| 16 | `theorem` | [gcd_mul_lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/gcd-mul-lcm--45307bf18682db488ca8dff3.md) | 99 | `result-track:45307bf18682db488ca8dff31f9cb98254cada8b35893917e1d0110a070774bd` |
| 17 | `theorem` | [eq_one_of_lt_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/eq-one-of-lt-two--3d259c5521f3a1943d966c6a.md) | 103 | `result-track:3d259c5521f3a1943d966c6a604a3bf83566363a73f4b597a48cee7a28e0f02c` |
| 18 | `def` | [Prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/prime--ef9b0df2c4c6f371759f227e.md) | 114 | `declaration-track:ef9b0df2c4c6f371759f227e1b8765ba6f4e7459c8633f01d605719ba5517eb7` |
| 19 | `theorem` | [Prime.one_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/prime-one-lt--5726e7e4854f72e38c47469d.md) | 118 | `result-track:5726e7e4854f72e38c47469d16b37512c74560805ac94932f92b4b8303f171f3` |
| 20 | `theorem` | [prime_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/prime-two--b891dec358cd51e0aa7fbf54.md) | 122 | `result-track:b891dec358cd51e0aa7fbf5409951138b27767fe103aa756f4b4502a083d4c3c` |
| 21 | `theorem` | [dvd_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/dvd-prime--45f6a9d07c8d75924341b90d.md) | 126 | `result-track:45f6a9d07c8d75924341b90de83910ee70b1039a228f3adbb5e3d32434f1e56e` |
| 22 | `theorem` | [Prime.ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/prime-ne-one--fc290f2908481f7727425973.md) | 132 | `result-track:fc290f2908481f772742597306e64b5a67ccf028977f1cdc51f3656cffa7b5b6` |
| 23 | `theorem` | [not_prime_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/not-prime-one--676aa8517de7db8ed3a2752c.md) | 141 | `result-track:676aa8517de7db8ed3a2752cf73bb0ac345458c32c52154d3feb73a4b1047969` |
| 24 | `theorem` | [Prime.not_dvd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/prime-not-dvd-one--ec61f04d4af87b6fe1459f8f.md) | 145 | `result-track:ec61f04d4af87b6fe1459f8f10bbcf3343c524eba5c5a16c99de778a153cda75` |
| 25 | `theorem` | [exists_prime_and_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/exists-prime-and-dvd--9f3f191361c37e4f08667433.md) | 150 | `result-track:9f3f191361c37e4f08667433910bea18d0918c3014e7ccccb0ba10b0818ee7ec` |
| 26 | `def` | [Coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime--44321de10b593a78c83e53e1.md) | 163 | `declaration-track:44321de10b593a78c83e53e1af695d7381f8c22ae3e14ad6b20da92f53e3276b` |
| 27 | `theorem` | [coprime_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-coe--6d928f8e7257cdf9ab3c2b65.md) | 168 | `result-track:6d928f8e7257cdf9ab3c2b65cf27bc1ed8543167c9295ddc6758b0304657fac8` |
| 28 | `theorem` | [Coprime.mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-mul--7b2bb09d0f446a9ce6affcb5.md) | 174 | `result-track:7b2bb09d0f446a9ce6affcb595081bbc8cb7c7ee86b84987f5a4f10624ce8dcf` |
| 29 | `theorem` | [Coprime.mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-mul-right--193db4f352f9a41836145b40.md) | 180 | `result-track:193db4f352f9a41836145b40e8fee9d1da6a0803d46ed2d3006655d88540b1b1` |
| 30 | `theorem` | [gcd_comm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/gcd-comm--e08d7147e9e70bab0579d587.md) | 186 | `result-track:e08d7147e9e70bab0579d587bc61f0d23e66e8031a2d34be8a680dac01d6b12d` |
| 31 | `theorem` | [gcd_eq_left_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/gcd-eq-left-iff-dvd--8606934a51bb23d6c90a9b6c.md) | 192 | `result-track:8606934a51bb23d6c90a9b6c6c1406b95792109f02de22379442bd1b7b32450e` |
| 32 | `theorem` | [gcd_eq_right_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/gcd-eq-right-iff-dvd--c2a2b1d4df86d10e767f66f8.md) | 199 | `result-track:c2a2b1d4df86d10e767f66f873b242dd5a1872d3b4be7e9f311691519c29eb0b` |
| 33 | `theorem` | [Coprime.gcd_mul_left_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-gcd-mul-left-cancel--ce958705d4e4d69dc376a2f7.md) | 204 | `result-track:ce958705d4e4d69dc376a2f775f14791d72ea2eddc706c3e8954f87cb5339808` |
| 34 | `theorem` | [Coprime.gcd_mul_right_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-gcd-mul-right-cancel--bb0770994a9a4c93f87b2801.md) | 210 | `result-track:bb0770994a9a4c93f87b2801b585b52afb5471c4bf966cd857b81e92dd69af43` |
| 35 | `theorem` | [Coprime.gcd_mul_left_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-gcd-mul-left-cancel-right--6f4a0a489c23a1ee0e78b96e.md) | 214 | `result-track:6f4a0a489c23a1ee0e78b96e41fa6cf3482e7223d1273c55007425253ffeb1fa` |
| 36 | `theorem` | [Coprime.gcd_mul_right_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-gcd-mul-right-cancel-right--db9fde9c2614d790d2ca8d29.md) | 220 | `result-track:db9fde9c2614d790d2ca8d299ca7eb1b79fe932078464fffb7376431d938957a` |
| 37 | `theorem` | [one_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/one-gcd--1dd6995d1422129f57da7f46.md) | 227 | `result-track:1dd6995d1422129f57da7f463f7b993c2c2ec6fb20797ff24edd2751c14b72d4` |
| 38 | `theorem` | [gcd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/gcd-one--6012a410141f92033dfc3a20.md) | 233 | `result-track:6012a410141f92033dfc3a2073bc84be1aab4e79cd0335406a9f34594f4d0ccc` |
| 39 | `theorem` | [Coprime.symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-symm--ba716e455a70f9a8d32e6306.md) | 239 | `result-track:ba716e455a70f9a8d32e630622d9709adcf2b471e952106c4a964da1075c5296` |
| 40 | `theorem` | [one_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/one-coprime--6b42d7ad805aeb62fde5e8b0.md) | 246 | `result-track:6b42d7ad805aeb62fde5e8b084d853bffd9236b445c9a91476cd612ff5c382c5` |
| 41 | `theorem` | [coprime_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-one--5e5c623a63ac4199b51b55bd.md) | 251 | `result-track:5e5c623a63ac4199b51b55bda9100cc863403907961074e91d43b3a16e24c175` |
| 42 | `theorem` | [Coprime.coprime_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-coprime-dvd-left--ddcc725938eacad8ce686631.md) | 255 | `result-track:ddcc725938eacad8ce6866310e8e6ea4eec1da3db930d1ff65c4ffafbc9cb6f7` |
| 43 | `theorem` | [Coprime.factor_eq_gcd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-factor-eq-gcd-left--12007382f5fed89db2555ae2.md) | 261 | `result-track:12007382f5fed89db2555ae2c177f28fa268bf8400f51c041c7a845d4cde9d23` |
| 44 | `theorem` | [Coprime.factor_eq_gcd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-factor-eq-gcd-right--433c6672331ee80abeb75595.md) | 270 | `result-track:433c6672331ee80abeb75595984a11902846d5a458c5d6771311a042f48e12c9` |
| 45 | `theorem` | [Coprime.factor_eq_gcd_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-factor-eq-gcd-left-right--2081b87fa3552f26f06efae7.md) | 274 | `result-track:2081b87fa3552f26f06efae7d32be491795d623cf7976d1164ec832392804396` |
| 46 | `theorem` | [Coprime.factor_eq_gcd_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-factor-eq-gcd-right-right--c3a4a364ea0eb574b560263b.md) | 278 | `result-track:c3a4a364ea0eb574b560263bc384dace88badaf613d47177b7ac1ad08fc19e7f` |
| 47 | `theorem` | [Coprime.gcd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-gcd-mul--9a65b2426b9ae783a0c27efb.md) | 284 | `result-track:9a65b2426b9ae783a0c27efb7bee7173bf741cdb63ee683ba6fa8fb2db790c9f` |
| 48 | `theorem` | [gcd_eq_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/gcd-eq-left--2cd61f3b1a691f61f62c8592.md) | 290 | `result-track:2cd61f3b1a691f61f62c85925fba3494384705fe3b48e0578af78db1d27b6a82` |
| 49 | `theorem` | [Coprime.pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean/declarations/coprime-pow--1199c7d02ceb00bd6b9cfdfc.md) | 298 | `result-track:1199c7d02ceb00bd6b9cfdfc50338eff01f79f8e12d33d88ee6bea4d2a7c42ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
