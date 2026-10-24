# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ContDiff.Varianta145c095e7ec27798127ebec32cac958e9479c1015cff2a98a72fe7acc2a478d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "644f27b14c6452322fb4ae0270123ca98c96272e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ContDiff/Varianta145c095e7ec27798127ebec32cac958e9479c1015cff2a98a72fe7acc2a478d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Varianta145c095e7ec27798127ebec32cac958e9479c1015cff2a98a72fe7acc2a478d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Varianta145c095e7ec27798127ebec32cac958e9479c1015cff2a98a72fe7acc2a478d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `644f27b14c6452322fb4ae0270123ca98c96272e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ContDiff/Varianta145c095e7ec27798127ebec32cac958e9479c1015cff2a98a72fe7acc2a478d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ContDiff/Varianta145c095e7ec27798127ebec32cac958e9479c1015cff2a98a72fe7acc2a478d.lean.json)

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
| 1 | `theorem` | [integral_deriv_of_contDiffOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Varianta145c095e7ec27798127ebec32cac958e9479c1015cff2a98a72fe7acc2a478d.lean/declarations/integral-deriv-of-contdiffon-icc--ed53e739ded32cc37a0dadb3.md) | 34 | `result-track:ed53e739ded32cc37a0dadb351fdc6793646758c9de50e6ad832049d5cb389d4` |
| 2 | `theorem` | [integral_derivWithin_Icc_of_contDiffOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Varianta145c095e7ec27798127ebec32cac958e9479c1015cff2a98a72fe7acc2a478d.lean/declarations/integral-derivwithin-icc-of-contdiffon-icc--ceee4c3ccf5601a696f1836e.md) | 52 | `result-track:ceee4c3ccf5601a696f1836e0e6ab483304de80c4a2ab6f2d27fe75adeafcfb5` |
| 3 | `theorem` | [integral_deriv_of_contDiffOn_uIcc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Varianta145c095e7ec27798127ebec32cac958e9479c1015cff2a98a72fe7acc2a478d.lean/declarations/integral-deriv-of-contdiffon-uicc--dc96223b57b216287ca4d086.md) | 63 | `result-track:dc96223b57b216287ca4d0866d62e8c20760e585f8551e69a74bae16031b49f2` |
| 4 | `theorem` | [integral_derivWithin_uIcc_of_contDiffOn_uIcc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Varianta145c095e7ec27798127ebec32cac958e9479c1015cff2a98a72fe7acc2a478d.lean/declarations/integral-derivwithin-uicc-of-contdiffon-uicc--648e08016683110760178ba5.md) | 74 | `result-track:648e08016683110760178ba5ad8a8484f8cfab2ecf3a94066211f764c2b0c622` |
| 5 | `theorem` | [enorm_sub_le_lintegral_deriv_of_contDiffOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Varianta145c095e7ec27798127ebec32cac958e9479c1015cff2a98a72fe7acc2a478d.lean/declarations/enorm-sub-le-lintegral-deriv-of-contdiffon-icc--b1ac6f2365ca0fc069fe48bc.md) | 87 | `result-track:b1ac6f2365ca0fc069fe48bcf3c553c42be99a1545eba3674bebd4bdfd2b1459` |
| 6 | `theorem` | [enorm_sub_le_lintegral_derivWithin_Icc_of_contDiffOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContDiff/Varianta145c095e7ec27798127ebec32cac958e9479c1015cff2a98a72fe7acc2a478d.lean/declarations/enorm-sub-le-lintegral-derivwithin-icc-of-contdiffon-icc--f04884b95d1c054f07e52222.md) | 109 | `result-track:f04884b95d1c054f07e52222764a8185bc31b321410076c69caf855c0796500e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
