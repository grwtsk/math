# Verification target: GRWTSK.Analysis.MeasureTheory.Lattice.Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b39cae592902cb298e14c64f5ee8d2923a8b015",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lattice/Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b39cae592902cb298e14c64f5ee8d2923a8b015`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lattice/Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lattice/Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.PosPart` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Arithmetic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Order.Lattice` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_oneLePart](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f.lean/declarations/measurable-onelepart--ba90d33b10034ad708f98777.md) | 22 | `result-track:ba90d33b10034ad708f987775beaeb1052b9dadc34b37b2b4c30b6a3d9d887d1` |
| 2 | `theorem` | [Measurable.oneLePart](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f.lean/declarations/measurable-onelepart--e58a0fcda8702c391031704e.md) | 26 | `result-track:e58a0fcda8702c391031704e1d2eb378e09e4720de86a88553088f95d5276745` |
| 3 | `theorem` | [measurable_leOnePart](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f.lean/declarations/measurable-leonepart--d187a564ee6e4f7c89deb7ff.md) | 33 | `result-track:d187a564ee6e4f7c89deb7ff00e7fcaaa7370b8e9f0ccfba0a8d5fb3cd32b80a` |
| 4 | `theorem` | [Measurable.leOnePart](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f.lean/declarations/measurable-leonepart--99b00e7fd419ffe7a435aff7.md) | 37 | `result-track:99b00e7fd419ffe7a435aff7b51f8f299ab115f944ee4f17e4176dc2a96fb01c` |
| 5 | `theorem` | [measurable_mabs](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f.lean/declarations/measurable-mabs--752f9673ecb240537edfa22d.md) | 44 | `result-track:752f9673ecb240537edfa22d3dc9d961fd312a5a5ae92aad56da305497938144` |
| 6 | `theorem` | [Measurable.mabs](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f.lean/declarations/measurable-mabs--9d57cb1d82f341be487bf638.md) | 48 | `result-track:9d57cb1d82f341be487bf638841f8c958dd0121e0316e1789f1ea793c8b99882` |
| 7 | `theorem` | [AEMeasurable.mabs](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f.lean/declarations/aemeasurable-mabs--76e802d7ee51cd87e0e1b083.md) | 52 | `result-track:76e802d7ee51cd87e0e1b0834faa38c517669188aa363735b608ed32a9950a54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
