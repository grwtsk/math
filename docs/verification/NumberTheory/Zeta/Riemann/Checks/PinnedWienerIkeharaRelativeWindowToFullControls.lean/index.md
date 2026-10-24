# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedWienerIkeharaRelativeWindowToFullControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e49d08049250c0f386595b3b734b4313a82cd9a3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e49d08049250c0f386595b3b734b4313a82cd9a3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerIkeharaRelativeWindowToFull`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [literal_range_partition](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean/declarations/literal-range-partition--2bd2ee9244a2b9430ea903da.md) | 15 | `result-track:2bd2ee9244a2b9430ea903daeedd3395b455d63925d18a85ebd895dcbb9e1217` |
| 2 | `theorem` | [omitted_prefix_bound](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean/declarations/omitted-prefix-bound--c2fb764f2cfadffed9b8bdc1.md) | 24 | `result-track:c2fb764f2cfadffed9b8bdc1b7e29576997e6b850384b680e0f2c210e2a21edf` |
| 3 | `theorem` | [actual_generic_dewindowing](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean/declarations/actual-generic-dewindowing--5c0d52508a84dad5ab4d1acb.md) | 36 | `result-track:5c0d52508a84dad5ab4d1acbd10d9de42810607c3f7d332b607162b87fbde088` |
| 4 | `theorem` | [zero_sequence_rejects_unit_windowLimit](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean/declarations/zero-sequence-rejects-unit-windowlimit--20c39c44bc3d4b39711177bb.md) | 51 | `result-track:20c39c44bc3d4b39711177bb49ac11a3ff40e80e56fd0955b624de30265fff1e` |
| 5 | `theorem` | [actual_lambda_dewindowing](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean/declarations/actual-lambda-dewindowing--236d5803c00bda0c5aaba819.md) | 69 | `result-track:236d5803c00bda0c5aaba819b9ae0344831f8b3e33da3966e78b78e34fd5ddcd` |
| 6 | `def` | [remainingIntervalWienerIkeharaObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean/declarations/remainingintervalwienerikeharaobligations--72d279dfaed7f6fe29f8343b.md) | 79 | `declaration-track:72d279dfaed7f6fe29f8343b91ac952f6a01983a1bcbaceb5cd738273759e5c7` |
| 7 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerIkeharaRelativeWindowToFullControls.lean/declarations/prohibitedpromotions--f12348a070886e9723d82e91.md) | 90 | `declaration-track:f12348a070886e9723d82e916a8ae124ff21940843e32d2698b770cdff5ba924` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
