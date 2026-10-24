# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusPerronFullAudit.Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee0cbb9c54512a697d1f0aa0a35c0a5d031d1e4a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee0cbb9c54512a697d1f0aa0a35c0a5d031d1e4a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SmoothedPerronKernel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mobiusDirichlet_reciprocal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/declarations/mobiusdirichlet-reciprocal--ba4f89959c5ea1ece1570119.md) | 21 | `result-track:ba4f89959c5ea1ece157011913f5bd2d57e8d59b73e33c730ce1140d589f5a08` |
| 2 | `def` | [perronTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/declarations/perronterm--e56d45afb9016a01495ad6d7.md) | 31 | `declaration-track:e56d45afb9016a01495ad6d7a0ff949a52ce75d2d8fea2c906714a2321775201` |
| 3 | `theorem` | [perronTerm_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/declarations/perronterm-norm--5f5403ed227889237d6b6186.md) | 37 | `result-track:5f5403ed227889237d6b618688534b872aa199cb38a050958d86538340c767f4` |
| 4 | `theorem` | [perronTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/declarations/perronterm-integrable--97a29f7e1f40a297fa509563.md) | 47 | `result-track:97a29f7e1f40a297fa509563b1e2c4b9306a92babfbf3efb02fb14bdc2ca87e9` |
| 5 | `theorem` | [perronTerm_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/declarations/perronterm-norm-integrals-summable--2715d3516e227d638c71b495.md) | 58 | `result-track:2715d3516e227d638c71b4951264de9243b78fbd232a8107ad2692514082904d` |
| 6 | `theorem` | [perronTerm_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/declarations/perronterm-tsum--89df5e9013ffe75f095efccf.md) | 67 | `result-track:89df5e9013ffe75f095efccf35b23ab98a44d0853eb12c3bf073fd2eb6422ccf` |
| 7 | `theorem` | [perronTerm_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/declarations/perronterm-ratio--fa7a77a1ff0fbbfc36d0bb33.md) | 82 | `result-track:fa7a77a1ff0fbbfc36d0bb33f7ec536215b7a658f379f66d8ec7a908c082ce82` |
| 8 | `theorem` | [mobiusPerron_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/declarations/mobiusperron-integrable--9115ff1b3521c044157d90a8.md) | 97 | `result-track:9115ff1b3521c044157d90a82e01e78e1c5b07efae69c87bbc911dabd676158e` |
| 9 | `theorem` | [perronTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/declarations/perronterm-integral--a8cd42cf9dedbcd42748a657.md) | 122 | `result-track:a8cd42cf9dedbcd42748a6570bba3c1ad2552b1b544ea6c0034b3ba722f9b058` |
| 10 | `theorem` | [logNormalization_perron](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant7aacf353a7b5a7e8e660c7df2793c6ad4b2433fd15a999f1325cbaac529b2175.lean/declarations/lognormalization-perron--a0dd42dcef21c6d2478e6fb7.md) | 134 | `result-track:a0dd42dcef21c6d2478e6fb7ae6aab9ec5796cde115fb241440a8a2e6d68e90b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
