# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerIkeharaRelativeWindowToFull

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82512b31a851a39b8d7eed65f5ab855adae660cd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82512b31a851a39b8d7eed65f5ab855adae660cd`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtModOneAnalyticInputs`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtModOneAnalyticInputs.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TauberianRelativeWindowLimits](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/declarations/tauberianrelativewindowlimits--c89bb69afd9515393639ec25.md) | 47 | `declaration-track:c89bb69afd9515393639ec25f0e5f7873ca469e480e4097f7fc02d6e5b85652c` |
| 2 | `theorem` | [tauberian_relative_window_exact_partition](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/declarations/tauberian-relative-window-exact-partition--1667202bd28d2e3f1a4fa4d0.md) | 57 | `result-track:1667202bd28d2e3f1a4fa4d014d13f0ce4492ed853f919909c10bac0568f3a53` |
| 3 | `theorem` | [tauberian_omitted_prefix_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/declarations/tauberian-omitted-prefix-le--5cb364856b3f1b8ea631a603.md) | 66 | `result-track:5cb364856b3f1b8ea631a603f5c3eac18f6f3cee714e6bd6c5ff99e66f5cb1ef` |
| 4 | `theorem` | [tauberian_relativeWindows_to_fullCumulative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/declarations/tauberian-relativewindows-to-fullcumulative--ca4f2385a1078388eb822076.md) | 88 | `result-track:ca4f2385a1078388eb822076b3f23701c1042bfe3ebe0dbe6a3694032a14e8b8` |
| 5 | `def` | [PinnedVonMangoldtRelativeIntervalLimits](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/declarations/pinnedvonmangoldtrelativeintervallimits--504df356cc9dd5e8045c8171.md) | 227 | `declaration-track:504df356cc9dd5e8045c81716f0fa2f96e1ca76bc77c7bd02b88f1746d0a1949` |
| 6 | `theorem` | [pinnedVonMangoldtWeakPNT_of_intervalLimits](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/declarations/pinnedvonmangoldtweakpnt-of-intervallimits--f85bd7c083579dd81f9a2fcd.md) | 232 | `result-track:f85bd7c083579dd81f9a2fcd742830788f88aa3fd9693cf8a266501d89bede15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
