# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BuffonsNeedle.Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4974230b9c84bf9f6826bec42fdbfb15e0a49b4d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4974230b9c84bf9f6826bec42fdbfb15e0a49b4d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Density` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Uniform` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Notation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [needleProjX](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/needleprojx--401b9139967584eb613ab5b1.md) | 103 | `declaration-track:401b9139967584eb613ab5b1d508bdbc1ff0509c20a763c1bf8df3c271a5a16b` |
| 2 | `def` | [needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/needlecrossesindicator--d4b9eb56e343df8a31ed2b08.md) | 113 | `declaration-track:d4b9eb56e343df8a31ed2b085217d7317897b15e103409a0ed7c7005a423b37d` |
| 3 | `def` | [N](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/n--43c39f94358221998e667b67.md) | 122 | `declaration-track:43c39f94358221998e667b673cb9183a7cc31a6f9c57675507cb2a749ebcfb54` |
| 4 | `abbrev` | [needleSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/needlespace--c1c3d45343d7f6c31dda1bcc.md) | 127 | `declaration-track:c1c3d45343d7f6c31dda1bcc99d6a8dff6af3bb2db6b6501f31bbc8ff6d07318` |
| 5 | `lemma` | [volume_needleSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/volume-needlespace--97312c7ac061e37238a30cde.md) | 130 | `result-track:97312c7ac061e37238a30cde035198e9b1574f7d1d74aea54b476778ef32105a` |
| 6 | `lemma` | [measurable_needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/measurable-needlecrossesindicator--af705644ac178be6b6a12887.md) | 135 | `result-track:af705644ac178be6b6a12887bec9a6f20c539272199e9aa61d6267746031f403` |
| 7 | `lemma` | [stronglyMeasurable_needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/stronglymeasurable-needlecrossesindicator--8ec180d3992123f3ea15d37c.md) | 146 | `result-track:8ec180d3992123f3ea15d37c0ebf574f4c777d78a67f4677cf01d710b4726199` |
| 8 | `lemma` | [integrable_needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/integrable-needlecrossesindicator--c6e976ce91eac7b92e39523f.md) | 162 | `result-track:c6e976ce91eac7b92e39523fec6c0cc018547d7933aa54637b9601f03640332a` |
| 9 | `lemma` | [buffon_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/buffon-integral--b8767b313e5e7396ee2a1c52.md) | 201 | `result-track:b8767b313e5e7396ee2a1c52678c85afeabfde6c2cb89adf582a3aba0434234d` |
| 10 | `lemma` | [short_needle_inter_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/short-needle-inter-eq--a7bc0c07718fdab0f8efdc07.md) | 247 | `result-track:a7bc0c07718fdab0f8efdc07356dcf72db069e25ec6252843cdd5fffc3935c17` |
| 11 | `theorem` | [buffon_short](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/buffon-short--786eb7f2308c20bb265d594e.md) | 259 | `result-track:786eb7f2308c20bb265d594effe3f031243ebc95073b3b6e8486b18ef5d5d8ee` |
| 12 | `lemma` | [intervalIntegrable_min_const_sin_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/intervalintegrable-min-const-sin-mul--2b6b0d14a8e0055ffded7fa9.md) | 279 | `result-track:2b6b0d14a8e0055ffded7fa9b55777bd16ada8cb06ef5b146a2a869dd2612809` |
| 13 | `lemma` | [integral_min_eq_two_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/integral-min-eq-two-mul--938301f2569bdeb7ad2dde7e.md) | 289 | `result-track:938301f2569bdeb7ad2dde7eedbbf547abc6ef49cd2cfa464b3edb4da77dfd2e` |
| 14 | `lemma` | [integral_zero_to_arcsin_min](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/integral-zero-to-arcsin-min--f494d3b91a9d273d1f68b5e7.md) | 303 | `result-track:f494d3b91a9d273d1f68b5e7e71ce02e8561ba8bc4b127ba5211ebae9bcd4d4b` |
| 15 | `lemma` | [integral_arcsin_to_pi_div_two_min](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/integral-arcsin-to-pi-div-two-min--204f9cf1aa46ac9a18872f81.md) | 321 | `result-track:204f9cf1aa46ac9a18872f81515834e1f8eb756fb9c4642a0d9408ad08aae51a` |
| 16 | `theorem` | [buffon_long](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Varianta180b6c24a24d0b11652094e08bca2a4ab3942c732f2e61922c4c0e2c9d20396.lean/declarations/buffon-long--e1b8f4fd36956c80caa34042.md) | 337 | `result-track:e1b8f4fd36956c80caa34042097d6e82d535036498f39df7dad1488c65a1a2e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
