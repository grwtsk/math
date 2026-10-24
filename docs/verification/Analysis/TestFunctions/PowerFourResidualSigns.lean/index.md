# Verification target: GRWTSK.Analysis.TestFunctions.PowerFourResidualSigns

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8cbc44fa519aeb60e39acb8d5e08bb32188f104",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TestFunctions/PowerFourResidualSigns.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/TestFunctions/PowerFourResidualSigns.lean/index.md) · [Full source](../../../../mathematics/Analysis/TestFunctions/PowerFourResidualSigns.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8cbc44fa519aeb60e39acb8d5e08bb32188f104`.

Source path: `GRWTSK/Analysis/TestFunctions/PowerFourResidualSigns.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TestFunctions/PowerFourResidualSigns.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives`](../../../../mathematics/Analysis/Convolution/CompactProfileHigherDerivatives.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalized_source_closed_factor](../../../../mathematics/Analysis/TestFunctions/PowerFourResidualSigns.lean/declarations/normalized-source-closed-factor--9cdaf4606a8c2150b5699564.md) | 21 | `result-track:9cdaf4606a8c2150b569956498ecfcfcdfe745a4b62a9a1f23d29dd4cf41cf63` |
| 2 | `theorem` | [normalized_source_deriv_closed_factor](../../../../mathematics/Analysis/TestFunctions/PowerFourResidualSigns.lean/declarations/normalized-source-deriv-closed-factor--51d96436c49d35a5dfbd6882.md) | 30 | `result-track:51d96436c49d35a5dfbd68824d63b262528c4e48ade04f088e99b80e573a4d95` |
| 3 | `theorem` | [right_strip_coordinate_bounds](../../../../mathematics/Analysis/TestFunctions/PowerFourResidualSigns.lean/declarations/right-strip-coordinate-bounds--9d9a2b3345d63a4fbf4fe281.md) | 43 | `result-track:9d9a2b3345d63a4fbf4fe2817c97ccaea2dc7a1f8bb71fea5e6863f410dacab7` |
| 4 | `theorem` | [right_strip_bracket_signs](../../../../mathematics/Analysis/TestFunctions/PowerFourResidualSigns.lean/declarations/right-strip-bracket-signs--f67c2c67d588c0d46326e1a8.md) | 64 | `result-track:f67c2c67d588c0d46326e1a8028eff471bfc7908153309b595d54ca1d6d43e04` |
| 5 | `theorem` | [normalized_source_right_strip_signs](../../../../mathematics/Analysis/TestFunctions/PowerFourResidualSigns.lean/declarations/normalized-source-right-strip-signs--837907804fbc7740ec1337a3.md) | 90 | `result-track:837907804fbc7740ec1337a3f0cee301d3a57cef7966e3a6f8c6c575988b660c` |
| 6 | `theorem` | [normalized_source_reflected_on_support](../../../../mathematics/Analysis/TestFunctions/PowerFourResidualSigns.lean/declarations/normalized-source-reflected-on-support--e5ef9839b97d243a273333a7.md) | 107 | `result-track:e5ef9839b97d243a273333a7543dccf78a576b1e59a0336e355cae3d18151ec1` |
| 7 | `theorem` | [normalized_source_left_strip_signs](../../../../mathematics/Analysis/TestFunctions/PowerFourResidualSigns.lean/declarations/normalized-source-left-strip-signs--2ceeabe5598031c55f658f83.md) | 120 | `result-track:2ceeabe5598031c55f658f83952871cc9a14850404c0c0de1a40b95b51170027` |
| 8 | `theorem` | [normalized_source_deriv_zero_outside](../../../../mathematics/Analysis/TestFunctions/PowerFourResidualSigns.lean/declarations/normalized-source-deriv-zero-outside--aa54e889869dd508b113a40d.md) | 134 | `result-track:aa54e889869dd508b113a40d16f39b02b2362da65b5a18ca559b42baca1f7047` |
| 9 | `theorem` | [normalized_source_endpoint_zero](../../../../mathematics/Analysis/TestFunctions/PowerFourResidualSigns.lean/declarations/normalized-source-endpoint-zero--a8d687793db547d8ff2d9f56.md) | 141 | `result-track:a8d687793db547d8ff2d9f56ec3d6129bd60bd39081cad7b43e16e0f48220794` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
