# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripElevenHeightSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73bfb3df3acd33a26689a28edb1bbfe2c80d40a8",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73bfb3df3acd33a26689a28edb1bbfe2c80d40a8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoSource`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripElevenHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTenHeightSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightSeed.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [scaledCoefficient_norm_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/scaledcoefficient-norm-sq--d7316ffa3890bc7e6de457d9.md) | 28 | `result-track:d7316ffa3890bc7e6de457d9e9db24eb6ba791f70245f9d4ab11672a0daa0168` |
| 2 | `lemma` | [modelNorm_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/modelnorm-eq--285192be5decb13ecdb5ed17.md) | 38 | `result-track:285192be5decb13ecdb5ed178ba362d9852d1602621cfa35e60342d8f3925fda` |
| 3 | `lemma` | [shiftedProduct_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/shiftedproduct-sq--355d79c8ad326f23eec7e271.md) | 46 | `result-track:355d79c8ad326f23eec7e271e92fd675e2e57d6c34f37d6067992a72374241cb` |
| 4 | `lemma` | [reference_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/reference-sq--c9a1599f14f240fac57a62a5.md) | 53 | `result-track:c9a1599f14f240fac57a62a52fa6217e72db186de61b75f74a9c80416511c89d` |
| 5 | `lemma` | [height_square_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/height-square-bounds--7b206a37a6b18d93f695b339.md) | 57 | `result-track:7b206a37a6b18d93f695b3390f6271dca92b3fa433b53a6fbe15cae76532fa21` |
| 6 | `lemma` | [coefficient_weighted_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/coefficient-weighted-sq--7013d05ef9ac065de7da53f4.md) | 63 | `result-track:7013d05ef9ac065de7da53f4ddbcad2996932638de49866ad82bae1e5a5f0701` |
| 7 | `lemma` | [tailCoefficient_weighted_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/tailcoefficient-weighted-sq--e824563a6d852c657b1d93d5.md) | 72 | `result-track:e824563a6d852c657b1d93d5d0c9ce77df00b8d87192c0d8452dfadcc410e063` |
| 8 | `lemma` | [finite_term_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/finite-term-bound--f8e400c8307226d246b4ec53.md) | 84 | `result-track:f8e400c8307226d246b4ec538a91e6645c9755f66fa367218807911f67adb275` |
| 9 | `lemma` | [tail_term_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/tail-term-bound--3763409bfaa68bf1b9654ff1.md) | 91 | `result-track:3763409bfaa68bf1b9654ff140fc6794cc79af20eebaec3cf07a5c4b9540983f` |
| 10 | `theorem` | [band_source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/band-source-error--351c26aefceb6afbc0041064.md) | 107 | `result-track:351c26aefceb6afbc0041064f3c9eb511f35416491ad4b4ea1be8bc5d2ba529e` |
| 11 | `lemma` | [norm_lower_of_band_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/norm-lower-of-band-enclosure--0d66a98446315cbc9cb8529b.md) | 119 | `result-track:0d66a98446315cbc9cb8529bba6e48bd86b2b1c2980ce3348e6277fb4517943e` |
| 12 | `theorem` | [poleNormalized_norm_lower_band](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/polenormalized-norm-lower-band--b4032f9ea7cfd20b65473280.md) | 129 | `result-track:b4032f9ea7cfd20b6547328027954233556e1c06f48029c8dc4108dd77c13643` |
| 13 | `theorem` | [poleNormalized_norm_lower_elevenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/polenormalized-norm-lower-elevenheight--5eee09696a91e07bd4d07c27.md) | 135 | `result-track:5eee09696a91e07bd4d07c2770eb4bb0f9be4a5550662aea1f104c3f24a096dd` |
| 14 | `theorem` | [poleNormalized_nonzero_elevenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/polenormalized-nonzero-elevenheight--2c95e7585b195d6fb30493ce.md) | 143 | `result-track:2c95e7585b195d6fb30493cec0354fb108b5ece6abbeb68b1f1e5b359be2b718` |
| 15 | `theorem` | [nontrivialZetaZero_height_gt_eleven](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/nontrivialzetazero-height-gt-eleven--b3156481ba8643ae92f3f783.md) | 151 | `result-track:b3156481ba8643ae92f3f783e14a017b41b4763ada2e40a3c555729a071d98d6` |
| 16 | `theorem` | [noTargetZero_elevenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/notargetzero-elevenheight--84ae5cb42e540f39b0222f96.md) | 168 | `result-track:84ae5cb42e540f39b0222f969bbeeab25711e450eb406625c9e11fbb10fd4114` |
| 17 | `theorem` | [windowRH_eleven](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/windowrh-eleven--346203c624a44f8905e2c9b1.md) | 173 | `result-track:346203c624a44f8905e2c9b1d156a8af53a13e235ac9cd3586270088d2d9d4c5` |
| 18 | `theorem` | [shellRH_ten](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/shellrh-ten--d2ecaa07760d2a26ca195489.md) | 179 | `result-track:d2ecaa07760d2a26ca1954896e30f36c1f770cd4a91392617cf4df714c2e0aa1` |
| 19 | `def` | [deformation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/deformation--753a242233488bf34bb16b54.md) | 182 | `declaration-track:753a242233488bf34bb16b542b0db15b60c4526d04a18bb55f1dfc142df15f39` |
| 20 | `theorem` | [deformation_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/deformation-zero--25ba86ecb99cb22a37f1aca2.md) | 183 | `result-track:25ba86ecb99cb22a37f1aca2f24b240b7134417e002b3b31cbe9e88e5a959786` |
| 21 | `theorem` | [deformation_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/deformation-one--2d7a804a43d99561be64965a.md) | 184 | `result-track:2d7a804a43d99561be64965abdf18a92667e881d1f307a06c5cc2ca49ae41f8a` |
| 22 | `theorem` | [deformation_continuous](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/deformation-continuous--b3f3801742d9b2eb8cd6b9d3.md) | 186 | `result-track:b3f3801742d9b2eb8cd6b9d3d30a3fdc76f968dbadb5835e838ccbf40e968bea` |
| 23 | `theorem` | [deformation_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/deformation-differentiableat--876ed584d982c99bce8355f2.md) | 190 | `result-track:876ed584d982c99bce8355f264f37aa1843a63905c6aa37f3c09a3a04f3c9c9d` |
| 24 | `theorem` | [deformation_norm_lower_band](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/deformation-norm-lower-band--a17366e451f6e1133af619c7.md) | 194 | `result-track:a17366e451f6e1133af619c7cb704528dd27d794fe3eca2e23207a9f78b33fe3` |
| 25 | `theorem` | [inverse_deformation_differentiableAt_band](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/inverse-deformation-differentiableat-band--a7f38ddbac2b17a2fc7bbef1.md) | 204 | `result-track:a7f38ddbac2b17a2fc7bbef168bdfc54f6394d58400ad5ab87cb59ba78c4d86c` |
| 26 | `theorem` | [old_new_source_endpoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/old-new-source-endpoint--2b13179e3edaebacd670ca72.md) | 215 | `result-track:2b13179e3edaebacd670ca72f8d1f13d79f1e41a221a20d7a48a2d6886735e91` |
| 27 | `theorem` | [affine_deformation_not_global_unit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/affine-deformation-not-global-unit--fc8f6bf916edbb761a33f2a4.md) | 218 | `result-track:fc8f6bf916edbb761a33f2a4714106323d386dbc6059e58db089452573dbe42a` |
| 28 | `theorem` | [window_twelve_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/window-twelve-of-shell--755e9c26711a8e5c64e063c6.md) | 220 | `result-track:755e9c26711a8e5c64e063c6f9e6cfa733344893b4998cfb630140cb0ea6c7af` |
| 29 | `theorem` | [all_windows_of_above_eleven](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/all-windows-of-above-eleven--c4a13c2c246e8a7ad9178e29.md) | 223 | `result-track:c4a13c2c246e8a7ad9178e29c1713cfc04340aea99b9a26e98849a93d0280a90` |
| 30 | `theorem` | [rh_of_above_eleven](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/declarations/rh-of-above-eleven--3cb29f3b78fa7a813344d4d2.md) | 233 | `result-track:3cb29f3b78fa7a813344d4d23e5c5cd73de4e13568c9d8c084bd7254fd488774` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
