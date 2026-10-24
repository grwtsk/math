# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwelveHeightSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cd6102f617274562526f661bb7469777a9e2616",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cd6102f617274562526f661bb7469777a9e2616`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoPhase`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoPhase.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwelveHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightBernstein.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripElevenHeightSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [twelve_height_squares](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/twelve-height-squares--828a5021c2e7ee984c0de73c.md) | 26 | `result-track:828a5021c2e7ee984c0de73c4799059938cf75728fc46cbcbd83b8adbdacf061` |
| 2 | `lemma` | [scaled_projection_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/scaled-projection-re--06dd535e3536d68e3e473047.md) | 33 | `result-track:06dd535e3536d68e3e473047c70f11930832501ec619d7fb38c62bef4040e9fc` |
| 3 | `lemma` | [scaled_projection_im](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/scaled-projection-im--f2d51f8cca2f55ef3dfccf89.md) | 42 | `result-track:f2d51f8cca2f55ef3dfccf89ccfe47d4924eb1d605d9aa665a8cb37e90df70ee` |
| 4 | `lemma` | [coefficient_projection](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/coefficient-projection--6ed1110408c4e9ff663e02f2.md) | 52 | `result-track:6ed1110408c4e9ff663e02f2ac5a79cb153cb9e60836e61e8f61d69aaf48148f` |
| 5 | `theorem` | [finite_term_projection_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/finite-term-projection-nonneg--76e597e5e8ed481d11e1f1a2.md) | 65 | `result-track:76e597e5e8ed481d11e1f1a24579995821492984a718a6fcccdf7e32973fdcb8` |
| 6 | `lemma` | [power_norm_le_three_quarters](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/power-norm-le-three-quarters--46d0c7c0d75bf1d2dc713e61.md) | 90 | `result-track:46d0c7c0d75bf1d2dc713e61b465512cd417da556314fed85e0c85064fe50651` |
| 7 | `lemma` | [twelve_tailCoefficient_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/twelve-tailcoefficient-bound--4f4762ee7fde1774a75c44e1.md) | 97 | `result-track:4f4762ee7fde1774a75c44e1271df5dbe6ef566a98fae65cb370569aff9fcc63` |
| 8 | `theorem` | [twelve_tail_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/twelve-tail-error--55253e00be4e22b48795b955.md) | 111 | `result-track:55253e00be4e22b48795b955e463388d68eebab803118130d4f6d33e38ebfdf5` |
| 9 | `lemma` | [self_projection](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/self-projection--50c7bb2e82cd5498343f4e64.md) | 122 | `result-track:50c7bb2e82cd5498343f4e642a924134246d8535696ca71a07beaf70371a3081` |
| 10 | `theorem` | [twelve_source_projection](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/twelve-source-projection--c5cab7530c2288364c5709d2.md) | 128 | `result-track:c5cab7530c2288364c5709d271ebab2f79610d36815d8351b459f86fc8ea7ab8` |
| 11 | `lemma` | [high_reference_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/high-reference-norm--f195973c866d57ab7578a87d.md) | 148 | `result-track:f195973c866d57ab7578a87dac266169d17476e648d548a8e88d3661e45e067a` |
| 12 | `theorem` | [poleNormalized_norm_lower_twelveBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/polenormalized-norm-lower-twelveband--914c4cfb73d7566aa8e0c454.md) | 153 | `result-track:914c4cfb73d7566aa8e0c454e2df6f8fd5255bda4d9e17206de9bacc8bf12eb0` |
| 13 | `theorem` | [poleNormalized_norm_lower_twelveHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/polenormalized-norm-lower-twelveheight--f975347f70837b24048b0d29.md) | 163 | `result-track:f975347f70837b24048b0d29a2b128f071b141dc625064eb4a6e0f78383f931e` |
| 14 | `theorem` | [poleNormalized_nonzero_twelveHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/polenormalized-nonzero-twelveheight--32b0b4c40bb162088957296c.md) | 171 | `result-track:32b0b4c40bb162088957296cbdebf4645b9357ed6bbc93c994f5723f926f4371` |
| 15 | `theorem` | [nontrivialZetaZero_height_gt_twelve](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/nontrivialzetazero-height-gt-twelve--580cc22bb58de5a232bad142.md) | 179 | `result-track:580cc22bb58de5a232bad1424b3956c2478aa21004c29e41760fca6fac9b814e` |
| 16 | `theorem` | [noTargetZero_twelveHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/notargetzero-twelveheight--a32ad62bef85cf09381c32b5.md) | 196 | `result-track:a32ad62bef85cf09381c32b553be6c722032eb4e1bb11377b51b47abfdc99c53` |
| 17 | `theorem` | [windowRH_twelve](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/windowrh-twelve--937ec6a14200e2e53f44f161.md) | 201 | `result-track:937ec6a14200e2e53f44f16144ac0b0a0b6e7db3e82dbdebe098bbec978eaa1a` |
| 18 | `theorem` | [shellRH_eleven](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/shellrh-eleven--5bffd2ae2aae7b6a4be8e5b1.md) | 207 | `result-track:5bffd2ae2aae7b6a4be8e5b1fefcced38c5e7a64e3fdf8691d2176c027dcd0ae` |
| 19 | `theorem` | [deformation_projection_twelveBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/deformation-projection-twelveband--9ded9a2c6cc5e5438a151613.md) | 210 | `result-track:9ded9a2c6cc5e5438a1516130458ebaeb3d6d688e8518121f66408ee383fc70f` |
| 20 | `theorem` | [deformation_norm_lower_twelveBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/deformation-norm-lower-twelveband--c5bbef7b1586f74f9d85ac55.md) | 227 | `result-track:c5bbef7b1586f74f9d85ac55025954cf3e8ceaeb40b1191b880ac19f30ad0142` |
| 21 | `theorem` | [inverse_deformation_differentiableAt_twelveBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/inverse-deformation-differentiableat-twelveband--7d3f033975f7ff0d4a6765ea.md) | 236 | `result-track:7d3f033975f7ff0d4a6765eac711bd47412e014574f7c283e508fe8373418412` |
| 22 | `theorem` | [window_thirteen_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/window-thirteen-of-shell--1d180743de05e69fd1fc2189.md) | 246 | `result-track:1d180743de05e69fd1fc21890f4362b35aa5e132509504b01c0063802abf22ff` |
| 23 | `theorem` | [all_windows_of_above_twelve](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/all-windows-of-above-twelve--b8efaa378eaf013b8451d12d.md) | 249 | `result-track:b8efaa378eaf013b8451d12d4999d9de53806ca7e3f15a49256e1b96834a61f1` |
| 24 | `theorem` | [rh_of_above_twelve](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/declarations/rh-of-above-twelve--fd569791459f127c8f77fdb8.md) | 259 | `result-track:fd569791459f127c8f77fdb85fc47a6b827208a4db8e1deabffae7940cd4c251` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
