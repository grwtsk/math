# Verification target: GRWTSK.Analysis.MeasureTheory.FunProp.Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "286ded17c69f3c490d9049c99d1eb9e59a8397dd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `286ded17c69f3c490d9049c99d1eb9e59a8397dd`.

Source path: `GRWTSK/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.ContinuousLinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Real` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean/declarations/example--2da6150178a16140f7fb52fb.md) | 88 | `declaration-track:2da6150178a16140f7fb52fb60b4918c6baa2d571e1d1a70ef7bb09b32bfd0da` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean/declarations/example--1a0ed15a969648fa54d812e9.md) | 121 | `declaration-track:1a0ed15a969648fa54d812e9d49c55e02ac49a3298e2bbf4f06a359a545a08e8` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean/declarations/example--63faf9fe56713f3c20b396a1.md) | 173 | `declaration-track:63faf9fe56713f3c20b396a1e027cc38df1e858f1fc37ab9b27ad36e95f43076` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/FunProp/Variant34c01bd206c30a16fdeb4f29a8e690837ab78f42d84be1a0df11c3093573173b.lean/declarations/example--f14fd0f61afb002634d24c3e.md) | 211 | `declaration-track:f14fd0f61afb002634d24c3e01a2c0970b4f7d44ddcc7959804bba0c297b9cdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
