# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerCyclic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0408948d4e9e53408016531639bc2e2ce627bc88",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCyclic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCyclic.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCyclic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0408948d4e9e53408016531639bc2e2ce627bc88`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCyclic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCyclic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerPeriodicity`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerPeriodicity.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.Analysis.Fourier.ZMod` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicFejerKernel](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCyclic.lean/declarations/cyclicfejerkernel--ac1563d56ed5e935205f7f37.md) | 12 | `declaration-track:ac1563d56ed5e935205f7f3732db2cb77f4ba4b6e55df396438d3e4370627fd0` |
| 2 | `theorem` | [cyclicFejerKernel_nonnegative](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCyclic.lean/declarations/cyclicfejerkernel-nonnegative--de00eda8e10a7c1e28b26412.md) | 18 | `result-track:de00eda8e10a7c1e28b2641263caa3be4275e850882fd2ead30bf0bd935d4ce9` |
| 3 | `theorem` | [cyclicFejerKernel_sum_one](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCyclic.lean/declarations/cyclicfejerkernel-sum-one--67922c47603bb9800b33a23e.md) | 28 | `result-track:67922c47603bb9800b33a23e4ff5db73bf68b6d5f8506018299f855e848f898f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
