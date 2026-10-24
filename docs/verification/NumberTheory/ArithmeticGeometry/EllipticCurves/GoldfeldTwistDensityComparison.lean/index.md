# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GoldfeldTwistDensityComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f304839c4f838858b0d977c46a034fb55f6cd162",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f304839c4f838858b0d977c46a034fb55f6cd162`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TwistRankFamily](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/twistrankfamily--2addead5eda887aa1e5fa5e0.md) | 40 | `declaration-track:2addead5eda887aa1e5fa5e0dea9131394698c10e4421acd52758cbbeada6df6` |
| 2 | `def` | [eligibleTwists](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/eligibletwists--126fc5c5021a2c9b5a2c0ca1.md) | 46 | `declaration-track:126fc5c5021a2c9b5a2c0ca160c122482f05372fbea5ad4564c094c3deae3618` |
| 3 | `def` | [eligibleCount](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/eligiblecount--c9960573d8d2ecbff3e4fb28.md) | 50 | `declaration-track:c9960573d8d2ecbff3e4fb28b687de34055ee3005e5f71beef3a23c7061fecea` |
| 4 | `def` | [rankZeroMass](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/rankzeromass--6c0f7b0e8b94b98cd3e5188c.md) | 54 | `declaration-track:6c0f7b0e8b94b98cd3e5188c28072b1b1323452b81f6bc344698413759bc1db5` |
| 5 | `def` | [rankOneMass](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/rankonemass--bd14dec151e08b12eae77b05.md) | 58 | `declaration-track:bd14dec151e08b12eae77b05a440ea7e219ea2a87943ade731342a197a1d518b` |
| 6 | `def` | [highRankMoment](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/highrankmoment--8b0ae3d297415c6eb830ab5a.md) | 63 | `declaration-track:8b0ae3d297415c6eb830ab5a1b8334d676405d7144dcd6fcc269eead094c2d2d` |
| 7 | `def` | [fullRankMoment](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/fullrankmoment--8a6384d5660c9c240b28501a.md) | 67 | `declaration-track:8a6384d5660c9c240b28501a8c567d6ea40fc733c2dc4b1860cb87d2d35e9ad1` |
| 8 | `theorem` | [rank_moment_pointwise](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/rank-moment-pointwise--0e3abec5dd7f5a43d4ffd0cb.md) | 71 | `result-track:0e3abec5dd7f5a43d4ffd0cb45521ff29558728ddc7bc8360d6d8420a8ccf852` |
| 9 | `theorem` | [fullRankMoment_eq_one_add_high](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/fullrankmoment-eq-one-add-high--45c90c39c5232d3db80aa093.md) | 86 | `result-track:45c90c39c5232d3db80aa093b7aeee3724ed58cce44c8dc10e7e6a49886b9138` |
| 10 | `def` | [meanAnalyticRank](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/meananalyticrank--f69c045b48928677166b54f3.md) | 100 | `declaration-track:f69c045b48928677166b54f36a3041a1eb9a5815286da8b3e5790231fd115753` |
| 11 | `theorem` | [meanRank_eq_one_fraction_add_high](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/meanrank-eq-one-fraction-add-high--0f5c2cb12a5a3e35847c9ac2.md) | 104 | `result-track:0f5c2cb12a5a3e35847c9ac23178cf247ad0d9a110543e31deaf70614cabf1d8` |
| 12 | `def` | [HasTwistDensityHalf](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/hastwistdensityhalf--34516eb2beed3786fc32ca55.md) | 112 | `declaration-track:34516eb2beed3786fc32ca558b39412c63d168f0ea2b5aacd150314f245d2709` |
| 13 | `def` | [GoldfeldZeroOneHalfDensities](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/goldfeldzeroonehalfdensities--0509c09f06e4215e46e6318a.md) | 117 | `declaration-track:0509c09f06e4215e46e6318af84f6bb1ed2d1f264b5dc0062b26535c31e7e3c6` |
| 14 | `def` | [HighRankMomentNegligible](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/highrankmomentnegligible--b8e9da45f3f9abcf3782b348.md) | 122 | `declaration-track:b8e9da45f3f9abcf3782b3483f7ef51e6c3f82091230db4c059710d7d5cdd4cd` |
| 15 | `def` | [GoldfeldMeanHalf](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/goldfeldmeanhalf--815db44ee76a8ef816614e49.md) | 127 | `declaration-track:815db44ee76a8ef816614e4927e2a143a5a8b0db9c43f730b2597ca81cafd507` |
| 16 | `theorem` | [mean_half_of_density_and_high_tail](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean/declarations/mean-half-of-density-and-high-tail--165de3da6f5ce10339fa3f6b.md) | 132 | `result-track:165de3da6f5ce10339fa3f6be9765d41bafd9b3701e5283a635765fba07303d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
