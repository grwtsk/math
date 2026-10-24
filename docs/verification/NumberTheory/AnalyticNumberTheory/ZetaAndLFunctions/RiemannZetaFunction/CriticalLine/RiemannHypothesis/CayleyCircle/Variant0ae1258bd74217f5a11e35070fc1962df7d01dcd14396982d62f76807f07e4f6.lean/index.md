# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CayleyCircle.Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51a0e2768d695336d08fe7311e10072c6e038931",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51a0e2768d695336d08fe7311e10072c6e038931`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Definitions` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cayley](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/cayley--6bda675906599e984d2e0526.md) | 21 | `declaration-track:6bda675906599e984d2e052672c545c414f82afaf358c09b3231e01afcda2655` |
| 2 | `theorem` | [normSq_difference](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/normsq-difference--d5475cf6a86588e74d6cec4f.md) | 24 | `result-track:d5475cf6a86588e74d6cec4fce403e100f9954e1c66916d66d3df2e305b56645` |
| 3 | `theorem` | [denominator_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/denominator-pos--c5dd0b5b2f3bbb0b3a6ea089.md) | 31 | `result-track:c5dd0b5b2f3bbb0b3a6ea08968db9215ae5f4c89029f51900d16c17493b0788c` |
| 4 | `theorem` | [normSq_defect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/normsq-defect--c39b4c0c2ba1540007be9d86.md) | 37 | `result-track:c39b4c0c2ba1540007be9d866e9d7bb8c3df6d8056a906b48cc8525d3ca40394` |
| 5 | `theorem` | [normSq_eq_one_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/normsq-eq-one-iff--c6f884fbe07697d565840382.md) | 45 | `result-track:c6f884fbe07697d565840382d353891ed3d7da94cacd392e32767837f4a82545` |
| 6 | `theorem` | [norm_eq_one_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/norm-eq-one-iff--9ac8fff909d4d997f7002455.md) | 60 | `result-track:9ac8fff909d4d997f7002455028f112b76431fee8cfaf64588efdf0cd70e0f93` |
| 7 | `theorem` | [normSq_lt_one_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/normsq-lt-one-iff--8c3e0587656beb516d34f083.md) | 71 | `result-track:8c3e0587656beb516d34f083fd07006557d37c24d29d2075bec105f657d5bc66` |
| 8 | `theorem` | [criticalReflection_transport](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/criticalreflection-transport--18c7254bf3f72f19a2b9c047.md) | 86 | `result-track:18c7254bf3f72f19a2b9c0475c88c6d65c04c2a169cc410f82206cb4b56e3321` |
| 9 | `def` | [ZeroImagesOnCircle](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/zeroimagesoncircle--536dd99b80cbdf3f3e5440e7.md) | 91 | `declaration-track:536dd99b80cbdf3f3e5440e70d05c06192b5bafc04a231e2c309d00e869c4786` |
| 10 | `theorem` | [rh_iff_zeroImagesOnCircle](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/rh-iff-zeroimagesoncircle--3ba1e68bc15ea9741d321004.md) | 94 | `result-track:3ba1e68bc15ea9741d32100445e482159b1b8595f0a0727e1ed973f12e9f02e9` |
| 11 | `def` | [trivialLocation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/triviallocation--c86000c5b87b9fda0f2de6d0.md) | 102 | `declaration-track:c86000c5b87b9fda0f2de6d0b8bcbf3ea6220dadddb60b9e08e75963247605a2` |
| 12 | `theorem` | [trivialLocation_is_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/triviallocation-is-zero--c43cb59bc852d743c550a091.md) | 105 | `result-track:c43cb59bc852d743c550a091c636100eee3f3402fd22831cac06e68204ee4d9f` |
| 13 | `def` | [trivialDenominator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/trivialdenominator--ecd9486f990186cb0de31677.md) | 109 | `declaration-track:ecd9486f990186cb0de31677e3ad2dbde0fcf2aebe7610b157b66b5891d57a17` |
| 14 | `theorem` | [trivialLocation_image](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/triviallocation-image--465954460213d28d0628855f.md) | 112 | `result-track:465954460213d28d0628855f10c7fd685422ae22a3f0a24aa1bfa9a83f6caded` |
| 15 | `theorem` | [trivialLocation_inside](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/triviallocation-inside--bf067e7152b42e8fde85c406.md) | 132 | `result-track:bf067e7152b42e8fde85c4060dad1c851d0e3bc31ee1d45845bb94d7fdd2ef81` |
| 16 | `theorem` | [trivialDenominator_tendsto](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/trivialdenominator-tendsto--5b3efe8283f13d55011c2082.md) | 143 | `result-track:5b3efe8283f13d55011c2082dbbf981ad6cb0766b1aed58c252cbecf7dac2340` |
| 17 | `theorem` | [trivialLocation_image_tendsto](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CayleyCircle/Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6.lean/declarations/triviallocation-image-tendsto--5395a638eced73deae11b66d.md) | 153 | `result-track:5395a638eced73deae11b66da89528ee0d5fb0e8fc4609e9dc8493201ca57660` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
