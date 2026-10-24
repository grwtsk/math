# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinRange.Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2be5fa87cd22fcff392118d535fa807e61b7d8c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2be5fa87cd22fcff392118d535fa807e61b7d8c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.OfFn` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Perm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finRange_eq_pmap_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/finrange-eq-pmap-range--5b670568607e626e6906edcf.md) | 25 | `result-track:5b670568607e626e6906edcf62c111ed5d67aeb6ca1bdd23e566646ac5f7838b` |
| 2 | `theorem` | [mem_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/mem-finrange--85a1787646750fcedbd22780.md) | 29 | `result-track:85a1787646750fcedbd22780847ccc9a8fd8962de943173e4d0c4b886012be4e` |
| 3 | `theorem` | [nodup_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/nodup-finrange--d5ca498201a7283038692381.md) | 36 | `result-track:d5ca498201a7283038692381b6d5ce8d20c53b9055afcf62a889b75dc0543577` |
| 4 | `theorem` | [finRange_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/finrange-eq-nil--2f8b1ac4735fcb24f4b0707c.md) | 41 | `result-track:2f8b1ac4735fcb24f4b0707c3d901a2101554b170d49bfaa500f0961539ccd9c` |
| 5 | `theorem` | [pairwise_lt_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/pairwise-lt-finrange--9e7336f28086957005bb2acd.md) | 44 | `result-track:9e7336f28086957005bb2acd821c9e3e3365fc8010d8715024a23efc665f0513` |
| 6 | `theorem` | [pairwise_le_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/pairwise-le-finrange--e8b8de12ed3f9e00f27e2aca.md) | 48 | `result-track:e8b8de12ed3f9e00f27e2aca25e80a84350cfe8f4a553e4837b9b1dc28131ef8` |
| 7 | `lemma` | [count_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/count-finrange--6fd431f30144038c450f2a19.md) | 53 | `result-track:6fd431f30144038c450f2a1976a462e8664bcc5338ec7c9726be3d142148be4f` |
| 8 | `theorem` | [get_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/get-finrange--0c502e70194c6290356de084.md) | 56 | `result-track:0c502e70194c6290356de0841a7782b54097458cc36e10162e9ad922b0d63dac` |
| 9 | `theorem` | [finRange_map_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/finrange-map-get--404e2d66cd5144baa236414f.md) | 61 | `result-track:404e2d66cd5144baa236414f4c0ef567db597640d129057ab0b6ad2fbc2aa425` |
| 10 | `theorem` | [finRange_map_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/finrange-map-getelem--21e73099ea562b4b694ff1a1.md) | 65 | `result-track:21e73099ea562b4b694ff1a1727a372c6d32abc96a57d28db21b9566c203ed11` |
| 11 | `theorem` | [idxOf_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/idxof-finrange--17803af9d0def310f9c5cfcc.md) | 68 | `result-track:17803af9d0def310f9c5cfccb7b0fa088a4ef3dfc53e1b09eabc16bb72b76ce1` |
| 12 | `theorem` | [map_coe_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/map-coe-finrange--39ef7a8c1a9c23e79510a0f0.md) | 74 | `result-track:39ef7a8c1a9c23e79510a0f00b0617a9b62adcbf59b7473bafbdd307efdc7c25` |
| 13 | `theorem` | [finRange_succ_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/finrange-succ-eq-map--1f121e763941556164fb6925.md) | 77 | `result-track:1f121e763941556164fb692585e214420a9efc254c79788e627c4b9a940c25f6` |
| 14 | `theorem` | [ofFn_eq_pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/offn-eq-pmap--3fe471b705a1b429f10c4cfb.md) | 83 | `result-track:3fe471b705a1b429f10c4cfb8cba4d1947f215f2493473dea4a918aa1ad01f15` |
| 15 | `theorem` | [ofFn_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/offn-id--d5bd9300d0252c624db7dad9.md) | 88 | `result-track:d5bd9300d0252c624db7dad90949d41e364f1c3283da54d0034365d20e298d5d` |
| 16 | `theorem` | [ofFn_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/offn-eq-map--c8c63a0fa429055a7728966e.md) | 91 | `result-track:c8c63a0fa429055a7728966e93c1969edff9da88ceaae628ce81c8313c153103` |
| 17 | `theorem` | [nodup_ofFn_ofInjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/nodup-offn-ofinjective--08e66979a7d98743f00b5ccc.md) | 94 | `result-track:08e66979a7d98743f00b5ccca79e1218f9735f0bb95d4e92fc67d421036fb460` |
| 18 | `theorem` | [nodup_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/nodup-offn--69ecdfc490f590241f9fb3cb.md) | 99 | `result-track:69ecdfc490f590241f9fb3cbed7c3841149bd0a87a7e8722418d90256a67a9b7` |
| 19 | `theorem` | [Equiv.Perm.map_finRange_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/equiv-perm-map-finrange-perm--c9c7d4811d327376a67d7bdd.md) | 113 | `result-track:c9c7d4811d327376a67d7bdda15280b9b0ebc7147f502b939ec2b53317a00a0d` |
| 20 | `theorem` | [Equiv.Perm.ofFn_comp_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974.lean/declarations/equiv-perm-offn-comp-perm--1e31b7301b4975501440687c.md) | 120 | `result-track:1e31b7301b4975501440687c08574f5644fe1d5f372d6610c9b7cab12f74fe9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
