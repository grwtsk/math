# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BetaNext.Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6770ea1e7b5347ba445e9787f6cc768c845d9fe7",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6770ea1e7b5347ba445e9787f6cc768c845d9fe7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Reduction` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Reduction.FiniteHeight` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [headNext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/headnext--8d126bab7983e4f81f886a86.md) | 30 | `declaration-track:8d126bab7983e4f81f886a8666005e484dd2501e5f2df401b00fe89678fb7c0d` |
| 2 | `def` | [next](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/next--0a78b57c349488e5fd4521cd.md) | 36 | `declaration-track:0a78b57c349488e5fd4521cda7f4010a57f3323f1207416f3877de1830b8eecf` |
| 3 | `theorem` | [headNext_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/headnext-sound--4b033fce9bf7b8be1e1d7080.md) | 50 | `result-track:4b033fce9bf7b8be1e1d70802d303d47f7c4fe4cfbf731008942629d5d877700` |
| 4 | `theorem` | [next_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/next-sound--0bdf15039c81cde3d08635e7.md) | 63 | `result-track:0bdf15039c81cde3d08635e727d5e619d7663dc74f0c1d032507077855b09440` |
| 5 | `theorem` | [next_complete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/next-complete--1e6ddf2eb233971a76a10cd2.md) | 89 | `result-track:1e6ddf2eb233971a76a10cd2d5b7617b6be3aa7b7c03615267e76e8ac5081f34` |
| 6 | `theorem` | [next_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/next-correct--fb0b221268e38015809c7cfc.md) | 104 | `result-track:fb0b221268e38015809c7cfc2103440b4bafb00eaf115f93a1f49df9f0d6f8c0` |
| 7 | `abbrev` | [AccessibleState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/accessiblestate--c21722369e6614b2065a54b7.md) | 108 | `declaration-track:c21722369e6614b2065a54b79e361fbdb65e818de4c2aae176a2ccbc7b8178d8` |
| 8 | `def` | [step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/step--e513d82336ef92037017ae07.md) | 111 | `declaration-track:e513d82336ef92037017ae0712ed3f06f334c03be2297dd48b2d46be8cd74d91` |
| 9 | `def` | [accessibleNext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/accessiblenext--426256d9da75801cbb160d85.md) | 114 | `declaration-track:426256d9da75801cbb160d8546edef6f08e0e224c547372dfabc747ea3f9fc92` |
| 10 | `theorem` | [accessibleNext_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/accessiblenext-correct--711cd6f58f53e7a199d5fa86.md) | 119 | `result-track:711cd6f58f53e7a199d5fa865c6fe9d48719493ce05c1afb9f73a9794cc0272a` |
| 11 | `theorem` | [accessible_wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/accessible-wellfounded--81106a1930bdd4afabfa9b34.md) | 135 | `result-track:81106a1930bdd4afabfa9b34e6475705fdf7504b63d5d860efe7a2149bf9ea87` |
| 12 | `def` | [reducer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/reducer--04366d2cad259621d1b5789b.md) | 142 | `declaration-track:04366d2cad259621d1b5789b8e444600ed094748b0bdcf082225785572aaff24` |
| 13 | `def` | [height](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/height--fc973d06f762710c29edbdcc.md) | 150 | `declaration-track:fc973d06f762710c29edbdcc6b4820adbaa609468d910fb03308fb22facb4eea` |
| 14 | `theorem` | [trace_height_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/trace-height-bound--475c6414672fa121e8de3da5.md) | 153 | `result-track:475c6414672fa121e8de3da5f137e48797102549b7a496aaa2d6988c5ee255c3` |
| 15 | `theorem` | [longest_trace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/declarations/longest-trace--3368efaef9ad339ec2fdf3cf.md) | 159 | `result-track:3368efaef9ad339ec2fdf3cfabc2f64bd3a9d84fb1900ba9aaa15831c21bb7f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
