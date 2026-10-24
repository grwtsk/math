# Verification target: GRWTSK.Topology.GeneralTopology.EulerMascheroni.Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "697935c25a2317dcbe16616ee8159d3a476d6fe9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `697935c25a2317dcbe16616ee8159d3a476d6fe9`.

Source path: `GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean.json)

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
| 1 | `def` | [eulerMascheroniSeq](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/eulermascheroniseq--85ffcc159201dbfcb75dae12.md) | 50 | `declaration-track:85ffcc159201dbfcb75dae120c1b581666180a096ce0c99c0d7bd172a19b3ccb` |
| 2 | `lemma` | [eulerMascheroniSeq_zero](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/eulermascheroniseq-zero--9f87aa06f372574e9b98b4cb.md) | 52 | `result-track:9f87aa06f372574e9b98b4cbddffe8c1c538ad9e3ec70f3e1e5609fa39465dd4` |
| 3 | `lemma` | [strictMono_eulerMascheroniSeq](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/strictmono-eulermascheroniseq--ed806e941ff7e37893c73562.md) | 55 | `result-track:ed806e941ff7e37893c735623338d1bd3effc5bceaea200773a3478a1a24d924` |
| 4 | `lemma` | [one_half_lt_eulerMascheroniSeq_six](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/one-half-lt-eulermascheroniseq-six--e48f12746453e4d76dce1aad.md) | 67 | `result-track:e48f12746453e4d76dce1aad7a5f01d59627dd2c7a51ea6c2f6ada0379dc406f` |
| 5 | `def` | [eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/eulermascheroniseq--853952a0faf5c2ef38d6fef5.md) | 82 | `declaration-track:853952a0faf5c2ef38d6fef5da9abe975650424d5aa47a02a3b47fe5a56f6922` |
| 6 | `lemma` | [eulerMascheroniSeq'_one](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/eulermascheroniseq-one--d838b4c76877a3f7518c6c79.md) | 85 | `result-track:d838b4c76877a3f7518c6c79cbf10b5a180693fb43a50652dc685d25e65f31ad` |
| 7 | `lemma` | [strictAnti_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/strictanti-eulermascheroniseq--917c7baff3d8c07494b74fe2.md) | 88 | `result-track:917c7baff3d8c07494b74fe279ee29bd0d54d6409b41984e348608ba0a9d0525` |
| 8 | `lemma` | [eulerMascheroniSeq'_six_lt_two_thirds](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/eulermascheroniseq-six-lt-two-thirds--acfbf38fe69b2024b5c83837.md) | 102 | `result-track:acfbf38fe69b2024b5c838372698a56610f42f0a59e48b54c9a88ce41db58688` |
| 9 | `lemma` | [eulerMascheroniSeq_lt_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/eulermascheroniseq-lt-eulermascheroniseq--af73b613cc0a29dd76b6bf4c.md) | 116 | `result-track:af73b613cc0a29dd76b6bf4c9dc2767b868b29ba21face8668d3d41e36fa7e8a` |
| 10 | `def` | [eulerMascheroniConstant](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/eulermascheroniconstant--04a5c96647a87a22e8ee88bd.md) | 130 | `declaration-track:04a5c96647a87a22e8ee88bd52568a64a267fd83c825fe6cb6a1dd05ce36d72c` |
| 11 | `lemma` | [tendsto_eulerMascheroniSeq](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/tendsto-eulermascheroniseq--4bd3358bdc7f1bf74696cb6f.md) | 132 | `result-track:4bd3358bdc7f1bf74696cb6f10fa6286ade2d6fe059f2226495a30d72f843295` |
| 12 | `lemma` | [tendsto_harmonic_sub_log_add_one](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/tendsto-harmonic-sub-log-add-one--8da84c25f19bd63aed0947ad.md) | 138 | `result-track:8da84c25f19bd63aed0947add248fa0bde1fec696b50b2706231b401568a39eb` |
| 13 | `lemma` | [tendsto_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/tendsto-eulermascheroniseq--d5841cd3ec496288ffe65a0f.md) | 142 | `result-track:d5841cd3ec496288ffe65a0fa1d0c199664ea5fe48823bda1db37d7525e9ece3` |
| 14 | `lemma` | [tendsto_harmonic_sub_log](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/tendsto-harmonic-sub-log--6587f3b2d403659fa0d44769.md) | 152 | `result-track:6587f3b2d403659fa0d4476963daf74199d667ce2e9eebe490b085d9c2d1a112` |
| 15 | `lemma` | [eulerMascheroniSeq_lt_eulerMascheroniConstant](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/eulermascheroniseq-lt-eulermascheroniconstant--4484bf6bacc5f1f1b14f80c7.md) | 158 | `result-track:4484bf6bacc5f1f1b14f80c7d00d5a9b1b61fcb4ef8953f445e270358e69d076` |
| 16 | `lemma` | [eulerMascheroniConstant_lt_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/eulermascheroniconstant-lt-eulermascheroniseq--2f2ff96bf397027219fdeedd.md) | 163 | `result-track:2f2ff96bf397027219fdeedd7bff2984c13a7484e4375f30850ad4480f2a995c` |
| 17 | `lemma` | [one_half_lt_eulerMascheroniConstant](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/one-half-lt-eulermascheroniconstant--87fec791d754608d6a9051ce.md) | 169 | `result-track:87fec791d754608d6a9051ce56f5961272f3982b34320617c986139732573523` |
| 18 | `lemma` | [eulerMascheroniConstant_lt_two_thirds](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variantd2c8404c86cf9cc511aa4eee25ac36ccb17c073b4a3328697fc40a2523fc9e94.lean/declarations/eulermascheroniconstant-lt-two-thirds--ce488f2b618db0eb5ab0a6ab.md) | 173 | `result-track:ce488f2b618db0eb5ab0a6ab944e055faf705b2a3ff4cd156caae7c13c55d6fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
