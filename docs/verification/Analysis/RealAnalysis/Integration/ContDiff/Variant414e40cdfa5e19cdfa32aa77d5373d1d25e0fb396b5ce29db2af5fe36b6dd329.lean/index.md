# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ContDiff.Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b0c910ba4c9626225814ab17a73ba88f466ad5c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b0c910ba4c9626225814ab17a73ba88f466ad5c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_deriv_of_contDiffOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean/declarations/integral-deriv-of-contdiffon-icc--7a39d204b2af969471e422f8.md) | 42 | `result-track:7a39d204b2af969471e422f87065dc68982de52115752209d9d9d6bf08032531` |
| 2 | `theorem` | [integral_derivWithin_Icc_of_contDiffOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean/declarations/integral-derivwithin-icc-of-contdiffon-icc--c9e5c50b1446e32d5b01423b.md) | 60 | `result-track:c9e5c50b1446e32d5b01423b1070db1f1eef67cd3e0462c0eed2c2a4e6d06322` |
| 3 | `theorem` | [integral_deriv_of_contDiffOn_uIcc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean/declarations/integral-deriv-of-contdiffon-uicc--33f0e60f2a32574a0b0dc4c4.md) | 71 | `result-track:33f0e60f2a32574a0b0dc4c4fb6ca430b8ac2ffc2e7537fe275688e210525957` |
| 4 | `theorem` | [integral_derivWithin_uIcc_of_contDiffOn_uIcc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean/declarations/integral-derivwithin-uicc-of-contdiffon-uicc--95ed88f12c4d80756ea75fca.md) | 82 | `result-track:95ed88f12c4d80756ea75fca0b1a7ea2a675cd26b10fe509738af10af5e78672` |
| 5 | `theorem` | [enorm_sub_le_lintegral_deriv_of_contDiffOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean/declarations/enorm-sub-le-lintegral-deriv-of-contdiffon-icc--ef5c68e3040bbe316f4f7f86.md) | 95 | `result-track:ef5c68e3040bbe316f4f7f86bbf0fb2082ada4f64fbac0a0bfb5466283c19d10` |
| 6 | `theorem` | [enorm_sub_le_lintegral_derivWithin_Icc_of_contDiffOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Variant414e40cdfa5e19cdfa32aa77d5373d1d25e0fb396b5ce29db2af5fe36b6dd329.lean/declarations/enorm-sub-le-lintegral-derivwithin-icc-of-contdiffon-icc--d69f797a6f9e41a114255fec.md) | 117 | `result-track:d69f797a6f9e41a114255fec3cf6d39f6213096ab6317eb0c4359b51fdd513d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
