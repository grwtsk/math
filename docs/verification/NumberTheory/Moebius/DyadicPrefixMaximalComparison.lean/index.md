# Verification target: GRWTSK.NumberTheory.Moebius.DyadicPrefixMaximalComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a48f1478b662e4895cf30c6544cc14872b71f474",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a48f1478b662e4895cf30c6544cc14872b71f474`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.TerminalMertensTwoPointPrefixObstruction`](../../../../mathematics/NumberTheory/Moebius/TerminalMertensTwoPointPrefixObstruction.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intervalPrefixSum](../../../../mathematics/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/declarations/intervalprefixsum--22fdac81aafb870e10e49c96.md) | 38 | `declaration-track:22fdac81aafb870e10e49c96700f9aebc4b6154a4d69151241bccc43e68c849e` |
| 2 | `def` | [dyadicBlockSum](../../../../mathematics/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/declarations/dyadicblocksum--4d0addf3c37647f05565937b.md) | 42 | `declaration-track:4d0addf3c37647f05565937b4bc781ccc6d307d822a5c905914a934db878c6da` |
| 3 | `def` | [dyadicTreeEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/declarations/dyadictreeenergy--ad9fe96b11faaabfcf0743e0.md) | 49 | `declaration-track:ad9fe96b11faaabfcf0743e09fb72b53b70875feaefc76454514707a136acc49` |
| 4 | `theorem` | [intervalPrefixSum_zero](../../../../mathematics/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/declarations/intervalprefixsum-zero--063a99fed60ec080753cf322.md) | 56 | `result-track:063a99fed60ec080753cf322e37f3d1b1727f59fc170042dceadf563b361f033` |
| 5 | `theorem` | [intervalPrefixSum_add](../../../../mathematics/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/declarations/intervalprefixsum-add--c48256c044e863928bae02b0.md) | 60 | `result-track:c48256c044e863928bae02b052f05c80aa780f860d3d38b9f403747291931a43` |
| 6 | `theorem` | [dyadicTreeEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/declarations/dyadictreeenergy-nonneg--11020a62c8b8d0495e383939.md) | 67 | `result-track:11020a62c8b8d0495e383939dab4a051ea134de7d77ba2dcd97b4f8ce5a64a42` |
| 7 | `theorem` | [dyadicBlockSum_sq_le_treeEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/declarations/dyadicblocksum-sq-le-treeenergy--fa21cfe8c6c0b3f169fe4bf3.md) | 81 | `result-track:fa21cfe8c6c0b3f169fe4bf37c6b26af65446503943c8442aed0535f092f1a35` |
| 8 | `theorem` | [add_sq_le_succ_mul_energy](../../../../mathematics/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/declarations/add-sq-le-succ-mul-energy--2a52f9d1f2d3d703021e0670.md) | 95 | `result-track:2a52f9d1f2d3d703021e0670a52bfe72e6a51abe1cf548bdcefb127711b372d7` |
| 9 | `theorem` | [intervalPrefixSum_sq_le_dyadicTreeEnergy](../../../../mathematics/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/declarations/intervalprefixsum-sq-le-dyadictreeenergy--a7355174a0f18799776dcea8.md) | 117 | `result-track:a7355174a0f18799776dcea8a5e7fed9b0ff3ec216035ced5c69dbe4dd9177a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
