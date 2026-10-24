# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaFiniteAbelMajorizationControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e320fb22fe6ce4190b0322526f49812084d26906",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaFiniteAbelMajorizationControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaFiniteAbelMajorizationControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaFiniteAbelMajorizationControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e320fb22fe6ce4190b0322526f49812084d26906`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaFiniteAbelMajorizationControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaFiniteAbelMajorizationControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaFiniteAbelMajorization`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [wienerAbel_zero_stage](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaFiniteAbelMajorizationControls.lean/declarations/wienerabel-zero-stage--47720f9384245c0faeb77c56.md) | 19 | `result-track:47720f9384245c0faeb77c566ea5e4d1e25d29bbca1a4b7aedea78cc39d39ca9` |
| 2 | `theorem` | [wienerAbel_one_stage](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaFiniteAbelMajorizationControls.lean/declarations/wienerabel-one-stage--7831df7417ac5126ad571bd2.md) | 31 | `result-track:7831df7417ac5126ad571bd22bd865aea07c3e1b472303ab61b3ae4edd84c929` |
| 3 | `theorem` | [wienerAbel_actual_identity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaFiniteAbelMajorizationControls.lean/declarations/wienerabel-actual-identity--01f7e6d4b60c6fcad13a3fe7.md) | 39 | `result-track:01f7e6d4b60c6fcad13a3fe7625fac83661c1e04f0bcb26eeb58f3e63771c8b1` |
| 4 | `theorem` | [wienerAbel_actual_weighted_majorization](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaFiniteAbelMajorizationControls.lean/declarations/wienerabel-actual-weighted-majorization--45fbc838d9a116265457ee8c.md) | 50 | `result-track:45fbc838d9a116265457ee8c3f847fd135f3b806fa12e125000c8503bddd45c9` |
| 5 | `theorem` | [wienerAbel_constant_weight_check](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaFiniteAbelMajorizationControls.lean/declarations/wienerabel-constant-weight-check--928dec4bc2cdd023b385e08a.md) | 66 | `result-track:928dec4bc2cdd023b385e08addd911ac8a8c5612b9a214570d3e204a61f6b117` |
| 6 | `def` | [wienerAbel_nextObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaFiniteAbelMajorizationControls.lean/declarations/wienerabel-nextobligations--c781038994ad9c92faf05976.md) | 76 | `declaration-track:c781038994ad9c92faf05976d358280d38e6ae240350775e6e1a92fc8430cd5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
