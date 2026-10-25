# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2b9aa80137f17c671d94956072a9caf48c717a1",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2b9aa80137f17c671d94956072a9caf48c717a1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLeftRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isleftregular--bd644458c187dfd921aa6005.md) | 49 | `declaration-track:bd644458c187dfd921aa600593c723118e77b7f992977abc7133757cf4d4cc0c` |
| 2 | `def` | [IsRightRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isrightregular--e3159f84fa1272d3195c2e09.md) | 58 | `declaration-track:e3159f84fa1272d3195c2e0907db9c696d0a54c493b5dcd156034486f8885486` |
| 3 | `structure` | [IsAddRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isaddregular--8c1c9884ce6107d76420bb30.md) | 65 | `declaration-track:8c1c9884ce6107d76420bb3065e238c2084e0c458225fb2850ff72846d329ff6` |
| 4 | `structure` | [IsRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isregular--542993a768fad98b0dedec46.md) | 74 | `declaration-track:542993a768fad98b0dedec46da250822de246fff92d4d17adfaa5f7a22b6f107` |
| 5 | `theorem` | [MulLECancellable.isLeftRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/mullecancellable-isleftregular--a14cd8a0576db26a92ca8703.md) | 86 | `result-track:a14cd8a0576db26a92ca8703dfef70eab2dedbd92e576be4b2baba5d45a4bd42` |
| 6 | `theorem` | [IsLeftRegular.right_of_commute](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isleftregular-right-of-commute--e041f2f701382990f5f3492d.md) | 92 | `result-track:e041f2f701382990f5f3492d8fa80566602658c3b861271973d8702ff53533ed` |
| 7 | `theorem` | [Commute.isRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/commute-isregular-iff--38981d5284989bf04c995e94.md) | 97 | `result-track:38981d5284989bf04c995e9432c363879018da9da55f07e34ef362e81437101c` |
| 8 | `theorem` | [IsLeftRegular.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isleftregular-mul--d574d576e81277d081b59f71.md) | 109 | `result-track:d574d576e81277d081b59f71da0d2a74d9b82a1f596a118434f5088c71f61a0c` |
| 9 | `theorem` | [IsRightRegular.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isrightregular-mul--dc9b2bcf52bc1a7a351eddc4.md) | 117 | `result-track:dc9b2bcf52bc1a7a351eddc4a3fb5928634f534e8911f1f5e0c96bdcb9b1303f` |
| 10 | `theorem` | [IsLeftRegular.of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isleftregular-of-mul--eedfdd6caef1207a4a68223b.md) | 127 | `result-track:eedfdd6caef1207a4a68223b60b5aa07ff7a32090434b01c9f941adbf0f6dd4d` |
| 11 | `theorem` | [mul_isLeftRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/mul-isleftregular-iff--71d2fec8123753ba5c1cb749.md) | 136 | `result-track:71d2fec8123753ba5c1cb7493da0121f12a67d1445496bc6d8554fe00de94427` |
| 12 | `theorem` | [IsRightRegular.of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isrightregular-of-mul--a4c2e2af17ad36041ac62f82.md) | 146 | `result-track:a4c2e2af17ad36041ac62f82aa97e07d77db6d6603471d6005993e28c213274c` |
| 13 | `theorem` | [mul_isRightRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/mul-isrightregular-iff--dd8ac00629735315885a5809.md) | 158 | `result-track:dd8ac00629735315885a58092235ef5613b357cfc2ec4b6a18221ebbf8c73017` |
| 14 | `theorem` | [isRegular_mul_and_mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isregular-mul-and-mul-iff--1b9549c19d94112ef88046a6.md) | 168 | `result-track:1b9549c19d94112ef88046a604db76755a5d3a2bbf5426e3d12b040e4f004b85` |
| 15 | `theorem` | [IsRegular.and_of_mul_of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isregular-and-of-mul-of-mul--74376bcaf8b7d7379bc4b469.md) | 187 | `result-track:74376bcaf8b7d7379bc4b4693c562591d06232f9c8d8239e1765411f350104d0` |
| 16 | `theorem` | [IsLeftRegular.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isleftregular-subsingleton--c2dd935cb1ec5827cae57b82.md) | 200 | `result-track:c2dd935cb1ec5827cae57b824432b6059f9f341cb48bb686e1e61f550e17216f` |
| 17 | `theorem` | [IsRightRegular.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isrightregular-subsingleton--25e542b54ec3ac1bcb9b3907.md) | 205 | `result-track:25e542b54ec3ac1bcb9b39074b431917563a508c5145d018ef398b7caac3a056` |
| 18 | `theorem` | [IsRegular.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isregular-subsingleton--715bb5751db43c2ba2f3eec6.md) | 210 | `result-track:715bb5751db43c2ba2f3eec67c9248f69f216830222e5bde4601aa4001c6dd1c` |
| 19 | `theorem` | [isLeftRegular_zero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isleftregular-zero-iff-subsingleton--47ab6bdfefed9254e6d63888.md) | 215 | `result-track:47ab6bdfefed9254e6d638880b55f4045e75ec8e1a05fe0f4e9ac8661e43af77` |
| 20 | `theorem` | [not_isLeftRegular_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/not-isleftregular-zero-iff--6e2aa6bc86aa4962d3a02fe2.md) | 220 | `result-track:6e2aa6bc86aa4962d3a02fe2fb5c9892ff0bf9e8d636e244e27fe2ddd86fc504` |
| 21 | `theorem` | [isRightRegular_zero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isrightregular-zero-iff-subsingleton--0320e370cef02c842ddcca35.md) | 227 | `result-track:0320e370cef02c842ddcca352a011f45a211d51dac189274ce6fc97ec887853a` |
| 22 | `theorem` | [not_isRightRegular_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/not-isrightregular-zero-iff--9d081eca3c45965c789ca48d.md) | 232 | `result-track:9d081eca3c45965c789ca48dc6bff5cf22d0857c8e471fa69cfd4187c7f5baad` |
| 23 | `theorem` | [isRegular_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isregular-iff-subsingleton--0eb0ccbb1e25dcb2dedd47d8.md) | 239 | `result-track:0eb0ccbb1e25dcb2dedd47d8771df436f052a4a04e7a28c7356a92864db43a0c` |
| 24 | `theorem` | [IsLeftRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isleftregular-ne-zero--3473fdaa91fccb640644b3f9.md) | 245 | `result-track:3473fdaa91fccb640644b3f9b6b876ece4f08c979196d34218ca8fd6b377e4a2` |
| 25 | `theorem` | [IsRightRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isrightregular-ne-zero--aabd6428904f384bd858b8e0.md) | 253 | `result-track:aabd6428904f384bd858b8e0f5fa296bb150e4dc1a170ab113bb29f75b4e5396` |
| 26 | `theorem` | [IsRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isregular-ne-zero--64bce5a32485a90de06765d9.md) | 261 | `result-track:64bce5a32485a90de06765d99261bd7b965065af8b451b925b67a6d3091d40fc` |
| 27 | `theorem` | [not_isLeftRegular_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/not-isleftregular-zero--2c71f7ad568ce157849976a2.md) | 266 | `result-track:2c71f7ad568ce157849976a21ac7c04e0f5d4415e5a8adf1af6c520cccd27d39` |
| 28 | `theorem` | [not_isRightRegular_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/not-isrightregular-zero--009f273056700a76685b53f8.md) | 271 | `result-track:009f273056700a76685b53f8eb8017c12e2e200bb049c951b8686e22eef3926c` |
| 29 | `theorem` | [not_isRegular_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/not-isregular-zero--8558cb2a1bacb0e87ebabfa1.md) | 276 | `result-track:8558cb2a1bacb0e87ebabfa18e5466e3222ad8a72eef21dc609b36738d3d8c81` |
| 30 | `lemma` | [IsLeftRegular.mul_left_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isleftregular-mul-left-eq-zero-iff--a319f9cc665e46a68e85af1a.md) | 279 | `result-track:a319f9cc665e46a68e85af1a3e76f980fa4c09abca7400850e546f69e3149b66` |
| 31 | `lemma` | [IsRightRegular.mul_right_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isrightregular-mul-right-eq-zero-iff--89faf2e931f3e145cf03a620.md) | 283 | `result-track:89faf2e931f3e145cf03a620f02d1f05a407a5cd0ab015feb6a26c1593c4ac3f` |
| 32 | `theorem` | [isRegular_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isregular-one--f2112388d52ee9062ddfc3ca.md) | 295 | `result-track:f2112388d52ee9062ddfc3cabd397bf3bff2720996b5f0870958c6b94ffdb6b4` |
| 33 | `theorem` | [isRegular_mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isregular-mul-iff--ab42f8ea5713a76cb834fc49.md) | 309 | `result-track:ab42f8ea5713a76cb834fc49639fbd13a4f91346d61c3bff7f175a9fbcf1c6e1` |
| 34 | `theorem` | [isLeftRegular_of_mul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isleftregular-of-mul-eq-one--ff8c20af619feef0426426f0.md) | 323 | `result-track:ff8c20af619feef0426426f0d9b8d953b5392f3a2752ffe76c45e552b1f858d9` |
| 35 | `theorem` | [isRightRegular_of_mul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isrightregular-of-mul-eq-one--333011301ee910fa3dbd2f7d.md) | 330 | `result-track:333011301ee910fa3dbd2f7daf414838dc2e23a6a57e27e513640041aaa28fdd` |
| 36 | `theorem` | [Units.isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/units-isregular--67d704831744e96ed2750c91.md) | 337 | `result-track:67d704831744e96ed2750c91ab8403aae91985e2d2d498a740704787873db794` |
| 37 | `theorem` | [IsUnit.isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isunit-isregular--3ecef1b74ef0315546368856.md) | 344 | `result-track:3ecef1b74ef03155463688561ddb5e9ef392fdf0b68f19d99beabd4ef048ae0e` |
| 38 | `theorem` | [isLeftRegular_of_leftCancelSemigroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isleftregular-of-leftcancelsemigroup--4818670b78a92576c4ad67b7.md) | 354 | `result-track:4818670b78a92576c4ad67b7dc5b38345ed4d46686a35b174634bd635e9b4140` |
| 39 | `theorem` | [isRightRegular_of_rightCancelSemigroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isrightregular-of-rightcancelsemigroup--f03b4f7cd592c3ef17f46fb0.md) | 362 | `result-track:f03b4f7cd592c3ef17f46fb080b5ebc85229df07eb6059d7f35768afe67556b5` |
| 40 | `theorem` | [isRegular_of_cancelMonoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isregular-of-cancelmonoid--fd6135ed438453c401f5c1f2.md) | 375 | `result-track:fd6135ed438453c401f5c1f2bfb4afc36abb8d26ab6eaad049f35edc4daf9852` |
| 41 | `theorem` | [isRegular_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isregular-of-ne-zero--84e7eb65f345dd45e0962d0a.md) | 387 | `result-track:84e7eb65f345dd45e0962d0a268b436d702c3988d1998c6cec559a5ee3ccfd38` |
| 42 | `theorem` | [isRegular_iff_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2740ec083f656bee94e4e309ddbe19a39dac71e29bae0c8148d0e4add7b538b3.lean/declarations/isregular-iff-ne-zero--1f6450a7497d5e1df6375887.md) | 392 | `result-track:1f6450a7497d5e1df6375887ea768c53f3fb7b549d6681c426e94bfada2f3397` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
