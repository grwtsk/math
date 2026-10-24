# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.EssSup.Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b43fdafefd196defd1ec72afe51863668c9b989",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b43fdafefd196defd1ec72afe51863668c9b989`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ENNReal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [essSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup--304d442800b88f92fb19ff21.md) | 44 | `declaration-track:304d442800b88f92fb19ff218d9384090658a7617a6409630faee4aacdb728bb` |
| 2 | `def` | [essInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/essinf--1e645df21811d41069015273.md) | 50 | `declaration-track:1e645df21811d41069015273d9386738aeb4930528e88dc5a4e53b62c100468a` |
| 3 | `theorem` | [essSup_congr_ae](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-congr-ae--4e74a2797ab22ef701081d5c.md) | 54 | `result-track:4e74a2797ab22ef701081d5cdeb74526980813990596ed02a5d0fb950ffd2d0c` |
| 4 | `theorem` | [essInf_congr_ae](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/essinf-congr-ae--9cd218e38757d85958ae61e2.md) | 58 | `result-track:9cd218e38757d85958ae61e2dd3da170a037dd0e6a37ac422375086da92a1714` |
| 5 | `theorem` | [essSup_const'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-const--6db46a3a379820cd6d3edf7c.md) | 63 | `result-track:6db46a3a379820cd6d3edf7c601805193e6864a0a0b9588d1a9e5d4eceb53bd6` |
| 6 | `theorem` | [essInf_const'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/essinf-const--eeb69300addd37acb0a7e195.md) | 68 | `result-track:eeb69300addd37acb0a7e1952bb2a8d613de0f59747ca2d72009b6fa02cc087c` |
| 7 | `theorem` | [essSup_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-const--d2348c8c3cabda07a4f663a3.md) | 72 | `result-track:d2348c8c3cabda07a4f663a375ea13cd528f94c5a0db208ee4fa51165420beb2` |
| 8 | `theorem` | [essInf_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/essinf-const--fb1bb7fa4fc58ea27b5355b5.md) | 76 | `result-track:fb1bb7fa4fc58ea27b5355b5037d415bb0c089525e041a213987baf6bf00a0e3` |
| 9 | `theorem` | [essSup_eq_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-eq-sinf--714231aab3cdf6e62d47a3fd.md) | 86 | `result-track:714231aab3cdf6e62d47a3fd0302538540d305e4999232129fb8850caae28346` |
| 10 | `theorem` | [essInf_eq_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/essinf-eq-ssup--ce285b7dc59a406065c1381f.md) | 92 | `result-track:ce285b7dc59a406065c1381fec90594ea303346a8b80f1c2af6d3283bc6e3f29` |
| 11 | `theorem` | [ae_lt_of_essSup_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/ae-lt-of-esssup-lt--7a45672bf58e10a471eafa4c.md) | 98 | `result-track:7a45672bf58e10a471eafa4cc6903fb84b1ebe6a19bd8b410fbcd4c21b5215f6` |
| 12 | `theorem` | [ae_lt_of_lt_essInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/ae-lt-of-lt-essinf--043054ba201cfc41b0a28fbd.md) | 104 | `result-track:043054ba201cfc41b0a28fbd0d2076890769b85f548e94dbac8116aa51390bd2` |
| 13 | `theorem` | [ae_le_essSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/ae-le-esssup--cabcd698d222a1be6db8bce8.md) | 112 | `result-track:cabcd698d222a1be6db8bce867396d914ca78561d20e871881afbb2d18757000` |
| 14 | `theorem` | [ae_essInf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/ae-essinf-le--a0243cb4c979f0966237d29c.md) | 118 | `result-track:a0243cb4c979f0966237d29c8658b46187267c7cb99e029358d457ac7e68e723` |
| 15 | `theorem` | [meas_essSup_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/meas-esssup-lt--52a2304d62a5df8d281998a2.md) | 124 | `result-track:52a2304d62a5df8d281998a245fbf4d496cac1fc52e339ad0ac6d14dba01f179` |
| 16 | `theorem` | [meas_lt_essInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/meas-lt-essinf--334b03f4005c8e2172465acd.md) | 131 | `result-track:334b03f4005c8e2172465acd7f263415b76a93878d607a6c7f5dcc35829063bf` |
| 17 | `theorem` | [essSup_measure_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-measure-zero--38b9d0a53592faea46d43377.md) | 145 | `result-track:38b9d0a53592faea46d433774f32c3432bdae5ee6b7893da737f843c0bf451af` |
| 18 | `theorem` | [essInf_measure_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/essinf-measure-zero--fb10d38bdd9937086ce9f838.md) | 150 | `result-track:fb10d38bdd9937086ce9f838021ec387f2bbcf0321df83f653c3dd288ee29bd3` |
| 19 | `theorem` | [essSup_mono_ae](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-mono-ae--12669b7c7ed8f7a8ea9462ad.md) | 154 | `result-track:12669b7c7ed8f7a8ea9462ad2db71cd1e89dceaf96deba998ba279d091663c02` |
| 20 | `theorem` | [essInf_mono_ae](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/essinf-mono-ae--e727a1a466e3688abd95116f.md) | 158 | `result-track:e727a1a466e3688abd95116f4fd2f78d5fd3bc75b19b11102ea6c02e1be3b150` |
| 21 | `theorem` | [essSup_le_of_ae_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-le-of-ae-le--95f34b818fea7545258dbc1b.md) | 162 | `result-track:95f34b818fea7545258dbc1b185cd7e97910d53f8e0dc88a546cfcd2f28dad3d` |
| 22 | `theorem` | [le_essInf_of_ae_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/le-essinf-of-ae-le--262171830d5a5b89d60f2aab.md) | 169 | `result-track:262171830d5a5b89d60f2aab5abfbc9d64279a411145f9e9bfb1f7f3a86b6c6f` |
| 23 | `theorem` | [essSup_const_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-const-bot--ce5964ea64dbe974abe590c7.md) | 173 | `result-track:ce5964ea64dbe974abe590c71125b2370b6c8d4502e4121d38139d436a2ae50c` |
| 24 | `theorem` | [essInf_const_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/essinf-const-top--881e5be78588cf72d1d871fb.md) | 177 | `result-track:881e5be78588cf72d1d871fb6876528e59c9464e6c51f7d4bd8bb0839b2fea5c` |
| 25 | `theorem` | [OrderIso.essSup_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/orderiso-esssup-apply--cc33142dd6a2e2918e17cb8f.md) | 181 | `result-track:cc33142dd6a2e2918e17cb8f178e2076ca2d51387fd34823206c348d30361e6b` |
| 26 | `theorem` | [OrderIso.essInf_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/orderiso-essinf-apply--8fb1b1c4273393e69246c651.md) | 187 | `result-track:8fb1b1c4273393e69246c651b0c37b9a77728adb16c263edd835961adc482d15` |
| 27 | `theorem` | [essSup_mono_measure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-mono-measure--7f726185a8ea78f729dbd31c.md) | 192 | `result-track:7f726185a8ea78f729dbd31c261aa9828ce2a092af02b38ed89fd429be107794` |
| 28 | `theorem` | [essSup_mono_measure'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-mono-measure--6b352c85e938c769eaa19a31.md) | 197 | `result-track:6b352c85e938c769eaa19a314bcfa99e67d4f7413918516bfae9243ac1287f1d` |
| 29 | `theorem` | [essInf_antitone_measure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/essinf-antitone-measure--2d50d4c85b78553635a3e0f9.md) | 203 | `result-track:2d50d4c85b78553635a3e0f9cbc16874fe9bc8dde1e4bea7f39e0e83c20278e4` |
| 30 | `theorem` | [essSup_smul_measure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-smul-measure--3017e6c5f64f722ebd17582d.md) | 208 | `result-track:3017e6c5f64f722ebd17582d865131ad4cdb30ea0c376b68dabcb45ed646c101` |
| 31 | `theorem` | [essSup_comp_le_essSup_map_measure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-comp-le-esssup-map-measure--898f2d9c6e44ab9da60dfbe4.md) | 221 | `result-track:898f2d9c6e44ab9da60dfbe460a30343cca7b2afa99487ee3b6a65cfea8101e3` |
| 32 | `theorem` | [MeasurableEmbedding.essSup_map_measure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/measurableembedding-esssup-map-measure--3e32e3b62be4bf43a0826dd9.md) | 232 | `result-track:3e32e3b62be4bf43a0826dd968a3a27221c6f12393328a9e0d8385aa2850c2a8` |
| 33 | `theorem` | [essSup_map_measure_of_measurable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-map-measure-of-measurable--3b7e53b024c9f4d289636332.md) | 243 | `result-track:3b7e53b024c9f4d289636332ee2a1382c6d86a938f1a9992cf3ddf917d47becf` |
| 34 | `theorem` | [essSup_map_measure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-map-measure--c27e86730b7e3da22447557c.md) | 252 | `result-track:c27e86730b7e3da22447557c38febb0c12255949a0adbb8f13597fd084a7f524` |
| 35 | `theorem` | [essSup_indicator_eq_essSup_restrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-indicator-eq-esssup-restrict--9f3864be252a27022e3054f5.md) | 268 | `result-track:9f3864be252a27022e3054f53893b1c19b342a8972bf6220e1ecddb1407dbf02` |
| 36 | `theorem` | [ae_le_essSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/ae-le-esssup--4b0aa17e09e5807b2dcc9077.md) | 304 | `result-track:4b0aa17e09e5807b2dcc9077f47c4c9ffb38fedf6c37e7b5fe002d4758951414` |
| 37 | `theorem` | [essSup_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-eq-zero-iff--e614285b5c73398f23a597b4.md) | 309 | `result-track:e614285b5c73398f23a597b448f0a25f8fe590a1229c85dba0620bd3c5f1c7e2` |
| 38 | `theorem` | [essSup_const_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-const-mul--0904640fa79e8674dea7b77f.md) | 313 | `result-track:0904640fa79e8674dea7b77f16e1cdcdad95e20464afcc880f69280fba5ac2cb` |
| 39 | `theorem` | [essSup_mul_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-mul-le--1c9ad71893b1eb696dc5c6fc.md) | 317 | `result-track:1c9ad71893b1eb696dc5c6fcc9ee7bf741407c4e318c02baf8e35531247b3fc5` |
| 40 | `theorem` | [essSup_add_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-add-le--5a51078cd34b8149d1dfb276.md) | 321 | `result-track:5a51078cd34b8149d1dfb276afb93b0636cffc62cc7ec515c8d3c42aeb2db636` |
| 41 | `theorem` | [essSup_liminf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/esssup-liminf-le--9e5fef98150767f90351490f.md) | 325 | `result-track:9e5fef98150767f90351490fb03fc0aaa6720e62b8cd528d02803116864167c5` |
| 42 | `theorem` | [coe_essSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/EssSup/Variant7f2e18d73185633a1f2122c6b080bef66c2fce5c3a36d23abf9e08e148bd68ac.lean/declarations/coe-esssup--d4e8c46b0efea0577b3f57b7.md) | 332 | `result-track:d4e8c46b0efea0577b3f57b7359111fba928861f621a91512f0dc8079a65eda9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
