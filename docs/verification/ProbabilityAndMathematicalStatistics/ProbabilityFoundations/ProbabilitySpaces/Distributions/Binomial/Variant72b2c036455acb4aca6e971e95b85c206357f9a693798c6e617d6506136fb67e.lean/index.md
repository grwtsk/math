# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Binomial.Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fb61b8573666f061338493d6f0efdc179c3bbaa",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fb61b8573666f061338493d6f0efdc179c3bbaa`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.NCard` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Nat` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/binomial--e78c4f510a788cf11476ccc7.md) | 65 | `declaration-track:e78c4f510a788cf11476ccc72b0d55777bc278aeac02f0691dc1a51efc44b1af` |
| 2 | `lemma` | [binomial_nat](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/binomial-nat--151402827f55fc458e8bea91.md) | 74 | `result-track:151402827f55fc458e8bea913b843db8cc54e096f918738ee0f7801f48b76ded` |
| 3 | `lemma` | [binomial_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/binomial-zero--e7d0ae624c7885266308ddde.md) | 76 | `result-track:e7d0ae624c7885266308dddeca9d870ba79fb294e1058ad1bd10f6072c4a2da7` |
| 4 | `lemma` | [map_cast_binomial_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/map-cast-binomial-zero--366a200dfac2e574dd3407c2.md) | 79 | `result-track:366a200dfac2e574dd3407c232f7365f0d4814c36ebb9acc1725f5bca844d476` |
| 5 | `instance` | [isProbabilityMeasure_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/isprobabilitymeasure-binomial--c57c660822235e3c51972f2e.md) | 82 | `declaration-track:c57c660822235e3c51972f2e941d5f282c1a3e345123caafc4ad043bc69293fe` |
| 6 | `lemma` | [ae_le_of_hasLaw_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/ae-le-of-haslaw-binomial--f08c932eb42f42bae9ba6144.md) | 86 | `result-track:f08c932eb42f42bae9ba6144759ff3417a77acf7f6ce90041c6fbd7a5500a8c5` |
| 7 | `lemma` | [binomial_real_singleton](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/binomial-real-singleton--43a4565cdff000cbd7f98649.md) | 92 | `result-track:43a4565cdff000cbd7f986498c5d42dec312d67ba107110debf846b146dc4f45` |
| 8 | `lemma` | [binomial_singleton](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/binomial-singleton--1880bf49e40a94168d70edc2.md) | 96 | `result-track:1880bf49e40a94168d70edc2a18e5ea3307db2be32284199a2e89607bab6ba44` |
| 9 | `lemma` | [map_cast_binomial_real_singleton](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/map-cast-binomial-real-singleton--c3b292e48907763dce3ea215.md) | 101 | `result-track:c3b292e48907763dce3ea21561fcd65fc1ae7a2853711ab494d7d098f87f6226` |
| 10 | `lemma` | [binomial_nonneg](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/binomial-nonneg--fd0c3b95e90c3ca034ff64b6.md) | 108 | `result-track:fd0c3b95e90c3ca034ff64b6d3b0cc312b018c790f90376b644b5213ae46b45b` |
| 11 | `lemma` | [map_cast_binomial_singleton](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/map-cast-binomial-singleton--0e998654f71de8c2c69eb885.md) | 111 | `result-track:0e998654f71de8c2c69eb88542a47c6e1232b7082c6eb88233f1cdeabfa4d51d` |
| 12 | `lemma` | [binomial_real_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/binomial-real-zero--244d97c31c56f500010f82d4.md) | 117 | `result-track:244d97c31c56f500010f82d4a7bca3cb7bb109967019920460265d335c1c3649` |
| 13 | `lemma` | [map_cast_binomial_real_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/map-cast-binomial-real-zero--a94a77bf571cbf9c2312300c.md) | 121 | `result-track:a94a77bf571cbf9c2312300cfcdd01fa1633718390db75ec73410f1310812a71` |
| 14 | `lemma` | [binomial_real_self](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/binomial-real-self--d9cd58402b1211b9fd558713.md) | 127 | `result-track:d9cd58402b1211b9fd55871378acae6ee90cdec90ce94551008556d7913716ee` |
| 15 | `lemma` | [map_cast_binomial_real_self](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/map-cast-binomial-real-self--41ccf1a6fa2d4b0c8b3ee62a.md) | 131 | `result-track:41ccf1a6fa2d4b0c8b3ee62a89bc83baf72038ecca2040cd341d411f77723735` |
| 16 | `lemma` | [binomial_one_eq_bernoulliMeasure](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/binomial-one-eq-bernoullimeasure--d26cb62e460ad1373c5be363.md) | 135 | `result-track:d26cb62e460ad1373c5be3636580a5f64cc23aa6fcdc08abf1f7a7e7b8c4495d` |
| 17 | `lemma` | [binomial_eq_sum_dirac](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/binomial-eq-sum-dirac--126604c9a0ec8c23a97f74d5.md) | 142 | `result-track:126604c9a0ec8c23a97f74d5e4bf86a7f125c7aa3851d1202742c0599eec82d4` |
| 18 | `lemma` | [map_cast_binomial_eq_sum_dirac](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/map-cast-binomial-eq-sum-dirac--207ae52ee25d1281270a42dc.md) | 151 | `result-track:207ae52ee25d1281270a42dc3bcf6047b9e2c924b23b8274d6ec9b261cad111d` |
| 19 | `lemma` | [integrable_map_cast_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/integrable-map-cast-binomial--d8c12b6cce608309c112c517.md) | 162 | `result-track:d8c12b6cce608309c112c5171e2fdc8cdacd268bb8a84f7fe966696e9b8e8ce6` |
| 20 | `lemma` | [integrable_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/integrable-binomial--9a1952b02e6b318bedafeeed.md) | 167 | `result-track:9a1952b02e6b318bedafeeed809c0791ae7f035e93d5b14afd3f02cffd582c61` |
| 21 | `lemma` | [integral_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/integral-binomial--4ec256c2db18587817443a5a.md) | 172 | `result-track:4ec256c2db18587817443a5a82883848bbd0d0537cb8e925dc1f5428c0a3c776` |
| 22 | `lemma` | [integral_map_cast_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/integral-map-cast-binomial--7ac09775f08e88c42eb2f5cd.md) | 179 | `result-track:7ac09775f08e88c42eb2f5cdb7dc93b2853783d9189f359bd13c5f40e1e8edda` |
| 23 | `theorem` | [integral_of_hasLaw_binomial](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/declarations/integral-of-haslaw-binomial--d2b9d3c4c4ba9dbfe6b3979d.md) | 194 | `result-track:d2b9d3c4c4ba9dbfe6b3979d528e244882c92d254edd09249ee7c2f94f50c8fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
