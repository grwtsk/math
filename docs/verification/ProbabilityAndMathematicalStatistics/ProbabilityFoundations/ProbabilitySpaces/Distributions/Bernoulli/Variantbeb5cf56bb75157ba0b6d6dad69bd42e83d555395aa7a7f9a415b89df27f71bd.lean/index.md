# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Bernoulli.Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7dc1bde9c89745d3d9a4ab7a59377ee141f3c4a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7dc1bde9c89745d3d9a4ab7a59377ee141f3c4a`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Inverse` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.WellKnown` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernoulli'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli--b7e5fab46308b8fd42eeccab.md) | 63 | `declaration-track:b7e5fab46308b8fd42eeccab740716450978f7e75fc1b2cf18fe74cb74d1af12` |
| 2 | `theorem` | [bernoulli'_def'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-def--ba9ab5e7a43d27d6cc9531ea.md) | 67 | `result-track:ba9ab5e7a43d27d6cc9531ead5bcd9ea83b6664898f717d6cba68f0560e8f816` |
| 3 | `theorem` | [bernoulli'_def](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-def--a3b259ea461f7350cf71473e.md) | 71 | `result-track:a3b259ea461f7350cf71473e0e3d0c50b90eb25b79c8eda27fc7e490cc0a2910` |
| 4 | `theorem` | [bernoulli'_spec](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-spec--5b696ae8f13d7905dafc3f55.md) | 75 | `result-track:5b696ae8f13d7905dafc3f55df8b6045204c01763784584971884fc12f0b231a` |
| 5 | `theorem` | [bernoulli'_spec'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-spec--76176ac198d6e76069e79ab4.md) | 82 | `result-track:76176ac198d6e76069e79ab49107c5204daee6c4125fd7cc319a2ca93bccd076` |
| 6 | `theorem` | [bernoulli'_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-zero--f28666cdf6e417b9282652a5.md) | 94 | `result-track:f28666cdf6e417b9282652a5fa5609cd3b523dae829c24a56fb482f200910d9a` |
| 7 | `theorem` | [bernoulli'_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-one--51e5a00b9bc9ec19ca344410.md) | 99 | `result-track:51e5a00b9bc9ec19ca344410b65a1a5c872a226786720750dcea309c67a01675` |
| 8 | `theorem` | [bernoulli'_two](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-two--ace84f278019079d72b05615.md) | 104 | `result-track:ace84f278019079d72b05615823626af71fa7370ec7c65f94d2eda7fbeb3f360` |
| 9 | `theorem` | [bernoulli'_three](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-three--046cc24e16ccadcf8f5698b6.md) | 109 | `result-track:046cc24e16ccadcf8f5698b6225da93b3c243cd16f47353fd2d99150f99d1eb1` |
| 10 | `theorem` | [bernoulli'_four](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-four--0fd4db93ea8bff809fd37af3.md) | 114 | `result-track:0fd4db93ea8bff809fd37af361b385e4b976ec992713187ae51c58e8c9edeb72` |
| 11 | `theorem` | [sum_bernoulli'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/sum-bernoulli--c0927b3952ddaf9e3fa3cd45.md) | 122 | `result-track:c0927b3952ddaf9e3fa3cd4532320acced2f3005242e9f387c74e34613da70c1` |
| 12 | `def` | [bernoulli'PowerSeries](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-powerseries--abff0f014ea1b8188fc9c304.md) | 137 | `declaration-track:abff0f014ea1b8188fc9c30480c90e64bf0e8db76f42c4037484ea931fc8a12b` |
| 13 | `theorem` | [bernoulli'PowerSeries_mul_exp_sub_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-powerseries-mul-exp-sub-one--5162bdfc4502cc2d6b0e9044.md) | 140 | `result-track:5162bdfc4502cc2d6b0e9044afe2ad18e74050416ecce7abe0bc14767c915958` |
| 14 | `theorem` | [bernoulli'_odd_eq_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-odd-eq-zero--83800122646f60bf43129f08.md) | 161 | `result-track:83800122646f60bf43129f0848287f02dfb0a3bf89d1c94acb603c7a2284c606` |
| 15 | `def` | [bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli--13a77affb2f4ae2e27414df5.md) | 178 | `declaration-track:13a77affb2f4ae2e27414df5e3b4a0335d8a39bf26b768c678f94b3953992f1a` |
| 16 | `theorem` | [bernoulli'_eq_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-eq-bernoulli--827d02af43f8c53abebc8b0f.md) | 181 | `result-track:827d02af43f8c53abebc8b0fd63874a1d7f5cf4a0c4965f094937f8a34bac941` |
| 17 | `theorem` | [bernoulli_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-zero--bb4f30e400acc3270355e7c5.md) | 185 | `result-track:bb4f30e400acc3270355e7c5405f946613baa3eb60dbf743a2a0cad99fa8b315` |
| 18 | `theorem` | [bernoulli_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-one--307335f08c5e6ad6ee421a45.md) | 188 | `result-track:307335f08c5e6ad6ee421a4568f4c7f3297dc875ede9aa7bc9ffa822bcf67ea4` |
| 19 | `theorem` | [bernoulli_eq_bernoulli'_of_ne_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-eq-bernoulli-of-ne-one--6bfc5c8a1a865b7acc12cf45.md) | 190 | `result-track:6bfc5c8a1a865b7acc12cf452afed187dba41eefe0b08d652c4c68fbff527490` |
| 20 | `theorem` | [sum_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/sum-bernoulli--5fd01b8be69e0791d6879276.md) | 198 | `result-track:5fd01b8be69e0791d68792768e5396e9a33092ef403a23005c9a32a834c8b031` |
| 21 | `theorem` | [bernoulli_spec'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoulli-spec--82eeefe736bde819c69a11de.md) | 216 | `result-track:82eeefe736bde819c69a11de01ccc62bfb5bc3fcb4f2cbcd91a8c14e49ddb6af` |
| 22 | `def` | [bernoulliPowerSeries](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoullipowerseries--4747a6a77b42c53c13593a22.md) | 238 | `declaration-track:4747a6a77b42c53c13593a2235c9751e8ec8aa626388de6133106c937dc1ef42` |
| 23 | `theorem` | [bernoulliPowerSeries_mul_exp_sub_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/bernoullipowerseries-mul-exp-sub-one--e470fd334f80485fff0eea2b.md) | 241 | `result-track:e470fd334f80485fff0eea2b6394db37f5b89dd1af78aff48c26aa2b1f486098` |
| 24 | `theorem` | [sum_range_pow](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/sum-range-pow--df48d464a49fc76c6f1456f5.md) | 267 | `result-track:df48d464a49fc76c6f1456f509b6a4d31c34f104bf8a8d44250474dad4df2344` |
| 25 | `theorem` | [sum_Ico_pow](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variantbeb5cf56bb75157ba0b6d6dad69bd42e83d555395aa7a7f9a415b89df27f71bd.lean/declarations/sum-ico-pow--7b6625424e5120c9f026fb25.md) | 335 | `result-track:7b6625424e5120c9f026fb250c7e102ed2bce975adf1bd66545102ee6f4f14fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
