# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Density.Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "596a750b4a1f7f26614e38d22bd920d3a2694ce7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `596a750b4a1f7f26614e38d22bd920d3a2694ce7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Bitspace.Checkerboard` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [imbalance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/declarations/imbalance--c68b70bc2a7e9ba38ee0275c.md) | 31 | `declaration-track:c68b70bc2a7e9ba38ee0275cd58d0b1b0996ca5c9aa525b79e9f4476fe3ca501` |
| 2 | `theorem` | [count_odd_eq_div_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/declarations/count-odd-eq-div-two--3b77db6ac6af657ed0b4879d.md) | 34 | `result-track:3b77db6ac6af657ed0b4879d319ca625bfa58951a311ae7a6bd76453a772b87a` |
| 3 | `def` | [finOddEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/declarations/finoddequiv--af1139bcd3683e9edb0a4bbc.md) | 49 | `declaration-track:af1139bcd3683e9edb0a4bbcd0a298b2bdcb7658dde4f682b587ef35a5a51fe8` |
| 4 | `theorem` | [card_fin_odd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/declarations/card-fin-odd--96e916764f07100bb81eed6d.md) | 60 | `result-track:96e916764f07100bb81eed6d387f60d83ebe7c42ac66ee8c3cc2a17373ebedd7` |
| 5 | `theorem` | [card_fin_even](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/declarations/card-fin-even--8574a8ad4bfd5e4553c7c14e.md) | 74 | `result-track:8574a8ad4bfd5e4553c7c14e3be27e7cd17897c2295e173b7d8369bfadba65fb` |
| 6 | `theorem` | [checkerboard_count_arithmetic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/declarations/checkerboard-count-arithmetic--e091b6098b13e50c1c2797d0.md) | 85 | `result-track:e091b6098b13e50c1c2797d05dbfb8399d99bbaf3c1115e1e8ff8640035c35f3` |
| 7 | `theorem` | [checkerboard_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/declarations/checkerboard-one-iff--194e539e8eaa895980b5a445.md) | 153 | `result-track:194e539e8eaa895980b5a4457e6d543af4c99b1b22c5cd21d999f315fdf146cd` |
| 8 | `theorem` | [checkerboard_countOnes_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/declarations/checkerboard-countones-eq--c86b1a934dbbd9bdb1e38f3e.md) | 160 | `result-track:c86b1a934dbbd9bdb1e38f3eb72cba413c79eb334a79ca6a8d7a321075499e42` |
| 9 | `theorem` | [checkerboard_countZeros_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/declarations/checkerboard-countzeros-eq--fb45c22fd71ec8ba15039c18.md) | 187 | `result-track:fb45c22fd71ec8ba15039c18649d9cec54df522ec1dacfa81324b3693b791d98` |
| 10 | `theorem` | [checkerboard_count_imbalance_abs_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/declarations/checkerboard-count-imbalance-abs-le-one--0f3d1d5ebe6d509a98eef74e.md) | 195 | `result-track:0f3d1d5ebe6d509a98eef74ea5d4674a26e135c670964717d91c3f6b99bab313` |
| 11 | `theorem` | [checkerboard_average_half_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/declarations/checkerboard-average-half-bound--ffc2285d92dcc0e427813db9.md) | 217 | `result-track:ffc2285d92dcc0e427813db95db3c14f0b3e2eb11c1ef89e0595c6e21e8b81c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
