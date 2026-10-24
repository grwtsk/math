# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSevenHeightSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a9cfb6768611b8bf80bfed187f9912ffceec463",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a9cfb6768611b8bf80bfed187f9912ffceec463`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixHeightSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixHeightSeed.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSevenHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sevenJointNumerator](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/sevenjointnumerator--5ebf4e8ac8bf74427459aaf5.md) | 30 | `declaration-track:5ebf4e8ac8bf74427459aaf57074e5506500a42196afebb3aed7aba9d3078a7c` |
| 2 | `def` | [sevenJointDenominator](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/sevenjointdenominator--8e5df2d4c4b8f2b84fa02b42.md) | 34 | `declaration-track:8e5df2d4c4b8f2b84fa02b42db2293aa96fc986b9353e7b3e09194f730189234` |
| 3 | `lemma` | [sevenJointNumerator_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/sevenjointnumerator-nonneg--d0919f6eda5a428f8e18ca34.md) | 37 | `result-track:d0919f6eda5a428f8e18ca343e7e04e498ab0d53aff7f7734252860631b1a16c` |
| 4 | `lemma` | [sevenJointDenominator_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/sevenjointdenominator-nonneg--1cb9bf09604cd6ee51b1e659.md) | 41 | `result-track:1cb9bf09604cd6ee51b1e659c796c72ff02f4779f5d9763ec75984537a87ded7` |
| 5 | `lemma` | [sevenJointNumerator_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/sevenjointnumerator-sq--e24094ed402270df218a3609.md) | 47 | `result-track:e24094ed402270df218a36091bb8c8d9676fb3bbae9e3f0f844cf23310682c18` |
| 6 | `lemma` | [sevenJointDenominator_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/sevenjointdenominator-sq--8f844b5111c1cc0be5d0e3d1.md) | 55 | `result-track:8f844b5111c1cc0be5d0e3d11c150448e8aaea65fcea6368caa1d3e3957c8656` |
| 7 | `theorem` | [sevenHeight_joint_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/sevenheight-joint-bound--655683dbea22e924b20972e2.md) | 65 | `result-track:655683dbea22e924b20972e2c4c7b7d07b5acc3aeadd13dfbebd8b78b388b3df` |
| 8 | `theorem` | [sevenHeight_multiplier_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/sevenheight-multiplier-bound--53d21903b14dc5c1949e5057.md) | 78 | `result-track:53d21903b14dc5c1949e505799e059cd1b31e18d3f515547a62ed10969508c97` |
| 9 | `theorem` | [sevenHeight_source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/sevenheight-source-error--66b464e2b5831ec28e723f87.md) | 94 | `result-track:66b464e2b5831ec28e723f874edb6874365bcaaf361bfc6ef72f1f8f2b310d35` |
| 10 | `theorem` | [finiteModel_relative_error_sevenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/finitemodel-relative-error-sevenheight--b04a7e0be28383e8d7d88a62.md) | 117 | `result-track:b04a7e0be28383e8d7d88a6250e732289d56d26a875916a2d25117cc45407670` |
| 11 | `lemma` | [norm_lower_from_sevenHeight_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/norm-lower-from-sevenheight-enclosure--c1fd84b7b8d8a078f3a42a87.md) | 136 | `result-track:c1fd84b7b8d8a078f3a42a87f65c314f0ae836bef3a396540b5cc8a4ee814f48` |
| 12 | `theorem` | [poleNormalized_norm_lower_sevenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/polenormalized-norm-lower-sevenheight--09719752e76bce0a23ac6882.md) | 147 | `result-track:09719752e76bce0a23ac6882a5a33128a1a6a75391febe5ba22dc09752945a93` |
| 13 | `theorem` | [poleNormalized_nonzero_sevenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/polenormalized-nonzero-sevenheight--351fc02a9e0abdbb4d7c5bd5.md) | 152 | `result-track:351fc02a9e0abdbb4d7c5bd5f1c3dfa70df21dd3b747fa3707f4a1c96b931184` |
| 14 | `theorem` | [nontrivialZetaZero_height_gt_seven](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/nontrivialzetazero-height-gt-seven--b1223bf14c303c734eedab73.md) | 162 | `result-track:b1223bf14c303c734eedab731220f76548d5b624db8c2b69bd62323be62f5a20` |
| 15 | `theorem` | [noTargetZero_sevenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/notargetzero-sevenheight--e0537dbf5fb18bd1ae6c7a02.md) | 180 | `result-track:e0537dbf5fb18bd1ae6c7a0278cd751b9358ca7f902e6ee80c14abfcfe69c106` |
| 16 | `theorem` | [windowRH_seven](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/windowrh-seven--911cdd7c996d10ac1d8c47d5.md) | 185 | `result-track:911cdd7c996d10ac1d8c47d5fd19f05192d8e17cd2aa63515f60704846f4a05b` |
| 17 | `theorem` | [shellRH_six](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/shellrh-six--6bc52e00926810ec17ff9d82.md) | 191 | `result-track:6bc52e00926810ec17ff9d8240f4b4b0cb65c3ab83976f3e29aa935410d60682` |
| 18 | `theorem` | [deformation_norm_lower_sevenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/deformation-norm-lower-sevenheight--d698b2724fd8d436a02871b8.md) | 194 | `result-track:d698b2724fd8d436a02871b80ffeefda98f9c61c7bc35c7d02ff0065da8a3032` |
| 19 | `theorem` | [inverse_deformation_differentiableAt_sevenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/inverse-deformation-differentiableat-sevenheight--d9999841b22907d3f677ea42.md) | 204 | `result-track:d9999841b22907d3f677ea42726be66ec64ebc35db327045d7f589991b9bbd71` |
| 20 | `theorem` | [window_eight_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/window-eight-of-shell--8e0d1ac958b998e40bfe0812.md) | 215 | `result-track:8e0d1ac958b998e40bfe081266e17c428a7f767cfbc1d04a7c2f12c04ef0826a` |
| 21 | `theorem` | [all_windows_of_above_seven](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/all-windows-of-above-seven--80b7412877a93f77e528a3e8.md) | 218 | `result-track:80b7412877a93f77e528a3e88ad9ebd191900273391af57914939495fd52a097` |
| 22 | `theorem` | [rh_of_above_seven](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/declarations/rh-of-above-seven--12bc6e9c89c0d4bbb2bf1dd7.md) | 228 | `result-track:12bc6e9c89c0d4bbb2bf1dd722e5343971a1e21c731e4d341d8bae6fcc0a3677` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
