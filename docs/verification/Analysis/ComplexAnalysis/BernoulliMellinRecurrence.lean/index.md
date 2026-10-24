# Verification target: GRWTSK.Analysis.Complex.BernoulliMellinRecurrence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6036c71a64effca36022444f769c4289b646a1ef",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/BernoulliMellinRecurrence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6036c71a64effca36022444f769c4289b646a1ef`.

Source path: `GRWTSK/Analysis/Complex/BernoulliMellinRecurrence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/BernoulliMellinRecurrence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.PeriodicBernoulliMellin`](../../../../mathematics/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellIntegrand](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/cellintegrand--e5ab4285cea31983ba85f025.md) | 27 | `declaration-track:e5ab4285cea31983ba85f025fc0953f60fb3cebc7fb2e4c9db4b6474d199e059` |
| 2 | `def` | [cell](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/cell--08c04dda5e68dd8ebcae14f5.md) | 30 | `declaration-track:08c04dda5e68dd8ebcae14f5a31baf2ff80aa53997983035cda38d48847fb566` |
| 3 | `def` | [block](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/block--ce6f6709aecbd5339f74dbf7.md) | 33 | `declaration-track:ce6f6709aecbd5339f74dbf7837e1502b930a9513cc077256034d61561d32e7d` |
| 4 | `theorem` | [hasDerivAt_positive_power](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/hasderivat-positive-power--f1d63e11a2f2671a131bbd3a.md) | 37 | `result-track:f1d63e11a2f2671a131bbd3a36271cfb4452e257d82c2d27f2897daafc4607f0` |
| 5 | `theorem` | [continuousOn_cellIntegrand](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/continuouson-cellintegrand--b48878de80f8e7e2e25baab5.md) | 44 | `result-track:b48878de80f8e7e2e25baab55960ccfa5719cfb58f76d7b47eb0406c186359c4` |
| 6 | `theorem` | [cellIntegrand_integrable](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/cellintegrand-integrable--401f16d01b69f148a1520f17.md) | 54 | `result-track:401f16d01b69f148a1520f174fbbb7e4eda8d3892e79ed493985066f071acd24` |
| 7 | `theorem` | [cell_primitive_derivative](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/cell-primitive-derivative--abd80b0234125439ca752fb4.md) | 61 | `result-track:abd80b0234125439ca752fb4c1048581e70eff98480482206deffbca57b58472` |
| 8 | `theorem` | [cell_step](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/cell-step--7f9f1914cc24bdef8696ec38.md) | 77 | `result-track:7f9f1914cc24bdef8696ec38c80421e8f7913c519032fdbc8f29413f25d06945` |
| 9 | `theorem` | [cell_eq_periodic](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/cell-eq-periodic--9e9898a7d9642cbcc311a472.md) | 106 | `result-track:9e9898a7d9642cbcc311a4725af8b58dc8059dd38e13a24131dd1a7b721e64b1` |
| 10 | `theorem` | [periodic_cell_integrable](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/periodic-cell-integrable--28f4af482da4573bc44f6393.md) | 114 | `result-track:28f4af482da4573bc44f6393c9a89fc45231a90c487fdfd31c25263e82a3aed3` |
| 11 | `theorem` | [block_succ](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/block-succ--d07904ebd901d4951223ba9c.md) | 122 | `result-track:d07904ebd901d4951223ba9c4a66d2005ef260736195583cca505cc3d3e03201` |
| 12 | `theorem` | [block_integral](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/block-integral--ff827bb466553781eafbea40.md) | 127 | `result-track:ff827bb466553781eafbea40ce00c214c9a6d4cd884c8296e5f76fe33435d82b` |
| 13 | `theorem` | [block_step](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/block-step--58ed240bedc6a5138222108a.md) | 141 | `result-track:58ed240bedc6a5138222108a2ccf1dbe8f87d801cf66a99454602e7a0643845f` |
| 14 | `theorem` | [boundary_tendsto_zero](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/boundary-tendsto-zero--74c9fd45854d6dc6c9ef0059.md) | 155 | `result-track:74c9fd45854d6dc6c9ef0059857dd4982cc9585c5f01122f041fdbd8b29a3f41` |
| 15 | `theorem` | [tail_step](../../../../mathematics/Analysis/ComplexAnalysis/BernoulliMellinRecurrence.lean/declarations/tail-step--edfa65d6e4f36640aeb8283b.md) | 171 | `result-track:edfa65d6e4f36640aeb8283b963f5952a36f13b5977bbf0df3417e455b6424ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
