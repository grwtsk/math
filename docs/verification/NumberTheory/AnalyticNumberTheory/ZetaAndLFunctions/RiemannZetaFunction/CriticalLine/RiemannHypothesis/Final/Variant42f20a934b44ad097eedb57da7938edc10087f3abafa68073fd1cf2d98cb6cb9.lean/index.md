# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Final.Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "384b1356513d7b5b3417ee57fecc0efe77c7d6c0",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `384b1356513d7b5b3417ee57fecc0efe77c7d6c0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ZeroSide` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses.GzGp` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.Taper` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [L_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/l-pos--23000e8c539b83a887320f4a.md) | 39 | `result-track:23000e8c539b83a887320f4ab73716d3d0d52e16a3544364cd9d6877337a4e65` |
| 2 | `lemma` | [aLsq_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/alsq-pos--0a43ab41b7d5c56df2bb5294.md) | 41 | `result-track:0a43ab41b7d5c56df2bb5294e7f54a2ffb47d4223e704237c907807a05032a0f` |
| 3 | `lemma` | [phiHatConj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/phihatconj--6bef77a12253d5191a4dc189.md) | 45 | `result-track:6bef77a12253d5191a4dc18977467c476993a37f8326a0cac78bc8fb84734235` |
| 4 | `lemma` | [phiHatReal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/phihatreal--40737b5a8c46705d2124bd2e.md) | 48 | `result-track:40737b5a8c46705d2124bd2efd78ffc227e2bef162f599d459eab9d941fb8483` |
| 5 | `lemma` | [poissonSq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/poissonsq--dedf55b363dde14b76d4c39d.md) | 50 | `result-track:dedf55b363dde14b76d4c39dad46b0f5d699046e006988fe3debc7e1e0b27dfc` |
| 6 | `theorem` | [blockInputs_of_hwL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/blockinputs-of-hwl--83bc0ff8c087f47451f0c313.md) | 54 | `result-track:83bc0ff8c087f47451f0c31394d4abca063da58cc6dc32c850efb5603ac690c0` |
| 7 | `lemma` | [tendsto_L_atTop](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/tendsto-l-attop--dbc288b745e804683d03f17f.md) | 59 | `result-track:dbc288b745e804683d03f17f893e05825c9ac2181b696fb239367c4a8911a361` |
| 8 | `theorem` | [blockInputs](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/blockinputs--a8279bd83f12937a4359e956.md) | 65 | `result-track:a8279bd83f12937a4359e956758a5108fd1c6b33a3e796226d35ee003586072c` |
| 9 | `theorem` | [eventually_blockInputs](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/eventually-blockinputs--75e860436b4c5857c4a1c061.md) | 71 | `result-track:75e860436b4c5857c4a1c061cb5d4d1a114aa4da450527d2c4620345eac431fd` |
| 10 | `theorem` | [prop_block_i_posIndex](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/prop-block-i-posindex--c67cbd0649e025e9e8ff3b9b.md) | 81 | `result-track:c67cbd0649e025e9e8ff3b9b3d9eed2aa73a6875277638e36cd70491cdec79d4` |
| 11 | `theorem` | [prop_block_i_rank](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/prop-block-i-rank--70a0f5f2c17a1eb2ab631885.md) | 86 | `result-track:70a0f5f2c17a1eb2ab631885e9084dc205980621bfeb40b069d7be94d2a295f0` |
| 12 | `theorem` | [prop_block_ii_decomp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/prop-block-ii-decomp--cfe9474e43f58136ea8ae025.md) | 91 | `result-track:cfe9474e43f58136ea8ae0250283a803e29ba712ce0803e41919d53af5f85913` |
| 13 | `theorem` | [prop_block_ii_P_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/prop-block-ii-p-possemidef--e4a24e1ec20e6490f0289958.md) | 96 | `result-track:e4a24e1ec20e6490f02899585da73d099776ef7ebccde1e62bb020b560712f75` |
| 14 | `theorem` | [prop_block_ii_rank_P](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/prop-block-ii-rank-p--a66705b6040ae6518a1bd792.md) | 100 | `result-track:a66705b6040ae6518a1bd792828efcaa62f8a78fc64827e3bf3f7ba962b68b97` |
| 15 | `theorem` | [prop_block_ii_trace_P](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/prop-block-ii-trace-p--309c5784aa8392e5adde3839.md) | 104 | `result-track:309c5784aa8392e5adde3839af6d4808e7461f718f72b8c0a6bc0bc477c9a8e0` |
| 16 | `theorem` | [prop_block_ii_posIndex_Q](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant42f20a934b44ad097eedb57da7938edc10087f3abafa68073fd1cf2d98cb6cb9.lean/declarations/prop-block-ii-posindex-q--adc10c78df0e784d31980bec.md) | 108 | `result-track:adc10c78df0e784d31980bec7392f32891ce6c2c75780b2944ae167da5081ce9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
