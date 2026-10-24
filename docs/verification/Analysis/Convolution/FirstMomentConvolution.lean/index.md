# Verification target: GRWTSK.Analysis.Convolution.FirstMomentConvolution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec1cdb50f7891f9ec40f9fa2e0a47396ca7dfc46",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/FirstMomentConvolution.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Convolution/FirstMomentConvolution.lean/index.md) · [Full source](../../../../mathematics/Analysis/Convolution/FirstMomentConvolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec1cdb50f7891f9ec40f9fa2e0a47396ca7dfc46`.

Source path: `GRWTSK/Analysis/Convolution/FirstMomentConvolution.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/FirstMomentConvolution.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convolution` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [first_moment_convolution_ae](../../../../mathematics/Analysis/Convolution/FirstMomentConvolution.lean/declarations/first-moment-convolution-ae--a868cd31098b66092149938a.md) | 25 | `result-track:a868cd31098b66092149938a4a4693e18b4b09292a370b8a1a2079aae604d8c9` |
| 2 | `theorem` | [first_moment_convolution_integrable](../../../../mathematics/Analysis/Convolution/FirstMomentConvolution.lean/declarations/first-moment-convolution-integrable--017c5a455a3cdfd4794b9c7f.md) | 48 | `result-track:017c5a455a3cdfd4794b9c7f229e64c351022cb475819c7b8d9e6022193a1348` |
| 3 | `theorem` | [first_moment_convolution_integral](../../../../mathematics/Analysis/Convolution/FirstMomentConvolution.lean/declarations/first-moment-convolution-integral--1b13a7abf50667148209cf5d.md) | 58 | `result-track:1b13a7abf50667148209cf5d712f44a54e6f32efdca74c6e30919e9bb6728e1c` |
| 4 | `theorem` | [first_moment_convolution_integral_zero](../../../../mathematics/Analysis/Convolution/FirstMomentConvolution.lean/declarations/first-moment-convolution-integral-zero--e376110cb069c8fc9445856f.md) | 73 | `result-track:e376110cb069c8fc9445856f51bd88e1a565ba0242365f3a7353392a287454b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
