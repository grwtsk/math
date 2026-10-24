# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Imo1987Q1.Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "825d12533f4420ffede7b7e256dedbd7b76da695",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `825d12533f4420ffede7b7e256dedbd7b76da695`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Perm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.FixedPoints.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixedPointsEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean/declarations/fixedpointsequiv--2aab032431d049ecb95f5afc.md) | 42 | `declaration-track:2aab032431d049ecb95f5afca62843b201dcfdd81c22ef7e38ed673c99b67460` |
| 2 | `theorem` | [card_fixed_points](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean/declarations/card-fixed-points--492701a9d8391aef5d45cc00.md) | 51 | `result-track:492701a9d8391aef5d45cc00cab0e8ada4ab763807b8f32a4cba36203c9ec76a` |
| 3 | `def` | [fiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean/declarations/fiber--0fea636cf313df90cfe4ba61.md) | 59 | `declaration-track:0fea636cf313df90cfe4ba6140a55e16f6d351d19a51a428f31b33b58a7ede0c` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean/declarations/instance--6aa0be212d5c7da719037f10.md) | 63 | `declaration-track:6aa0be212d5c7da719037f100cffdbdcf4f4bbcc963281d6642f26b032a59556` |
| 5 | `theorem` | [mem_fiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean/declarations/mem-fiber--f7290ea7338592380ee4c4e8.md) | 66 | `result-track:f7290ea7338592380ee4c4e8cc3fa29ff33f255902da45cf2db37047c1fcf61a` |
| 6 | `def` | [p](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean/declarations/p--4ea35c687a7125b20e442bb5.md) | 71 | `declaration-track:4ea35c687a7125b20e442bb5aa78b43274ed23c58a56789d92e935b4eeba2d90` |
| 7 | `def` | [fixedPointsEquiv'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean/declarations/fixedpointsequiv--b79731381f4e24d819c79e1f.md) | 81 | `declaration-track:b79731381f4e24d819c79e1fc21d34b8221e0f90138a4b26f18a8b150e825787` |
| 8 | `theorem` | [main_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean/declarations/main-fintype--53e9809d3a2800aac11e19da.md) | 95 | `result-track:53e9809d3a2800aac11e19da5b4bf6c8edd45a10b7083466d1d771777f6df252` |
| 9 | `theorem` | [main₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean/declarations/main--76b6d73c5918819fdeda585c.md) | 102 | `result-track:76b6d73c5918819fdeda585ce1782593201806d2c896c7dd9213fd5731313abe` |
| 10 | `theorem` | [main](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant8d92a3beadfd80173aae4f30914626c61bc92ffb601430b4e6058410fd7f9549.lean/declarations/main--cfc460c4e4b4553c0bd9b19a.md) | 107 | `result-track:cfc460c4e4b4553c0bd9b19a6202938b4e2c1de4d7a776fd3f7dfc23ff9930eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
