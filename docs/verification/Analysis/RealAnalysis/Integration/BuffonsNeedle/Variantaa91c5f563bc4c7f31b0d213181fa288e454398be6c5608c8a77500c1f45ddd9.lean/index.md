# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BuffonsNeedle.Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "121cb65250c178f5ce5ae5c1e761d17ef7bf6083",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `121cb65250c178f5ce5ae5c1e761d17ef7bf6083`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Density` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Uniform` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Notation` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [needleProjX](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/needleprojx--08f2eceaf0eb1678ed77b9aa.md) | 111 | `declaration-track:08f2eceaf0eb1678ed77b9aaa82804261374d36991d5e37e5dd7f5097367895f` |
| 2 | `def` | [needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/needlecrossesindicator--c15f586c2a9fd6d4097f2963.md) | 121 | `declaration-track:c15f586c2a9fd6d4097f2963bec9daf643f1fb89ccb32d11475604ccd50c3ea4` |
| 3 | `def` | [N](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/n--33c3d9e42ac9f4259af76201.md) | 130 | `declaration-track:33c3d9e42ac9f4259af762011b570a6a66471bffb86d85cdee511e4ffc1117da` |
| 4 | `abbrev` | [needleSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/needlespace--c6d25025690c6a02671d73fc.md) | 135 | `declaration-track:c6d25025690c6a02671d73fc040717222de4049a140ad2b84843ea7029c90b00` |
| 5 | `lemma` | [volume_needleSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/volume-needlespace--371e464f9e3891333e0521a9.md) | 138 | `result-track:371e464f9e3891333e0521a96038746efe9e39e1c8f3420ba645e83450894f37` |
| 6 | `lemma` | [measurable_needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/measurable-needlecrossesindicator--45841a3e50f4263ffdeeb6fd.md) | 143 | `result-track:45841a3e50f4263ffdeeb6fd400f3a6e892aeb358d93a6cc8840e324b418760c` |
| 7 | `lemma` | [stronglyMeasurable_needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/stronglymeasurable-needlecrossesindicator--ddf10018008aee9f7768bddc.md) | 154 | `result-track:ddf10018008aee9f7768bddc93df01c7b64abc657810bae4b744ab205160e876` |
| 8 | `lemma` | [integrable_needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/integrable-needlecrossesindicator--5139ebad1637ae38dedf6246.md) | 170 | `result-track:5139ebad1637ae38dedf62464f6b679d6d6100cdabda7dd1b431ea275961888b` |
| 9 | `lemma` | [buffon_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/buffon-integral--8c647cd7cb867438ebdf9523.md) | 209 | `result-track:8c647cd7cb867438ebdf9523893a6d5abc4c60506ee370be136c67cf62b849df` |
| 10 | `lemma` | [short_needle_inter_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/short-needle-inter-eq--b5e6c9231b704495b6ff758f.md) | 255 | `result-track:b5e6c9231b704495b6ff758ff2d2fd06fba6d060c1994e93544dcd0d62a3c189` |
| 11 | `theorem` | [buffon_short](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/buffon-short--7d931ff004b530662e65705c.md) | 267 | `result-track:7d931ff004b530662e65705caea714e7e6afe4db09b92cdf1986180f33f728bc` |
| 12 | `lemma` | [intervalIntegrable_min_const_sin_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/intervalintegrable-min-const-sin-mul--c6e79ab327ca4d6a46510b7f.md) | 287 | `result-track:c6e79ab327ca4d6a46510b7fd889a9fffb9a13f24c1ec3ced82ca55d94ab483b` |
| 13 | `lemma` | [integral_min_eq_two_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/integral-min-eq-two-mul--ffceaed4c15b4883a1cd3479.md) | 297 | `result-track:ffceaed4c15b4883a1cd3479bd84ab0c1e0af5ff0fb8bdb348d4655e081f0f0e` |
| 14 | `lemma` | [integral_zero_to_arcsin_min](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/integral-zero-to-arcsin-min--c6544e99cf9e732e83892fd4.md) | 311 | `result-track:c6544e99cf9e732e83892fd410147a0ed82e7d0666bd67dc3ba89dcca2207180` |
| 15 | `lemma` | [integral_arcsin_to_pi_div_two_min](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/integral-arcsin-to-pi-div-two-min--782a732dacf1b32ea26c0e4d.md) | 329 | `result-track:782a732dacf1b32ea26c0e4d727e046a001252ed4dea011d3eecfe05ee00c41e` |
| 16 | `theorem` | [buffon_long](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variantaa91c5f563bc4c7f31b0d213181fa288e454398be6c5608c8a77500c1f45ddd9.lean/declarations/buffon-long--821cda6a9e71383352ac9a87.md) | 345 | `result-track:821cda6a9e71383352ac9a87bb0cfc898288f7352bcac9d6a40765b2b9480902` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
