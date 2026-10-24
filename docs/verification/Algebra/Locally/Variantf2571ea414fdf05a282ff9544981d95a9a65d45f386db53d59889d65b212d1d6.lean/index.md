# Verification target: GRWTSK.Algebra.Locally.Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36f03ea7f8a0b68e0d7c793b9317b8d2e85dc8f9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36f03ea7f8a0b68e0d7c793b9317b8d2e85dc8f9`.

Source path: `GRWTSK/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Locally](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally--1dcfb334611053ab438b2707.md) | 64 | `declaration-track:1dcfb334611053ab438b27074349625b8c78bdd076b1a6b79a34d20c4371ac13` |
| 2 | `lemma` | [locally_iff_finite](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-iff-finite--f46389f3126afed19961f0d3.md) | 70 | `result-track:f46389f3126afed19961f0d33b12b2f234e507bd12878cb8321000930469d805` |
| 3 | `lemma` | [locally_of_exists](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-of-exists--1f475f9e9db33baaba751de1.md) | 84 | `result-track:1f475f9e9db33baaba751de10ba195a863501118e5843d2af784c199f04ddbb4` |
| 4 | `lemma` | [locally_iff_exists](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-iff-exists--683e4a513cd9c3064209fb23.md) | 100 | `result-track:683e4a513cd9c3064209fb23488eb32dc2190fb7a84464dff53fb7515b3d702c` |
| 5 | `lemma` | [locally_iff_isLocalization](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-iff-islocalization--6571794501c803c559b8ca14.md) | 111 | `result-track:6571794501c803c559b8ca14ab5e4594b4e125ed2499ddb52ba0baf63b1917cb` |
| 6 | `lemma` | [locally_of](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-of--fd0b62bb2b8af2f4febcaeb2.md) | 126 | `result-track:fd0b62bb2b8af2f4febcaeb22d677ccee0a6f63067b742ff687cd1cb44aa10fb` |
| 7 | `lemma` | [locally_of_locally](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-of-locally--1c5c6e337443809b96c3c460.md) | 133 | `result-track:1c5c6e337443809b96c3c46061f3065eea5726ef079230384ef0c0d58a8a6caa` |
| 8 | `lemma` | [locally_iff_of_localizationSpanTarget](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-iff-of-localizationspantarget--c23d8bc271b9a6e95e0f63c9.md) | 140 | `result-track:c23d8bc271b9a6e95e0f63c9463869a2cdff0a27fe0da35163ab61b8d1528c4a` |
| 9 | `lemma` | [locally_ofLocalizationSpanTarget](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-oflocalizationspantarget--e90865418d6b5e87f9ec58f3.md) | 148 | `result-track:e90865418d6b5e87f9ec58f35a7a559541aaa1d1aa715348cc842dfb2674e1e4` |
| 10 | `lemma` | [locally_respectsIso](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-respectsiso--de6335144c5277700695bb49.md) | 173 | `result-track:de6335144c5277700695bb49851ee3e99266afbfd2de45c599b47d4fbbdc4920` |
| 11 | `lemma` | [locally_holdsForLocalizationAway](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-holdsforlocalizationaway--c9ebcbf7dfc5d47f26bc1b0e.md) | 191 | `result-track:c9ebcbf7dfc5d47f26bc1b0e5115267902b9d40b73473042632f302d59073af4` |
| 12 | `lemma` | [locally_stableUnderComposition](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-stableundercomposition--ae40644c751683cbb1201b57.md) | 204 | `result-track:ae40644c751683cbb1201b57a9b8463aaef30ed57e8d9b2827bab6af049610c3` |
| 13 | `lemma` | [locally_StableUnderCompositionWithLocalizationAwayTarget](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-stableundercompositionwithlocalizationawaytarget--ee80ca9dfa43d15b5f88fdc6.md) | 242 | `result-track:ee80ca9dfa43d15b5f88fdc63b3575cd13e075ba14768190fa36ef30e8dc2716` |
| 14 | `lemma` | [locally_StableUnderCompositionWithLocalizationAwaySource](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-stableundercompositionwithlocalizationawaysource--6e3cad78996a87f95bf9e8db.md) | 271 | `result-track:6e3cad78996a87f95bf9e8db20f52977c0be507b58deb307cc3d03373cef9aab` |
| 15 | `lemma` | [locally_isStableUnderBaseChange](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-isstableunderbasechange--1c33f0ea8386faf55ecac8ed.md) | 281 | `result-track:1c33f0ea8386faf55ecac8edca78a89033491d673eaa12d455f0cd80a515704a` |
| 16 | `lemma` | [locally_localizationAwayPreserves](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-localizationawaypreserves--e4a019e47944652ec8557000.md) | 327 | `result-track:e4a019e47944652ec8557000d617b42bfc17fdef1eacc8d4e797f7b766a9a440` |
| 17 | `lemma` | [locally_localizationPreserves](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-localizationpreserves--cb9f760f5e7d04ef75bab5a2.md) | 358 | `result-track:cb9f760f5e7d04ef75bab5a223a297650bbc95f0f3a81688fa1ca0c4113a4ef0` |
| 18 | `lemma` | [locally_propertyIsLocal](../../../../mathematics/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/declarations/locally-propertyislocal--80818e933a883fc5ebda5f64.md) | 392 | `result-track:80818e933a883fc5ebda5f648c9ad29b91aa57cdccbeddb5fc0c30c32ad3e1db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
