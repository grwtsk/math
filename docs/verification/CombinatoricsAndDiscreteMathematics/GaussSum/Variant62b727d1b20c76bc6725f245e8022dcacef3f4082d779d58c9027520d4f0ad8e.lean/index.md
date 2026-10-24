# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GaussSum.Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f4d86b1ec4214cd32489b59eb870d1fc0a0bf04",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f4d86b1ec4214cd32489b59eb870d1fc0a0bf04`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean.json)

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
| 1 | `def` | [gaussSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/declarations/gausssum--39f54719a2e12ba2c611c40c.md) | 71 | `declaration-track:39f54719a2e12ba2c611c40c396de66a3393f8e1c74b2654c3ebdf85ae1c4d31` |
| 2 | `theorem` | [gaussSum_mulShift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/declarations/gausssum-mulshift--7f15685b26fd6433e0de7a56.md) | 76 | `result-track:7f15685b26fd6433e0de7a5639ab5e6351f6928b30ccc8077c1a3bbc82c8573e` |
| 3 | `theorem` | [gaussSum_mul_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/declarations/gausssum-mul-aux--f5223940e07e6d4a4412674c.md) | 97 | `result-track:f5223940e07e6d4a4412674c24b1c9944ed35e0785987fa5134564c4fbcba67f` |
| 4 | `theorem` | [gaussSum_mul_gaussSum_eq_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/declarations/gausssum-mul-gausssum-eq-card--2b7e1ecccfadca82860418e0.md) | 110 | `result-track:2b7e1ecccfadca82860418e0201854b624097e3356607f32edccf4f62f1c8a50` |
| 5 | `theorem` | [gaussSum_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/declarations/gausssum-sq--08723127197615313fe070f8.md) | 129 | `result-track:08723127197615313fe070f801b1c67cfe4e8c3426e4ad8b8fa0e8a0370fbdc8` |
| 6 | `theorem` | [gaussSum_frob](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/declarations/gausssum-frob--09bb8f03bfb5032a50437678.md) | 153 | `result-track:09bb8f03bfb5032a50437678dbe8e854d90f54a130a49d38e58b902e825998a1` |
| 7 | `theorem` | [MulChar.IsQuadratic.gaussSum_frob](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/declarations/mulchar-isquadratic-gausssum-frob--faeb4cb797e8ebf17c54bbed.md) | 164 | `result-track:faeb4cb797e8ebf17c54bbed02b5f81e13b5c4e2d0433c5e233455c2571a890e` |
| 8 | `theorem` | [MulChar.IsQuadratic.gaussSum_frob_iter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/declarations/mulchar-isquadratic-gausssum-frob-iter--65ba78ad5e4fabb7232a69ce.md) | 174 | `result-track:65ba78ad5e4fabb7232a69ce99baf25340290d1d282a778e87d98089f6d5037f` |
| 9 | `theorem` | [Char.card_pow_char_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/declarations/char-card-pow-char-pow--dfa829640f82599b04c4dc1a.md) | 198 | `result-track:dfa829640f82599b04c4dc1a8e5e4807b2cef738ea0db55e287ade497b6a6adb` |
| 10 | `theorem` | [Char.card_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/declarations/char-card-pow-card--ca972e2c62b0b6e9a00d052d.md) | 213 | `result-track:ca972e2c62b0b6e9a00d052df6a0f8fda922adc1e6e124092cae7fc9350b175d` |
| 11 | `theorem` | [FiniteField.two_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/declarations/finitefield-two-pow-card--65e737c87a03fd95515761b1.md) | 266 | `result-track:65e737c87a03fd95515761b1392d697667416804110b39a96fe6e15ca68ddba0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
