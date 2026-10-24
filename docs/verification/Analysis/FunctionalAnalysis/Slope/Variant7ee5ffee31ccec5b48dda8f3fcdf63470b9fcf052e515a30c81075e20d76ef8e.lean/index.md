# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Slope.Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf6531db836e76d8710fba52d1423a64361929f5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf6531db836e76d8710fba52d1423a64361929f5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ConvexOn.slope_mono_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/convexon-slope-mono-adjacent--7ce7c7c5637b145f2dd101ee.md) | 24 | `result-track:7ce7c7c5637b145f2dd101eed01ec0c036b3a6e8b71df71e66bc33e84878eb5e` |
| 2 | `theorem` | [ConcaveOn.slope_anti_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/concaveon-slope-anti-adjacent--c09c4bbf7e3ffe737b0df463.md) | 47 | `result-track:c09c4bbf7e3ffe737b0df463ac80682a9d89b109694219c9f1fab38df2909697` |
| 3 | `theorem` | [StrictConvexOn.slope_strict_mono_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/strictconvexon-slope-strict-mono-adjacent--753a5f9f49375ee4491a6b70.md) | 56 | `result-track:753a5f9f49375ee4491a6b70458873ba5fa626961aaefadb26b95b582de42166` |
| 4 | `theorem` | [StrictConcaveOn.slope_anti_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/strictconcaveon-slope-anti-adjacent--a6e68aced760c721d7d255ce.md) | 81 | `result-track:a6e68aced760c721d7d255cef4b4e466ceba0f7a4d493f9140335c9754df56b6` |
| 5 | `theorem` | [convexOn_of_slope_mono_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/convexon-of-slope-mono-adjacent--cb7e1b761c91f11f19e31f0c.md) | 89 | `result-track:cb7e1b761c91f11f19e31f0c3c7fce622af006aa00597f9fbd671ee9d4b1d194` |
| 6 | `theorem` | [concaveOn_of_slope_anti_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/concaveon-of-slope-anti-adjacent--3b3d6134bcd963198ef3f8d6.md) | 121 | `result-track:3b3d6134bcd963198ef3f8d612e90995a3c4e58b478895c6d958c85573086bea` |
| 7 | `theorem` | [strictConvexOn_of_slope_strict_mono_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/strictconvexon-of-slope-strict-mono-adjacent--26093b7ee63719b9f16faf04.md) | 134 | `result-track:26093b7ee63719b9f16faf0458f1878d1a36b1bc128b6396a28711e5c7e6c679` |
| 8 | `theorem` | [strictConcaveOn_of_slope_strict_anti_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/strictconcaveon-of-slope-strict-anti-adjacent--e9eae0900c33e462a810a7d6.md) | 167 | `result-track:e9eae0900c33e462a810a7d6efb737a19ad0b8df88654e2de6341d81142415f8` |
| 9 | `theorem` | [convexOn_iff_slope_mono_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/convexon-iff-slope-mono-adjacent--74c45b1b24fb4bdeffe161b6.md) | 180 | `result-track:74c45b1b24fb4bdeffe161b609dfe4d4883fd2201c500af1feaa5be93527d540` |
| 10 | `theorem` | [concaveOn_iff_slope_anti_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/concaveon-iff-slope-anti-adjacent--a0a2629cee092b5222879fd9.md) | 189 | `result-track:a0a2629cee092b5222879fd919d0174ff478ec0ddecc1a537eb7df39a58e0543` |
| 11 | `theorem` | [strictConvexOn_iff_slope_strict_mono_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/strictconvexon-iff-slope-strict-mono-adjacent--43633b7dd249e54e0dafbb9a.md) | 200 | `result-track:43633b7dd249e54e0dafbb9a48ec16f97d1d19077daab2ce21c090a34aa777df` |
| 12 | `theorem` | [strictConcaveOn_iff_slope_strict_anti_adjacent](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/strictconcaveon-iff-slope-strict-anti-adjacent--52406c9a4388daec55e9ed50.md) | 211 | `result-track:52406c9a4388daec55e9ed507cf0c1a743bb3a9f5a0fe63c0c9e95c34f77f2b1` |
| 13 | `theorem` | [ConvexOn.secant_mono_aux1](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/convexon-secant-mono-aux1--e7c940c3f7680f16718bbcc8.md) | 219 | `result-track:e7c940c3f7680f16718bbcc8a1b55281a1f13c46625a4bd789a982badca005a4` |
| 14 | `theorem` | [ConvexOn.secant_mono_aux2](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/convexon-secant-mono-aux2--c74537a31e376d86de8e4714.md) | 237 | `result-track:c74537a31e376d86de8e4714be9b84501df6c09c3b03717824476cd7b54f9575` |
| 15 | `theorem` | [ConvexOn.secant_mono_aux3](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/convexon-secant-mono-aux3--2d148e8a470d92561a750caf.md) | 244 | `result-track:2d148e8a470d92561a750caf3fcb84b6e73d8e467cda44e4ee17b6c7a17a5ec8` |
| 16 | `theorem` | [ConvexOn.secant_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/convexon-secant-mono--a5b9062e98dda1f37960363e.md) | 253 | `result-track:a5b9062e98dda1f37960363e619ed998433afee89ec10a62fe839e34f4db3622` |
| 17 | `theorem` | [StrictConvexOn.secant_strict_mono_aux1](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/strictconvexon-secant-strict-mono-aux1--a36915140f787ec09a191fab.md) | 265 | `result-track:a36915140f787ec09a191fabaefbd31435b0e2ccccd3b2e9665f17bfa500593e` |
| 18 | `theorem` | [StrictConvexOn.secant_strict_mono_aux2](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/strictconvexon-secant-strict-mono-aux2--3cda647c970d77271bac0d09.md) | 283 | `result-track:3cda647c970d77271bac0d09446740d1fa72343923b5ea1bba518cc010cdf86f` |
| 19 | `theorem` | [StrictConvexOn.secant_strict_mono_aux3](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/strictconvexon-secant-strict-mono-aux3--3c7ef34d5927f4fe1f2686b8.md) | 290 | `result-track:3c7ef34d5927f4fe1f2686b81b6cb2add8a998f18863f4c00b36f25680275ad8` |
| 20 | `theorem` | [StrictConvexOn.secant_strict_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/strictconvexon-secant-strict-mono--88330f8b3e05cfa789726329.md) | 299 | `result-track:88330f8b3e05cfa7897263290c8e22ff04c4b1dcd14db215539e8bb4e46a3d9b` |
| 21 | `theorem` | [StrictConcaveOn.secant_strict_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/strictconcaveon-secant-strict-mono--2215c659e32d368b3343fc1a.md) | 312 | `result-track:2215c659e32d368b3343fc1a1288e0f364de6e0240b4146603dedd1310f01c7f` |
| 22 | `theorem` | [ConvexOn.strict_mono_of_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Slope/Variant7ee5ffee31ccec5b48dda8f3fcdf63470b9fcf052e515a30c81075e20d76ef8e.lean/declarations/convexon-strict-mono-of-lt--04879f4bed18c2e31f119212.md) | 322 | `result-track:04879f4bed18c2e31f119212a585f6d8388916fd97727473547ecc5f79dfb344` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
