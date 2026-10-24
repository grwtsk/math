# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMellinDilation.Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae48970d951f09ff222b9a17462216adbd93fee3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae48970d951f09ff222b9a17462216adbd93fee3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `UnnormalizedDilation` — import line 1; external provider; requires a separately pinned dependency.
- `ActualMuntzMellinDomain` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mellinConvergent_unnormalized](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/declarations/mellinconvergent-unnormalized--efb518564893a0459f3a6498.md) | 14 | `result-track:efb518564893a0459f3a6498d9ec55a525ff850d2013543243ce5b3ce21845c4` |
| 2 | `theorem` | [mellinConvergent_normalized](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/declarations/mellinconvergent-normalized--079322d197e6f4adeaefd4e2.md) | 32 | `result-track:079322d197e6f4adeaefd4e2657c0feaaee71bf1c859b09396e2e1adb440c96f` |
| 3 | `theorem` | [sqrt_cpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/declarations/sqrt-cpow--cc400bbbc38643ab0258cb76.md) | 37 | `result-track:cc400bbbc38643ab0258cb76d9feb7db4cbd4500da6a7351aca76243b9df8d27` |
| 4 | `theorem` | [mellin_normalized_func](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/declarations/mellin-normalized-func--59d7ecc2eceacd7952a38c68.md) | 42 | `result-track:59d7ecc2eceacd7952a38c68894dad82c866c9f136d64dd502d5505a4fe7bd95` |
| 5 | `theorem` | [actual_unnormalized_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/declarations/actual-unnormalized-mellinconvergent--399c4c24725224d16e1c5fc7.md) | 49 | `result-track:399c4c24725224d16e1c5fc7c45d412a43b4624e4966bee6a4f377c00fd23a3c` |
| 6 | `theorem` | [actual_normalized_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/declarations/actual-normalized-mellinconvergent--551e3fe003647c0dc71a0e1b.md) | 54 | `result-track:551e3fe003647c0dc71a0e1be78e354563ca1c74eef6408c7c56e28847550506` |
| 7 | `theorem` | [actual_unnormalized_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/declarations/actual-unnormalized-mellin--d5ae578db4d2269b53df22cb.md) | 59 | `result-track:d5ae578db4d2269b53df22cb49954c1db8cb8ec255673282161a8904c5918a7d` |
| 8 | `theorem` | [actual_normalized_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/declarations/actual-normalized-mellin--c41a5d2953559fcd0db88cf3.md) | 64 | `result-track:c41a5d2953559fcd0db88cf3abf0592defb2b0c98209c753c4376e79111dceb2` |
| 9 | `theorem` | [actual_unnormalized_class_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/declarations/actual-unnormalized-class-mellinconvergent--2f1c556d292d165d32b033b7.md) | 69 | `result-track:2f1c556d292d165d32b033b7be590b4aa513186ca98f4fc4b8e39de00673e552` |
| 10 | `theorem` | [actual_unnormalized_class_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/declarations/actual-unnormalized-class-mellin--01b7a30071f3b88174759f62.md) | 77 | `result-track:01b7a30071f3b88174759f62024a573f47e1424ad242681927398590b8962e93` |
| 11 | `theorem` | [actual_dilated_class_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/declarations/actual-dilated-class-mellinconvergent--457a83d5db73ef977c3e2c75.md) | 87 | `result-track:457a83d5db73ef977c3e2c758b29e7ba1d0345441ef8b34b7bbe4aa52cc06966` |
| 12 | `theorem` | [actual_dilated_class_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/declarations/actual-dilated-class-mellin--95ff8dd5c339fba321842ee5.md) | 94 | `result-track:95ff8dd5c339fba321842ee5fa891ffa51421377c7762e138c15f26941258732` |
| 13 | `theorem` | [actual_integer_class_mellin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean/declarations/actual-integer-class-mellin--14b40e8eb5affabb505cd599.md) | 103 | `result-track:14b40e8eb5affabb505cd59942dac323933e7bf4875906a6880d0f2035fdf815` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
