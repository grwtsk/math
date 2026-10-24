# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Bernoulli.Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8aa8a56d3414009a0a33d4810ae4a5183de6415",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8aa8a56d3414009a0a33d4810ae4a5183de6415`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.WellKnown` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernoulli'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli--c0bec4f22cadf19db83cc330.md) | 75 | `declaration-track:c0bec4f22cadf19db83cc33071112fdb24b2fbace8f5e53f664c82532d5a5223` |
| 2 | `theorem` | [bernoulli'_def'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-def--d1ef5c71c1a5eb8a73f68653.md) | 80 | `result-track:d1ef5c71c1a5eb8a73f686530c8a2950b627f96f3f5823632aa0db548a90d5f4` |
| 3 | `theorem` | [bernoulli'_def](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-def--c0e1f41fc9e9527ca7794724.md) | 85 | `result-track:c0e1f41fc9e9527ca7794724ee4e92b4cdee93390eeeb44d81372626b424c7e2` |
| 4 | `theorem` | [bernoulli'_spec](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-spec--fe27138a29ff69589108b990.md) | 90 | `result-track:fe27138a29ff69589108b9904c8f44f2cf085e36a15431c132e9f243c09db98e` |
| 5 | `theorem` | [bernoulli'_spec'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-spec--346f91ca3e59a35ee3cc4f53.md) | 98 | `result-track:346f91ca3e59a35ee3cc4f5329cbe6a559e4f644e9774165fbf14ccdd979e3c2` |
| 6 | `theorem` | [bernoulli'_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-zero--4cd4843695c3d5ccd5c11b16.md) | 111 | `result-track:4cd4843695c3d5ccd5c11b1689107e7c4aaf1f558729d58d10a102ebac815ea2` |
| 7 | `theorem` | [bernoulli'_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-one--28162cd2eff0feb04363d559.md) | 117 | `result-track:28162cd2eff0feb04363d559d89d42b6c3cce91839fcc08bc5aa1c144067ebec` |
| 8 | `theorem` | [bernoulli'_two](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-two--21c89e1987f1d09ce7f7b388.md) | 123 | `result-track:21c89e1987f1d09ce7f7b388e4af8fa0aa9a6774b3c53ad1e69c4bc6d94722be` |
| 9 | `theorem` | [bernoulli'_three](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-three--a64f48b1fe125a6d8391fdb5.md) | 129 | `result-track:a64f48b1fe125a6d8391fdb5cb36be03e10390493c9df51cdd041b593e066c5c` |
| 10 | `theorem` | [bernoulli'_four](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-four--6ef937c002d69fcebde883ec.md) | 135 | `result-track:6ef937c002d69fcebde883ec921d78aeeff9c492b860a69548c3671006ce8bed` |
| 11 | `theorem` | [sum_bernoulli'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/sum-bernoulli--4000512c86c3decd0f1add99.md) | 144 | `result-track:4000512c86c3decd0f1add99085475bd0b0b077f5a3ebcce88bb36230dd93dad` |
| 12 | `def` | [bernoulli'PowerSeries](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-powerseries--756b4efd19cadab644c1129b.md) | 161 | `declaration-track:756b4efd19cadab644c1129b4188b6a1911b34cb19ad1bed9d6142b0dd4938db` |
| 13 | `theorem` | [bernoulli'PowerSeries_mul_exp_sub_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-powerseries-mul-exp-sub-one--140c0fe1b200a440cabfe85d.md) | 165 | `result-track:140c0fe1b200a440cabfe85d5e81431321400c4dc4d08d4f6c6afc6e3330c8ca` |
| 14 | `theorem` | [bernoulli'_odd_eq_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-odd-eq-zero--9c78277ff55c32d03b5627a5.md) | 188 | `result-track:9c78277ff55c32d03b5627a522b32dd663ef653b69b300939b30b744ff1b8d02` |
| 15 | `def` | [bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli--538e3e6322a02b8bb0d7823e.md) | 207 | `declaration-track:538e3e6322a02b8bb0d7823e6a847653e87c9f8c089629245dde4c1b11f8fc8b` |
| 16 | `theorem` | [bernoulli'_eq_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-eq-bernoulli--0e771aef516aef64c0d63166.md) | 211 | `result-track:0e771aef516aef64c0d63166c94b73f6f7c36cd43cceed89eee0f849dad6d984` |
| 17 | `theorem` | [bernoulli_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-zero--8e8507a34b920d183d7b07fd.md) | 216 | `result-track:8e8507a34b920d183d7b07fde4b069b2c633880e60a10ccae14260eee3cac6a5` |
| 18 | `theorem` | [bernoulli_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-one--6374044fdef0447ced92f20e.md) | 220 | `result-track:6374044fdef0447ced92f20ed8ca49fcff5e03de8c7362c28feb01b264eaa110` |
| 19 | `theorem` | [bernoulli_eq_bernoulli'_of_ne_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-eq-bernoulli-of-ne-one--12f2b5305b061bcfcf4cf95c.md) | 223 | `result-track:12f2b5305b061bcfcf4cf95c70748fae144cf0551b72fbd9f7f9a33d97754e05` |
| 20 | `theorem` | [sum_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/sum-bernoulli--4f628e64194ec8871512e22d.md) | 232 | `result-track:4f628e64194ec8871512e22de939ff1755487a61f9b4492693e8791e6f1df4d1` |
| 21 | `theorem` | [bernoulli_spec'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoulli-spec--347101f0a16a9b97235b57bf.md) | 255 | `result-track:347101f0a16a9b97235b57bfe6ecdf29976651aa53bd0620de74d49355a029a2` |
| 22 | `def` | [bernoulliPowerSeries](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoullipowerseries--9788d1d061fec21fc5440cf2.md) | 279 | `declaration-track:9788d1d061fec21fc5440cf2909f8ea0edb8e157a847435155f46d7d99a7ce83` |
| 23 | `theorem` | [bernoulliPowerSeries_mul_exp_sub_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/bernoullipowerseries-mul-exp-sub-one--86636e8a04333bcdacccf400.md) | 283 | `result-track:86636e8a04333bcdacccf4000244d4196b1b45b0168d3b210c08effe64f5ebc8` |
| 24 | `theorem` | [sum_range_pow](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/sum-range-pow--ce2529ac64f91516ef7ff42a.md) | 315 | `result-track:ce2529ac64f91516ef7ff42ab298477e87cd0963808b766e36bf4ac6ae47bdd0` |
| 25 | `theorem` | [sum_Ico_pow](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantdd2530d047f596c9ef9d777aa5bb1c226b37c21ad3df588818f2e4c0e044193f.lean/declarations/sum-ico-pow--6abaa265ad08ebd8a0f710e6.md) | 386 | `result-track:6abaa265ad08ebd8a0f710e62071796be37b4e485871d99f5be4812b8ea06eda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
