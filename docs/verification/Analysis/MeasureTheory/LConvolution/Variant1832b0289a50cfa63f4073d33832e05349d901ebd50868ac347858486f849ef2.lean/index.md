# Verification target: GRWTSK.Analysis.MeasureTheory.LConvolution.Variant1832b0289a50cfa63f4073d33832e05349d901ebd50868ac347858486f849ef2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e714c84e7bbb4bcf22bb7a95b41ede86bab693c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/LConvolution/Variant1832b0289a50cfa63f4073d33832e05349d901ebd50868ac347858486f849ef2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variant1832b0289a50cfa63f4073d33832e05349d901ebd50868ac347858486f849ef2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variant1832b0289a50cfa63f4073d33832e05349d901ebd50868ac347858486f849ef2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e714c84e7bbb4bcf22bb7a95b41ede86bab693c`.

Source path: `GRWTSK/Analysis/MeasureTheory/LConvolution/Variant1832b0289a50cfa63f4073d33832e05349d901ebd50868ac347858486f849ef2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/LConvolution/Variant1832b0289a50cfa63f4073d33832e05349d901ebd50868ac347858486f849ef2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Prod` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mlconvolution](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variant1832b0289a50cfa63f4073d33832e05349d901ebd50868ac347858486f849ef2.lean/declarations/mlconvolution--da60ed35add5cd35ff81f34e.md) | 41 | `declaration-track:da60ed35add5cd35ff81f34ef6a0f5b9ccb42193c03c2a1e8e30c3f5a0d1f73c` |
| 2 | `theorem` | [mlconvolution_def](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variant1832b0289a50cfa63f4073d33832e05349d901ebd50868ac347858486f849ef2.lean/declarations/mlconvolution-def--91cf4e1f1d0d4a93d6d7b460.md) | 59 | `result-track:91cf4e1f1d0d4a93d6d7b460ba87fe694e1f5a6f856481450ba2f6cc76cb3676` |
| 3 | `theorem` | [zero_mlconvolution](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variant1832b0289a50cfa63f4073d33832e05349d901ebd50868ac347858486f849ef2.lean/declarations/zero-mlconvolution--19e500c62388dddcea10b27f.md) | 65 | `result-track:19e500c62388dddcea10b27fb45d5a39bde275341b6389bcf0c211005f8e8e07` |
| 4 | `theorem` | [mlconvolution_zero](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variant1832b0289a50cfa63f4073d33832e05349d901ebd50868ac347858486f849ef2.lean/declarations/mlconvolution-zero--ad4ad793ee27337cfad3ceaa.md) | 71 | `result-track:ad4ad793ee27337cfad3ceaa792c83a3f3d855e4a8069f214be3131b676c275c` |
| 5 | `theorem` | [measurable_mlconvolution](../../../../../mathematics/Analysis/MeasureTheory/LConvolution/Variant1832b0289a50cfa63f4073d33832e05349d901ebd50868ac347858486f849ef2.lean/declarations/measurable-mlconvolution--4eeb1f49b73dec4b599e3a33.md) | 77 | `result-track:4eeb1f49b73dec4b599e3a33b54369c86152805f8fc7063b22f571e5bc88dd17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
