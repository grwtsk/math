# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36f6a28fd3bc1167ca2a34c193beccbe0808be97",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36f6a28fd3bc1167ca2a34c193beccbe0808be97`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.FixedPoints.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Option` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Option` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derangements](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/declarations/derangements--1437b030e0e44f36d0136547.md) | 32 | `declaration-track:1437b030e0e44f36d0136547a056acecacd0af084a02251865b4dd17e0f912c2` |
| 2 | `theorem` | [mem_derangements_iff_fixedPoints_eq_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/declarations/mem-derangements-iff-fixedpoints-eq-empty--64a9386de9929db14e598fd7.md) | 37 | `result-track:64a9386de9929db14e598fd7e2dc069a3349151c5340012ec72f8016b09488db` |
| 3 | `def` | [Equiv.derangementsCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/declarations/equiv-derangementscongr--2685c6d95e01e94d69b16002.md) | 42 | `declaration-track:2685c6d95e01e94d69b160024eff8aabcc115b9f2224cb735e152e22e30f08be` |
| 4 | `def` | [subtypeEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/declarations/subtypeequiv--4265c9c01541da3409a8dd37.md) | 50 | `declaration-track:4265c9c01541da3409a8dd37ae16fcb67072dfc9f1ec349f1a19f76ddf5b705d` |
| 5 | `def` | [atMostOneFixedPointEquivSum_derangements](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/declarations/atmostonefixedpointequivsum-derangements--5c5afa5d38137d2224ee41cd.md) | 75 | `declaration-track:5c5afa5d38137d2224ee41cd309851ca5a5430bbb27391663db58cc3b7887d62` |
| 6 | `def` | [RemoveNone.fiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/declarations/removenone-fiber--d114f91ea0ed46b7b6335681.md) | 112 | `declaration-track:d114f91ea0ed46b7b6335681461aae1acb5ead1010095a36e81c6a452ef0e7b1` |
| 7 | `theorem` | [RemoveNone.mem_fiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/declarations/removenone-mem-fiber--88ae3b474ae93aed24d21104.md) | 115 | `result-track:88ae3b474ae93aed24d211046b05743c5286bf187768c949cf5760db87fcefb5` |
| 8 | `theorem` | [RemoveNone.fiber_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/declarations/removenone-fiber-none--ca18b68ab92ac1c3791a2a6e.md) | 120 | `result-track:ca18b68ab92ac1c3791a2a6e348bf93321deff0ed95323168af57b92f5d55347` |
| 9 | `theorem` | [RemoveNone.fiber_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/declarations/removenone-fiber-some--28548bbcba6e6d35a2dd7285.md) | 129 | `result-track:28548bbcba6e6d35a2dd72857fd6cb0a42b52206ab848b9126a65fc6714e3479` |
| 10 | `def` | [derangementsOptionEquivSigmaAtMostOneFixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/declarations/derangementsoptionequivsigmaatmostonefixedpoint--043f0519b6d9b1721c7e511d.md) | 169 | `declaration-track:043f0519b6d9b1721c7e511df976c3807fda313aea660b9449943887e893f2e9` |
| 11 | `def` | [derangementsRecursionEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/declarations/derangementsrecursionequiv--315ed3b7092c8249100b8826.md) | 186 | `declaration-track:315ed3b7092c8249100b8826b3db1518d6f5f0a900375e0c61ced42a27a41885` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
