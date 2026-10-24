# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.RiskIncrease.Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f544ab457cd25b48ed31f48cf4131974f34d97b8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f544ab457cd25b48ed31f48cf4131974f34d97b8`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Decision.Risk.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [riskIncrease](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease--bc023adfcdfdd43462667da4.md) | 62 | `declaration-track:bc023adfcdfdd43462667da45b439767f0e92ee58a8f96a8e7d19cf0cac9fa3b` |
| 2 | `lemma` | [riskIncrease_eq_iInf_sub'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease-eq-iinf-sub--7e00f88b718d157a2a0dd045.md) | 65 | `result-track:7e00f88b718d157a2a0dd0452830954f08eea27482d006e95d739a798e1058e7` |
| 3 | `lemma` | [riskIncrease_eq_iInf_sub](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease-eq-iinf-sub--17d621cc72ba52621c442ca1.md) | 70 | `result-track:17d621cc72ba52621c442ca1b8b8f938c4b44cd3ffa386fdfeb59acf562eb120` |
| 4 | `lemma` | [riskIncrease_of_isEmpty_of_isEmpty](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease-of-isempty-of-isempty--ad7833c856bc9d54660a09af.md) | 75 | `result-track:ad7833c856bc9d54660a09af5a3ce4ee07288211a76186ccbd9b89e0b0cf5ab8` |
| 5 | `lemma` | [riskIncrease_of_nonempty_of_isEmpty](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease-of-nonempty-of-isempty--c210de0a6de8f53fc70a3387.md) | 78 | `result-track:c210de0a6de8f53fc70a3387210cce43d4c78d2f97462ba91488c3e59e0d06b6` |
| 6 | `lemma` | [riskIncrease_zero_left](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease-zero-left--e6c12340374c69f27f55b80a.md) | 81 | `result-track:e6c12340374c69f27f55b80a86be4fc08b052efc511ff499e1c21cbeb42f3515` |
| 7 | `lemma` | [riskIncrease_zero_right](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease-zero-right--473aed4444cc874c683463b1.md) | 84 | `result-track:473aed4444cc874c683463b16b05976d339ab784e5da6966ef5463ff67862a17` |
| 8 | `lemma` | [riskIncrease_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease-const--e7f88bc60e23f3a9a6277e9a.md) | 87 | `result-track:e7f88bc60e23f3a9a6277e9a74d26fb5cd7cb73f18dca86daa572e4e9168bab9` |
| 9 | `lemma` | [riskIncrease_le_iInf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease-le-iinf--bffd5045dfe2eab21c7c61fd.md) | 91 | `result-track:bffd5045dfe2eab21c7c61fddccc22c3a9b2f4eda548a013d827987fc78010cd` |
| 10 | `lemma` | [riskIncrease_le_iInf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease-le-iinf--ea56f73a8f3313cc336d5596.md) | 95 | `result-track:ea56f73a8f3313cc336d5596dc5d456529e076b16bc85661da0904149de79158` |
| 11 | `lemma` | [riskIncrease_lt_top'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease-lt-top--fd3f5086b33ed5ead94f3121.md) | 99 | `result-track:fd3f5086b33ed5ead94f3121932be00ba50cadba780b60ee0118847cab29169d` |
| 12 | `lemma` | [riskIncrease_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease-lt-top--fa29905e0d0e3bf891779bc4.md) | 104 | `result-track:fa29905e0d0e3bf891779bc48f704969fb679a51926e7f56157dffb91a7a1177` |
| 13 | `lemma` | [riskIncrease_comp_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease-comp-le--ca7f1205c8ccaf86176075d6.md) | 110 | `result-track:ca7f1205c8ccaf86176075d6a1955bd4b1dc23d92cd06a90810c0a641694a198` |
| 14 | `lemma` | [riskIncrease_map_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant3cf640ad5093ce1f4d3cec6d9d72e3f7c6d3b48ff976a92e970f735abf99461f.lean/declarations/riskincrease-map-le--23f2845479934de03363eee2.md) | 117 | `result-track:23f2845479934de03363eee27478a9325c771f8361b1182e8558783fb541ec97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
