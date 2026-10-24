# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwoHeightSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e6735ab369288a5a246c962a6993306227a9adc",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e6735ab369288a5a246c962a6993306227a9adc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripQuadraticPrimitive`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThreeQuarterSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [twoHeight_factor_product](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/twoheight-factor-product--b19661e7537604d693aad6b1.md) | 31 | `result-track:b19661e7537604d693aad6b130686ea2903e428878201639a9b24b75305381dd` |
| 2 | `theorem` | [twoHeight_source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/twoheight-source-error--345e9358fa4a82a8258fd7a9.md) | 57 | `result-track:345e9358fa4a82a8258fd7a9996e7cd21e25a470d21b49cf6baa7e28c49befd3` |
| 3 | `lemma` | [norm_lower_from_relative_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/norm-lower-from-relative-enclosure--fdb94f70b6db6486982eeff3.md) | 73 | `result-track:fdb94f70b6db6486982eeff3576886f4117026093b19f63567e9ae37551b32f6` |
| 4 | `theorem` | [poleNormalized_norm_lower_twoHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/polenormalized-norm-lower-twoheight--80dcb71db4654844d588d18a.md) | 88 | `result-track:80dcb71db4654844d588d18a5b13fde15467d00baf139adc0a592652d44b2658` |
| 5 | `theorem` | [poleNormalized_nonzero_twoHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/polenormalized-nonzero-twoheight--ae64710c27504ea58cfd9674.md) | 93 | `result-track:ae64710c27504ea58cfd9674c947f889e1f8aedfbadb48034f1b9d7e843abc40` |
| 6 | `theorem` | [nontrivialZetaZero_height_gt_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/nontrivialzetazero-height-gt-two--5357ff8416762574293a19f9.md) | 102 | `result-track:5357ff8416762574293a19f9b674157a031d96a59cc1b0abf439a8f6023d18a4` |
| 7 | `theorem` | [noTargetZero_twoHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/notargetzero-twoheight--130795914894599b45452875.md) | 120 | `result-track:130795914894599b4545287559844556aa8a2f6df72a6e0adf62521507855029` |
| 8 | `theorem` | [windowRH_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/windowrh-two--7ff2a81d572bc889a91579bc.md) | 126 | `result-track:7ff2a81d572bc889a91579bcc31cd87acf6b64f82501390e12f07fe6723582dc` |
| 9 | `theorem` | [windowRH_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/windowrh-one--bf4b7d1778fd8052826adafe.md) | 132 | `result-track:bf4b7d1778fd8052826adafe3a0e0f93d59a7e6130d7810b8fa7f15ceefbca47` |
| 10 | `theorem` | [shellRH_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/shellrh-zero--2a1fd3ccc7c5a4df3d164dfa.md) | 134 | `result-track:2a1fd3ccc7c5a4df3d164dfa8e8c0813076de31e3662fcf0386f32eebd0a9b02` |
| 11 | `theorem` | [shellRH_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/shellrh-one--85c40308633a4c5e1b91e430.md) | 136 | `result-track:85c40308633a4c5e1b91e4309a695445961977433c72bf6d018ec0a5f4518c6b` |
| 12 | `theorem` | [noTargetZero_previousRemainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/notargetzero-previousremainder--22cb8bb3b64bf584bee304c5.md) | 139 | `result-track:22cb8bb3b64bf584bee304c5d52d58a74c541c84a46c9aa3e7f0e5bb3c467916` |
| 13 | `theorem` | [deformation_norm_lower_twoHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/deformation-norm-lower-twoheight--8dc4f52addd5575b7553fc5f.md) | 143 | `result-track:8dc4f52addd5575b7553fc5fb7fc8fecce680bd3fa158942f8d2ee0306af3a6d` |
| 14 | `theorem` | [inverse_deformation_differentiableAt_twoHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/inverse-deformation-differentiableat-twoheight--55e8ed6210333c53ccdd7d8f.md) | 156 | `result-track:55e8ed6210333c53ccdd7d8f2628d03b466eed3e11e3684abb499bd59912ddf4` |
| 15 | `theorem` | [all_windows_of_above_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/all-windows-of-above-two--014a091722180a9134c7d4f1.md) | 167 | `result-track:014a091722180a9134c7d4f123bd04c027a92804167d65ee0c10cb43c52d784d` |
| 16 | `theorem` | [rh_of_above_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/rh-of-above-two--29b6077459557ba1ea12eb9a.md) | 177 | `result-track:29b6077459557ba1ea12eb9a7a9c825cd2de6bab1e4e6b9193dfac740dd88cca` |
| 17 | `theorem` | [twoHeight_not_global](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/declarations/twoheight-not-global--bfc160e1bb92b184d01192ff.md) | 182 | `result-track:bfc160e1bb92b184d01192ff27c72b72ff02850bf0e86e67816941f192956cb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
