# Verification target: GRWTSK.Analysis.Complex.TentMellinKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb0bd10edfbba94a5c53fbabf9e039f9c4570baf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/TentMellinKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb0bd10edfbba94a5c53fbabf9e039f9c4570baf`.

Source path: `GRWTSK/Analysis/Complex/TentMellinKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/TentMellinKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.TentWeight`](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.IntervalMellinKernel`](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.FieldSimp` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tentKernel](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/declarations/tentkernel--2797452d8feb69adac233652.md) | 34 | `declaration-track:2797452d8feb69adac2336523a8a1b2f7556de3b35b4a635d897c7fdeb78f493` |
| 2 | `theorem` | [density_add_one](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/declarations/density-add-one--70a003b692216b4a39511c6c.md) | 38 | `result-track:70a003b692216b4a39511c6c7c776d18ccc73df7722462e2f229377f9e1e4722` |
| 3 | `theorem` | [logPower_add_one](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/declarations/logpower-add-one--a99663fbcdbd9086c384ea6e.md) | 46 | `result-track:a99663fbcdbd9086c384ea6ee6542c1ed26a0f230fe9d435b5b3ac6be44efd86` |
| 4 | `theorem` | [tentKernel_eq_split_integral](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/declarations/tentkernel-eq-split-integral--100c6d8ae1116d800c16426e.md) | 52 | `result-track:100c6d8ae1116d800c16426ea4031cf6cbc7237d07f75ab807fa8365ae3ba325` |
| 5 | `theorem` | [tentKernel_eq_quotient](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/declarations/tentkernel-eq-quotient--d10b1742645becece1f3570f.md) | 108 | `result-track:d10b1742645becece1f3570f5efa564a1108f5f1d2c97e93d3490de03025c3b5` |
| 6 | `theorem` | [norm_tent_numerator_le](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/declarations/norm-tent-numerator-le--476a1a972271fc82daa7317b.md) | 128 | `result-track:476a1a972271fc82daa7317b322a98cc40645fc0248197db1f20e80f2f9c91e3` |
| 7 | `theorem` | [norm_tentKernel_le_inverse_height_sq](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/declarations/norm-tentkernel-le-inverse-height-sq--be3d0400b0ee9883f37bd3a5.md) | 154 | `result-track:be3d0400b0ee9883f37bd3a5d4e2006ff31b40036feedd3f993848583aaee362` |
| 8 | `theorem` | [tentKernel_one](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/declarations/tentkernel-one--4bb249011a7f1d15740c1a12.md) | 185 | `result-track:4bb249011a7f1d15740c1a12abea57bcf04ca77675dd0cfff9e533cde7c7b513` |
| 9 | `theorem` | [finite_weighted_tail_bound](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/declarations/finite-weighted-tail-bound--706d4a457fc666ce4bfd33ca.md) | 205 | `result-track:706d4a457fc666ce4bfd33ca566903b173221ecae9f5d34e51492cb4f0859f90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
