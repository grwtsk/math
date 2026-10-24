# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFiveHeightSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97dc2829e0bfede0def62dbb44e315d40fadf53e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97dc2829e0bfede0def62dbb44e315d40fadf53e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCubicPrimitive`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwoHeightSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwoHeightSeed.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_add_real_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/norm-add-real-sq--818db06259a9dba74252a662.md) | 30 | `result-track:818db06259a9dba74252a662d28e9fce2260888d49176a979263a4a8d643b7b3` |
| 2 | `lemma` | [fiveHeight_coordinate_squares](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/fiveheight-coordinate-squares--d7acf7ec26e9d4a26abff888.md) | 36 | `result-track:d7acf7ec26e9d4a26abff888c0d3eb41c2e00c7cf1ba0f2a1207dedf1e26c937` |
| 3 | `lemma` | [fiveHeight_factor_product](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/fiveheight-factor-product--850a4f9dadf324a38b34f90f.md) | 51 | `result-track:850a4f9dadf324a38b34f90f2c1005536ca5f70a3fec9b28ac72204cc88e54ee` |
| 4 | `lemma` | [fiveHeight_shift_ratio](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/fiveheight-shift-ratio--1dbedc71ab92e7552e4d224f.md) | 68 | `result-track:1dbedc71ab92e7552e4d224f5efbeed1ab665749890e5c22c84d28d9c64d485f` |
| 5 | `lemma` | [fiveHeight_triple_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/fiveheight-triple-factor--82b5e67197c162566f7a08f9.md) | 82 | `result-track:82b5e67197c162566f7a08f96088b7b5f6e149712b8940faf240d5d07606c327` |
| 6 | `theorem` | [fiveHeight_source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/fiveheight-source-error--29c3d1437418daee2f95fdf8.md) | 92 | `result-track:29c3d1437418daee2f95fdf85e4cb25b870a37bffcfd30a83374129e09876859` |
| 7 | `lemma` | [norm_lower_from_quadratic_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/norm-lower-from-quadratic-enclosure--a1253ca9f862e06ee331bf87.md) | 112 | `result-track:a1253ca9f862e06ee331bf87d050f4239610b46a55adbddd059ac955220b1e1c` |
| 8 | `theorem` | [poleNormalized_norm_lower_fiveHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/polenormalized-norm-lower-fiveheight--e885500784e19b3cfa9cfbb8.md) | 141 | `result-track:e885500784e19b3cfa9cfbb88b5ee87b3e8d821e09015d4e9c82b569072ba0ad` |
| 9 | `theorem` | [poleNormalized_nonzero_fiveHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/polenormalized-nonzero-fiveheight--793877b2d2df721d1f12f180.md) | 146 | `result-track:793877b2d2df721d1f12f18027ab721221950f53b867dd40f75eca63a62ec846` |
| 10 | `theorem` | [nontrivialZetaZero_height_gt_five](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/nontrivialzetazero-height-gt-five--1b43b2173853435fb2531726.md) | 155 | `result-track:1b43b2173853435fb25317266878c96d946fdc5b2a7699c23978d3119663ec13` |
| 11 | `theorem` | [noTargetZero_fiveHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/notargetzero-fiveheight--590cdfbfe5445485f75cac61.md) | 173 | `result-track:590cdfbfe5445485f75cac6167b8fffdf214efc4b1f9b48d03eb287c7e389a1b` |
| 12 | `theorem` | [windowRH_five](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/windowrh-five--af04a1054bc95f6b7196849e.md) | 178 | `result-track:af04a1054bc95f6b7196849e361d41888d46bd95ee15b752177f23767e5dc980` |
| 13 | `theorem` | [windowRH_three](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/windowrh-three--3c9d30000f1384b22380e32a.md) | 184 | `result-track:3c9d30000f1384b22380e32a4281af10924d4e21d720d9d0b11493857d24e09c` |
| 14 | `theorem` | [windowRH_four](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/windowrh-four--ac6215d9a0fce4ff57747340.md) | 185 | `result-track:ac6215d9a0fce4ff57747340976a4e5d1bbcffa32ffb753356e2f94b0b82a22a` |
| 15 | `theorem` | [shellRH_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/shellrh-two--9961094fa9d886ebb9a443c3.md) | 186 | `result-track:9961094fa9d886ebb9a443c331edd2c259a9bcfd122175c13fb37ed7df80734c` |
| 16 | `theorem` | [shellRH_three](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/shellrh-three--e5cc278678682603c16905c9.md) | 187 | `result-track:e5cc278678682603c16905c9d793e752b03249a0228b51c68a0e094f4cbe6d45` |
| 17 | `theorem` | [shellRH_four](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/shellrh-four--999aae39a92f44f25b0f7657.md) | 188 | `result-track:999aae39a92f44f25b0f7657beb183612c5478f1cd3270ec0c2582cb756fe683` |
| 18 | `def` | [deformation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/deformation--42168783084aebdadfd819c3.md) | 191 | `declaration-track:42168783084aebdadfd819c30d1599ecb42f8eb5a71a4e38f34b0bf5cff05893` |
| 19 | `theorem` | [deformation_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/deformation-zero--bbca3da387ca853ae0230052.md) | 194 | `result-track:bbca3da387ca853ae023005290d687bff0252c59c014ed1c9fb59c63f07a38a8` |
| 20 | `theorem` | [deformation_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/deformation-one--7bb73e736176535fba25801a.md) | 195 | `result-track:7bb73e736176535fba25801a305459bb08ef73003665b03495ccca6c4a88dd26` |
| 21 | `theorem` | [deformation_continuous](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/deformation-continuous--329cdf1673dd22fd5843b1b0.md) | 197 | `result-track:329cdf1673dd22fd5843b1b0a2e87bbb385f55cac5975eddb1eab60d735877e4` |
| 22 | `theorem` | [reference_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/reference-differentiableat--aef34fdd232582e12b0c80fb.md) | 201 | `result-track:aef34fdd232582e12b0c80fb31602425b9f0cf047c116af78bdcf6d2de82512c` |
| 23 | `theorem` | [deformation_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/deformation-differentiableat--326c06d0fa1ea8d0aeb5e232.md) | 204 | `result-track:326c06d0fa1ea8d0aeb5e232d26482533eadb0cd3f435bb79b7e0754b891d5b8` |
| 24 | `theorem` | [deformation_norm_lower_fiveHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/deformation-norm-lower-fiveheight--03fb2d0c0e3da2de2a400fee.md) | 208 | `result-track:03fb2d0c0e3da2de2a400fee0999995aabf6ad35e559e821473b673d175b874f` |
| 25 | `theorem` | [inverse_deformation_differentiableAt_fiveHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/inverse-deformation-differentiableat-fiveheight--3ffeb8aea331f5a7ffd4b360.md) | 218 | `result-track:3ffeb8aea331f5a7ffd4b360f761482a7d6454f65b0b2c897a9287cec043e178` |
| 26 | `theorem` | [window_six_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/window-six-of-shell--0ec6dfda04a92d4f907d6e63.md) | 229 | `result-track:0ec6dfda04a92d4f907d6e63fa2c6ddb0f427222dbd8782a6e322fc16cf9cd6f` |
| 27 | `theorem` | [all_windows_of_above_five](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/all-windows-of-above-five--34a3a01176d1af73c286c8f9.md) | 232 | `result-track:34a3a01176d1af73c286c8f917b582470a61eca9935c4ae6c984829527ddfb82` |
| 28 | `theorem` | [rh_of_above_five](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiveHeightSeed.lean/declarations/rh-of-above-five--92277aadcd1e44d60735247a.md) | 242 | `result-track:92277aadcd1e44d60735247a7c83f9e1b099da7f51806541a4b9feb6d35e1d70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
