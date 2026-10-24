# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Central.Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0eb1cb69161257ccab8c3754e89e4f3965759754",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0eb1cb69161257ccab8c3754e89e4f3965759754`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/declarations/centralbinom--770434204000d79d96e4ac21.md) | 40 | `declaration-track:770434204000d79d96e4ac2145696af995626c103544f8b9f0b6bf69b978c07f` |
| 2 | `theorem` | [centralBinom_eq_two_mul_choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/declarations/centralbinom-eq-two-mul-choose--11c4338add7da36bd0fe5267.md) | 44 | `result-track:11c4338add7da36bd0fe52676d5be410af5612d291c2d6e331e2a8fa61f2377c` |
| 3 | `theorem` | [centralBinom_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/declarations/centralbinom-pos--9f987fe30476aac2926ae73e.md) | 48 | `result-track:9f987fe30476aac2926ae73e9c2c7189960672115c9ed9c7302883905241d9b3` |
| 4 | `theorem` | [centralBinom_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/declarations/centralbinom-ne-zero--f3427a2554bd8b88533c966c.md) | 52 | `result-track:f3427a2554bd8b88533c966cccf85cf1f7858a07ed3fa55510fe48e15b087180` |
| 5 | `theorem` | [centralBinom_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/declarations/centralbinom-zero--17e1822806c04f7ff52ca8d2.md) | 57 | `result-track:17e1822806c04f7ff52ca8d25515121347dd7835e8a43d7c4f197a9e37b7aaa3` |
| 6 | `theorem` | [choose_le_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/declarations/choose-le-centralbinom--8a455581f6209a33f503c39d.md) | 63 | `result-track:8a455581f6209a33f503c39dd0c54e876c2f1f8c0621560e25413d4ce565b23a` |
| 7 | `theorem` | [two_le_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/declarations/two-le-centralbinom--4cf55785b0f3640f99c7c2f9.md) | 69 | `result-track:4cf55785b0f3640f99c7c2f9416549a4a465fab67cf26fd4e9217d03e2732b14` |
| 8 | `theorem` | [succ_mul_centralBinom_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/declarations/succ-mul-centralbinom-succ--7cf38b6f4c50cc51b4fed58e.md) | 78 | `result-track:7cf38b6f4c50cc51b4fed58eca67acb784e834444afae2c8610ed1b7d6caef82` |
| 9 | `theorem` | [four_pow_lt_mul_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/declarations/four-pow-lt-mul-centralbinom--840162adfa41892eed2fddde.md) | 94 | `result-track:840162adfa41892eed2fddde1131e1346ec266fd94802d28667ba91549eb4eac` |
| 10 | `theorem` | [four_pow_le_two_mul_self_mul_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/declarations/four-pow-le-two-mul-self-mul-centralbinom--f29c669d45d7c8255080e386.md) | 111 | `result-track:f29c669d45d7c8255080e3860cfa648e85292794c96e8f439ae67adfdceca07c` |
| 11 | `theorem` | [two_dvd_centralBinom_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/declarations/two-dvd-centralbinom-succ--137bc8c9fa7a213bec0c7ecd.md) | 124 | `result-track:137bc8c9fa7a213bec0c7ecd5a6972876828a6d6e2e45fa67591c796d57699b5` |
| 12 | `theorem` | [two_dvd_centralBinom_of_one_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/declarations/two-dvd-centralbinom-of-one-le--58ec86e13ec4fd3f9c78e209.md) | 130 | `result-track:58ec86e13ec4fd3f9c78e209592cbeeb132f7022080e8fa64d3d795b65cfcbd4` |
| 13 | `theorem` | [succ_dvd_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant5ad850f41796a71f116d8275a5ec137de7d3489c644b19d9bc0e1f37ddb0d87e.lean/declarations/succ-dvd-centralbinom--5c7a32fa811f66917dbe1577.md) | 137 | `result-track:5c7a32fa811f66917dbe1577393a7be70a1b9ca7135073ec2feb6f771e9470ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
