# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Card.Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "494f42dbdcb9464e0acb42af3c0667fc42bf0322",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `494f42dbdcb9464e0acb42af3c0667fc42bf0322`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [e1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/declarations/e1--9632d390a861937a39bbfe71.md) | 76 | `declaration-track:9632d390a861937a39bbfe7178c69b5e622b42c0f8116246e5babc3fa74ac02c` |
| 2 | `def` | [e2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/declarations/e2--cecf2613afe12cf253805fd3.md) | 88 | `declaration-track:cecf2613afe12cf253805fd38ace4a7c54c58555a3d87d86b1be5009a598f869` |
| 3 | `theorem` | [card_sym_fin_eq_multichoose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/declarations/card-sym-fin-eq-multichoose--a9225b16d0b7aaef1c93c989.md) | 104 | `result-track:a9225b16d0b7aaef1c93c9892af1560cb2cb39cea6d107b73c232bbddd83b0b3` |
| 4 | `theorem` | [card_sym_eq_multichoose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/declarations/card-sym-eq-multichoose--1ba5f0b4dfe1698163a5f8c9.md) | 118 | `result-track:1ba5f0b4dfe1698163a5f8c9b58a0d85790b0a60492b3106e34b3feb88e4984f` |
| 5 | `theorem` | [card_sym_eq_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/declarations/card-sym-eq-choose--4572a9318a77f71c6853619f.md) | 126 | `result-track:4572a9318a77f71c6853619fdb0e4949081275b534914622de1142dd870e38db` |
| 6 | `theorem` | [card_image_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/declarations/card-image-diag--a7ca3b5b94e07fd262e3ccd7.md) | 140 | `result-track:a7ca3b5b94e07fd262e3ccd79e82a8858ced54a1ea649431d2b6d82126d92ae0` |
| 7 | `theorem` | [two_mul_card_image_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/declarations/two-mul-card-image-offdiag--ce0117319e5930a2233c91d4.md) | 149 | `result-track:ce0117319e5930a2233c91d4b52c593aaea4fc6f54ad0049bfd009fc7f67b043` |
| 8 | `theorem` | [card_image_offDiag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/declarations/card-image-offdiag--f73ff23ff85840119f8cff8a.md) | 174 | `result-track:f73ff23ff85840119f8cff8a89ae8fd084071336e33d8a82a928e6ba53b9a1ec` |
| 9 | `theorem` | [card_subtype_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/declarations/card-subtype-diag--f52c5c7888174fe8e59a7383.md) | 180 | `result-track:f52c5c7888174fe8e59a738306e3ad0d8dc8eb8fce5ff85744c419e027254b57` |
| 10 | `theorem` | [card_subtype_not_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/declarations/card-subtype-not-diag--db523bad8b505d40f67a64f7.md) | 190 | `result-track:db523bad8b505d40f67a64f75b96330d66ad3197f026a5c57147c63708a82f99` |
| 11 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.E1.Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.Finset.card_sym2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-e1-variantea7c87df4f0674--b399968929d36d931f6eacd3.md) | 202 | `result-track:b399968929d36d931f6eacd34eace3628b479ff79ad05244b36f22728e1c0b79` |
| 12 | `theorem` | [card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/declarations/card--f6e65e4ca1b598609bbf2aa3.md) | 217 | `result-track:f6e65e4ca1b598609bbf2aa35653c0557e17aeecc8c0fae50576f62fe715f17b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
