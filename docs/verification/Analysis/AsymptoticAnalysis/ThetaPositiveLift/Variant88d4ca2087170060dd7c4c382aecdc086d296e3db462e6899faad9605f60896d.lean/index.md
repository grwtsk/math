# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "839473362e74b673c214b0fb14370732e61032ea",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `839473362e74b673c214b0fb14370732e61032ea`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianMode](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/declarations/gaussianmode--05ef0a73a3529a43326cf350.md) | 30 | `declaration-track:05ef0a73a3529a43326cf35010baa13c3254be7958720bc4448c801a301d210c` |
| 2 | `theorem` | [exp_three_gt_sixteen](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/declarations/exp-three-gt-sixteen--418c128f1a2c4a05009c7683.md) | 33 | `result-track:418c128f1a2c4a05009c7683ffe6198c626341433475fb94ce594a20a8ab7db5` |
| 3 | `theorem` | [gaussian_zero_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/declarations/gaussian-zero-lt--46b9011c294a19d611b9293b.md) | 38 | `result-track:46b9011c294a19d611b9293b6de6889d03bb296289e77b32b61b1f6a31b916e0` |
| 4 | `theorem` | [gaussian_ratio_small](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/declarations/gaussian-ratio-small--24f2612358c825bf9db62a3e.md) | 49 | `result-track:24f2612358c825bf9db62a3e37512ca01db89159b064c2077b278543e5774a04` |
| 5 | `theorem` | [gaussian_succ_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/declarations/gaussian-succ-le--72fc12001052f5e70cf9ca0f.md) | 60 | `result-track:72fc12001052f5e70cf9ca0fe92c2b24a5e39fff1f82007be993f0b02490f1be` |
| 6 | `theorem` | [gaussian_geometric_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/declarations/gaussian-geometric-le--175e6b01a674cbdd2cc42995.md) | 82 | `result-track:175e6b01a674cbdd2cc4299550452c83a9cc951979a1f3259220cc4eddab9c6b` |
| 7 | `theorem` | [gaussian_three_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/declarations/gaussian-three-summable--df5ea78b33d94e266f47b16d.md) | 93 | `result-track:df5ea78b33d94e266f47b16da9742e0897cd0fb8a0c6e1f80fd5ce9cbf3ee083` |
| 8 | `theorem` | [gaussian_three_tsum_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/declarations/gaussian-three-tsum-lt--25a9cfb66caad5ea8f8ec9bf.md) | 101 | `result-track:25a9cfb66caad5ea8f8ec9bf6a4257bf586ff63cefc26eb454c74d21cd5eac29` |
| 9 | `theorem` | [gaussian_le_three](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/declarations/gaussian-le-three--6640cf468eabeed09f43c2e9.md) | 110 | `result-track:6640cf468eabeed09f43c2e946a40c48c85d7305bf06f2771d734234007d9af4` |
| 10 | `theorem` | [gaussian_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/declarations/gaussian-summable--75c6f2cceae59fcc66eb701e.md) | 119 | `result-track:75c6f2cceae59fcc66eb701ee3d6c1fa77057e664b8a478f690c1582c3fa6011` |
| 11 | `theorem` | [gaussian_mul_le_three](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/declarations/gaussian-mul-le-three--e9537202555d41368ef4b881.md) | 123 | `result-track:e9537202555d41368ef4b881e7a1237e8de23c8856b075e65787f01eba27333f` |
| 12 | `theorem` | [thetaGaussianTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/declarations/thetagaussiantail-summable--8cee78a4e34769d7aefed2fd.md) | 142 | `result-track:8cee78a4e34769d7aefed2fdf52eba775634ff518319cf0464e60714a098ee92` |
| 13 | `theorem` | [thetaGaussianTail_mul_lt_one_fifth](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88d4ca2087170060dd7c4c382aecdc086d296e3db462e6899faad9605f60896d.lean/declarations/thetagaussiantail-mul-lt-one-fifth--7713c303140aad138aff5d70.md) | 148 | `result-track:7713c303140aad138aff5d709d27ee3d9a7baa3d1a232682b1a332d2013be9ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
