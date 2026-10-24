# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.SeminormFromBounded.Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45cbcf0bc7591a3d82767fe4c06fb85b814b6d90",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45cbcf0bc7591a3d82767fe4c06fb85b814b6d90`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Unbundled.RingSeminorm` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [seminormFromBounded'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded--16bf4b1fd84633d18f63722f.md) | 54 | `declaration-track:16bf4b1fd84633d18f63722fc110081d52a9be41d5c253b1cf6d990bbe657993` |
| 2 | `theorem` | [map_one_ne_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/map-one-ne-zero--270dc44a0505c57ee3ab8cb2.md) | 59 | `result-track:270dc44a0505c57ee3ab8cb23270d6736e5596fb5520aba7e237d7f28618be4b` |
| 3 | `theorem` | [map_pow_ne_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/map-pow-ne-zero--4c09c8b3c686fed564aa800e.md) | 69 | `result-track:4c09c8b3c686fed564aa800e015f231c42111c934fb13f9b651b7538c0e4ae76` |
| 4 | `theorem` | [map_mul_zero_of_map_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/map-mul-zero-of-map-zero--c6c2647ffba3b5c25c2613d9.md) | 78 | `result-track:c6c2647ffba3b5c25c2613d9a5d6f1ff2aa0dc0177b564bee5d10582c69db011` |
| 5 | `theorem` | [seminormFromBounded_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-zero--3e15df77813c623c515cb57b.md) | 85 | `result-track:3e15df77813c623c515cb57b867cf2c37ebf828c390abac2f7c38b96d38f58b6` |
| 6 | `theorem` | [seminormFromBounded_aux](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-aux--b723d4495073de497f407334.md) | 88 | `result-track:b723d4495073de497f407334eb7182c257ef2f6d4992c43145823dc301f4bfa1` |
| 7 | `theorem` | [seminormFromBounded_bddAbove_range](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-bddabove-range--e893dad9c12aa2cd00b1b5b4.md) | 105 | `result-track:e893dad9c12aa2cd00b1b5b4f22e65918eaa0ba0942b0fcc1711fe26508b9939` |
| 8 | `theorem` | [seminormFromBounded_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-le--b7d9f3c632cefdd6ef18b22e.md) | 116 | `result-track:b7d9f3c632cefdd6ef18b22e6e14278ca0707aa3a23e58ab628dab022ef4f679` |
| 9 | `theorem` | [seminormFromBounded_ge](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-ge--b2697b21c36b4e354c11be3e.md) | 127 | `result-track:b2697b21c36b4e354c11be3e1665bb6820351174f868c0379ee977b2ccf47af1` |
| 10 | `theorem` | [seminormFromBounded_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-nonneg--0818515e286ac9aa2375c234.md) | 141 | `result-track:0818515e286ac9aa2375c2342c1180b20760f6d0b5a029ace9cdd1d6c47457eb` |
| 11 | `theorem` | [seminormFromBounded_eq_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-eq-zero-iff--326ec22ecf7426f9e5b25d5b.md) | 149 | `result-track:326ec22ecf7426f9e5b25d5bf2c1eff1cb2541033a21d8996b3a58e39f08ff29` |
| 12 | `theorem` | [seminormFromBounded_neg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-neg--6888302a64fb77d9d9a144e3.md) | 162 | `result-track:6888302a64fb77d9d9a144e3164076d5363431ff090bab0af46db38d7ce3d904` |
| 13 | `theorem` | [seminormFromBounded_mul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-mul--23e51b4f552a74e6861eeaec.md) | 171 | `result-track:23e51b4f552a74e6861eeaec86da9ecccaea8b631083d284466e79f383e28a41` |
| 14 | `theorem` | [seminormFromBounded_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-one--cb8d0a3070f845d673962f73.md) | 201 | `result-track:cb8d0a3070f845d673962f731f7dac2fb917b4b2861f018245e363fcb0342967` |
| 15 | `theorem` | [seminormFromBounded_one_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-one-le--b191096b6b3e26bc7634787d.md) | 221 | `result-track:b191096b6b3e26bc7634787dd9e2237d549b06a6f71d824b95d350e6d6aecc1d` |
| 16 | `theorem` | [seminormFromBounded_add](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-add--921325be0522cf6c75a2a76b.md) | 233 | `result-track:921325be0522cf6c75a2a76b7129414b4f9f3be0ab2590454d6ea4cba2eedf0f` |
| 17 | `def` | [seminormFromBounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded--8b1743a1526da60850f4f074.md) | 248 | `declaration-track:8b1743a1526da60850f4f074afb9596763455454064bd2c4c8250fd791b21010` |
| 18 | `theorem` | [seminormFromBounded_isNonarchimedean](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-isnonarchimedean--3db48d4e6f0900e76906751c.md) | 259 | `result-track:3db48d4e6f0900e76906751cb6f0a5750b6ca280dea653ec2409d50346d6aaac` |
| 19 | `theorem` | [seminormFromBounded_of_mul_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-of-mul-apply--c14e8b5a8f00f4dca870d65e.md) | 276 | `result-track:c14e8b5a8f00f4dca870d65e7d2be954b8581fcf43c0616d07dc43893f895640` |
| 20 | `theorem` | [seminormFromBounded_of_mul_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-of-mul-le--07ca7168cc8f5c63bdea82fa.md) | 300 | `result-track:07ca7168cc8f5c63bdea82fa0c8ee02265d94ed75162a69a676d6993c197c439` |
| 21 | `theorem` | [seminormFromBounded_nonzero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-nonzero--f0dc14375f9aa1d08200b968.md) | 329 | `result-track:f0dc14375f9aa1d08200b9686fdddec6f4d9e456ecfac1c68139d92f7bbb933d` |
| 22 | `theorem` | [seminormFromBounded_ker](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-ker--efab0f4cff194464590bcdb5.md) | 340 | `result-track:efab0f4cff194464590bcdb561d1d8902a1a0717a1b413ee3456421b708c5dda` |
| 23 | `theorem` | [seminormFromBounded_is_norm_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-is-norm-iff--9733953381f4e641fb9e465e.md) | 348 | `result-track:9733953381f4e641fb9e465e015a93f6b734d2fd94d33303a2a90d8c4ba5b22a` |
| 24 | `def` | [normFromBounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/normfrombounded--f070ad843008bfd89123862d.md) | 365 | `declaration-track:f070ad843008bfd89123862dcbbe188aa10fd5cc7f4535ef2f2c5cdaaec90bd6` |
| 25 | `theorem` | [seminormFromBounded_of_mul_is_mul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/declarations/seminormfrombounded-of-mul-is-mul--6a5127dec2a22695fba8128c.md) | 375 | `result-track:6a5127dec2a22695fba8128c55e5947207989f5addf6cd4489ffe8d0ece2d3c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
