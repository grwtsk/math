# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTenHeightSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "753b49d3cf125a4e5588fd641ba663ed451adf1a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `753b49d3cf125a4e5588fd641ba663ed451adf1a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticTangentDefect`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTenHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripNineHeightSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNineHeightSeed.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tenHeight_joint_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/tenheight-joint-bound--fb0d6c3a802f7cb45ffb24ff.md) | 22 | `result-track:fb0d6c3a802f7cb45ffb24ff4ca581d0f2ea8229b1e72906113ce608b5df4072` |
| 2 | `theorem` | [tenHeight_multiplier_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/tenheight-multiplier-bound--fc5d2ae5862e983933f12071.md) | 39 | `result-track:fc5d2ae5862e983933f120713a058257734a6005bc978d52685a9ddf9f374697` |
| 3 | `theorem` | [tenHeight_source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/tenheight-source-error--23bfce708f81a456133ac987.md) | 52 | `result-track:23bfce708f81a456133ac98761b69ec018c17b443904123e8552c2f0d5797189` |
| 4 | `lemma` | [norm_lower_from_tenHeight_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/norm-lower-from-tenheight-enclosure--7f1d616b52784332e1876a7b.md) | 69 | `result-track:7f1d616b52784332e1876a7ba11fb27ed521f85c7540d8dce382f6c79af9897b` |
| 5 | `theorem` | [poleNormalized_norm_lower_tenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/polenormalized-norm-lower-tenheight--9546d7a861ba389f3a98b46f.md) | 80 | `result-track:9546d7a861ba389f3a98b46fe870b9e4b6babbdb1e4545cf7f61e8ab3a50c3c4` |
| 6 | `theorem` | [poleNormalized_nonzero_tenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/polenormalized-nonzero-tenheight--36aaba4375bbde84fed40199.md) | 85 | `result-track:36aaba4375bbde84fed40199062da906949b36210397bdfc01c5eb0d7a2bfe50` |
| 7 | `theorem` | [nontrivialZetaZero_height_gt_ten](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/nontrivialzetazero-height-gt-ten--0e4d1909260ab599e72808fd.md) | 93 | `result-track:0e4d1909260ab599e72808fd31d8cafff84dfe8b629a7011cb8cc5039f9a2a40` |
| 8 | `theorem` | [noTargetZero_tenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/notargetzero-tenheight--70b8dc70bd71b33e051af7e8.md) | 110 | `result-track:70b8dc70bd71b33e051af7e8705c00fb01b17caf3e5b5dabea90592d391d5195` |
| 9 | `theorem` | [windowRH_ten](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/windowrh-ten--73a9fcefbe640a31a120db38.md) | 115 | `result-track:73a9fcefbe640a31a120db382e13e38813e5cb8ab5569e4a207810f8f5c143ea` |
| 10 | `theorem` | [shellRH_nine](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/shellrh-nine--4026ebae14db030cf246a423.md) | 121 | `result-track:4026ebae14db030cf246a42306687d0f7a1ebc520135546e5bae31edccdeb93f` |
| 11 | `theorem` | [deformation_norm_lower_tenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/deformation-norm-lower-tenheight--87f577f0a2b5d85a2ff4ab91.md) | 123 | `result-track:87f577f0a2b5d85a2ff4ab91a3e843648a72a4bc1eaa62e83293da4884dca06e` |
| 12 | `theorem` | [inverse_deformation_differentiableAt_tenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/inverse-deformation-differentiableat-tenheight--a8ece181081ad8b42924fc26.md) | 133 | `result-track:a8ece181081ad8b42924fc262aae335d8139440b170c61396a0cb24dc2a2569d` |
| 13 | `theorem` | [finiteModel_relative_error_tenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/finitemodel-relative-error-tenheight--bb4631c5520e0bb73bfa9073.md) | 144 | `result-track:bb4631c5520e0bb73bfa9073fcf7e1e8aae2e3496d20886bdcec611f98ce5725` |
| 14 | `theorem` | [window_eleven_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/window-eleven-of-shell--d9a3ba1dd3c2d825ed6bef56.md) | 161 | `result-track:d9a3ba1dd3c2d825ed6bef56dd9f63233205a93ef26f398e28ad7ab321ffdad6` |
| 15 | `theorem` | [all_windows_of_above_ten](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/all-windows-of-above-ten--1c342c196162d149e3aea778.md) | 164 | `result-track:1c342c196162d149e3aea778cfec971ac60bcaa0413ce4f44be1decc00584059` |
| 16 | `theorem` | [rh_of_above_ten](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/declarations/rh-of-above-ten--e5322349bd85677847e50275.md) | 174 | `result-track:e5322349bd85677847e5027564926987b1ef53ae705fe581b7de715d62a5833b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
