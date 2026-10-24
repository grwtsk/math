# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Proper.Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be4d2222dee9186602f5ce9bfbbab502bfa4a7f6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be4d2222dee9186602f5ce9bfbbab502bfa4a7f6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean.json)

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
| 1 | `structure` | [IsProper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/declarations/isproper--09fde3fd001e810adae6406e.md) | 55 | `declaration-track:09fde3fd001e810adae6406e25a1fd109b3cc0ec7f868b0416c18d62a95dfe65` |
| 2 | `lemma` | [isProper_iff_restrict_eq_indicator_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/declarations/isproper-iff-restrict-eq-indicator-smul--03486d8962df248102c4b459.md) | 60 | `result-track:03486d8962df248102c4b459fea42a17fe557768c21e6aed208d7cdea742264d` |
| 3 | `lemma` | [isProper_iff_inter_eq_indicator_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/declarations/isproper-iff-inter-eq-indicator-mul--2312c74bb5325a109a97587b.md) | 65 | `result-track:2312c74bb5325a109a97587b80d851c24eabf3e2c8674f045f54e825ac9dfc09` |
| 4 | `lemma` | [IsProper.setLIntegral_eq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/declarations/isproper-setlintegral-eq-comp--b9b9fc7ce1cf0bdbbe3c24bf.md) | 81 | `result-track:b9b9fc7ce1cf0bdbbe3c24bff6cba3eb791beb97d7a720fc9f55000158fc2f13` |
| 5 | `lemma` | [IsProper.lintegral_indicator_mul_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/declarations/isproper-lintegral-indicator-mul-indicator--ce3b0c4f134a2a6a4328671a.md) | 91 | `result-track:ce3b0c4f134a2a6a4328671adeef77ab6cfd233bfce48d0228d8ede9f683db5d` |
| 6 | `lemma` | [IsProper.lintegral_indicator_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/declarations/isproper-lintegral-indicator-mul--62ac789bd3ce976e6b57720c.md) | 103 | `result-track:62ac789bd3ce976e6b57720cc722bfb06d79e31507aa64ae8f0c96e5dffc552d` |
| 7 | `lemma` | [IsProper.setLIntegral_eq_indicator_mul_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/declarations/isproper-setlintegral-eq-indicator-mul-lintegral--e1ddaf497d68e8d55cdcd9ad.md) | 120 | `result-track:e1ddaf497d68e8d55cdcd9ad42760efdb0d35dc36f9d353409b8ff0d65adb590` |
| 8 | `lemma` | [IsProper.setLIntegral_inter_eq_indicator_mul_setLIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/declarations/isproper-setlintegral-inter-eq-indicator-mul-setlintegral--5ccf789a64fe38ac1bf5b824.md) | 126 | `result-track:5ccf789a64fe38ac1bf5b8242e65beacf618d133e4348632e251b2a23bfb58e9` |
| 9 | `lemma` | [IsProper.lintegral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variantcd206b04545907a081b4a2a6de2772c04b1fe44a011fba776c53274642fb7c2c.lean/declarations/isproper-lintegral-mul--35b23a3fc83413e6728ea635.md) | 132 | `result-track:35b23a3fc83413e6728ea63580f6a76b9e5a0eab2eef351afee52064fc6c7907` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
