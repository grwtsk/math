# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThreeQuarterSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e38d872d033f2c1f23f404a8ea99db338128d193",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e38d872d033f2c1f23f404a8ea99db338128d193`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCenteredMellin`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTaperedBoundary`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTaperedBoundary.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quarticGap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/quarticgap--529518edf232dc434ee7e343.md) | 32 | `declaration-track:529518edf232dc434ee7e343197435e5a006279d36c51331ee355734ba089335` |
| 2 | `lemma` | [quarticGap_norm_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/quarticgap-norm-identity--8d8fc16d72615ec2f73c4883.md) | 34 | `result-track:8d8fc16d72615ec2f73c488344acbfb79c1b09fb2133b360a9087169e843435d` |
| 3 | `lemma` | [quarticGap_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/quarticgap-lower--f633f0459d672fa63a4fa4d2.md) | 42 | `result-track:f633f0459d672fa63a4fa4d2db0f6b15334bc322c921c72ff1b50b8cbeb05ac6` |
| 4 | `lemma` | [norm_geometry](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/norm-geometry--fa2af62ef542c91f48795f7e.md) | 63 | `result-track:fa2af62ef542c91f48795f7e8e2e877b29e204b0bd88b54ce2753e42cb27f0e4` |
| 5 | `lemma` | [scaled_reference_inequality](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/scaled-reference-inequality--0f023205a4e88a3fd5c3cca9.md) | 88 | `result-track:0f023205a4e88a3fd5c3cca9bd1b01c8f4e14fb20a1fbed3c8ef18334765db18` |
| 6 | `theorem` | [norm_lower_of_centered_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/norm-lower-of-centered-enclosure--8de6ff09bc1f991c59e05882.md) | 107 | `result-track:8de6ff09bc1f991c59e058828bf90b271c8d0ad7209831e5670a138ca56766f3` |
| 7 | `theorem` | [poleNormalized_norm_lower_threeQuarter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/polenormalized-norm-lower-threequarter--17055893179e60a03f8c2879.md) | 143 | `result-track:17055893179e60a03f8c287989052b31e8342c29aaa66624e1666ee23295b63f` |
| 8 | `theorem` | [poleNormalized_nonzero_threeQuarter](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/polenormalized-nonzero-threequarter--52548d58ac3a35cae77c064d.md) | 149 | `result-track:52548d58ac3a35cae77c064dd10288e3248a6edfdeabdc8d9986563827ed52e5` |
| 9 | `theorem` | [quarticGap_nonpos_of_source_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/quarticgap-nonpos-of-source-zero--3d9d9fc02170174c6b9078be.md) | 158 | `result-track:3d9d9fc02170174c6b9078bed8d25980811acb944b574e1bb04ccc024bb8e258` |
| 10 | `theorem` | [poleNormalized_nonzero_of_quartic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/polenormalized-nonzero-of-quartic--b332f8edf5c42eb29b70765f.md) | 170 | `result-track:b332f8edf5c42eb29b70765fbca1e2ecb618bf11fa8964bb79a5e09b78c0b48c` |
| 11 | `theorem` | [target_quartic_constraint](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/target-quartic-constraint--07b002dbf8abad78e64e5b83.md) | 176 | `result-track:07b002dbf8abad78e64e5b8367140709e0383f5feb8cd6a02b6c8cf5f887ed9b` |
| 12 | `theorem` | [nontrivialZetaZero_height_gt_three_quarters](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/nontrivialzetazero-height-gt-three-quarters--f0651b86763cf898b3c964d2.md) | 182 | `result-track:f0651b86763cf898b3c964d2ecae74fa0af265fa9dd910ea65ec7cac44a8abdf` |
| 13 | `theorem` | [noTargetZero_threeQuarter_seed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/notargetzero-threequarter-seed--2a1aeb45bb9824ecc932c2bd.md) | 201 | `result-track:2a1aeb45bb9824ecc932c2bd9ece4bc22a8f7580a5818ffe2d132f622bb01e22` |
| 14 | `def` | [deformation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/deformation--2805dbc3ada5f3115fa1ae92.md) | 207 | `declaration-track:2805dbc3ada5f3115fa1ae92db31e87e0d653a2f230b7a49312fbd468718d8aa` |
| 15 | `theorem` | [deformation_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/deformation-zero--f189dc88832144008c4afe7d.md) | 210 | `result-track:f189dc88832144008c4afe7d43d12778ffc9742a7b485760f95a9fd2cf062ee3` |
| 16 | `theorem` | [deformation_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/deformation-one--2533cfe878bccbaf8569b969.md) | 213 | `result-track:2533cfe878bccbaf8569b9691792de86ecbbd65b02648231ba4a0ad20019f241` |
| 17 | `theorem` | [deformation_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/deformation-norm-lower--8f9086e76689b1a39e74b1e7.md) | 217 | `result-track:8f9086e76689b1a39e74b1e7c1b9d414c3fda9e1b89ad7ed75811e6430f46252` |
| 18 | `theorem` | [deformation_continuous](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/deformation-continuous--ee5e863a24389495fca123bb.md) | 232 | `result-track:ee5e863a24389495fca123bb84d86a7f181a6589f74722625aecb4181fd191d1` |
| 19 | `theorem` | [deformation_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/deformation-differentiableat--4f0733bac887abf0aaa36f21.md) | 236 | `result-track:4f0733bac887abf0aaa36f2154b055792776d0432fbe80601f3da6bc824f739d` |
| 20 | `theorem` | [inverse_deformation_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/inverse-deformation-differentiableat--e187753f3100a4a9d9dc0281.md) | 243 | `result-track:e187753f3100a4a9d9dc0281236e952059abe382f96feff611240c0b4a4c73be` |
| 21 | `def` | [firstWindowRemainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/firstwindowremainder--0d3d8b435b5a505f307bb1ff.md) | 255 | `declaration-track:0d3d8b435b5a505f307bb1ffb8ff777c491e1e8345ec6e764f006f873d5ad877` |
| 22 | `theorem` | [window_one_iff_centered_remainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/window-one-iff-centered-remainder--8fff81ed96fe17da6ba2d8eb.md) | 259 | `result-track:8fff81ed96fe17da6ba2d8eb1517c2c8daa5774cca57f4b2d36a5d15a17f05a2` |
| 23 | `theorem` | [window_one_of_centered_remainder_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/window-one-of-centered-remainder-cover--7cc3e413978d4f73034ad5a0.md) | 273 | `result-track:7cc3e413978d4f73034ad5a05dd03dea908bb1221ce6ea954b1673a345441f55` |
| 24 | `theorem` | [centered_remainder_nonempty](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThreeQuarterSeed.lean/declarations/centered-remainder-nonempty--e43b83830cbd9f95560f3cbf.md) | 280 | `result-track:e43b83830cbd9f95560f3cbf2e1cbb2974aadfb52daa17b8e3e079e15c318ac3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
