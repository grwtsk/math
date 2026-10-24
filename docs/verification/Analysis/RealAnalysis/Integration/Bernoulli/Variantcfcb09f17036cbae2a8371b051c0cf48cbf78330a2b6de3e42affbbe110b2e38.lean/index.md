# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Bernoulli.Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36718b25a3ee52e76c4b7eb0b3103bf48a974705",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36718b25a3ee52e76c4b7eb0b3103bf48a974705`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure--48a75d69280858d48a627bfe.md) | 55 | `declaration-track:48a75d69280858d48a627bfe3b5e3e33569d4ff09a55280927180b40c429fafb` |
| 2 | `lemma` | [bernoulliMeasure_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-def--8f25398d73035aca4ad592db.md) | 61 | `result-track:8f25398d73035aca4ad592db989ddd804bf47b70844b6bdb94cfb37f5ca5aca8` |
| 3 | `lemma` | [bernoulliMeasure_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-zero--7f15b455789bf3f72e0af0bd.md) | 65 | `result-track:7f15b455789bf3f72e0af0bd71a1c93e4f4c37b69c81f1983000843ce88ad417` |
| 4 | `lemma` | [bernoulliMeasure_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-one--a0dc7dd7833bae4510603f74.md) | 69 | `result-track:a0dc7dd7833bae4510603f749312134a9b6d457f2b2a57987098a816ba6314da` |
| 5 | `lemma` | [bernoulliMeasure_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-apply--981987b23f3e48c07a97bc8b.md) | 72 | `result-track:981987b23f3e48c07a97bc8bd7e405daae073122135fd8ac78ea39c363300566` |
| 6 | `lemma` | [bernoulliMeasure_real_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-real-apply--e44f3c798133fc2ee26094ae.md) | 84 | `result-track:e44f3c798133fc2ee26094aeba4501866a0d047cda93da450eb8e60c620d7106` |
| 7 | `lemma` | [bernoulliMeasure_apply_of_mem_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-apply-of-mem-of-mem--57dfc7f74de32eecce2ac388.md) | 97 | `result-track:57dfc7f74de32eecce2ac3884ee112f279654b5d0cd4c3855c5b22f3b1de3673` |
| 8 | `lemma` | [bernoulliMeasure_real_apply_of_mem_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-real-apply-of-mem-of-mem--86db289d42433148ea458e60.md) | 104 | `result-track:86db289d42433148ea458e606c617fea524ea9cbfb3501ead631a7e848110a3d` |
| 9 | `lemma` | [bernoulliMeasure_apply_of_mem_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-apply-of-mem-of-notmem--90b6eff5bea9fec803d741ae.md) | 111 | `result-track:90b6eff5bea9fec803d741ae7b665d3ae749553d9cea635564d6dcf68f15b203` |
| 10 | `lemma` | [bernoulliMeasure_real_apply_of_mem_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-real-apply-of-mem-of-notmem--7705d6a9aaa55be6d2a02bd3.md) | 118 | `result-track:7705d6a9aaa55be6d2a02bd318c0660a476148fab4c054d56da7bd5225eb4b69` |
| 11 | `lemma` | [bernoulliMeasure_apply_of_notMem_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-apply-of-notmem-of-mem--13f90832a8d718c16b30a4f4.md) | 125 | `result-track:13f90832a8d718c16b30a4f407ccbd410751529c4cfd7e97792ebc63f76cbe61` |
| 12 | `lemma` | [bernoulliMeasure_real_apply_of_notMem_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-real-apply-of-notmem-of-mem--2ed085a052a83b814cb5f74d.md) | 132 | `result-track:2ed085a052a83b814cb5f74d171f107344a8b481c632946ee78b31f8ac383b05` |
| 13 | `lemma` | [bernoulliMeasure_apply_of_notMem_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-apply-of-notmem-of-notmem--bba518254dd056ffd514b028.md) | 139 | `result-track:bba518254dd056ffd514b028f700e0742435b8e819b88ee3f2ce47a478c4bbef` |
| 14 | `lemma` | [bernoulliMeasure_real_apply_of_notMem_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-real-apply-of-notmem-of-notmem--061ac06f6d314d6b8ef8c568.md) | 146 | `result-track:061ac06f6d314d6b8ef8c5688752314a7e116c97d9c7e12b448c4bd3361bb96c` |
| 15 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/instance--a39265f55c718421bf898df9.md) | 152 | `declaration-track:a39265f55c718421bf898df939846a03f179f4af91cdd501bce1d557a3278f75` |
| 16 | `theorem` | [bernoulliMeasure_self_eq_dirac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/bernoullimeasure-self-eq-dirac--4183b96914c793d488b9061c.md) | 156 | `result-track:4183b96914c793d488b9061cc763faa8a31126a6cb028ef15c639537b2ac9086` |
| 17 | `theorem` | [map_bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/map-bernoullimeasure--42ebbc65f92dd77b40318123.md) | 161 | `result-track:42ebbc65f92dd77b40318123a954d26fec63463eda7f0a4d541485b1310e3faa` |
| 18 | `theorem` | [map_bernoulliMeasure'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/map-bernoullimeasure--8c9809c73a9dffa1cc6cd1f8.md) | 169 | `result-track:8c9809c73a9dffa1cc6cd1f863e85754e6ede74b97a5936d7822a261f0b0b28c` |
| 19 | `lemma` | [eq_bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/eq-bernoullimeasure--8dfa152986bb9c98ab959ff4.md) | 173 | `result-track:8dfa152986bb9c98ab959ff494f5b819ea5c8e685b062daa5eaeb3c5e5770b6a` |
| 20 | `lemma` | [integrable_bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/integrable-bernoullimeasure--ea20c056c7d5e98aef12534e.md) | 186 | `result-track:ea20c056c7d5e98aef12534eb4b3b6f81d065968e76db9c227ce5c3b576e5020` |
| 21 | `lemma` | [integral_bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/integral-bernoullimeasure--372cf187d6d582850c4bc584.md) | 193 | `result-track:372cf187d6d582850c4bc584337beb5f63666cc721d22105f1d1b4ea2ee7dc56` |
| 22 | `theorem` | [hasLaw_indicator_bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/haslaw-indicator-bernoullimeasure--cbbe46710eb8e711798608dc.md) | 208 | `result-track:cbbe46710eb8e711798608dc02d9ab0e51afe30e852b0460289b69c6332bf296` |
| 23 | `theorem` | [hasLaw_indicator_one_bernoulliMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/declarations/haslaw-indicator-one-bernoullimeasure--8dfafb04b9a9531e25bcecf6.md) | 220 | `result-track:8dfafb04b9a9531e25bcecf60a67e6f74e54895347f428e806272e9d61f0f221` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
