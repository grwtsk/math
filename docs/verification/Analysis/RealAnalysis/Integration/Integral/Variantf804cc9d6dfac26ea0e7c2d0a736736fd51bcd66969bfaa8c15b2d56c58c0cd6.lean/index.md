# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f8a28f6e3050b4c8be93af2f78330d1b1288982",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f8a28f6e3050b4c8be93af2f78330d1b1288982`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean.json)

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
| 1 | `theorem` | [Integrable.comp_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integrable-comp-inv--522e5627392d1dca4982b286.md) | 36 | `result-track:522e5627392d1dca4982b2869d787e496a6e0c2fdc83e72481a8b38302b5ebb8` |
| 2 | `theorem` | [integral_inv_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integral-inv-eq-self--7fac749d0f1859cd5d006fcb.md) | 41 | `result-track:7fac749d0f1859cd5d006fcb31411972bdf57e0db39e91433e9da1cf40161bd2` |
| 3 | `theorem` | [IntegrableOn.comp_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integrableon-comp-inv--07c3345589d6c8fe32bb4bd4.md) | 47 | `result-track:07c3345589d6c8fe32bb4bd491e0062b15b82494a8b423cf54c1f269db8e4c1f` |
| 4 | `theorem` | [IntegrableOn.comp_inv_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integrableon-comp-inv-iic--c2e43bdb323660611b2cc48c.md) | 62 | `result-track:c2e43bdb323660611b2cc48c71f723dc4978af29e9e4aa2bc779a03164b54f16` |
| 5 | `theorem` | [IntegrableOn.comp_inv_Ici](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integrableon-comp-inv-ici--89726192e9f15da662c8007f.md) | 67 | `result-track:89726192e9f15da662c8007f38aa442d03a2ed89903913eca90cb72783d5debd` |
| 6 | `theorem` | [IntegrableOn.comp_inv_Iio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integrableon-comp-inv-iio--e370b34d0e989153ccdfc340.md) | 72 | `result-track:e370b34d0e989153ccdfc340ae1b7b041dbd5b44e9a8022a3f6e6c6f03e99827` |
| 7 | `theorem` | [IntegrableOn.comp_inv_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integrableon-comp-inv-ioi--76a0d8041c3ba229cff67ca5.md) | 77 | `result-track:76a0d8041c3ba229cff67ca599e3871d7b1258ce381dd4dd8541274d641cb9d0` |
| 8 | `theorem` | [integral_mul_left_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integral-mul-left-eq-self--200ea2774378f0c4476e8e4c.md) | 92 | `result-track:200ea2774378f0c4476e8e4cec02e08da2d153c0106c2f36454f2e26c7c1c8a7` |
| 9 | `theorem` | [integral_mul_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integral-mul-right-eq-self--28b130c48df73d68f39832be.md) | 102 | `result-track:28b130c48df73d68f39832be5dcbcd918d1a0899d41eb7f710a989e9c7cda327` |
| 10 | `theorem` | [integral_div_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integral-div-right-eq-self--c24e8dd4b938f3afd76bd575.md) | 109 | `result-track:c24e8dd4b938f3afd76bd575541f20dfe303b290721056ff58e1b30c83945a73` |
| 11 | `theorem` | [integral_eq_zero_of_mul_left_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integral-eq-zero-of-mul-left-eq-neg--1b21c3f918e524d802c1ea42.md) | 118 | `result-track:1b21c3f918e524d802c1ea42ae7b41943468c537b2ec19c3029115cf638d6523` |
| 12 | `theorem` | [integral_eq_zero_of_mul_right_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integral-eq-zero-of-mul-right-eq-neg--3b7b2f4400ad45ae36cb2696.md) | 128 | `result-track:3b7b2f4400ad45ae36cb269649fabce8eb9bde4b598e3dd9be13d4abc0e91df0` |
| 13 | `theorem` | [Integrable.comp_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integrable-comp-mul-left--3e4dd4e87260dc93fd63f109.md) | 134 | `result-track:3e4dd4e87260dc93fd63f1093e76febead42a1945894bd87c3e2c601edb2f0e8` |
| 14 | `theorem` | [Integrable.comp_mul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integrable-comp-mul-right--cc292c97bba100328c5337d9.md) | 139 | `result-track:cc292c97bba100328c5337d9e2639106785aa79d294b76db348cacdcad982f2f` |
| 15 | `theorem` | [Integrable.comp_div_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integrable-comp-div-right--b9dfbcbd793bc50fbe3ac06d.md) | 144 | `result-track:b9dfbcbd793bc50fbe3ac06d4d5a6f5473f9d93bbb0cbf61b4298cae52bc5c0f` |
| 16 | `theorem` | [Integrable.comp_div_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integrable-comp-div-left--d7217fc9a398f79c87b9abe9.md) | 152 | `result-track:d7217fc9a398f79c87b9abe9098d02600883b4181dc2c449e4c37639f6e2734c` |
| 17 | `theorem` | [integrable_comp_div_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integrable-comp-div-left--8b38c433d09ac16092b2fe03.md) | 157 | `result-track:8b38c433d09ac16092b2fe0321482b0009f778a792341427084380fbed2ea1b1` |
| 18 | `theorem` | [integral_div_left_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integral-div-left-eq-self--94602c2f58a87f3ecbb4d8a9.md) | 164 | `result-track:94602c2f58a87f3ecbb4d8a96f36146dda763f665e89b58203493d3a142a9c47` |
| 19 | `theorem` | [integral_smul_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantf804cc9d6dfac26ea0e7c2d0a736736fd51bcd66969bfaa8c15b2d56c58c0cd6.lean/declarations/integral-smul-eq-self--dab068ff5e864db4739b4caa.md) | 176 | `result-track:dab068ff5e864db4739b4caabadda6aebced1edc0b881cf65251449402a4da83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
