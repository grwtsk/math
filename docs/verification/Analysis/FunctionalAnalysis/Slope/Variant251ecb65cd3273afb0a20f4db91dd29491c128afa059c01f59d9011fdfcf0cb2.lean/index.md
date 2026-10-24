# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Slope.Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ed46b1a2f12438a1dd3dda4d80abb002aaf65b7",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ed46b1a2f12438a1dd3dda4d80abb002aaf65b7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ConvexOn.slope_mono_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/convexon-slope-mono-adjacent--f2cb859b3857414c9fc72916.md) | 32 | `result-track:f2cb859b3857414c9fc72916d2fb86a4cb1f2d561841315441bcac0d4cd4d0b0` |
| 2 | `theorem` | [ConcaveOn.slope_anti_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/concaveon-slope-anti-adjacent--2be891621c1b9a1868f2e297.md) | 55 | `result-track:2be891621c1b9a1868f2e29752a1b4cfe7c06bebeaae09b770b614c828a50bea` |
| 3 | `theorem` | [StrictConvexOn.slope_strict_mono_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/strictconvexon-slope-strict-mono-adjacent--c70d025a8284e9d20cf8df36.md) | 64 | `result-track:c70d025a8284e9d20cf8df367b2b7fe0163e4685b9a0616eb7f6a0148ab550c8` |
| 4 | `theorem` | [StrictConcaveOn.slope_anti_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/strictconcaveon-slope-anti-adjacent--0a4818d3a9cda4fcd773f20c.md) | 89 | `result-track:0a4818d3a9cda4fcd773f20c291d123cb068581f0e35a9f4ddeb42881fb6c669` |
| 5 | `theorem` | [convexOn_of_slope_mono_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/convexon-of-slope-mono-adjacent--cade28f7334b42be79fe729b.md) | 97 | `result-track:cade28f7334b42be79fe729b210cacc001913a3caab47a3ffe130f1c32affb54` |
| 6 | `theorem` | [concaveOn_of_slope_anti_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/concaveon-of-slope-anti-adjacent--af3267ae49f56726a1549290.md) | 129 | `result-track:af3267ae49f56726a154929027547ef1b1c6b05a1b1da0ac134a68800b037ea4` |
| 7 | `theorem` | [strictConvexOn_of_slope_strict_mono_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/strictconvexon-of-slope-strict-mono-adjacent--f34bf62e55c561e727a6b579.md) | 142 | `result-track:f34bf62e55c561e727a6b57914a35d29c2541fb9e23a03fa9f8f4dc40dcfdfc8` |
| 8 | `theorem` | [strictConcaveOn_of_slope_strict_anti_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/strictconcaveon-of-slope-strict-anti-adjacent--69d5431c8db3b749a423c59a.md) | 175 | `result-track:69d5431c8db3b749a423c59ad4ca8a3ba17b39a63439e2116f80663817758ae2` |
| 9 | `theorem` | [convexOn_iff_slope_mono_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/convexon-iff-slope-mono-adjacent--70f3ac5fd6961c440ca84a97.md) | 188 | `result-track:70f3ac5fd6961c440ca84a97ad2bbd84193a7fb87ba8021d52ba14b01103f142` |
| 10 | `theorem` | [concaveOn_iff_slope_anti_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/concaveon-iff-slope-anti-adjacent--fe22b162a279277e32d37033.md) | 197 | `result-track:fe22b162a279277e32d37033252d542faab19e688bf3573a49a41a8c85539860` |
| 11 | `theorem` | [strictConvexOn_iff_slope_strict_mono_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/strictconvexon-iff-slope-strict-mono-adjacent--765102290455de50940259ec.md) | 208 | `result-track:765102290455de50940259ec8c6bc25b697bfe465e4d9dddeaa68a746e91597a` |
| 12 | `theorem` | [strictConcaveOn_iff_slope_strict_anti_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/strictconcaveon-iff-slope-strict-anti-adjacent--f490f5c76f5c2abea1f795af.md) | 219 | `result-track:f490f5c76f5c2abea1f795af82d77b27c184fddadf095f4d7bef2951499eb08c` |
| 13 | `theorem` | [ConvexOn.secant_mono_aux1](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/convexon-secant-mono-aux1--23ecd3a6b97da53c855e6403.md) | 227 | `result-track:23ecd3a6b97da53c855e6403a8b0d4892f4b97cc3f1ed35c46c244ffcdacfeeb` |
| 14 | `theorem` | [ConvexOn.secant_mono_aux2](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/convexon-secant-mono-aux2--d7758aa0867c9db7d9dde404.md) | 245 | `result-track:d7758aa0867c9db7d9dde4041c08c6f7a7c87fcd65c76be4eb3a2103897fcae2` |
| 15 | `theorem` | [ConvexOn.secant_mono_aux3](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/convexon-secant-mono-aux3--6799e42d6952d0ff5e3f3a5f.md) | 252 | `result-track:6799e42d6952d0ff5e3f3a5f2c75f79730d9e68f478b0ec8d50aace97e124ed6` |
| 16 | `theorem` | [ConvexOn.secant_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/convexon-secant-mono--5df3f4664fd1c7726f571f5e.md) | 261 | `result-track:5df3f4664fd1c7726f571f5e8e6d0e4e4899cc0fd0e2e869aa7ea60e4b6761c3` |
| 17 | `theorem` | [StrictConvexOn.secant_strict_mono_aux1](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/strictconvexon-secant-strict-mono-aux1--7cb026080077b48ec9efb812.md) | 273 | `result-track:7cb026080077b48ec9efb8127338369592f031a53f50abc04d08c989889a83b3` |
| 18 | `theorem` | [StrictConvexOn.secant_strict_mono_aux2](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/strictconvexon-secant-strict-mono-aux2--7fbef3b39b21a30141d9dd85.md) | 291 | `result-track:7fbef3b39b21a30141d9dd85e5d846d4f44463151e8fb2d0c891c3d60a7883ee` |
| 19 | `theorem` | [StrictConvexOn.secant_strict_mono_aux3](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/strictconvexon-secant-strict-mono-aux3--67655a2e21d4ff03f49367b1.md) | 298 | `result-track:67655a2e21d4ff03f49367b177b6844185a7b7eeee2a89caf0933998c978b77d` |
| 20 | `theorem` | [StrictConvexOn.secant_strict_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/strictconvexon-secant-strict-mono--d58495d4d9ecc25ced7c7e7d.md) | 307 | `result-track:d58495d4d9ecc25ced7c7e7d5d573eb2c95ac5c5be38c37d6b723313444ba09c` |
| 21 | `theorem` | [StrictConcaveOn.secant_strict_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/strictconcaveon-secant-strict-mono--8720761b785c7c015705068e.md) | 320 | `result-track:8720761b785c7c015705068ecaae9935cf627c534d0dc3bc6d876481abf26a0b` |
| 22 | `theorem` | [ConvexOn.strict_mono_of_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/declarations/convexon-strict-mono-of-lt--30b22d7293844854f8504bbc.md) | 330 | `result-track:30b22d7293844854f8504bbc05658b187c2d4d901889b03417f89f138405c67e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
