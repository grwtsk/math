# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.SeminormFromConst.Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a7ca4f366209893ca5b1f22c9147b13f64c5696",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a7ca4f366209893ca5b1f22c9147b13f64c5696`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Unbundled.RingSeminorm` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [seminormFromConst_seq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-seq--cdc0de66ef08f0aa793b5ce5.md) | 58 | `declaration-track:cdc0de66ef08f0aa793b5ce5965f91fa4c5b24afcaea2db1c0f2e71b9ec0ec4c` |
| 2 | `lemma` | [seminormFromConst_seq_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-seq-def--9fcf1b807bb7e3605cfb16e1.md) | 60 | `result-track:9fcf1b807bb7e3605cfb16e1168c06c91555abb1ce78b73d7b11173a855cb7b5` |
| 3 | `theorem` | [seminormFromConst_seq_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-seq-nonneg--aeae5a1c4e1c41e65262e414.md) | 64 | `result-track:aeae5a1c4e1c41e65262e414153faf12999cf359b5d0dee459a38bf5d770954e` |
| 4 | `theorem` | [seminormFromConst_bddBelow](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-bddbelow--09eb8f8099f8b58bb67ac534.md) | 68 | `result-track:09eb8f8099f8b58bb67ac5341d5161f688d756bac98efaa18c30d770f90b4e61` |
| 5 | `theorem` | [seminormFromConst_seq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-seq-zero--cb6e039f2747dc5148240c5c.md) | 77 | `result-track:cb6e039f2747dc5148240c5cddb09e7b866167e78f4658cdf89bb82a00ed29d2` |
| 6 | `theorem` | [seminormFromConst_seq_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-seq-one--c47e4900b86c167dfa22ffda.md) | 87 | `result-track:c47e4900b86c167dfa22ffdab557732cb976642234c2a05cf7c973c25fa27227` |
| 7 | `theorem` | [seminormFromConst_seq_antitone](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-seq-antitone--5cf039ebf19434a2d8329633.md) | 94 | `result-track:5cf039ebf19434a2d8329633ba337c573f653014ed2004d0c92533706766936f` |
| 8 | `def` | [seminormFromConst'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst--03ade89819a6e483593c60dc.md) | 115 | `declaration-track:03ade89819a6e483593c60dca4b9129b35d17d05f67976a1c38b9f91f3bca66f` |
| 9 | `theorem` | [seminormFromConst_isLimit](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-islimit--85707f5bceda78eddcd87b53.md) | 121 | `result-track:85707f5bceda78eddcd87b53de8c0c63776bfc5da9a9ca07baf75fa5ccb9dc28` |
| 10 | `theorem` | [seminormFromConst_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-one--f09e78835158b3cc98c53be2.md) | 127 | `result-track:f09e78835158b3cc98c53be216e391c0cc9842a02d0efbc0f2eeca7db38b2036` |
| 11 | `def` | [seminormFromConst](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst--e2b36cfc932c5eb400ec1726.md) | 134 | `declaration-track:e2b36cfc932c5eb400ec1726e5bb62cea348b8a8e27812f618edc9c6dd1f86cc` |
| 12 | `theorem` | [seminormFromConst_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-def--ac29da2e04dab50dbc89beec.md) | 167 | `result-track:ac29da2e04dab50dbc89beec548c3f7d08bb59c971d06c6df0b515d1e38df8de` |
| 13 | `theorem` | [seminormFromConst_one_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-one-le--95cbc1e76ca659ddd3abb2d8.md) | 172 | `result-track:95cbc1e76ca659ddd3abb2d84538ee1ce46e661b2261c5beb72fcbfc5af2e796` |
| 14 | `theorem` | [seminormFromConst_isNonarchimedean](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-isnonarchimedean--74d41bafd28d97c79c7e5731.md) | 176 | `result-track:74d41bafd28d97c79c7e573118354d51d82566c9f16ce6840d163b8f1f05ccdb` |
| 15 | `theorem` | [seminormFromConst_isPowMul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-ispowmul--2f42b0a7990c222679bc82b9.md) | 188 | `result-track:2f42b0a7990c222679bc82b97b617a8cd9e5582deead4aa91192227f1188ae8a` |
| 16 | `theorem` | [seminormFromConst_le_seminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-le-seminorm--6141973250af61339368436a.md) | 201 | `result-track:6141973250af61339368436a778f03255037fef90736a9b2f5f1353bed7e5b58` |
| 17 | `theorem` | [seminormFromConst_apply_of_isMul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-apply-of-ismul--eecaef7f76343524cc090503.md) | 210 | `result-track:eecaef7f76343524cc0905039c19e37ebc74ebbe0561027050f834ce9c9fda8e` |
| 18 | `theorem` | [seminormFromConst_isMul_of_isMul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-ismul-of-ismul--1f10ef50d62ef1394f492852.md) | 225 | `result-track:1f10ef50d62ef1394f49285220fdda64aed619d33410010bdcb52fdba6dd1c90` |
| 19 | `theorem` | [seminormFromConst_apply_c](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-apply-c--2ff33d78d8c53fa6bb5434ab.md) | 239 | `result-track:2ff33d78d8c53fa6bb5434abbebd502479708e7301d07bd9d023f76775e31c98` |
| 20 | `theorem` | [seminormFromConst_const_mul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconst-const-mul--b6c4bccdbb522a670282d2c8.md) | 252 | `result-track:b6c4bccdbb522a670282d2c823d1e27b589f5b93ce9972a97c5ab59dd030fac9` |
| 21 | `def` | [normFromConst](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/normfromconst--59b0a2fc4e87003998ac9f81.md) | 277 | `declaration-track:59b0a2fc4e87003998ac9f819a7918ed0605c5de441f459c720951ec25ff0524` |
| 22 | `theorem` | [seminormFromConstRingNormOfField_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/declarations/seminormfromconstringnormoffield-def--d8d91bff6233013e7ea2f0e1.md) | 282 | `result-track:d8d91bff6233013e7ea2f0e139320d3a26ed8ad00f9bf021bbda1ead24085a0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
