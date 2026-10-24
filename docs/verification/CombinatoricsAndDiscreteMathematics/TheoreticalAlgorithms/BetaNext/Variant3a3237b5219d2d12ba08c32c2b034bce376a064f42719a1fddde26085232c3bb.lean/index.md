# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BetaNext.Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47a455cb5d79cfe3193e2458ba7f981bdbbf82c6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47a455cb5d79cfe3193e2458ba7f981bdbbf82c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Reduction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Reduction.FiniteHeight` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [headNext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/headnext--5b85e72e9ac19042d950de9e.md) | 22 | `declaration-track:5b85e72e9ac19042d950de9ea904628ee62eefd5aa2a66027758d7ec49e3d746` |
| 2 | `def` | [next](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/next--9c1428e6ab0f7745ed862833.md) | 28 | `declaration-track:9c1428e6ab0f7745ed862833d72d5ed6a84a7baf83b247cebc4f8261cef55f76` |
| 3 | `theorem` | [headNext_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/headnext-sound--2fc6678fdc413b32ef810b25.md) | 42 | `result-track:2fc6678fdc413b32ef810b25fbd17fc3a6a621690a22991bb6377c0cf2105aa0` |
| 4 | `theorem` | [next_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/next-sound--611a5952d7149a89e0bedfe7.md) | 55 | `result-track:611a5952d7149a89e0bedfe76d7983227ac542beac130d12028eb2c79a72e348` |
| 5 | `theorem` | [next_complete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/next-complete--eebe59dbaac9769a46211559.md) | 81 | `result-track:eebe59dbaac9769a46211559603df3b9dcff125485d983211556fd244199b3b1` |
| 6 | `theorem` | [next_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/next-correct--5cd979d81f8af00b4cb6a846.md) | 96 | `result-track:5cd979d81f8af00b4cb6a846dda3316bc7bf1758f4c64fb35666a95cf171816b` |
| 7 | `abbrev` | [AccessibleState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/accessiblestate--ae8cb0608d3e8717ba4280fc.md) | 100 | `declaration-track:ae8cb0608d3e8717ba4280fcd524138b2676f661dbb83a80053c886d553bef9d` |
| 8 | `def` | [step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/step--40de4410b608e26ce137771f.md) | 103 | `declaration-track:40de4410b608e26ce137771f350b9e5a4f7dd3d23f0b500c07df60033f6d0484` |
| 9 | `def` | [accessibleNext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/accessiblenext--9c40eff40fc91942a43c45aa.md) | 106 | `declaration-track:9c40eff40fc91942a43c45aadf724696d873091d175b0977ada13d0f23b562d3` |
| 10 | `theorem` | [accessibleNext_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/accessiblenext-correct--5948b26378166992e6ee0172.md) | 111 | `result-track:5948b26378166992e6ee01727471bafd7227fcbb767456b2480d35062493bc96` |
| 11 | `theorem` | [accessible_wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/accessible-wellfounded--871af957e11a4883d4f39546.md) | 127 | `result-track:871af957e11a4883d4f39546cfae478839cffe9ee503018dab80433d12b8f651` |
| 12 | `def` | [reducer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/reducer--81876d9842b1324c234560e7.md) | 134 | `declaration-track:81876d9842b1324c234560e7b07c897626a687f75cd7b37b8749ce517726321b` |
| 13 | `def` | [height](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/height--d1ea11d9e371e7f46db754f0.md) | 142 | `declaration-track:d1ea11d9e371e7f46db754f0096098ee0cb0149870454a38715282e12bd529ee` |
| 14 | `theorem` | [trace_height_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/trace-height-bound--d9f8859d82614e7397bd15af.md) | 145 | `result-track:d9f8859d82614e7397bd15af7222d244d60c098a390df3be3266a3dcc08f09ca` |
| 15 | `theorem` | [longest_trace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variant3a3237b5219d2d12ba08c32c2b034bce376a064f42719a1fddde26085232c3bb.lean/declarations/longest-trace--f6957b062dcb9459067e297e.md) | 151 | `result-track:f6957b062dcb9459067e297e31e1d6de34e5ba697f57f739f1e61efac2de88fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
