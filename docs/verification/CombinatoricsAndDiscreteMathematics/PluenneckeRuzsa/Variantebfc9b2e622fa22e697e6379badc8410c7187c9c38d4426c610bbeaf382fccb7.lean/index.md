# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PluenneckeRuzsa.Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7c9503686fc7d729b3cfc372667622bc221e8a7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7c9503686fc7d729b3cfc372667622bc221e8a7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.DoubleCounting` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.NNRat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_div_mul_le_card_div_mul_card_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-div-mul-le-card-div-mul-card-div--8539121dae443d759bf11261.md) | 44 | `result-track:8539121dae443d759bf112617775182d70203d28139fbe3c3b7e14b0a6733a3f` |
| 2 | `theorem` | [card_div_mul_le_card_mul_mul_card_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-div-mul-le-card-mul-mul-card-mul--f1490f2781a5356d1ac6ea89.md) | 61 | `result-track:f1490f2781a5356d1ac6ea899df7c4c5ce1d3889974964f17dbec12b265ceec1` |
| 3 | `theorem` | [card_mul_mul_le_card_div_mul_card_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-mul-mul-le-card-div-mul-card-mul--1695c74bac4509952b403a45.md) | 71 | `result-track:1695c74bac4509952b403a45308fb6d261787c2359413868d26b08002ec4e536` |
| 4 | `theorem` | [card_mul_mul_le_card_mul_mul_card_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-mul-mul-le-card-mul-mul-card-div--0131b3db07a362ce83a56dd1.md) | 81 | `result-track:0131b3db07a362ce83a56dd180fc68b1b2950c11fbb2de6db00c1080f5f0dff5` |
| 5 | `theorem` | [mul_pluennecke_petridis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/mul-pluennecke-petridis--1009162f728748cd4afd3299.md) | 89 | `result-track:1009162f728748cd4afd3299667c58588bc93836b656fa70f2e5e1a2da02fc55` |
| 6 | `theorem` | [mul_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/mul-aux--dc48d67ac8353fc02065d46c.md) | 124 | `result-track:dc48d67ac8353fc02065d46c10ce471e4eb7a5b402b542f9b0746cfeb092e878` |
| 7 | `theorem` | [card_mul_mul_card_le_card_mul_mul_card_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-mul-mul-card-le-card-mul-mul-card-mul--08a1cd08f08b8b4178f13343.md) | 139 | `result-track:08a1cd08f08b8b4178f13343ee21f4cce7958f657d248fc314994eca72444ce0` |
| 8 | `theorem` | [card_mul_mul_le_card_div_mul_card_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-mul-mul-le-card-div-mul-card-div--65804d1bb94d98e183114ab9.md) | 162 | `result-track:65804d1bb94d98e183114ab99569276a345d130a97f836fdf3e114e44b4c9ef1` |
| 9 | `theorem` | [card_div_mul_le_card_mul_mul_card_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-div-mul-le-card-mul-mul-card-div--b01650e0b1e06ca6ba9c8c4f.md) | 169 | `result-track:b01650e0b1e06ca6ba9c8c4f02af1565aacee8a831979e003f5bea018e7ea511` |
| 10 | `theorem` | [card_div_mul_le_card_div_mul_card_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-div-mul-le-card-div-mul-card-mul--95b0fa3dc92d504cea8b38f1.md) | 176 | `result-track:95b0fa3dc92d504cea8b38f1181600e11a7c98099f43dddddeb1c7b5e247de15` |
| 11 | `theorem` | [card_add_nsmul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-add-nsmul-le--94e10b09ce681c88a21e3523.md) | 182 | `result-track:94e10b09ce681c88a21e3523d8d387c0eb98233c7d7ebf6bf9c3f527f3e959e6` |
| 12 | `theorem` | [card_mul_pow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-mul-pow-le--2f1c9b2ad4b55841baed63b4.md) | 198 | `result-track:2f1c9b2ad4b55841baed63b407241d167edda3abdb19503699e4ac66641eeb2f` |
| 13 | `theorem` | [card_pow_div_pow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-pow-div-pow-le--8b77110df753c40d29219462.md) | 216 | `result-track:8b77110df753c40d29219462af0de03b3729f8bdca28e9399c654e1560bf255c` |
| 14 | `theorem` | [card_pow_div_pow_le'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-pow-div-pow-le--e050ed78f3a0e2508b6f9b47.md) | 238 | `result-track:e050ed78f3a0e2508b6f9b4759f0a7e884e16e09e646d000fad190b7927fdd66` |
| 15 | `theorem` | [card_pow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-pow-le--e3576c93365e6cc9938628b6.md) | 247 | `result-track:e3576c93365e6cc9938628b6f57c05e424cc4084f26bdb724e4cfb2e876bcdba` |
| 16 | `theorem` | [card_pow_le'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/declarations/card-pow-le--8e61cf7f0bb625f105a255dc.md) | 255 | `result-track:8e61cf7f0bb625f105a255dcfa39df8da0c38304ab0e7559af6c15820c868e5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
