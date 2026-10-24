# Verification target: GRWTSK.Analysis.Real.FiniteIntervalSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a6389ec7a7d6fb4b501e59d9b885c15843cca6f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/FiniteIntervalSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a6389ec7a7d6fb4b501e59d9b885c15843cca6f`.

Source path: `GRWTSK/Analysis/Real/FiniteIntervalSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/FiniteIntervalSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [clearance](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/declarations/clearance--41107208bce97e9d1171a1c0.md) | 25 | `declaration-track:41107208bce97e9d1171a1c09e6a3bc3a4e8a462c3ca6011248fd953b9407c65` |
| 2 | `def` | [gridPoint](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/declarations/gridpoint--442d5b8e183b129bf9d10ad0.md) | 28 | `declaration-track:442d5b8e183b129bf9d10ad0d332aa00196bf723b5a06ce47c215102a2dae25a` |
| 3 | `theorem` | [clearance_pos](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/declarations/clearance-pos--5f3c96a17b404a859fa2e311.md) | 31 | `result-track:5f3c96a17b404a859fa2e3115ac0052d9e041dd98bf56fe98b0a52a6c3f2a149` |
| 4 | `theorem` | [clearance_le_quarter](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/declarations/clearance-le-quarter--0dc064a2d380d01620413272.md) | 35 | `result-track:0dc064a2d380d016204132720b053ee4cb7adb97486aead6a90ffee1aa295f31` |
| 5 | `theorem` | [gridPoint_sub](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/declarations/gridpoint-sub--e0867fe269d54b7b25d398fd.md) | 41 | `result-track:e0867fe269d54b7b25d398fdc387191c9b1cb6613ab3621c19abd2e1beb4fc0c` |
| 6 | `theorem` | [gridPoint_gap](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/declarations/gridpoint-gap--3ed1a4862d63d2a5d1ff3e44.md) | 47 | `result-track:3ed1a4862d63d2a5d1ff3e44b5a2804c52abd246d6bc41640c02fef56cfa80a7` |
| 7 | `theorem` | [gridPoint_bounds](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/declarations/gridpoint-bounds--7ec193e9ea9f86bfdd638212.md) | 59 | `result-track:7ec193e9ea9f86bfdd63821234243adfa913ad27c3d78e9decc2680a38a1422f` |
| 8 | `theorem` | [close_gridPoint_unique](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/declarations/close-gridpoint-unique--a71a33b317f237e8cf2ef2a5.md) | 85 | `result-track:a71a33b317f237e8cf2ef2a515bc4f15e2aeb22e489d10910b4d99458af084dc` |
| 9 | `theorem` | [exists_clear_gridPoint](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/declarations/exists-clear-gridpoint--f4a0787a7356c365f7320213.md) | 102 | `result-track:f4a0787a7356c365f73202136e972bf25de7ba83a20491ec0ce68724b0151187` |
| 10 | `theorem` | [exists_interval_clearance](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/declarations/exists-interval-clearance--10766a640532842de8aaffa1.md) | 118 | `result-track:10766a640532842de8aaffa177c2d522e91603bc67cf559e77150cdc6fde066c` |
| 11 | `theorem` | [clearance_after_perturbation](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/declarations/clearance-after-perturbation--01ff65f0b1e2f54d55d26176.md) | 133 | `result-track:01ff65f0b1e2f54d55d261765ca530690f92f25acbc7f0d42d6ef48eb59bd6c1` |
| 12 | `theorem` | [cutoff_stable](../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/declarations/cutoff-stable--69cef17bb7fb08d1e110dbf3.md) | 140 | `result-track:69cef17bb7fb08d1e110dbf307807ebd4be416e22c76e6ae1a2b6e8624686550` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
