# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PhragmenLindelof.Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0cdf4a4190b60d0374abfcdc146e6d93f4d2010",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0cdf4a4190b60d0374abfcdc146e6d93f4d2010`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.AbsMax` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SuperpolynomialDecay` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBigO_sub_exp_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/isbigo-sub-exp-exp--6bf4659c2814b9f0f41137a6.md) | 69 | `result-track:6bf4659c2814b9f0f41137a661b728f5d14b0bc04a8650e871d0e7546baa6ff6` |
| 2 | `theorem` | [isBigO_sub_exp_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/isbigo-sub-exp-rpow--da25677bb2b6f395fec2ef45.md) | 84 | `result-track:da25677bb2b6f395fec2ef45d86fea50946d8c1e027e1fd4e17a28ed36d97ae6` |
| 3 | `theorem` | [horizontal_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/horizontal-strip--c82f04b8149b26c24de4f740.md) | 117 | `result-track:c82f04b8149b26c24de4f74097aa7d32e3bec34629de9db2116e94d2cf9ff4a9` |
| 4 | `theorem` | [eq_zero_on_horizontal_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eq-zero-on-horizontal-strip--e1b54f33aef65004f81d2e65.md) | 233 | `result-track:e1b54f33aef65004f81d2e65dc7ee496453066ba88fe897190225516fe66a344` |
| 5 | `theorem` | [eqOn_horizontal_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eqon-horizontal-strip--ad839f6fb179e4b5d55808c2.md) | 251 | `result-track:ad839f6fb179e4b5d55808c22dea326a0567b8305043d0a0a5b2b16cfea08d75` |
| 6 | `theorem` | [vertical_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/vertical-strip--e94b4f776e41bbcc8c0c5a25.md) | 277 | `result-track:e94b4f776e41bbcc8c0c5a258e694d4d8ed6d9294ca115dd283ee00d9497eae2` |
| 7 | `theorem` | [eq_zero_on_vertical_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eq-zero-on-vertical-strip--0f7690c40ec39e65f48fc5f3.md) | 305 | `result-track:0f7690c40ec39e65f48fc5f31dcabead8cd84e491f27abceb7ed3489e34182ca` |
| 8 | `theorem` | [eqOn_vertical_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eqon-vertical-strip--0aa017fbb1fdfcc46ca1b71a.md) | 323 | `result-track:0aa017fbb1fdfcc46ca1b71acb513d2d5223e05ab6c12ef81b6fb2f14bf10ec4` |
| 9 | `theorem` | [quadrant_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/quadrant-i--bb52a4c2c76f44e1139a1123.md) | 346 | `result-track:bb52a4c2c76f44e1139a11231876cce753d34b7cb9c2e14674e01f111b34eda4` |
| 10 | `theorem` | [eq_zero_on_quadrant_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eq-zero-on-quadrant-i--dbf10f24bc4b5ceef51a50ac.md) | 411 | `result-track:dbf10f24bc4b5ceef51a50ac3e7ec2d29aa2b11afde0fd43078dade4c792f8f7` |
| 11 | `theorem` | [eqOn_quadrant_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eqon-quadrant-i--ef898319aae173d334125fcc.md) | 428 | `result-track:ef898319aae173d334125fcc9dd8445f8ba01ea230251eb35a187af5e4a6117c` |
| 12 | `theorem` | [quadrant_II](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/quadrant-ii--7e4d6f3c0305d7066c0c0205.md) | 448 | `result-track:7e4d6f3c0305d7066c0c02055c093d4e02984ea8a44f5642b03914d952ecca58` |
| 13 | `theorem` | [eq_zero_on_quadrant_II](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eq-zero-on-quadrant-ii--50b722c2beb9dbc4571cfcb8.md) | 474 | `result-track:50b722c2beb9dbc4571cfcb8c98ce3921118535594a8d1730a3f4238afd44890` |
| 14 | `theorem` | [eqOn_quadrant_II](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eqon-quadrant-ii--3c1270455d90edd10f1d1b6e.md) | 491 | `result-track:3c1270455d90edd10f1d1b6e64244bd8b41ceb1fc274b5d8b47d87eccb1b9f4c` |
| 15 | `theorem` | [quadrant_III](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/quadrant-iii--2b068116617473aac12a2c3e.md) | 510 | `result-track:2b068116617473aac12a2c3e2642ada0acc6016929415037d48a0d830f51b79c` |
| 16 | `theorem` | [eq_zero_on_quadrant_III](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eq-zero-on-quadrant-iii--62e49bc4749be11338b56570.md) | 541 | `result-track:62e49bc4749be11338b5657057edde96b504f8f7b05d12313d38775875903220` |
| 17 | `theorem` | [eqOn_quadrant_III](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eqon-quadrant-iii--8f107c77317555028da9e72b.md) | 557 | `result-track:8f107c77317555028da9e72b1d2fe05837fdb800ab0589ee1d6b881d0daaa194` |
| 18 | `theorem` | [quadrant_IV](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/quadrant-iv--6d0d763e8399dd8acd9c2863.md) | 576 | `result-track:6d0d763e8399dd8acd9c2863d4617aae21e67f8594a5579509857b59f4098d36` |
| 19 | `theorem` | [eq_zero_on_quadrant_IV](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eq-zero-on-quadrant-iv--d9597aa1513ded1d68865529.md) | 605 | `result-track:d9597aa1513ded1d68865529911ea6b26b32f9833fb4440dc9381a5956144fa2` |
| 20 | `theorem` | [eqOn_quadrant_IV](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eqon-quadrant-iv--59bb0a9722ea9893b6e1bd83.md) | 622 | `result-track:59bb0a9722ea9893b6e1bd83505a264e8bcb46446e07b5ddad719abf3c6f76b0` |
| 21 | `theorem` | [right_half_plane_of_tendsto_zero_on_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/right-half-plane-of-tendsto-zero-on-real--bc9c55f9859bcd648d728841.md) | 648 | `result-track:bc9c55f9859bcd648d728841b8caa111a08cb4a6a1ac0084af284aab0ee772f6` |
| 22 | `theorem` | [right_half_plane_of_bounded_on_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/right-half-plane-of-bounded-on-real--d439834edf741075d4a88339.md) | 720 | `result-track:d439834edf741075d4a883397913db5fabda94487df7fd5d22d9c641358b3dbe` |
| 23 | `theorem` | [eq_zero_on_right_half_plane_of_superexponential_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eq-zero-on-right-half-plane-of-superexponential-decay--7a14a0907e10f10b6ba64f79.md) | 763 | `result-track:7a14a0907e10f10b6ba64f7933569c9faa18f5363430328ad8832f566ff09283` |
| 24 | `theorem` | [eqOn_right_half_plane_of_superexponential_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/declarations/eqon-right-half-plane-of-superexponential-decay--b281ee8ec7aaffe688d7a022.md) | 816 | `result-track:b281ee8ec7aaffe688d7a0224e69b1ecf912c9c84ad857711ba62ca1bc20d86d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
