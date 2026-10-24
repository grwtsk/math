# Verification target: GRWTSK.Analysis.Real.TentWeight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "485290530fc72a5bf45e4d7682d230762ac58f5b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/TentWeight.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `485290530fc72a5bf45e4d7682d230762ac58f5b`.

Source path: `GRWTSK/Analysis/Real/TentWeight.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/TentWeight.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tent](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/declarations/tent--0a74de0c902a51b2cdc78f3b.md) | 24 | `declaration-track:0a74de0c902a51b2cdc78f3b15a1c4ff387ad4dc01975104d4447431e3e46694` |
| 2 | `theorem` | [tent_nonneg](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/declarations/tent-nonneg--9070b80f6dcfd40631b2948c.md) | 26 | `result-track:9070b80f6dcfd40631b2948c23212d2dab964b9cdf3bb15d7a796046bc7182de` |
| 3 | `theorem` | [tent_le_one](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/declarations/tent-le-one--b46487f777f0665ec1fc2a0f.md) | 28 | `result-track:b46487f777f0665ec1fc2a0f33159101f9a3e1e049ef92b236eceb47276748f5` |
| 4 | `theorem` | [tent_pos_iff](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/declarations/tent-pos-iff--a75088e69af411a7f8c90f4a.md) | 33 | `result-track:a75088e69af411a7f8c90f4a1218bd65090d4e8d83da35359d62b24a5c64c746` |
| 5 | `theorem` | [tent_eq_zero_of_outside](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/declarations/tent-eq-zero-of-outside--38af1acf9457d5124504d3bc.md) | 40 | `result-track:38af1acf9457d5124504d3bcc4e92b7112ee612fc081ad9607f1ac3b08cf6643` |
| 6 | `theorem` | [tent_on_left](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/declarations/tent-on-left--17566dd7b6a2b0b6b3e4072b.md) | 46 | `result-track:17566dd7b6a2b0b6b3e4072beadfa3e7b31180962ed4ed643cb090e89c6950a6` |
| 7 | `theorem` | [tent_on_right](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/declarations/tent-on-right--71e445e66af84f21aca76acc.md) | 55 | `result-track:71e445e66af84f21aca76acc78e688494e14fdb3b49e28b5aa7468cf49c76330` |
| 8 | `theorem` | [hinge_second_difference](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/declarations/hinge-second-difference--8c9b62be13535cfa2d5b2a48.md) | 66 | `result-track:8c9b62be13535cfa2d5b2a487b4fab8f420157d0e5ce63b2c6ddecabf42ef3d8` |
| 9 | `theorem` | [affine_second_difference](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/declarations/affine-second-difference--ad1164cd9380f2d0672fc1e3.md) | 92 | `result-track:ad1164cd9380f2d0672fc1e33bbebc6fe0f1295f6c2c5db6caae9c46807a9004` |
| 10 | `theorem` | [quadratic_main_second_difference](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/declarations/quadratic-main-second-difference--dae39a0c395adcc0d978fd2c.md) | 97 | `result-track:dae39a0c395adcc0d978fd2c1c7d984f1bbadf30ea7eec42b17504be9d5c05da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
