# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3472d46896fd15416d4a930929c933cbb85997e0",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3472d46896fd15416d4a930929c933cbb85997e0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSevenHeightSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [referenceFactors](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/referencefactors--daddf118c1611d55573ed4a3.md) | 26 | `declaration-track:daddf118c1611d55573ed4a3aa49a8c065cea7db9085f24b8262a34ff12a7e14` |
| 2 | `lemma` | [reference_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/reference-norm--e5870c9b3fa7791abe635e55.md) | 29 | `result-track:e5870c9b3fa7791abe635e55db282b5f1aed0e269f23f72076941ed0d9aebb09` |
| 3 | `lemma` | [quadraticFactor_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/quadraticfactor-sq--5f7cf318b125cc679c77afe0.md) | 32 | `result-track:5f7cf318b125cc679c77afe0de4b42f09f25b97f8d31e419039048dfc8451126` |
| 4 | `lemma` | [quadraticFactor_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/quadraticfactor-norm-lower--256ed6bf4ec74c37e9faac55.md) | 42 | `result-track:256ed6bf4ec74c37e9faac55fd0491e3b34881a7987af9b7a69e72e7f9f379e2` |
| 5 | `lemma` | [reference_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/reference-norm-lower--1b1b739d9677e3cf1b79d4bd.md) | 54 | `result-track:1b1b739d9677e3cf1b79d4bd378853bc55c23325475b5e6b62626a6cb696b801` |
| 6 | `def` | [jointNumerator](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/jointnumerator--b798c5972e970e6f8517d360.md) | 81 | `declaration-track:b798c5972e970e6f8517d3609dac159b360bea2050614d443b1e8c23209fadbb` |
| 7 | `def` | [jointDenominator](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/jointdenominator--87a71ede2d54b19ee2361da4.md) | 82 | `declaration-track:87a71ede2d54b19ee2361da4693e78721b68dd2e505d6e5a6930e16f1be96824` |
| 8 | `lemma` | [jointNumerator_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/jointnumerator-sq--7099c0d359e116e547b199c2.md) | 84 | `result-track:7099c0d359e116e547b199c29e1c24b055000bdc67fe0a78a365f4dc64ac9888` |
| 9 | `lemma` | [jointDenominator_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/jointdenominator-sq--85b11f7968dc1220f4717e5f.md) | 92 | `result-track:85b11f7968dc1220f4717e5f6490229ef25e971843ad395d2f4c75542b7d2ca9` |
| 10 | `theorem` | [eightHeight_joint_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/eightheight-joint-bound--36c5547dcad133c18cc4701a.md) | 99 | `result-track:36c5547dcad133c18cc4701a711dbfab1db6280a712e4d76ba8aae44494444d8` |
| 11 | `theorem` | [eightHeight_multiplier_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/eightheight-multiplier-bound--067451718d5331503513fc7b.md) | 116 | `result-track:067451718d5331503513fc7b8b77f00e1916fc3077a8be0a241686832dab2311` |
| 12 | `theorem` | [eightHeight_source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/eightheight-source-error--76affba09ca5c26f470aff42.md) | 129 | `result-track:76affba09ca5c26f470aff42d6e71ffac3f40c5dec66a307ee680253ad46b16f` |
| 13 | `lemma` | [norm_lower_from_eightHeight_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/norm-lower-from-eightheight-enclosure--d1234ddd7f947ad08b6c9e0c.md) | 147 | `result-track:d1234ddd7f947ad08b6c9e0c9ce24c67a839f764d35ffeae42ba8a5249b40699` |
| 14 | `theorem` | [poleNormalized_norm_lower_eightHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/polenormalized-norm-lower-eightheight--315258a11807a41b9d015456.md) | 158 | `result-track:315258a11807a41b9d015456bec657379e7e58082635fa8616b388d184118341` |
| 15 | `theorem` | [poleNormalized_nonzero_eightHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/polenormalized-nonzero-eightheight--5adeab904218a204361f1524.md) | 163 | `result-track:5adeab904218a204361f15249475852d58fdc77f4761d564eff05b6f00f5d750` |
| 16 | `theorem` | [nontrivialZetaZero_height_gt_eight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/nontrivialzetazero-height-gt-eight--199e2da48f9c516f43ba8783.md) | 171 | `result-track:199e2da48f9c516f43ba87834c93e4e551f0c553b454e1277a59c21e4578d922` |
| 17 | `theorem` | [noTargetZero_eightHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/notargetzero-eightheight--d8475522a72c94c84241ead0.md) | 188 | `result-track:d8475522a72c94c84241ead087c4332b945cee7a99a3ab48255773bcdf72384d` |
| 18 | `theorem` | [windowRH_eight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/windowrh-eight--d22e96b8f8e2b94243bc870a.md) | 193 | `result-track:d22e96b8f8e2b94243bc870a23257ae0b23d7d53b0ececbe10e4e78764bf0c34` |
| 19 | `theorem` | [shellRH_seven](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/shellrh-seven--acb0287bbba3bb9645bc14bf.md) | 199 | `result-track:acb0287bbba3bb9645bc14bfb13e23358dcfc8bf886add2b020f008ce9a860ce` |
| 20 | `def` | [deformation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/deformation--d71d221133d1848df94ff672.md) | 202 | `declaration-track:d71d221133d1848df94ff672d8e92aa5a74fb0ce198e1e74ede8b3acffcf43f1` |
| 21 | `theorem` | [deformation_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/deformation-zero--6231d7f92f21d16b0d9530ec.md) | 203 | `result-track:6231d7f92f21d16b0d9530ecf9112c2e4cd3c84630bef6a3298c337010edadcf` |
| 22 | `theorem` | [deformation_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/deformation-one--6892c7537af8b40d67f3d806.md) | 204 | `result-track:6892c7537af8b40d67f3d806ffebafe14500feef7618bed90ad0daf0c960ad89` |
| 23 | `theorem` | [deformation_continuous](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/deformation-continuous--3aa2c257ae85d34e3d712cf6.md) | 206 | `result-track:3aa2c257ae85d34e3d712cf6f4578bbfdce699d758a3c6a435813aa7ea85f4df` |
| 24 | `theorem` | [reference_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/reference-differentiableat--80464f556b767f9c2973b2ad.md) | 210 | `result-track:80464f556b767f9c2973b2ad070d24265a05d136302f37d4aeda88ba540419d5` |
| 25 | `theorem` | [deformation_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/deformation-differentiableat--4cb6d079bc8cf12a9e5c7045.md) | 214 | `result-track:4cb6d079bc8cf12a9e5c70457e0b922f6416bb50c5f5263468af60a62d4e7971` |
| 26 | `theorem` | [deformation_norm_lower_eightHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/deformation-norm-lower-eightheight--267e5e28c0dabf684679ebce.md) | 218 | `result-track:267e5e28c0dabf684679ebce45de39cd91bd2a431a2e4eb3c664f441be3e3882` |
| 27 | `theorem` | [inverse_deformation_differentiableAt_eightHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/inverse-deformation-differentiableat-eightheight--9d474b526d8753f3195ac719.md) | 228 | `result-track:9d474b526d8753f3195ac71976812c4e23bda622c3004b82013f7a984a42cd5e` |
| 28 | `theorem` | [finiteModel_relative_error_eightHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/finitemodel-relative-error-eightheight--4297f70512baae54e10a0538.md) | 238 | `result-track:4297f70512baae54e10a0538be50318d8de7c63290884252de51f90ba57c8098` |
| 29 | `theorem` | [window_nine_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/window-nine-of-shell--5390af1d0ad88874ceb72e6f.md) | 254 | `result-track:5390af1d0ad88874ceb72e6f796459224391baa42edc46eca13fe0c00407c8b5` |
| 30 | `theorem` | [all_windows_of_above_eight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/all-windows-of-above-eight--5d375fe8b7dbc14301fe2872.md) | 257 | `result-track:5d375fe8b7dbc14301fe287219deec8fa50b914c194c288d4591f46618baffff` |
| 31 | `theorem` | [rh_of_above_eight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/declarations/rh-of-above-eight--7889ad2a5c83fd613793a58a.md) | 267 | `result-track:7889ad2a5c83fd613793a58a4d81b26bfcb9ed18859ddfb0f5bc481735b64dc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
