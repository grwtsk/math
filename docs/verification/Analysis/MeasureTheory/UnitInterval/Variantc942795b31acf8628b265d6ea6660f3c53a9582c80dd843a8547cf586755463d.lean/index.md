# Verification target: GRWTSK.Analysis.MeasureTheory.UnitInterval.Variantc942795b31acf8628b265d6ea6660f3c53a9582c80dd843a8547cf586755463d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e85ac79f8b581207005e51b89cabea4956b19931",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/UnitInterval/Variantc942795b31acf8628b265d6ea6660f3c53a9582c80dd843a8547cf586755463d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/UnitInterval/Variantc942795b31acf8628b265d6ea6660f3c53a9582c80dd843a8547cf586755463d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/UnitInterval/Variantc942795b31acf8628b265d6ea6660f3c53a9582c80dd843a8547cf586755463d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e85ac79f8b581207005e51b89cabea4956b19931`.

Source path: `GRWTSK/Analysis/MeasureTheory/UnitInterval/Variantc942795b31acf8628b265d6ea6660f3c53a9582c80dd843a8547cf586755463d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/UnitInterval/Variantc942795b31acf8628b265d6ea6660f3c53a9582c80dd843a8547cf586755463d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UnitInterval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/UnitInterval/Variantc942795b31acf8628b265d6ea6660f3c53a9582c80dd843a8547cf586755463d.lean/declarations/instance--1b89759187d8fc0c7eeead21.md) | 30 | `declaration-track:1b89759187d8fc0c7eeead219f98cd6c8cddff9b7382bff720746b7a9617e15c` |
| 2 | `theorem` | [volume_def](../../../../../mathematics/Analysis/MeasureTheory/UnitInterval/Variantc942795b31acf8628b265d6ea6660f3c53a9582c80dd843a8547cf586755463d.lean/declarations/volume-def--e47f7d6e95a02649908e107e.md) | 32 | `result-track:e47f7d6e95a02649908e107ee3d47aaa47b463345a3fc9d0c9aacb2d00f501a8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/UnitInterval/Variantc942795b31acf8628b265d6ea6660f3c53a9582c80dd843a8547cf586755463d.lean/declarations/instance--b92ed006ba35ee4c4aba02d4.md) | 34 | `declaration-track:b92ed006ba35ee4c4aba02d482754492b04834a39c014ffd24a3989b89edcbcc` |
| 4 | `theorem` | [measurable_symm](../../../../../mathematics/Analysis/MeasureTheory/UnitInterval/Variantc942795b31acf8628b265d6ea6660f3c53a9582c80dd843a8547cf586755463d.lean/declarations/measurable-symm--b43b1ad44cbf884b21784664.md) | 40 | `result-track:b43b1ad44cbf884b217846649772bf265805e3a72b18b84e0177c6e0366e417e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
