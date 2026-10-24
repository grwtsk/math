# Verification target: GRWTSK.Topology.GeneralTopology.EulerMascheroni.Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45a45b26c3b72e2e2e863d3ea55ef8e4a8412916",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45a45b26c3b72e2e2e863d3ea55ef8e4a8412916`.

Source path: `GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean.json)

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
| 1 | `def` | [eulerMascheroniSeq](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/eulermascheroniseq--f6478a7502149f58889b8359.md) | 58 | `declaration-track:f6478a7502149f58889b8359f134fe67c6bb582452cebdc9ad1e6ef7fea1779f` |
| 2 | `lemma` | [eulerMascheroniSeq_zero](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/eulermascheroniseq-zero--3d36f2782d2e9d40c1aa10d9.md) | 60 | `result-track:3d36f2782d2e9d40c1aa10d9d7d9d8bd368b640c9150eb93b9634fe84c9ceff3` |
| 3 | `lemma` | [strictMono_eulerMascheroniSeq](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/strictmono-eulermascheroniseq--86cc9c0c0675a890facba2d8.md) | 63 | `result-track:86cc9c0c0675a890facba2d810904e3141b7a6a158c62e72d69809c0a797f6a7` |
| 4 | `lemma` | [one_half_lt_eulerMascheroniSeq_six](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/one-half-lt-eulermascheroniseq-six--e53d5a2d8990573e57d16f55.md) | 75 | `result-track:e53d5a2d8990573e57d16f556f15aaa0cbe960e6c65f6d435bca055d72d2debc` |
| 5 | `def` | [eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/eulermascheroniseq--27212d4ad93c32592991d1dd.md) | 90 | `declaration-track:27212d4ad93c32592991d1ddb8cbfed017416e77d89132f9aba5b2c36875db87` |
| 6 | `lemma` | [eulerMascheroniSeq'_one](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/eulermascheroniseq-one--49cc13a810750c38d1f6c3fa.md) | 93 | `result-track:49cc13a810750c38d1f6c3fa9dcaacf245c93e8e16c97bd17a474e83da2ce93f` |
| 7 | `lemma` | [strictAnti_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/strictanti-eulermascheroniseq--2d85c80c6c34f0d67118fc7f.md) | 96 | `result-track:2d85c80c6c34f0d67118fc7f172f11f4e691c0a7fe6ff48845b490d27f12e085` |
| 8 | `lemma` | [eulerMascheroniSeq'_six_lt_two_thirds](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/eulermascheroniseq-six-lt-two-thirds--6893c6f4c343d1b2adc0d106.md) | 110 | `result-track:6893c6f4c343d1b2adc0d106599a8bbe117e36155277b1eabd09685780b80a79` |
| 9 | `lemma` | [eulerMascheroniSeq_lt_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/eulermascheroniseq-lt-eulermascheroniseq--87930ad865233caed966f7be.md) | 124 | `result-track:87930ad865233caed966f7be8cfe4a6390a1d1662d47a0ec0e087103bcbd0d6d` |
| 10 | `def` | [eulerMascheroniConstant](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/eulermascheroniconstant--70c9b281a73bd16f8e0807ec.md) | 138 | `declaration-track:70c9b281a73bd16f8e0807ec808258d45112b2b7c0f1ccb75a2681531f9bf8b5` |
| 11 | `lemma` | [tendsto_eulerMascheroniSeq](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/tendsto-eulermascheroniseq--b139ca36df31f7a4e8cb2bb2.md) | 140 | `result-track:b139ca36df31f7a4e8cb2bb24173de1c1c24656fb4c4710e8264aa374f52c168` |
| 12 | `lemma` | [tendsto_harmonic_sub_log_add_one](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/tendsto-harmonic-sub-log-add-one--1af080203ea81b68b71cd985.md) | 146 | `result-track:1af080203ea81b68b71cd985428062bda6039aa216738ff598fdfd464aab5587` |
| 13 | `lemma` | [tendsto_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/tendsto-eulermascheroniseq--1f638f9667b6441228e9787f.md) | 150 | `result-track:1f638f9667b6441228e9787fe32f909fd02bbf88990e9c88fc454c805f146a95` |
| 14 | `lemma` | [tendsto_harmonic_sub_log](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/tendsto-harmonic-sub-log--a4ab650f769352b7ed69644b.md) | 160 | `result-track:a4ab650f769352b7ed69644b15cb1496d043d9823dc346d443aef8eba38c9f7e` |
| 15 | `lemma` | [eulerMascheroniSeq_lt_eulerMascheroniConstant](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/eulermascheroniseq-lt-eulermascheroniconstant--e556b216bd2b278fa4e7b7d1.md) | 166 | `result-track:e556b216bd2b278fa4e7b7d1c93dd732324cdf0af45c62f8e5792178b2ed8958` |
| 16 | `lemma` | [eulerMascheroniConstant_lt_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/eulermascheroniconstant-lt-eulermascheroniseq--4998d044dde813648005380c.md) | 171 | `result-track:4998d044dde813648005380cc7ffd427219cb6adc72afd3f1681c7a661660d16` |
| 17 | `lemma` | [one_half_lt_eulerMascheroniConstant](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/one-half-lt-eulermascheroniconstant--f02f217769cbedb284353c88.md) | 177 | `result-track:f02f217769cbedb284353c8863b4676f0ac7aa0206c07bdc53557983180255fd` |
| 18 | `lemma` | [eulerMascheroniConstant_lt_two_thirds](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/declarations/eulermascheroniconstant-lt-two-thirds--63551c0dea0f5ac71c328fb6.md) | 181 | `result-track:63551c0dea0f5ac71c328fb6573eebb9472ac98e65bcbaa2f3c6b9ed6d1e22b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
