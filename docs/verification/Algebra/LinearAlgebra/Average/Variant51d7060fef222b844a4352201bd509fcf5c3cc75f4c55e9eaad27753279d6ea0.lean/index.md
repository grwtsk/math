# Verification target: GRWTSK.Algebra.LinearAlgebra.Average.Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "356003d44e8ceb2ffa6202462e004968c378b4ba",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `356003d44e8ceb2ffa6202462e004968c378b4ba`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage--191b3db70f6edf2b10c341cd.md) | 46 | `declaration-track:191b3db70f6edf2b10c341cd1a3d2f619d552f8bdce5a44292b2a467e7331492` |
| 2 | `theorem` | [birkhoffAverage_zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-zero-apply--5a90f8e20dbbc1dc27e28cb4.md) | 48 | `result-track:5a90f8e20dbbc1dc27e28cb4ed974077b73f1ec48d5fe9a29c26e84c0bf2a51e` |
| 3 | `theorem` | [birkhoffAverage_zero](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-zero--3a6e092cf2c9d0d6e80ba0d9.md) | 53 | `result-track:3a6e092cf2c9d0d6e80ba0d95e6632d407ebab6eb6e65c529271c7c533567153` |
| 4 | `theorem` | [birkhoffAverage_one_apply](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-one-apply--b1c53ceed35a2887f55ff93d.md) | 58 | `result-track:b1c53ceed35a2887f55ff93d4c0ef162fad54aa525c598352844d3e9820b4148` |
| 5 | `theorem` | [birkhoffAverage_one](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-one--666697caf244eee83eb75199.md) | 63 | `result-track:666697caf244eee83eb75199fbe7ac9306109d4b48a61d10bb5f74c4c4bb753a` |
| 6 | `theorem` | [map_birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/map-birkhoffaverage--4df7566b42bf5bcd4498fee4.md) | 68 | `result-track:4df7566b42bf5bcd4498fee46bdaef9bc006ff7d001007031679a05ca3468fc0` |
| 7 | `theorem` | [map_comp_birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/map-comp-birkhoffaverage--327b12f224622d84118bf082.md) | 74 | `result-track:327b12f224622d84118bf08221ed1e3e9f26f50763f9ef28f091e181dcff6f50` |
| 8 | `theorem` | [birkhoffAverage_apply_congr_ring](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-apply-congr-ring--366888fa610cfbf3647afc09.md) | 80 | `result-track:366888fa610cfbf3647afc09e415b48a1f475253e927df7d045929c931b89bb2` |
| 9 | `theorem` | [birkhoffAverage_congr_ring](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-congr-ring--b0cc25a3f838b9ab8bd87f44.md) | 85 | `result-track:b0cc25a3f838b9ab8bd87f449f5c01a0d172579ed0f8e49c72497d09d4be16c9` |
| 10 | `theorem` | [Function.IsFixedPt.birkhoffAverage_eq](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/function-isfixedpt-birkhoffaverage-eq--f435a53ce935306465961d46.md) | 91 | `result-track:f435a53ce935306465961d46c65ff912de18f277ab9fbc2f33a9089dffca3eb0` |
| 11 | `lemma` | [birkhoffAverage_add_apply](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-add-apply--6ed9df82cf3a200f95a912a5.md) | 95 | `result-track:6ed9df82cf3a200f95a912a5f8c9d76b49c4b6eda185160fc3d29155c3c95c20` |
| 12 | `lemma` | [birkhoffAverage_add](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-add--4c285a9464cf34ec1dc77f49.md) | 101 | `result-track:4c285a9464cf34ec1dc77f497e88fe358e127966c08fa165d39db96674272386` |
| 13 | `theorem` | [birkhoffAverage_apply_of_comp_eq](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-apply-of-comp-eq--ae9ff0c633c3efc80ee219c4.md) | 108 | `result-track:ae9ff0c633c3efc80ee219c48e5e862d7102dab42571a1161ce2c781aa70cc7d` |
| 14 | `theorem` | [birkhoffAverage_of_comp_eq](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-of-comp-eq--765540dce391612ec2fa9c5c.md) | 115 | `result-track:765540dce391612ec2fa9c5c6ab949e1933c0fd7368a84d53e74bff667d6cb87` |
| 15 | `lemma` | [birkhoffAverage_neg_apply](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-neg-apply--c6a68572af8e6e88d8e76cca.md) | 125 | `result-track:c6a68572af8e6e88d8e76cca934148bc76408f0d282f9522ccd80645ad12f762` |
| 16 | `lemma` | [birkhoffAverage_neg](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-neg--1b87b8f595f1b504400fd6d3.md) | 129 | `result-track:1b87b8f595f1b504400fd6d396741a6fd546e46126f60997a9748e43e9bcf0e5` |
| 17 | `lemma` | [birkhoffAverage_sub_apply](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-sub-apply--85964b8e0611cfe1b042b22f.md) | 133 | `result-track:85964b8e0611cfe1b042b22fb533748fdbee9b3a854dd5649f1c86be4f000604` |
| 18 | `lemma` | [birkhoffAverage_sub](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-sub--ef183641f7ca66e80f014104.md) | 137 | `result-track:ef183641f7ca66e80f014104a706dbf7ddf5d350d7d48d81b01624055938abc6` |
| 19 | `theorem` | [birkhoffAverage_apply_sub_birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-apply-sub-birkhoffaverage--a0bfd9c440a08ae671f14144.md) | 144 | `result-track:a0bfd9c440a08ae671f141440c4049284ec9d7b5163dcc0adc2c061d44279ed5` |
| 20 | `theorem` | [birkhoffAverage_comp_sub_birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Variant51d7060fef222b844a4352201bd509fcf5c3cc75f4c55e9eaad27753279d6ea0.lean/declarations/birkhoffaverage-comp-sub-birkhoffaverage--701a832b40681508f1391a34.md) | 152 | `result-track:701a832b40681508f1391a348fd189bd3ca07345bab3d34542fcf049d6c7e944` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
