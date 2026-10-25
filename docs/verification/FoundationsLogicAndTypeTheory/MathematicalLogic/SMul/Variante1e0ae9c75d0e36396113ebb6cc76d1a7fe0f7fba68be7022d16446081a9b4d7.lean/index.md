# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SMul.Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dfb2cff80cf0821fbd23a1bcfba5d1e11f3d221",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dfb2cff80cf0821fbd23a1bcfba5d1e11f3d221`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Regular.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/issmulregular--afa8083cded453def7a85ba8.md) | 33 | `declaration-track:afa8083cded453def7a85ba8297d1029861b0d9d56c045d2e8c81805aa72b11a` |
| 2 | `theorem` | [IsLeftRegular.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/isleftregular-issmulregular--5917d9b316ae0ae1f75430a9.md) | 36 | `result-track:5917d9b316ae0ae1f75430a9490c5827889e14383f1cd8e2b3211176a8a91d4d` |
| 3 | `theorem` | [isLeftRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/isleftregular-iff--289f9bf46eef90aa0526a279.md) | 40 | `result-track:289f9bf46eef90aa0526a2792e73825b8d9c5aa1ee462b00804e3b296f34fc2c` |
| 4 | `theorem` | [IsRightRegular.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/isrightregular-issmulregular--83ca0699028b1c29d17f791c.md) | 43 | `result-track:83ca0699028b1c29d17f791c2b3266dd757dab5269ba67d72894f16a5830e25a` |
| 5 | `theorem` | [isRightRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/isrightregular-iff--4c644b618630e1f875e66deb.md) | 48 | `result-track:4c644b618630e1f875e66debacb8a5d60b697087f503c965bd58e102bebb1f22` |
| 6 | `theorem` | [smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/smul--50dbec738cf09065a9c720ae.md) | 61 | `result-track:50dbec738cf09065a9c720aebb3bc36a2a1af7ccf3520858f4cee2d495425bd2` |
| 7 | `theorem` | [of_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/of-smul--a017d97b5262b00150647565.md) | 66 | `result-track:a017d97b5262b001506475652d337416caadf81d0f4e1469a49af21c6ff0e62f` |
| 8 | `theorem` | [smul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/smul-iff--8c260f559fb18cdf9b6bf392.md) | 75 | `result-track:8c260f559fb18cdf9b6bf3920bae7ed2d501eb36270a4df608531150e2bd537f` |
| 9 | `theorem` | [isLeftRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/isleftregular--a4274e19c5ef7edec00627d1.md) | 78 | `result-track:a4274e19c5ef7edec00627d163bc308a6a45e9af987398c674e7848722747a35` |
| 10 | `theorem` | [isRightRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/isrightregular--3c336398e48c8525d6565dd5.md) | 81 | `result-track:3c336398e48c8525d6565dd52cfb5ddbb546f836e368e376a2c1e9751622d3ab` |
| 11 | `theorem` | [mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/mul--9268e616cdcad926099b1646.md) | 85 | `result-track:9268e616cdcad926099b1646113b3b267831af36f9290d9e359ff5a594d7aeef` |
| 12 | `theorem` | [of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/of-mul--6396a14fb47ff3dd08530966.md) | 89 | `result-track:6396a14fb47ff3dd085309661db2de76462318a0f3785840930eb2a64a4e4601` |
| 13 | `theorem` | [mul_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/mul-iff-right--dee5cada3fa6799788333583.md) | 95 | `result-track:dee5cada3fa67997883335835f087c57297b693e847719561d148bdb8a92f018` |
| 14 | `theorem` | [mul_and_mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/mul-and-mul-iff--be97994d08bf2018e613c4e7.md) | 101 | `result-track:be97994d08bf2018e613c4e7740c000c372d124a3482b8813db129996a66a56e` |
| 15 | `lemma` | [of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/of-injective--8fd764ffa9d09e4c05f29e3b.md) | 109 | `result-track:8fd764ffa9d09e4c05f29e3b28fc3a7370a57e7ffc0166713a93d45b7e02b6d7` |
| 16 | `theorem` | [one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/one--b7c3b1b7630d5f77eeea7f73.md) | 123 | `result-track:b7c3b1b7630d5f77eeea7f731419ee5d009eb1bfcc8293caf437bcced5d1c84f` |
| 17 | `theorem` | [of_mul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/of-mul-eq-one--3c9469cc365bc5cb709ca572.md) | 131 | `result-track:3c9469cc365bc5cb709ca57257c7fdea215a96db99314afa32c247a1bd2f89ed` |
| 18 | `theorem` | [pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/pow--00b5ef074c803316aec457db.md) | 135 | `result-track:00b5ef074c803316aec457db5aba33f8e32c58051a3e5b89a14b88c2bec9ba86` |
| 19 | `theorem` | [pow_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/pow-iff--bb8131b4d2b2af17030814ed.md) | 143 | `result-track:bb8131b4d2b2af17030814edcf9f7de652fcc5cf4ab60857ff64b559d0254eb8` |
| 20 | `theorem` | [of_smul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/of-smul-eq-one--3ac205c26dce994e67972242.md) | 155 | `result-track:3ac205c26dce994e679722423d0208a635332c86eb7dc950066e192988b5f60b` |
| 21 | `theorem` | [subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/subsingleton--b486d50cbe030c2d80e5b119.md) | 168 | `result-track:b486d50cbe030c2d80e5b119f614d9930aed248cdb9be1e5a9e4f896272de85a` |
| 22 | `theorem` | [zero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/zero-iff-subsingleton--cb02971c29a97ad78a25df6c.md) | 172 | `result-track:cb02971c29a97ad78a25df6c1eb3cdda5b5d1dac037693a3b736cffe3f00d7bd` |
| 23 | `theorem` | [not_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/not-zero-iff--8a2bf9bff89a24e492535e6c.md) | 176 | `result-track:8a2bf9bff89a24e492535e6c315b07216843108b3f0e633839cb5591b3cc1e61` |
| 24 | `theorem` | [zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/zero--d469c5759d70d64cd6ededdc.md) | 182 | `result-track:d469c5759d70d64cd6ededdc8afc126c6c13c451a9e6f9c588a72245f9fbe9ef` |
| 25 | `theorem` | [not_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/not-zero--4548720b8822018230479f0d.md) | 186 | `result-track:4548720b8822018230479f0d6230e2d77aefa3cdd908c31974732c38e31dfc1f` |
| 26 | `theorem` | [mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/mul-iff--62b7b6abb584514ce2b7eccf.md) | 196 | `result-track:62b7b6abb584514ce2b7eccfae573ccc93892afe9301a7eb6d7d57f68a241746` |
| 27 | `theorem` | [isSMulRegular_of_group](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/issmulregular-of-group--c0841e7d84d5f11bad599f58.md) | 210 | `result-track:c0841e7d84d5f11bad599f58e7f5a2d72b0df672c174a9f91afc570a414e57f6` |
| 28 | `theorem` | [Units.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/units-issmulregular--a17195e7e80097790a2ba85a.md) | 221 | `result-track:a17195e7e80097790a2ba85ae00f1296b50523d960f02a509ac898ed922e4f6c` |
| 29 | `theorem` | [IsUnit.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/isunit-issmulregular--b297af3d1e9cc3b2f2885f41.md) | 225 | `result-track:b297af3d1e9cc3b2f2885f41cd84d3ea8c3a6d5d231e520da4605dfbfbc59ef1` |
| 30 | `lemma` | [IsSMulRegular.eq_zero_of_smul_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/issmulregular-eq-zero-of-smul-eq-zero--b1abdb4bf12bc138b95922f9.md) | 236 | `result-track:b1abdb4bf12bc138b95922f986a49707c472398b4e0abfbf9c6fa19f340d1c90` |
| 31 | `lemma` | [Equiv.isSMulRegular_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean/declarations/equiv-issmulregular-congr--de232a7f9ff26f3b24d3beac.md) | 242 | `result-track:de232a7f9ff26f3b24d3beac4fcc87e51699a673d9d0e181b9fbdfc495039ba8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
