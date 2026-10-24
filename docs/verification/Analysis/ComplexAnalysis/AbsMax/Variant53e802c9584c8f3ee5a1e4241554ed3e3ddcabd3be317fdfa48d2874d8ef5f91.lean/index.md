# Verification target: GRWTSK.Analysis.ComplexAnalysis.AbsMax.Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6512cafc7708ee890dc957b9115d6182acc79db0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6512cafc7708ee890dc957b9115d6182acc79db0`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Convex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Extr` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.ExtrClosure` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_max_aux₁](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/norm-max-aux--096f39e808d882fab5e865dc.md) | 105 | `result-track:096f39e808d882fab5e865dc89546347f3ad2ce8f74d2143b0f8003c87a4afda` |
| 2 | `theorem` | [norm_max_aux₂](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/norm-max-aux--698a12c68913ea24f52b8b6f.md) | 142 | `result-track:698a12c68913ea24f52b8b6f862da5e8d45386326d61cc104a47b47be58504e5` |
| 3 | `theorem` | [norm_max_aux₃](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/norm-max-aux--6b45f4674974bdf6e486fb79.md) | 156 | `result-track:6b45f4674974bdf6e486fb793bcbf1d2e2f434b391f9576f56a69c6edee70263` |
| 4 | `theorem` | [norm_eqOn_closedBall_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/norm-eqon-closedball-of-ismaxon--938fb4000b66af7d098788c9.md) | 177 | `result-track:938fb4000b66af7d098788c959515bad44edacc0e27edf703e0ef02383ba3aff` |
| 5 | `theorem` | [norm_eq_norm_of_isMaxOn_of_ball_subset](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/norm-eq-norm-of-ismaxon-of-ball-subset--dd8cb4011b6cab338f01cb82.md) | 197 | `result-track:dd8cb4011b6cab338f01cb829783c86947eb4f6c9302922210b2e2da00d910e4` |
| 6 | `theorem` | [norm_eventually_eq_of_isLocalMax](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/norm-eventually-eq-of-islocalmax--00dca3b70fe14e15d0605206.md) | 205 | `result-track:00dca3b70fe14e15d0605206fc4580cff94c6a33047ba9487a85eb0a3f26de7d` |
| 7 | `theorem` | [isOpen_setOf_mem_nhds_and_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/isopen-setof-mem-nhds-and-ismaxon-norm--31b0bfb91b00455c43e197a7.md) | 214 | `result-track:31b0bfb91b00455c43e197a7e87c8bf003b2893a79148386e4f07a2f76f083d8` |
| 8 | `theorem` | [norm_eqOn_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/norm-eqon-of-ispreconnected-of-ismaxon--befed4642637dd7fad3cc3cd.md) | 224 | `result-track:befed4642637dd7fad3cc3cd2a1eb0d73b15ddafc1cf1007af0abd7948f9ae78` |
| 9 | `theorem` | [norm_eqOn_closure_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/norm-eqon-closure-of-ispreconnected-of-ismaxon--fc04c9d06e7c27db4e9601f0.md) | 246 | `result-track:fc04c9d06e7c27db4e9601f055b11cd449664193fd17f8b228f5da59879a417c` |
| 10 | `theorem` | [eqOn_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/eqon-of-ispreconnected-of-ismaxon-norm--07c1ef5b5597069c8a018aed.md) | 273 | `result-track:07c1ef5b5597069c8a018aed5282378944dc96f946d6e0d8908a8ef70b4c0ae3` |
| 11 | `theorem` | [eqOn_closure_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/eqon-closure-of-ispreconnected-of-ismaxon-norm--48d71e5e63c06490ca6730ca.md) | 285 | `result-track:48d71e5e63c06490ca6730ca5c2e16fdaccf472daaaaf81f3b5bfda06170f133` |
| 12 | `theorem` | [eq_of_isMaxOn_of_ball_subset](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/eq-of-ismaxon-of-ball-subset--0fd09572e85b62a88781637c.md) | 296 | `result-track:0fd09572e85b62a88781637cb907d5a22f03a97ecec390ad5fd3771a19bebc2c` |
| 13 | `theorem` | [eqOn_closedBall_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/eqon-closedball-of-ismaxon-norm--b3c9ce675004208cce9a8fdd.md) | 311 | `result-track:b3c9ce675004208cce9a8fdd3eb00852374bc09e61102cefb5ed0d8a0a220a3a` |
| 14 | `lemma` | [eq_const_of_exists_max](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/eq-const-of-exists-max--c5a069d2e3cd982d970af2fe.md) | 318 | `result-track:c5a069d2e3cd982d970af2fe8d1b7acf83d52142710efe63f51ae9f69fecce36` |
| 15 | `lemma` | [eq_const_of_exists_le](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/eq-const-of-exists-le--afcb070a3d21b991ef6944e5.md) | 327 | `result-track:afcb070a3d21b991ef6944e537c680fb55d40c0191ab933a6638fdfa06019015` |
| 16 | `theorem` | [eventually_eq_of_isLocalMax_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/eventually-eq-of-islocalmax-norm--eab3f988c9b9a8cd6879716c.md) | 343 | `result-track:eab3f988c9b9a8cd6879716cf17e2cf5ea5910d87ca758d3539379a988c5c196` |
| 17 | `theorem` | [eventually_eq_or_eq_zero_of_isLocalMin_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/eventually-eq-or-eq-zero-of-islocalmin-norm--56c25e940010631be5cc7451.md) | 352 | `result-track:56c25e940010631be5cc7451247165d5a1a0321cc194212f772f20042aa42315` |
| 18 | `theorem` | [exists_mem_frontier_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/exists-mem-frontier-ismaxon-norm--d7ce3ae9ac94ad953e1f2b7f.md) | 377 | `result-track:d7ce3ae9ac94ad953e1f2b7f9e4403de120863f7483115b3aace05b5dd3a6854` |
| 19 | `theorem` | [norm_le_of_forall_mem_frontier_norm_le](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/norm-le-of-forall-mem-frontier-norm-le--45dbff171fc2b6309b06c882.md) | 394 | `result-track:45dbff171fc2b6309b06c882e06ebd364849de786305e69dc8dd855ed5363226` |
| 20 | `theorem` | [eqOn_closure_of_eqOn_frontier](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/eqon-closure-of-eqon-frontier--52a2d74ed0715e37c33c296d.md) | 417 | `result-track:52a2d74ed0715e37c33c296d5db16d0509e136a277c5f32f31a1dd61f9e99ae5` |
| 21 | `theorem` | [eqOn_of_eqOn_frontier](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/declarations/eqon-of-eqon-frontier--5a817421bb79976a74ac3969.md) | 426 | `result-track:5a817421bb79976a74ac39692fe5cfb59e5a7f7705e6bf312dc33ee64c9521c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
