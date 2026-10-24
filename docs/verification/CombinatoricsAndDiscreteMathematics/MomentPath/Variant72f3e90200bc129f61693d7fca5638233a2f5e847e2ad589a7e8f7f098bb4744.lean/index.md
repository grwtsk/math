# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MomentPath.Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f509c0ae69380058fd26c8b1dcc9286ab936816c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f509c0ae69380058fd26c8b1dcc9286ab936816c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [VaughanAtomKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/vaughanatomkind--1f4c1ff0edc389644352ff12.md) | 34 | `declaration-track:1f4c1ff0edc389644352ff120d6077465f2448cd3e59b9eef1f189cb08e5c10f` |
| 2 | `structure` | [ConductorThreeCoefficientPacketFrame](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/conductorthreecoefficientpacketframe--97bb4b7b9d8bee1ea03aaa8f.md) | 44 | `declaration-track:97bb4b7b9d8bee1ea03aaa8f9938c5d32e0c33a2902d7598444dfbe6603338f0` |
| 3 | `def` | [entryFiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/entryfiber--71f534c6e4b00b5304856282.md) | 61 | `declaration-track:71f534c6e4b00b530485628207a0f9ca4eaff976c3e87b27b6f2cc3661022328` |
| 4 | `theorem` | [entryFiber_disjoint_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/entryfiber-disjoint-of-ne--e3ed98b1524173bb7a76e9e7.md) | 69 | `result-track:e3ed98b1524173bb7a76e9e70085ecce56afbc65d2b7a4682d19090a3ed9da09` |
| 5 | `theorem` | [momentClock_covers_atoms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/momentclock-covers-atoms--a342836b78c675647e92e4fe.md) | 82 | `result-track:a342836b78c675647e92e4fed649df3bda3377e4d57f99cade4f656bfca4dad4` |
| 6 | `def` | [entryState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/entrystate--55a0bac6a434be75fe98edbb.md) | 93 | `declaration-track:55a0bac6a434be75fe98edbbaf44a227530eea6f8ecad682f157cfff9f9e0529` |
| 7 | `def` | [packetSynthesis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/packetsynthesis--4332b56ffed6c42df28d9cc2.md) | 100 | `declaration-track:4332b56ffed6c42df28d9cc250f12d6a968127cb2ea69f044d53ce65e9dcca8d` |
| 8 | `def` | [momentCoefficients](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/momentcoefficients--b8260ed9544d0e0c8bda30ef.md) | 114 | `declaration-track:b8260ed9544d0e0c8bda30ef586d5fb2a8d07a8175cd0965ca6f98b333ec44be` |
| 9 | `def` | [momentState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/momentstate--b99e0ef5bcfb1531d97820d8.md) | 122 | `declaration-track:b99e0ef5bcfb1531d97820d84726e9a34703203d0007d6ce52bbc5fd4951d6c3` |
| 10 | `theorem` | [packetSynthesis_momentCoefficients](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/packetsynthesis-momentcoefficients--5e742bc9a240676d65ef8e43.md) | 129 | `result-track:5e742bc9a240676d65ef8e4376ba96bc7fe6f4b24f53ef6359e4c151decda560` |
| 11 | `theorem` | [atom_enters_at_unique_moment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/atom-enters-at-unique-moment--44c9a7d47a3f154c1c01bd6d.md) | 143 | `result-track:44c9a7d47a3f154c1c01bd6dba09cef8c9fe4cd2bfade9285c5d0edefb71338b` |
| 12 | `theorem` | [amplitude_moment_eq_psi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/amplitude-moment-eq-psi--0cbb64139a6ea76697f0a61a.md) | 153 | `result-track:0cbb64139a6ea76697f0a61a893b295a0a5d444afcd3dca4175d49bf4eceaea6` |
| 13 | `theorem` | [readout_momentState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/readout-momentstate--db24f4542083ca25613094cc.md) | 240 | `result-track:db24f4542083ca25613094cc41a965fc037abe54e4e42c9e8b47f1ef7b527e42` |
| 14 | `theorem` | [momentState_succ_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/momentstate-succ-sub--d072379af440159391f03227.md) | 262 | `result-track:d072379af440159391f032276e7dafada03a0961f5382bf360ba5f2b79476900` |
| 15 | `def` | [canonicalRankOneCoefficientFrame](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MomentPath/Variant72f3e90200bc129f61693d7fca5638233a2f5e847e2ad589a7e8f7f098bb4744.lean/declarations/canonicalrankonecoefficientframe--f488f1b9b2e847ebc03635a1.md) | 297 | `declaration-track:f488f1b9b2e847ebc03635a1a413d308b8927eb8045e41b2d351d786fd66a9cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
