# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GaussSum.Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "267e66779716576095925c71501131a3d5f0b157",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `267e66779716576095925c71501131a3d5f0b157`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.AddCharacter` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.ZModChar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.CharAndCard` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/gausssum--4da58ffb8b941e1acb50d35a.md) | 74 | `declaration-track:4da58ffb8b941e1acb50d35a45db5a16f80bbda3c09b3af5ac7f8b7b1b43da59` |
| 2 | `theorem` | [gaussSum_mulShift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/gausssum-mulshift--219bc658c9cc45e261d19ec7.md) | 78 | `result-track:219bc658c9cc45e261d19ec7190b6d7a05667af03430696ef412492f18f3537a` |
| 3 | `lemma` | [gaussSum_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/gausssum-mul--b25a57c712aa78c656931c3d.md) | 94 | `result-track:b25a57c712aa78c656931c3d0272e60229541f0bd44ec3b485ba52d7416e4b87` |
| 4 | `lemma` | [mul_gaussSum_inv_eq_gaussSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/mul-gausssum-inv-eq-gausssum--020f9861b3dc45a2811e4454.md) | 111 | `result-track:020f9861b3dc45a2811e44547e47afcb83ceceb6bcc1262f84346d28be6f221e` |
| 5 | `theorem` | [gaussSum_mul_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/gausssum-mul-aux--ca3da12e5c9ac679f6eb483b.md) | 120 | `result-track:ca3da12e5c9ac679f6eb483b3e9425f31b791f08dbff44350b9303b33446b2d2` |
| 6 | `theorem` | [gaussSum_mul_gaussSum_eq_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/gausssum-mul-gausssum-eq-card--959751e6f27fbb53e83e6531.md) | 133 | `result-track:959751e6f27fbb53e83e6531adf877dff84e288084e586c186c8dd3eef5135af` |
| 7 | `lemma` | [gaussSum_mul_gaussSum_pow_orderOf_sub_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/gausssum-mul-gausssum-pow-orderof-sub-one--edd50b823d06a2e874768014.md) | 150 | `result-track:edd50b823d06a2e87476801494c21f14d28ab73514b8c08bd0c859a6dd1782ce` |
| 8 | `lemma` | [gaussSum_ne_zero_of_nontrivial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/gausssum-ne-zero-of-nontrivial--94a7b527f2d4dbc27d4e02b0.md) | 160 | `result-track:94a7b527f2d4dbc27d4e02b0bbc237fc30e7c6cca2161c93b8b65f0f24378011` |
| 9 | `theorem` | [gaussSum_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/gausssum-sq--484c1956b1c396f29133c838.md) | 167 | `result-track:484c1956b1c396f29133c8385f61c20b3e8a0c90d7d4c64a129c201e2630a5e7` |
| 10 | `theorem` | [gaussSum_frob](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/gausssum-frob--3fa7715cf8dfc71b46abb68b.md) | 190 | `result-track:3fa7715cf8dfc71b46abb68b22d8512e0d41925cfae2fba1759bd745c239e31f` |
| 11 | `theorem` | [MulChar.IsQuadratic.gaussSum_frob](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/mulchar-isquadratic-gausssum-frob--0e7ce7ceeef9e098e7c236ea.md) | 199 | `result-track:0e7ce7ceeef9e098e7c236ead7f2108f228b97e4ee28139e59b3ce2a72e604e9` |
| 12 | `theorem` | [MulChar.IsQuadratic.gaussSum_frob_iter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/mulchar-isquadratic-gausssum-frob-iter--d7cc7be6d7642c983cefcb45.md) | 209 | `result-track:d7cc7be6d7642c983cefcb4527dc003eb1d12890db98a7bc651f7205eec2a2ee` |
| 13 | `theorem` | [Char.card_pow_char_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/char-card-pow-char-pow--d83013de48330742a84e9cd1.md) | 232 | `result-track:d83013de48330742a84e9cd1b65db9269be72a9e1e567d7dec091d7acf66b23b` |
| 14 | `theorem` | [Char.card_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/char-card-pow-card--b923a501980b9f54159bc7d7.md) | 248 | `result-track:b923a501980b9f54159bc7d7a49fa5902d2de17a314abedd445297a829275807` |
| 15 | `theorem` | [FiniteField.two_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant34dea6dcc4fb5ca37b887c04fbbe8999d3c7fd8a16adbe65c3175a92b70db88b.lean/declarations/finitefield-two-pow-card--8e55c93093f013f9f3e14590.md) | 286 | `result-track:8e55c93093f013f9f3e14590c6fc853929e9d9f2c12da37d6f9bc9d0f3355836` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
