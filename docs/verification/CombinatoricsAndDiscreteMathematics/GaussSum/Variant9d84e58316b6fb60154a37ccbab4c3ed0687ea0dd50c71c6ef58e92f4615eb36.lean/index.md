# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GaussSum.Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6a3d8af606da8f5e36b55822c8a76af90220b08",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6a3d8af606da8f5e36b55822c8a76af90220b08`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.AddCharacter` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.ZModChar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.CharAndCard` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/gausssum--90e21383031e2504dfdb3503.md) | 66 | `declaration-track:90e21383031e2504dfdb3503791bc0f99d69c1ed645d0e7b92bcbe9863a3a58f` |
| 2 | `theorem` | [gaussSum_mulShift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/gausssum-mulshift--714dd07f4c937f79a38bad81.md) | 70 | `result-track:714dd07f4c937f79a38bad8139cb83cc750f03086e512799de50cddf3b187bb3` |
| 3 | `lemma` | [gaussSum_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/gausssum-mul--c20451b1af760e4913baf28b.md) | 86 | `result-track:c20451b1af760e4913baf28b839172941b3767463575d0b9ecd4afd17e7780f6` |
| 4 | `lemma` | [mul_gaussSum_inv_eq_gaussSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/mul-gausssum-inv-eq-gausssum--f2ecc006747d46559823be7b.md) | 103 | `result-track:f2ecc006747d46559823be7b9bfb9e11adde043c44146153e8e9a06007955e8b` |
| 5 | `theorem` | [gaussSum_mul_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/gausssum-mul-aux--8a6aabec31c433d02885482f.md) | 112 | `result-track:8a6aabec31c433d02885482f49ecb7b0e62a9b6641b258c4f5dffd21c21086da` |
| 6 | `theorem` | [gaussSum_mul_gaussSum_eq_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/gausssum-mul-gausssum-eq-card--3bd61dba758a832ddf86e841.md) | 125 | `result-track:3bd61dba758a832ddf86e841985c42467d73c692979d2b7b9eddeebdd3aa3379` |
| 7 | `lemma` | [gaussSum_mul_gaussSum_pow_orderOf_sub_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/gausssum-mul-gausssum-pow-orderof-sub-one--044f0b2e31c14687892b1f13.md) | 142 | `result-track:044f0b2e31c14687892b1f139513f37c7002e675adc0a47311912b071977ed91` |
| 8 | `lemma` | [gaussSum_ne_zero_of_nontrivial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/gausssum-ne-zero-of-nontrivial--51fb3492eaf97424b71740a7.md) | 152 | `result-track:51fb3492eaf97424b71740a7794bccfd87d7b5c57829c12c55b40dd7ab74452f` |
| 9 | `theorem` | [gaussSum_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/gausssum-sq--f8ec8078caedf63b62462e3c.md) | 159 | `result-track:f8ec8078caedf63b62462e3c84a326970e83ddf25d1adf87d759f023c620a3a6` |
| 10 | `theorem` | [gaussSum_frob](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/gausssum-frob--612dddabaa520359c320ac91.md) | 182 | `result-track:612dddabaa520359c320ac915d323e92f6b48b33dd1b89311e85f7b59c3b599e` |
| 11 | `theorem` | [MulChar.IsQuadratic.gaussSum_frob](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/mulchar-isquadratic-gausssum-frob--39d28996ceaabcde24cfe6ae.md) | 191 | `result-track:39d28996ceaabcde24cfe6aef92bac085ad110f471000b637e2256af9c6ef83f` |
| 12 | `theorem` | [MulChar.IsQuadratic.gaussSum_frob_iter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/mulchar-isquadratic-gausssum-frob-iter--a51dee41de316cc0e08c5c6a.md) | 201 | `result-track:a51dee41de316cc0e08c5c6a71e8632a3ffefea6c8c58435f85f8d8690d4c8f0` |
| 13 | `theorem` | [Char.card_pow_char_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/char-card-pow-char-pow--491c87e43398d28850b5cf1a.md) | 224 | `result-track:491c87e43398d28850b5cf1ac57fd5a6ee98886928c3ac0fa01f2afb99e35f75` |
| 14 | `theorem` | [Char.card_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/char-card-pow-card--eb7d07fcc8f55b5aa10b118f.md) | 240 | `result-track:eb7d07fcc8f55b5aa10b118f9cb4d61736bebba8799c3c62a34b0c7caa8dce29` |
| 15 | `theorem` | [FiniteField.two_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant9d84e58316b6fb60154a37ccbab4c3ed0687ea0dd50c71c6ef58e92f4615eb36.lean/declarations/finitefield-two-pow-card--95722f8574195421406d5bad.md) | 278 | `result-track:95722f8574195421406d5bad3ddddfd5f8ef19e5ffac3720e02e57040d3689c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
