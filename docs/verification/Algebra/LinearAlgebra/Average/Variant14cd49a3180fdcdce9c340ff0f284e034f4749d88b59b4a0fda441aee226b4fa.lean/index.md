# Verification target: GRWTSK.Algebra.LinearAlgebra.Average.Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bc1878aa1fb1fcb2a85554bd7e85de2adfb65bf",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bc1878aa1fb1fcb2a85554bd7e85de2adfb65bf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.BirkhoffSum.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean/declarations/birkhoffaverage--2ec16da583d859c0a7638614.md) | 50 | `declaration-track:2ec16da583d859c0a76386142ae4b0f088be17cc14583a0c2b3e88d199fe105f` |
| 2 | `theorem` | [birkhoffAverage_zero](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean/declarations/birkhoffaverage-zero--48fee094b027c41fb3c6c430.md) | 52 | `result-track:48fee094b027c41fb3c6c430ec7268f5040ad7fe5d1f8f9b08aa54f1fb7b4eb5` |
| 3 | `theorem` | [birkhoffAverage_zero'](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean/declarations/birkhoffaverage-zero--848101cabb043e86b010d076.md) | 55 | `result-track:848101cabb043e86b010d0765b5a2c54c0b631c0d3226f00af29bdbf3e98961c` |
| 4 | `theorem` | [birkhoffAverage_one](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean/declarations/birkhoffaverage-one--a624bfe7e5602767985ec9bd.md) | 58 | `result-track:a624bfe7e5602767985ec9bda94c82135d1c718f92f6b163a7d645082f5af3ec` |
| 5 | `theorem` | [birkhoffAverage_one'](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean/declarations/birkhoffaverage-one--41e7ebfb8277ba7d9947b929.md) | 62 | `result-track:41e7ebfb8277ba7d9947b929fbd82c3fb1e4c90d462df92517b2b9a178bc1ab9` |
| 6 | `theorem` | [map_birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean/declarations/map-birkhoffaverage--ed25e9926a3a633886852c0e.md) | 65 | `result-track:ed25e9926a3a633886852c0e4557572311ddf4bba7210683d394d65e2e47b5c9` |
| 7 | `theorem` | [birkhoffAverage_congr_ring](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean/declarations/birkhoffaverage-congr-ring--c542ca1c52aac3eac7fccdec.md) | 71 | `result-track:c542ca1c52aac3eac7fccdecc0da0c8a8c25b7ee480c7c284e071e253df7eab1` |
| 8 | `theorem` | [birkhoffAverage_congr_ring'](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean/declarations/birkhoffaverage-congr-ring--e4856d5d4ea853fce2228bcf.md) | 76 | `result-track:e4856d5d4ea853fce2228bcf6dfcd49239a4c9bc0ddb14ad4a20f246ae607102` |
| 9 | `theorem` | [Function.IsFixedPt.birkhoffAverage_eq](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean/declarations/function-isfixedpt-birkhoffaverage-eq--aa4ed49d51d309408d6ab0c7.md) | 80 | `result-track:aa4ed49d51d309408d6ab0c7b81a099ea9099a303f839d5f4dbf257b73656d74` |
| 10 | `theorem` | [birkhoffAverage_apply_sub_birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant14cd49a3180fdcdce9c340ff0f284e034f4749d88b59b4a0fda441aee226b4fa.lean/declarations/birkhoffaverage-apply-sub-birkhoffaverage--6cf7adbfcaba07a93c869c45.md) | 90 | `result-track:6cf7adbfcaba07a93c869c45aad87ca575fbb93456d03f9a78d31608a56032e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
