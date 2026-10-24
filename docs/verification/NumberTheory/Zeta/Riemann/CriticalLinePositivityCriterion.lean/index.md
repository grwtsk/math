# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalLinePositivityCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0df392e51d4edd1e05bb08414e6f8f2618f9af95",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0df392e51d4edd1e05bb08414e6f8f2618f9af95`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimitCore`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CriticalLineTest](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean/declarations/criticallinetest--9248474fd92f0b421591cf84.md) | 25 | `declaration-track:9248474fd92f0b421591cf841bceda3fabbbf83789ca7069210e40ee6bbf85a2` |
| 2 | `def` | [criticalLineDefectForm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean/declarations/criticallinedefectform--59a6fd1b7068c4696f75c533.md) | 28 | `declaration-track:59a6fd1b7068c4696f75c5337a40656360ca380541b08de7766c045580fe9ad9` |
| 3 | `theorem` | [criticalLineDefectForm_diagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean/declarations/criticallinedefectform-diagonal--f34aa9cfd9f135e3c2f1c12d.md) | 32 | `result-track:f34aa9cfd9f135e3c2f1c12d880ae160810d3aa86c31002b104f00d33889acc7` |
| 4 | `theorem` | [criticalLineDefectPositivity_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean/declarations/criticallinedefectpositivity-iff-rh--6204be477d15efb7bc8a7018.md) | 39 | `result-track:6204be477d15efb7bc8a70183bd7d246d3961ded83caf48f09e23069f934a549` |
| 5 | `theorem` | [criticalLineDefectCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean/declarations/criticallinedefectcriterion--e0ff7c1e712df4f395050aa1.md) | 55 | `result-track:e0ff7c1e712df4f395050aa155581fe17e2afee0a3d1bb3d737465976bf09a3a` |
| 6 | `theorem` | [riemannHypothesis_of_criticalLineDefectPositiveLimit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalLinePositivityCriterion.lean/declarations/riemannhypothesis-of-criticallinedefectpositivelimit--ce49ee63c33b2c858bf564b6.md) | 62 | `result-track:ce49ee63c33b2c858bf564b693156d39895e1f39fb6c33320d9968de414527fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
