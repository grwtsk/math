# Verification target: GRWTSK.Algebra.Locally.Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1edbe094e293ae0f76af300840c5240230f91f8",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/index.md) · [Full source](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1edbe094e293ae0f76af300840c5240230f91f8`.

Source path: `GRWTSK/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Locally](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally--b9f9c6964a020b35ac8971df.md) | 56 | `declaration-track:b9f9c6964a020b35ac8971dff20132b6c678a4717ee6c6e9ec9342965ffbdf97` |
| 2 | `lemma` | [locally_iff_finite](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-iff-finite--79147acee8ad62f327e9ced5.md) | 62 | `result-track:79147acee8ad62f327e9ced548f36256310df02285547cf4b4352b201a941340` |
| 3 | `lemma` | [locally_of_exists](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-of-exists--6b2582591418e0bbec238780.md) | 76 | `result-track:6b2582591418e0bbec238780970749cdbc1b2301f4b8725480bab44c06847412` |
| 4 | `lemma` | [locally_iff_exists](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-iff-exists--cea615188765ccb84c4ea78e.md) | 92 | `result-track:cea615188765ccb84c4ea78e259b2bac8a504888fce67bfd469fee5c8134fe90` |
| 5 | `lemma` | [locally_iff_isLocalization](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-iff-islocalization--d8d572d6a13246852d7da186.md) | 103 | `result-track:d8d572d6a13246852d7da186cc4d859c9e0320914ac332e6906faca357f1bb54` |
| 6 | `lemma` | [locally_of](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-of--47ec9735d7ac491cb8196faa.md) | 118 | `result-track:47ec9735d7ac491cb8196faab61a5e86dc5bdaf4e209eda3da9521c03af75492` |
| 7 | `lemma` | [locally_of_locally](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-of-locally--f436cb71c3f160e0a416906a.md) | 125 | `result-track:f436cb71c3f160e0a416906af644312e748fc7dd72adbb1fc58eb6b07dc17886` |
| 8 | `lemma` | [locally_iff_of_localizationSpanTarget](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-iff-of-localizationspantarget--881c0e56bb18b84409f3fb08.md) | 132 | `result-track:881c0e56bb18b84409f3fb08f8e2f3daf2ec70e9c7bd9567a3d6267e6177103d` |
| 9 | `lemma` | [locally_ofLocalizationSpanTarget](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-oflocalizationspantarget--4b8be86cd263b3526b046fc0.md) | 140 | `result-track:4b8be86cd263b3526b046fc01bed835178ffaffa1fb07d354a41aa4510c9a6d9` |
| 10 | `lemma` | [locally_respectsIso](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-respectsiso--aa9721b93b99a65976c71f8e.md) | 165 | `result-track:aa9721b93b99a65976c71f8e2925ce272a1d6d668dc06bbdbb8cdffbe356957f` |
| 11 | `lemma` | [locally_holdsForLocalizationAway](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-holdsforlocalizationaway--f27bf36f32a631627709b494.md) | 183 | `result-track:f27bf36f32a631627709b494c44f87699ae2c062e8982e076f0c023d38350bdf` |
| 12 | `lemma` | [locally_stableUnderComposition](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-stableundercomposition--6c0a56ecc64f8ca592a8083b.md) | 196 | `result-track:6c0a56ecc64f8ca592a8083b497fc37f943fcd51b2ae57ec0384b10a754c5c6f` |
| 13 | `lemma` | [locally_StableUnderCompositionWithLocalizationAwayTarget](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-stableundercompositionwithlocalizationawaytarget--da5be86737326ba84e3bb4eb.md) | 234 | `result-track:da5be86737326ba84e3bb4eb8fcc755636a507c05ce527d2cec2877e01a16061` |
| 14 | `lemma` | [locally_StableUnderCompositionWithLocalizationAwaySource](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-stableundercompositionwithlocalizationawaysource--8c12ee77e694d00cf95fa54e.md) | 263 | `result-track:8c12ee77e694d00cf95fa54e02e3d39169c217d94b7f6c03836263616f046d4d` |
| 15 | `lemma` | [locally_isStableUnderBaseChange](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-isstableunderbasechange--ab72fc0cb5c88edd1b98b348.md) | 273 | `result-track:ab72fc0cb5c88edd1b98b348d6a1940b3ac66c0256492f3752799c7b06754607` |
| 16 | `lemma` | [locally_localizationAwayPreserves](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-localizationawaypreserves--d7868913cc96896ca30f9907.md) | 319 | `result-track:d7868913cc96896ca30f9907689454fd14e35555d19d931ef6a49cd595f2eaec` |
| 17 | `lemma` | [locally_localizationPreserves](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-localizationpreserves--b7e72acf1f6fa76747a2e38f.md) | 350 | `result-track:b7e72acf1f6fa76747a2e38f3528c7480e3b569baed4c87c5a1a06cb39d96256` |
| 18 | `lemma` | [locally_propertyIsLocal](../../../../mathematics/Algebra/Locally/Variant6d763acc67f6ff718a34503feaadf70472f426474eed99fe788def2f4be30b64.lean/declarations/locally-propertyislocal--cc867a346c16de2b08c8ff67.md) | 384 | `result-track:cc867a346c16de2b08c8ff67ec27909933b1910b003ca7c6961b54916b092be8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
