# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integration.Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10faa875ee53e642e452c850a81f0f4e6945c4a1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10faa875ee53e642e452c850a81f0f4e6945c4a1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Independence.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_mul_indicator_eq_lintegral_mul_lintegral_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/declarations/lintegral-mul-indicator-eq-lintegral-mul-lintegral-indicator--3e2b152d24b9337490d30634.md) | 45 | `result-track:3e2b152d24b9337490d30634de9ddf52481273074e4c38483431686822a903ad` |
| 2 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_independent_measurableSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-independent-measurablespace--f0ff4a1c33efd63c471e7d47.md) | 82 | `result-track:f0ff4a1c33efd63c471e7d4787800b12b8dfce4f5a1b573641125f022062b63a` |
| 3 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-indepfun--39cbda98d1a439189a1c7561.md) | 109 | `result-track:39cbda98d1a439189a1c75613e7849d95d40db25ef10513b990fd68881949451` |
| 4 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-indepfun--8ca5fe076df62132fdfc5cff.md) | 120 | `result-track:8ca5fe076df62132fdfc5cff7bcc40f71a77f735f8b658b2ed2b5e1cb0fff5ff` |
| 5 | `theorem` | [lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/declarations/lintegral-mul-eq-lintegral-mul-lintegral-of-indepfun--1ba9277eaaa5ed289a70f688.md) | 131 | `result-track:1ba9277eaaa5ed289a70f688a62d4f0aeecae89f56b23087545677125acbaa7e` |
| 6 | `theorem` | [IndepFun.integrable_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/declarations/indepfun-integrable-mul--fc155d2f9ab85a92baa19486.md) | 138 | `result-track:fc155d2f9ab85a92baa19486c1dafaef66df33d833c203c0da36054be2400ca3` |
| 7 | `theorem` | [IndepFun.integrable_left_of_integrable_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/declarations/indepfun-integrable-left-of-integrable-mul--68749c419e04b8afd6d8b8d1.md) | 158 | `result-track:68749c419e04b8afd6d8b8d196eb30d88c868da439efb7d1a79c9cf4f25f725f` |
| 8 | `theorem` | [IndepFun.integrable_right_of_integrable_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/declarations/indepfun-integrable-right-of-integrable-mul--b32500327adeaac431805fe6.md) | 180 | `result-track:b32500327adeaac431805fe6677d2cb63285de9c34333356db016a0f2784b2ea` |
| 9 | `theorem` | [IndepFun.integral_mul_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/declarations/indepfun-integral-mul-of-nonneg--42c3d152fa9fa23ea2738d39.md) | 203 | `result-track:42c3d152fa9fa23ea2738d39367e8d3085be0dfd6bd7946148c118442ce5bf19` |
| 10 | `theorem` | [IndepFun.integral_mul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/declarations/indepfun-integral-mul-of-integrable--e9b620f88ef6d4e9e458a13e.md) | 225 | `result-track:e9b620f88ef6d4e9e458a13ebc1d2ad1243f31996097aeeeb1273d13e0803b60` |
| 11 | `theorem` | [IndepFun.integral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/declarations/indepfun-integral-mul--1c80176021723cc3867eb863.md) | 270 | `result-track:1c80176021723cc3867eb863f9e65ef308add257696612d0f461f59cf3699e19` |
| 12 | `theorem` | [IndepFun.integral_mul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/declarations/indepfun-integral-mul--d13c3fa6b42a007571c1828a.md) | 296 | `result-track:d13c3fa6b42a007571c1828a991d7ea3e079e30dd110299d4d2a8ae4fe0c8f36` |
| 13 | `theorem` | [indepFun_iff_integral_comp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integration/Variant01ade0765450fef13a930ccd8390c3deb3e271348ac49846661c7daa2eb3d39f.lean/declarations/indepfun-iff-integral-comp-mul--2a1cae098d03bb52429dad6f.md) | 305 | `result-track:2a1cae098d03bb52429dad6f6aebe7f1a5158a9eadf6769d1d788f73765f4bb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
