# Verification target: GRWTSK.Algebra.UniversalAlgebra.Root.Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7867f668ecb48eaa124f656ba5f8e4a6c005c06",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7867f668ecb48eaa124f656ba5f8e4a6c005c06`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Div` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [floorRoot](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/floorroot--a6fa887e7ee6d94bddd26849.md) | 49 | `declaration-track:a6fa887e7ee6d94bddd26849c756151d57fec77045c28a2db80473b927568f10` |
| 2 | `lemma` | [floorRoot_def](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/floorroot-def--4127254ad6bde9d02a6306f1.md) | 54 | `result-track:4127254ad6bde9d02a6306f1d8f24310294a54879aeff5a1fa76fe3d0c2ad40e` |
| 3 | `lemma` | [floorRoot_zero_left](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/floorroot-zero-left--d2303adb5839f93e45a1cb04.md) | 58 | `result-track:d2303adb5839f93e45a1cb0402da2dbfd6d5784d14a8f1846c7c05888fc9cb80` |
| 4 | `lemma` | [floorRoot_zero_right](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/floorroot-zero-right--45d982d029381d4f556b5039.md) | 59 | `result-track:45d982d029381d4f556b503946b7417135e6b032205e711e503a1cf5f42ef298` |
| 5 | `lemma` | [floorRoot_one_left](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/floorroot-one-left--3d2c05e7d75a253afb7cf824.md) | 60 | `result-track:3d2c05e7d75a253afb7cf8243c53554e0d1dc1bc4a3730d748838d9c7ee804fa` |
| 6 | `lemma` | [floorRoot_one_right](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/floorroot-one-right--c859f88c35b0538728bd3bb4.md) | 62 | `result-track:c859f88c35b0538728bd3bb4deb944d7293b3857db640efbe5fd52c06ffdadf1` |
| 7 | `lemma` | [floorRoot_pow_self](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/floorroot-pow-self--c72da5d994172ad55d2031be.md) | 64 | `result-track:c72da5d994172ad55d2031be4d8a6e50bc7b41716242e06fdb78ae355d6e3e71` |
| 8 | `lemma` | [floorRoot_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/floorroot-ne-zero--d194acc4e26186c083ecc4bc.md) | 67 | `result-track:d194acc4e26186c083ecc4bc473c5215782f587ac49ed82cd737b3f219343e89` |
| 9 | `lemma` | [floorRoot_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/floorroot-eq-zero--60d9953be4fe06757ba6d7bd.md) | 70 | `result-track:60d9953be4fe06757ba6d7bdae9c7f863ceaed123103d06de160a74a906bf25d` |
| 10 | `lemma` | [factorization_floorRoot](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/factorization-floorroot--379a64d0fbdfbc75bca0fb04.md) | 73 | `result-track:379a64d0fbdfbc75bca0fb049af05fda7d4fb8c3d9689bb3f0d7e651e2364a47` |
| 11 | `lemma` | [pow_dvd_iff_dvd_floorRoot](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/pow-dvd-iff-dvd-floorroot--ea02fdc618c2f53ba1b81f11.md) | 84 | `result-track:ea02fdc618c2f53ba1b81f11dff22cf845057965cd3ac2a4639e75ecf4a94735` |
| 12 | `lemma` | [floorRoot_pow_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/floorroot-pow-dvd--e6eeb79d43d67fab4685fbda.md) | 95 | `result-track:e6eeb79d43d67fab4685fbda4ce123a28acee30fefa94d19cb68d32a3d0c47f7` |
| 13 | `def` | [ceilRoot](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/ceilroot--6c6afcfc2325b0645d1c9ed6.md) | 109 | `declaration-track:6c6afcfc2325b0645d1c9ed65f340f7ae72306f46c4f50c0a7acf1619affe36b` |
| 14 | `lemma` | [ceilRoot_def](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/ceilroot-def--de0d97ac1a3972d32fe27349.md) | 114 | `result-track:de0d97ac1a3972d32fe27349a7a740f9133350970bb7a9ed8ba07a7aa3980aac` |
| 15 | `lemma` | [ceilRoot_zero_left](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/ceilroot-zero-left--6b16f3cc0ec7a7cbd9e7c9f3.md) | 120 | `result-track:6b16f3cc0ec7a7cbd9e7c9f3ed1c9f4ba7d1441eaef513ac970811c43c20da54` |
| 16 | `lemma` | [ceilRoot_zero_right](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/ceilroot-zero-right--5446ad66f657702a6159265e.md) | 121 | `result-track:5446ad66f657702a6159265ee6312893cda30feb81ebe6e869e5b09339b3e99c` |
| 17 | `lemma` | [ceilRoot_one_left](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/ceilroot-one-left--ba6888b7d81a17a1657fd372.md) | 122 | `result-track:ba6888b7d81a17a1657fd372f414252cdc5019cc9e71c78a772120ce25ca9007` |
| 18 | `lemma` | [ceilRoot_one_right](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/ceilroot-one-right--514b119b1a5887c81c8cfcdc.md) | 124 | `result-track:514b119b1a5887c81c8cfcdca25534d93706425468a7d1bd9f4b516fa824cea0` |
| 19 | `lemma` | [ceilRoot_pow_self](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/ceilroot-pow-self--c20b54f115d484651ec65a7a.md) | 126 | `result-track:c20b54f115d484651ec65a7a300a5f323e9a823d4ebfd5542fb9b3eb2998c3cd` |
| 20 | `lemma` | [ceilRoot_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/ceilroot-ne-zero--d4bf3e91bf40c7365634e4ac.md) | 129 | `result-track:d4bf3e91bf40c7365634e4ac1d1f64df8a8487f9ed5fff52ff62771c110f88f5` |
| 21 | `lemma` | [ceilRoot_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/ceilroot-eq-zero--3668971e23a9d85807c5ee18.md) | 132 | `result-track:3668971e23a9d85807c5ee183c96d14bdc8a2bbcce75b2e1ba95ec310b7805a6` |
| 22 | `lemma` | [factorization_ceilRoot](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/factorization-ceilroot--e0fe4ddbf317d8e6f0ca4d1e.md) | 135 | `result-track:e0fe4ddbf317d8e6f0ca4d1e372db01f04d30a1a5e09f1b1f2313543cb34b486` |
| 23 | `lemma` | [dvd_pow_iff_ceilRoot_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/dvd-pow-iff-ceilroot-dvd--07acb7a564be5f7fa168d9df.md) | 150 | `result-track:07acb7a564be5f7fa168d9df41e4ade53750d88490f5aa07001f80ccd6e9c88f` |
| 24 | `lemma` | [dvd_ceilRoot_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/declarations/dvd-ceilroot-pow--230b8476c9b2c887053a408c.md) | 159 | `result-track:230b8476c9b2c887053a408c0051f8885fe68dce8af5f9844d4a27cedd01f9e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
