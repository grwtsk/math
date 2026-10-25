# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b498aa333866c7f3c79d92c79c98a3789ca9c4ae",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b498aa333866c7f3c79d92c79c98a3789ca9c4ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLeftRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isleftregular--128818efe3b09917ec4ac7fa.md) | 41 | `declaration-track:128818efe3b09917ec4ac7fa96e1bfd68362a6a31e08211d5706a3f4c6784108` |
| 2 | `def` | [IsRightRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isrightregular--6f662a397116c39150107655.md) | 50 | `declaration-track:6f662a397116c3915010765552e536e29adc455c9b3ef931b9596d5889bba22f` |
| 3 | `structure` | [IsAddRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isaddregular--ca92a62228294d90373d12e2.md) | 57 | `declaration-track:ca92a62228294d90373d12e221bfc669695cf984034f7bed248156ec57dd1d45` |
| 4 | `structure` | [IsRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isregular--1da278f7edc1c424bf8c1c3b.md) | 66 | `declaration-track:1da278f7edc1c424bf8c1c3b06c9a67494b0927d04693adb8b5a854e53518d30` |
| 5 | `theorem` | [MulLECancellable.isLeftRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/mullecancellable-isleftregular--a65650419b96dcaed2f74247.md) | 78 | `result-track:a65650419b96dcaed2f74247960a1bf0458ac1b1c0d9e9af6cd3c04cc0c32ecf` |
| 6 | `theorem` | [IsLeftRegular.right_of_commute](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isleftregular-right-of-commute--405ffe9727a29639590a49f4.md) | 84 | `result-track:405ffe9727a29639590a49f4e8b2bd70f5c12dcc23a1a6a699522a22c70ef43a` |
| 7 | `theorem` | [Commute.isRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/commute-isregular-iff--ab9a96edc10e084eab5cb19e.md) | 89 | `result-track:ab9a96edc10e084eab5cb19e1668a17a53a02fe3b9048c6b90da1523dcc1392d` |
| 8 | `theorem` | [IsLeftRegular.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isleftregular-mul--16264b07663684feff48fb00.md) | 101 | `result-track:16264b07663684feff48fb004a63dfabdf9b4a78379850c60e34f922ad6d9d28` |
| 9 | `theorem` | [IsRightRegular.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isrightregular-mul--c8315f0504b835edb1731235.md) | 109 | `result-track:c8315f0504b835edb1731235338112949cc2079eb1c50ff52523296326be1e13` |
| 10 | `theorem` | [IsLeftRegular.of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isleftregular-of-mul--718b24483234337b4faa0ced.md) | 119 | `result-track:718b24483234337b4faa0ced42a3d21d032b5bece91f21afd5ca8a8492cc8a87` |
| 11 | `theorem` | [mul_isLeftRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/mul-isleftregular-iff--af3db208d4d621e86705f5a0.md) | 128 | `result-track:af3db208d4d621e86705f5a0c66a0fe4ba09d00f81751c67c1d505717fb90f67` |
| 12 | `theorem` | [IsRightRegular.of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isrightregular-of-mul--50316f7b5e4f4233d7f3289b.md) | 138 | `result-track:50316f7b5e4f4233d7f3289bcee0060ab1b05383f81c980f67a1a5039cbf6adb` |
| 13 | `theorem` | [mul_isRightRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/mul-isrightregular-iff--c14e1ec209c92f655e884960.md) | 150 | `result-track:c14e1ec209c92f655e8849605a61f3a6a5b4de6ac448a612b4622ff175aca343` |
| 14 | `theorem` | [isRegular_mul_and_mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isregular-mul-and-mul-iff--2d5b123daed257f0519a7d95.md) | 160 | `result-track:2d5b123daed257f0519a7d9531e166bc4e4d8ae7826b566999ffe770a367d2d3` |
| 15 | `theorem` | [IsRegular.and_of_mul_of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isregular-and-of-mul-of-mul--ae01ded1abdb72575695debf.md) | 179 | `result-track:ae01ded1abdb72575695debf16422914f8fa687a93b18a6e2dfa6c2006bd535d` |
| 16 | `theorem` | [IsLeftRegular.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isleftregular-subsingleton--cd1302bad33fcbf07e7475a8.md) | 192 | `result-track:cd1302bad33fcbf07e7475a8f77cc48fe1a57eaaa8ee3a9eef50bbcb0f4e19dd` |
| 17 | `theorem` | [IsRightRegular.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isrightregular-subsingleton--8c880e292da1dd3802878c72.md) | 197 | `result-track:8c880e292da1dd3802878c722c2eb24f395f0885205b0b9ae9ec4b2639423f6f` |
| 18 | `theorem` | [IsRegular.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isregular-subsingleton--8f50fa6283e9b3fc5a0685c0.md) | 202 | `result-track:8f50fa6283e9b3fc5a0685c05cf6adc360ea664d95f2d199c82967abced0e939` |
| 19 | `theorem` | [isLeftRegular_zero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isleftregular-zero-iff-subsingleton--e0896936bee5043c6a0f112f.md) | 207 | `result-track:e0896936bee5043c6a0f112f57e4a79d6ed1c54815f7d441fd6dd5ce397a8a3f` |
| 20 | `theorem` | [not_isLeftRegular_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/not-isleftregular-zero-iff--0905cd791506843fd43c105e.md) | 212 | `result-track:0905cd791506843fd43c105efecc37d02f10382668feb1292d88de6cb614f643` |
| 21 | `theorem` | [isRightRegular_zero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isrightregular-zero-iff-subsingleton--5b617e9d96e9fdb341fa036a.md) | 219 | `result-track:5b617e9d96e9fdb341fa036a0e3cec10a608e7fda67fd632106de9e9cb809d5c` |
| 22 | `theorem` | [not_isRightRegular_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/not-isrightregular-zero-iff--6ae384a20f012cb8a47f1b5d.md) | 224 | `result-track:6ae384a20f012cb8a47f1b5dcc6a5ffebf5a06ca7f3860012a33511cf9654c5a` |
| 23 | `theorem` | [isRegular_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isregular-iff-subsingleton--a32829adce3c01e57912c921.md) | 231 | `result-track:a32829adce3c01e57912c921755df4889c789d79f52a35d15308c799c327029d` |
| 24 | `theorem` | [IsLeftRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isleftregular-ne-zero--583b8630f9cba398319de048.md) | 237 | `result-track:583b8630f9cba398319de048bfb37af5d9108ffa197f0c3f9e8fcdba452daeef` |
| 25 | `theorem` | [IsRightRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isrightregular-ne-zero--dd328f1c16b906875d0b4002.md) | 245 | `result-track:dd328f1c16b906875d0b4002255ed44a1a6649870546d245595e4538bf37bba8` |
| 26 | `theorem` | [IsRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isregular-ne-zero--96f1c050cd3631e84f22500c.md) | 253 | `result-track:96f1c050cd3631e84f22500c18a6422d4c552ef27e4763836e6ad621cdcaeee0` |
| 27 | `theorem` | [not_isLeftRegular_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/not-isleftregular-zero--cf3f834f0cd602dbf3cae9d0.md) | 258 | `result-track:cf3f834f0cd602dbf3cae9d012b89352e33e0ceda11049fbef8762f26c97b332` |
| 28 | `theorem` | [not_isRightRegular_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/not-isrightregular-zero--d42b0f28ef6345357e6d70a0.md) | 263 | `result-track:d42b0f28ef6345357e6d70a027eb2dacd0421ef872dd8c03836fd74cfb961afd` |
| 29 | `theorem` | [not_isRegular_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/not-isregular-zero--867eb23c45bcbc88a423d9fb.md) | 268 | `result-track:867eb23c45bcbc88a423d9fba1ff9577cdd91d2540c8c479bd1aeb78bfb55da7` |
| 30 | `lemma` | [IsLeftRegular.mul_left_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isleftregular-mul-left-eq-zero-iff--b8d28d5526f36d7646083da0.md) | 271 | `result-track:b8d28d5526f36d7646083da01b6340cb9bb8a4f28457792a84ba3322c8c31cf4` |
| 31 | `lemma` | [IsRightRegular.mul_right_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isrightregular-mul-right-eq-zero-iff--aa64cc04b243f9667fddd207.md) | 275 | `result-track:aa64cc04b243f9667fddd207257e117910c74d5b60520fa18135f9e6ca2c294f` |
| 32 | `theorem` | [isRegular_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isregular-one--59026c406a37ecaf07636aa6.md) | 287 | `result-track:59026c406a37ecaf07636aa6566ba507ba18c7b7a8f397ecb60df8debb925887` |
| 33 | `theorem` | [isRegular_mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isregular-mul-iff--898f8ce5036c0973ca051f8f.md) | 301 | `result-track:898f8ce5036c0973ca051f8f163982f74fbba584ddff3244637b28c960fa2d62` |
| 34 | `theorem` | [isLeftRegular_of_mul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isleftregular-of-mul-eq-one--ff3f912b8c1bc885bb18ef67.md) | 315 | `result-track:ff3f912b8c1bc885bb18ef673e7c714190b3816ab1d558f10d2b9760838fc62e` |
| 35 | `theorem` | [isRightRegular_of_mul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isrightregular-of-mul-eq-one--eeeae3e8cf1a32d7969b45ba.md) | 322 | `result-track:eeeae3e8cf1a32d7969b45ba927169360becc99bbf5da2df52d656b786e774e7` |
| 36 | `theorem` | [Units.isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/units-isregular--85b90690da4a68bb4d01b57e.md) | 329 | `result-track:85b90690da4a68bb4d01b57e30312865ba02c443bc3ac984460efa0853441805` |
| 37 | `theorem` | [IsUnit.isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isunit-isregular--3d8368c9be3d7bdab63865e1.md) | 336 | `result-track:3d8368c9be3d7bdab63865e1ec42e7cb6cd2a62b6ccef33eddf6adcf22ba1fa0` |
| 38 | `theorem` | [isLeftRegular_of_leftCancelSemigroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isleftregular-of-leftcancelsemigroup--7ae2d2ed6cfe47da376f7495.md) | 346 | `result-track:7ae2d2ed6cfe47da376f749587804cb95c719e150e0abcbb7e127e28242df20b` |
| 39 | `theorem` | [isRightRegular_of_rightCancelSemigroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isrightregular-of-rightcancelsemigroup--87448949493ebc79bd1eab3b.md) | 354 | `result-track:87448949493ebc79bd1eab3bc92348039c2a309e3bbce3b808e063ec6478d620` |
| 40 | `theorem` | [isRegular_of_cancelMonoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isregular-of-cancelmonoid--68ae7a5e04937cb73b05b33c.md) | 367 | `result-track:68ae7a5e04937cb73b05b33c794d7f8598c81e27fc69c40b3f8c86295dfb071e` |
| 41 | `theorem` | [isRegular_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isregular-of-ne-zero--c29fa7d929d3c8e06fd45250.md) | 379 | `result-track:c29fa7d929d3c8e06fd4525016e1f55eca92d0d8b4aaa0e79cfb168aac36b3c8` |
| 42 | `theorem` | [isRegular_iff_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante87c98bf390f3677097be7da9664a04e1c813e68483535cb79bac3fcbcc30c5d.lean/declarations/isregular-iff-ne-zero--cd03fe666d619e31e42ebaac.md) | 384 | `result-track:cd03fe666d619e31e42ebaacab2d87347a01cb721548d9f1f73cb80bb542800b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
