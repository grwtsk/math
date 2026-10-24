# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixHeightSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c62cc54111a3e2b186f4a43d34da768bfdd4807a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c62cc54111a3e2b186f4a43d34da768bfdd4807a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripQuarticPrimitive`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFiveHeightSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sixHeight_coordinate_squares](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/sixheight-coordinate-squares--4326a273efbcd9b12e279df3.md) | 28 | `result-track:4326a273efbcd9b12e279df3cb042415021de080ffa293285c14b78185ba295f` |
| 2 | `lemma` | [sixHeight_factor_product](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/sixheight-factor-product--9a00f35c1b29075ad94237b9.md) | 43 | `result-track:9a00f35c1b29075ad94237b9a35ac1b2b05c1021e3944840e10f8961ce0aa27b` |
| 3 | `lemma` | [sixHeight_shift_one_five](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/sixheight-shift-one-five--8a01d0bb9799ef5b47f4b55b.md) | 62 | `result-track:8a01d0bb9799ef5b47f4b55bd551d7d4465854827db66294258fc225a95c7908` |
| 4 | `lemma` | [sixHeight_shift_three_four](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/sixheight-shift-three-four--95cb07adae4af4541d19f74f.md) | 76 | `result-track:95cb07adae4af4541d19f74f95798b4224936453cb864cb8842bcb3fc8fde45c` |
| 5 | `lemma` | [nine_sub_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/nine-sub-norm-lower--a1a7e9f95586517617c87a5c.md) | 90 | `result-track:a1a7e9f95586517617c87a5ca24e688ba6e6973e2f366bb9ab19cb399f459a3e` |
| 6 | `def` | [referenceFactors](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/referencefactors--f6f67473bfea6dd1a4577b90.md) | 95 | `declaration-track:f6f67473bfea6dd1a4577b90ccbec8459b5cfb17542eb94720b83a5180d34015` |
| 7 | `lemma` | [reference_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/reference-norm--f75d157b8895b5f6deb1d2c8.md) | 97 | `result-track:f75d157b8895b5f6deb1d2c8e13cd3628dad27bcbcea96fab4dd5c93c36c295e` |
| 8 | `lemma` | [sixHeight_multiplier_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/sixheight-multiplier-bound--ec70c33be7e677d4015c6a7a.md) | 100 | `result-track:ec70c33be7e677d4015c6a7a1821351e9effc4684f065daed7558238b26b4eb9` |
| 9 | `theorem` | [sixHeight_source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/sixheight-source-error--af034e571df087ee386bffdc.md) | 131 | `result-track:af034e571df087ee386bffdc7e459919185648ef8d9a8cc00e18018408c43fde` |
| 10 | `lemma` | [reference_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/reference-norm-lower--daea841fb044c91669fb7952.md) | 148 | `result-track:daea841fb044c91669fb7952aa1884b6ec208919e5012efd083c4d375e4689fe` |
| 11 | `lemma` | [norm_lower_from_quartic_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/norm-lower-from-quartic-enclosure--00ceafdb342096661b7615eb.md) | 172 | `result-track:00ceafdb342096661b7615ebbee8c441fd1a588da4c81799b1d8f3b9a27de1c8` |
| 12 | `theorem` | [poleNormalized_norm_lower_sixHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/polenormalized-norm-lower-sixheight--de2c4999412f9363756ec10c.md) | 183 | `result-track:de2c4999412f9363756ec10c56c69d1b7d2df64a2f52bf3840db638f14f53d63` |
| 13 | `theorem` | [poleNormalized_nonzero_sixHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/polenormalized-nonzero-sixheight--bcad215085ad637675707f8a.md) | 188 | `result-track:bcad215085ad637675707f8af34a689c7db2a0eeaa566fcf203481d7d4f7ae14` |
| 14 | `theorem` | [nontrivialZetaZero_height_gt_six](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/nontrivialzetazero-height-gt-six--8282bf25be6bf9c3dcbd5341.md) | 196 | `result-track:8282bf25be6bf9c3dcbd53411244b4ae6f9b11b0f8108d2e4d5dea0005909d21` |
| 15 | `theorem` | [noTargetZero_sixHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/notargetzero-sixheight--7a0a0cd56040698163075a42.md) | 213 | `result-track:7a0a0cd56040698163075a42ae98389c411061bb153ae9c9c75c3722680eb608` |
| 16 | `theorem` | [windowRH_six](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/windowrh-six--f38a7b6b94a474b269a4e85a.md) | 218 | `result-track:f38a7b6b94a474b269a4e85ad4395b64cd40806ff7b2fa81beaa74c1a97de9cf` |
| 17 | `theorem` | [shellRH_five](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/shellrh-five--af6a92cdc53beab84bc725ef.md) | 224 | `result-track:af6a92cdc53beab84bc725eff0aa99738feae1276eef604c092643202e45bfb7` |
| 18 | `def` | [deformation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/deformation--35e32cc3f0a631336b156786.md) | 227 | `declaration-track:35e32cc3f0a631336b15678612fc0d40d3158dd1d883ed6b6117158686f87117` |
| 19 | `theorem` | [deformation_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/deformation-zero--adc70af6c29fe0989f9001a3.md) | 229 | `result-track:adc70af6c29fe0989f9001a36763917baf63a4b70db0ede472007f44eee915ca` |
| 20 | `theorem` | [deformation_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/deformation-one--ec01c7ba2490277c311d01b4.md) | 230 | `result-track:ec01c7ba2490277c311d01b47f1514d2b346dfd9c778d00fbfe7d3d0c02e4fee` |
| 21 | `theorem` | [deformation_continuous](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/deformation-continuous--cd8eda00bf74e33e3f0ddb06.md) | 232 | `result-track:cd8eda00bf74e33e3f0ddb0633098922e7882ae373bd7dec7a9dd57ed075d172` |
| 22 | `theorem` | [reference_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/reference-differentiableat--b4a6e27f0368e29376c8736c.md) | 236 | `result-track:b4a6e27f0368e29376c8736c674f43303ae7a33d53d362e427da4c1991484b98` |
| 23 | `theorem` | [deformation_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/deformation-differentiableat--7c4df460537161b3002204bd.md) | 240 | `result-track:7c4df460537161b3002204bdd7845bd1d386dea422e3b758dd6e55147bb506c0` |
| 24 | `theorem` | [deformation_norm_lower_sixHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/deformation-norm-lower-sixheight--ef4d5190d2eef9d414df3156.md) | 244 | `result-track:ef4d5190d2eef9d414df3156d6f281855875df4416c0d7a37a5f95d92314ae88` |
| 25 | `theorem` | [inverse_deformation_differentiableAt_sixHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/inverse-deformation-differentiableat-sixheight--b709868a34a29154af934fd9.md) | 253 | `result-track:b709868a34a29154af934fd9e95bacc831d867c0aef89173e18efb6d3447b1b4` |
| 26 | `theorem` | [window_seven_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/window-seven-of-shell--110a1b538ddad30b5e957ecb.md) | 263 | `result-track:110a1b538ddad30b5e957ecbb5e0b249349bb5cd25187f6b912a336ea10150a5` |
| 27 | `theorem` | [all_windows_of_above_six](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/all-windows-of-above-six--06a31d5997d7cef9d3f989f8.md) | 266 | `result-track:06a31d5997d7cef9d3f989f8e14c26a3ecb20c1be22ac7478d2d3d61c7d9c456` |
| 28 | `theorem` | [rh_of_above_six](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/declarations/rh-of-above-six--f8ddf1527ea1b21331da8268.md) | 276 | `result-track:f8ddf1527ea1b21331da82689e311799f59412ad44c8025f6d4faf95f0d9887c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
