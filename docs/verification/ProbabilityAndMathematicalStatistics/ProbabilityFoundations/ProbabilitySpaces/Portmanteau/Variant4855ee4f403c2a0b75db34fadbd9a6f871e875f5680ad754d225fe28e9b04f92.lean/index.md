# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Portmanteau.Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43fb3b36318342ccebfc328ef04127c70f6e2ea4",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43fb3b36318342ccebfc328ef04127c70f6e2ea4`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.ProbabilityMeasure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Layercake` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.BoundedContinuousFunction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_measure_compl_liminf_of_limsup_measure_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/le-measure-compl-liminf-of-limsup-measure-le--cc056e2309aff8a50395ff2a.md) | 101 | `result-track:cc056e2309aff8a50395ff2ac0424938260f07ee9231685f0932cc234e961b0f` |
| 2 | `theorem` | [le_measure_liminf_of_limsup_measure_compl_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/le-measure-liminf-of-limsup-measure-compl-le--fab8423464b1d85dd04770c8.md) | 119 | `result-track:fab8423464b1d85dd04770c8a8b49f51ea1bf25b38d65422ee1f7c5ca9158e23` |
| 3 | `theorem` | [limsup_measure_compl_le_of_le_liminf_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/limsup-measure-compl-le-of-le-liminf-measure--f82cbcc1eda9ef0d95340b71.md) | 125 | `result-track:f82cbcc1eda9ef0d95340b7167b766c6af947f442645f958134e83d4e8c53998` |
| 4 | `theorem` | [limsup_measure_le_of_le_liminf_measure_compl](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/limsup-measure-le-of-le-liminf-measure-compl--701abe8dcf62d76dc23e286b.md) | 143 | `result-track:701abe8dcf62d76dc23e286b091129406bd0514c4d1ed0c5ce613ea25a630276` |
| 5 | `theorem` | [limsup_measure_closed_le_iff_liminf_measure_open_ge](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/limsup-measure-closed-le-iff-liminf-measure-open-ge--0bc2789cbff21896e6c54b91.md) | 160 | `result-track:0bc2789cbff21896e6c54b913109b010c908c5bc008345694e9d7006c6e91be7` |
| 6 | `theorem` | [tendsto_measure_of_le_liminf_measure_of_limsup_measure_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/tendsto-measure-of-le-liminf-measure-of-limsup-measure-le--bd1d419cef300e887f2b4b3b.md) | 196 | `result-track:bd1d419cef300e887f2b4b3b929c2033a864eb8f0cbc4ee2f256d77ba30670e6` |
| 7 | `theorem` | [tendsto_measure_of_null_frontier](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/tendsto-measure-of-null-frontier--1f65ec8e5bf21fb895aabc1c.md) | 228 | `result-track:1f65ec8e5bf21fb895aabc1cfcfbea35f1ec2075b191e1329251b401cb1463bd` |
| 8 | `theorem` | [FiniteMeasure.limsup_measure_closed_le_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/finitemeasure-limsup-measure-closed-le-of-tendsto--af716bef8e51b831d5f8c8ca.md) | 266 | `result-track:af716bef8e51b831d5f8c8ca6df13a805003a92f727fdf7ad77d308bcd824cc1` |
| 9 | `theorem` | [ProbabilityMeasure.limsup_measure_closed_le_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/probabilitymeasure-limsup-measure-closed-le-of-tendsto--a0c1cbbfb95d9ea97e9b66fa.md) | 299 | `result-track:a0c1cbbfb95d9ea97e9b66fa6d41057f0055e23dc58b3c36ab42fb5fb25c9481` |
| 10 | `theorem` | [ProbabilityMeasure.le_liminf_measure_open_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/probabilitymeasure-le-liminf-measure-open-of-tendsto--d536887c4e35cfa7df92a793.md) | 311 | `result-track:d536887c4e35cfa7df92a793ced55c9124cea77a69d4cbef67ffdb5f1cb6f4f7` |
| 11 | `theorem` | [ProbabilityMeasure.tendsto_measure_of_null_frontier_of_tendsto'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/probabilitymeasure-tendsto-measure-of-null-frontier-of-tendsto--f5ccb280619ae6686a68171a.md) | 321 | `result-track:f5ccb280619ae6686a68171ab3a90da7143c51c90b46173b1aa25c6fbd7ffe17` |
| 12 | `theorem` | [ProbabilityMeasure.tendsto_measure_of_null_frontier_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/probabilitymeasure-tendsto-measure-of-null-frontier-of-tendsto--d7bacc46656a4e163da13bbc.md) | 338 | `result-track:d7bacc46656a4e163da13bbcaa64d4c801392825d4df7e160812aefa256976f2` |
| 13 | `theorem` | [exists_null_frontier_thickening](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/exists-null-frontier-thickening--bcff4aeb0ce20cd63c9bc107.md) | 374 | `result-track:bcff4aeb0ce20cd63c9bc107213d9a4a0ec3ca7e05397392bdab8ed51451893d` |
| 14 | `theorem` | [exists_null_frontiers_thickening](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/exists-null-frontiers-thickening--0a7daffb8527d8f559fa26e3.md) | 387 | `result-track:0a7daffb8527d8f559fa26e3e5c528707823de7604d79d94110039c77ff4f614` |
| 15 | `lemma` | [limsup_measure_closed_le_of_forall_tendsto_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/limsup-measure-closed-le-of-forall-tendsto-measure--2f61ed4a17254d178f6bf5c0.md) | 401 | `result-track:2f61ed4a17254d178f6bf5c0f532118c5a003638fa106036fbcc6238918820d5` |
| 16 | `lemma` | [le_liminf_measure_open_of_forall_tendsto_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/le-liminf-measure-open-of-forall-tendsto-measure--daf40449278c2a8f3b39f7dd.md) | 438 | `result-track:daf40449278c2a8f3b39f7dd1846ab86f3f5516a4218be2fd259be60b30edd1b` |
| 17 | `lemma` | [lintegral_le_liminf_lintegral_of_forall_isOpen_measure_le_liminf_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/lintegral-le-liminf-lintegral-of-forall-isopen-measure-le-liminf-measure--7e96aaa1c9d804bce60887d8.md) | 468 | `result-track:7e96aaa1c9d804bce60887d880b803395bf4c8bc02bee78954e39ca0293f0b5c` |
| 18 | `lemma` | [integral_le_liminf_integral_of_forall_isOpen_measure_le_liminf_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/integral-le-liminf-integral-of-forall-isopen-measure-le-liminf-measure--8932fd9671d9fc5f71c0b785.md) | 483 | `result-track:8932fd9671d9fc5f71c0b785353deaafc16ffd9a831c04c99aa35385ac552d7e` |
| 19 | `theorem` | [tendsto_of_forall_isOpen_le_liminf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant4855ee4f403c2a0b75db34fadbd9a6f871e875f5680ad754d225fe28e9b04f92.lean/declarations/tendsto-of-forall-isopen-le-liminf--274f1093c66add35962344de.md) | 519 | `result-track:274f1093c66add35962344deb299230077ee025534307b58148b40e66f20adb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
