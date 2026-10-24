# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualComplexDilation.Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abcc8ac7564f6bdcd9384c5b0d4467c50b1a7939",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abcc8ac7564f6bdcd9384c5b0d4467c50b1a7939`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PositiveDilation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualComplexOperator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/declarations/actualcomplexoperator--0e2cfd32b8a27d047ea801f5.md) | 21 | `declaration-track:0e2cfd32b8a27d047ea801f5df1066aeb251b316ed919c0cd5edc1fea9aae8ca` |
| 2 | `theorem` | [actualComplexOperator_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/declarations/actualcomplexoperator-memlp--e4add2b01fe3d98619f07f00.md) | 23 | `result-track:e4add2b01fe3d98619f07f001ed839c914bb80f3e4fc632712662a7850b680e2` |
| 3 | `def` | [actualComplexL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/declarations/actualcomplexl2--1aa8ef7645322f2d67bff693.md) | 27 | `declaration-track:1aa8ef7645322f2d67bff693f5c1999dfe210a8e07d93f509fd0eeca081178f2` |
| 4 | `theorem` | [actualComplexL2_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/declarations/actualcomplexl2-ae--fcc86e9f7500c467c84bad82.md) | 30 | `result-track:fcc86e9f7500c467c84bad82d91eb7b5642f6d3e346870a7b38272a6139aa41d` |
| 5 | `theorem` | [actualComplexL2_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/declarations/actualcomplexl2-norm-sq--4585d336d66c8da4ddb79560.md) | 34 | `result-track:4585d336d66c8da4ddb79560e8ca964e47a3fcfbeb8d2ee0bbfec299af58392a` |
| 6 | `theorem` | [dilate_actual_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/declarations/dilate-actual-ae--4aa30b56e068ce512bd0a278.md) | 41 | `result-track:4aa30b56e068ce512bd0a2781dba240ad24a83b43177bed59ff95210c1f13774` |
| 7 | `theorem` | [dilate_actual_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/declarations/dilate-actual-norm--db521dec0696bad2dcc6a03a.md) | 49 | `result-track:db521dec0696bad2dcc6a03af21f680a5b6f46d00a8ed4fab4c06f2c7b84f93d` |
| 8 | `def` | [integerOrbit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/declarations/integerorbit--0825c36e94db18a22dc13e86.md) | 54 | `declaration-track:0825c36e94db18a22dc13e86a790bac5706cf49cc9fe96fc2c9e43b69a11837a` |
| 9 | `theorem` | [integerOrbit_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/declarations/integerorbit-ae--0e122da7290024137a490343.md) | 57 | `result-track:0e122da7290024137a490343034e92c2ed7a0376916705beb3c9c824387a7347` |
| 10 | `theorem` | [integerOrbit_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualComplexDilation/Variant0158000245f5dea7f2898e1ab36ef51fb47f83650c0a360a9bf3ebb505e35fb8.lean/declarations/integerorbit-norm--9638bb16e9b5a6c7be3167aa.md) | 62 | `result-track:9638bb16e9b5a6c7be3167aa9e0eaac5fcf8b070fe5a614d4420a79b8e9ef8a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
