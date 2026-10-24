# Verification target: GRWTSK.Analysis.MeasureTheory.Pi.Variant235005d25561941378989871b2dedf5819870e80db766297a222638f9535a9b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d036fecc0ff6d808d6c0afd7d1633c236308bc99",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Pi/Variant235005d25561941378989871b2dedf5819870e80db766297a222638f9535a9b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant235005d25561941378989871b2dedf5819870e80db766297a222638f9535a9b8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant235005d25561941378989871b2dedf5819870e80db766297a222638f9535a9b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d036fecc0ff6d808d6c0afd7d1633c236308bc99`.

Source path: `GRWTSK/Analysis/MeasureTheory/Pi/Variant235005d25561941378989871b2dedf5819870e80db766297a222638f9535a9b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Pi/Variant235005d25561941378989871b2dedf5819870e80db766297a222638f9535a9b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.PiSystem` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [MeasurableSpace.pi_eq_generateFrom_projections](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant235005d25561941378989871b2dedf5819870e80db766297a222638f9535a9b8.lean/declarations/measurablespace-pi-eq-generatefrom-projections--25951d84a69519086954dc01.md) | 28 | `result-track:25951d84a69519086954dc018e85b8bb044a01923f4c33084bb1dfeb2b51e684` |
| 2 | `theorem` | [IsPiSystem.pi](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant235005d25561941378989871b2dedf5819870e80db766297a222638f9535a9b8.lean/declarations/ispisystem-pi--33f1eccf8585024d3b2aedaf.md) | 33 | `result-track:33f1eccf8585024d3b2aedaf3fbab0cf25d74b833eb506e857a611eae8c525c5` |
| 3 | `theorem` | [isPiSystem_pi](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant235005d25561941378989871b2dedf5819870e80db766297a222638f9535a9b8.lean/declarations/ispisystem-pi--cc4d22d150ef3b7f89cf4646.md) | 40 | `result-track:cc4d22d150ef3b7f89cf4646f8547cc28aee77d8c652235557a113154bc348da` |
| 4 | `theorem` | [IsCountablySpanning.pi](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant235005d25561941378989871b2dedf5819870e80db766297a222638f9535a9b8.lean/declarations/iscountablyspanning-pi--349fffb61f9f4d6429ee96b7.md) | 49 | `result-track:349fffb61f9f4d6429ee96b7be950f47c3c673ca108a2a8b38adc23235bcd82c` |
| 5 | `theorem` | [generateFrom_pi_eq](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant235005d25561941378989871b2dedf5819870e80db766297a222638f9535a9b8.lean/declarations/generatefrom-pi-eq--0678d5bbd32ef0f49f2956a7.md) | 62 | `result-track:0678d5bbd32ef0f49f2956a7c0097f3098feee036f9eaca983cb7d6fb4bc4eca` |
| 6 | `theorem` | [generateFrom_eq_pi](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant235005d25561941378989871b2dedf5819870e80db766297a222638f9535a9b8.lean/declarations/generatefrom-eq-pi--248a7b1e6df5d2b415192277.md) | 94 | `result-track:248a7b1e6df5d2b4151922777599a770b107b404beeecfd41c21d0d7a2b189a1` |
| 7 | `theorem` | [generateFrom_pi](../../../../../mathematics/Analysis/MeasureTheory/Pi/Variant235005d25561941378989871b2dedf5819870e80db766297a222638f9535a9b8.lean/declarations/generatefrom-pi--485ddc4847e67698319a1d9d.md) | 101 | `result-track:485ddc4847e67698319a1d9deefbf7e790d07ace5f8aeee5760b6e7fd883dd61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
