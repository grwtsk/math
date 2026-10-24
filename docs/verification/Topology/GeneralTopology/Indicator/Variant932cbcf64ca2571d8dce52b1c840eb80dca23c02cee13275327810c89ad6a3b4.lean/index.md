# Verification target: GRWTSK.Topology.GeneralTopology.Indicator.Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c59ef3ab1a7d551186ffbec150f636eebba6725f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c59ef3ab1a7d551186ffbec150f636eebba6725f`.

Source path: `GRWTSK/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean.json)

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
| 1 | `theorem` | [exists_eLpNorm_indicator_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/exists-elpnorm-indicator-le--074f32678603fbbb353f5218.md) | 39 | `result-track:074f32678603fbbb353f521873df7cab598800c53f3e2d866baf17b60b5a06ec` |
| 2 | `theorem` | [_root_.HasCompactSupport.memLp_of_bound](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/root-hascompactsupport-memlp-of-bound--d5fe0e4328bb7d1a9c61a5bd.md) | 70 | `result-track:d5fe0e4328bb7d1a9c61a5bd6ddb5c49532570fe9a8a0fa433e3676bbac6b37f` |
| 3 | `theorem` | [_root_.HasCompactSupport.memLp_of_enorm_bound](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/root-hascompactsupport-memlp-of-enorm-bound--da6a35c16fc9c8cdeea8a364.md) | 78 | `result-track:da6a35c16fc9c8cdeea8a3642979a5543ad039c9421452c47adcf035ac696aa2` |
| 4 | `theorem` | [_root_.Continuous.memLp_of_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/root-continuous-memlp-of-hascompactsupport--41db78e37a8f51c9a73b59fb.md) | 88 | `result-track:41db78e37a8f51c9a73b59fb0a8194358761553d9f15180155fa6c3276028633` |
| 5 | `def` | [indicatorConstLp](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/indicatorconstlp--1b2b9e73e3e2b977b5e2bee9.md) | 103 | `declaration-track:1b2b9e73e3e2b977b5e2bee9231e1f7c5806099111953c3c8104f066b146bd9b` |
| 6 | `theorem` | [indicatorConstLp_add](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/indicatorconstlp-add--15a4b4befeb5d603fe90c308.md) | 107 | `result-track:15a4b4befeb5d603fe90c308c6419f05780a6f89454c24dfcdaf1ff67ee12e26` |
| 7 | `theorem` | [indicatorConstLp_sub](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/indicatorconstlp-sub--9adfa934902cb565948e12d2.md) | 114 | `result-track:9adfa934902cb565948e12d2c759ca1b0e02565b0aba63ee808816e6b93bbf60` |
| 8 | `theorem` | [indicatorConstLp_coeFn](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/indicatorconstlp-coefn--e27edbc8dae2a10c10ab5d52.md) | 120 | `result-track:e27edbc8dae2a10c10ab5d521dfe75c2dfd2ad285bc6d5b5619f7937251a3ea1` |
| 9 | `theorem` | [indicatorConstLp_coeFn_mem](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/indicatorconstlp-coefn-mem--0e65e45982c2f48d606aef56.md) | 123 | `result-track:0e65e45982c2f48d606aef56a747350b629cdb21d798cf6b8bdf7e3c424e6548` |
| 10 | `theorem` | [indicatorConstLp_coeFn_notMem](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/indicatorconstlp-coefn-notmem--dffd210a6ac5edda3ed676b6.md) | 126 | `result-track:dffd210a6ac5edda3ed676b68877130098882e94881811518de674a8280e9d36` |
| 11 | `theorem` | [norm_indicatorConstLp](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/norm-indicatorconstlp--c5bab3f060098446f9aacafa.md) | 129 | `result-track:c5bab3f060098446f9aacafa920f70967aa64a9cbf1dd9b1fd4d4f564a03d537` |
| 12 | `theorem` | [norm_indicatorConstLp_top](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/norm-indicatorconstlp-top--a2e134b0982986d4315500b5.md) | 135 | `result-track:a2e134b0982986d4315500b53b0988a0f57bb8b42e2a3dcdf703414414a11bd8` |
| 13 | `theorem` | [norm_indicatorConstLp'](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/norm-indicatorconstlp--aef1339ce5fbcc5a79718453.md) | 141 | `result-track:aef1339ce5fbcc5a79718453fdd3a3391065e0df5fe69a442af7514f5cd66261` |
| 14 | `theorem` | [norm_indicatorConstLp_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/norm-indicatorconstlp-le--80913d286acedbeda7360c74.md) | 148 | `result-track:80913d286acedbeda7360c744770811dd5e9700784b9db748d81420068eaad96` |
| 15 | `theorem` | [nnnorm_indicatorConstLp_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/nnnorm-indicatorconstlp-le--01dd61cb880a3481beb4d260.md) | 157 | `result-track:01dd61cb880a3481beb4d26023c5cf6c06ca78fb061c929d5b5522a3863ed87f` |
| 16 | `theorem` | [enorm_indicatorConstLp_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/enorm-indicatorconstlp-le--0040ae28800648f83d4a6241.md) | 161 | `result-track:0040ae28800648f83d4a62414a312f574d5ca13ab50c12092b5cb75658566f02` |
| 17 | `theorem` | [edist_indicatorConstLp_eq_enorm](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/edist-indicatorconstlp-eq-enorm--a1b15b904cdd8351ecc5ff40.md) | 166 | `result-track:a1b15b904cdd8351ecc5ff40d74739f30fbcb15e672e8d71c26d07c1b4b6f6d3` |
| 18 | `theorem` | [dist_indicatorConstLp_eq_norm](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/dist-indicatorconstlp-eq-norm--78739ce6c8af6d56b269d47e.md) | 173 | `result-track:78739ce6c8af6d56b269d47e00b09ae7be8b2eab1a386edf99f11feadaf6f379` |
| 19 | `theorem` | [tendsto_indicatorConstLp_set](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/tendsto-indicatorconstlp-set--ec822d3cf49979e5df18ff7e.md) | 182 | `result-track:ec822d3cf49979e5df18ff7ebd3141973d51a2e1a4eb3377fa11b78554bb2a26` |
| 20 | `theorem` | [continuous_indicatorConstLp_set](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/continuous-indicatorconstlp-set--406aaddc69815e236b781a92.md) | 196 | `result-track:406aaddc69815e236b781a92982ca4a2f202a6e3d150886fe5d34a09b9702bdd` |
| 21 | `theorem` | [indicatorConstLp_empty](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/indicatorconstlp-empty--1bc8e26599847fa3a2939277.md) | 203 | `result-track:1bc8e26599847fa3a29392771b174f6fd12aedb5d6aa29666ec803e9a14c99ff` |
| 22 | `theorem` | [indicatorConstLp_inj](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/indicatorconstlp-inj--4ad7db4f23717902558ce6cf.md) | 207 | `result-track:4ad7db4f23717902558ce6cf7e8ef9be04e3c9c2b4e368fada1f86e1551c3576` |
| 23 | `theorem` | [memLp_add_of_disjoint](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/memlp-add-of-disjoint--906577717ba83d64dd7597fc.md) | 212 | `result-track:906577717ba83d64dd7597fc06e67284d035d38b8e26101a08682a9915fe63a4` |
| 24 | `theorem` | [indicatorConstLp_disjoint_union](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/indicatorconstlp-disjoint-union--9a90b90449da5f11ffe2303e.md) | 221 | `result-track:9a90b90449da5f11ffe2303ed0056d45cf58e6d3bf6e39334dee9ac53beffaf8` |
| 25 | `def` | [Lp.const](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/lp-const--e6b03a79ebc5791f5d13b6dd.md) | 236 | `declaration-track:e6b03a79ebc5791f5d13b6ddfefd9929e9402bd982048d211a37b3322909233b` |
| 26 | `lemma` | [Lp.coeFn_const](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/lp-coefn-const--036f0a8dac578a0bb85c0e75.md) | 241 | `result-track:036f0a8dac578a0bb85c0e75517b9ed7581e825015eb4e7ae43beb167358882b` |
| 27 | `lemma` | [Lp.const_val](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/lp-const-val--9259341569b7a499f627597d.md) | 244 | `result-track:9259341569b7a499f627597dad30f24c06f4e1aacb4c57ea2cd895aee969dcb6` |
| 28 | `lemma` | [MemLp.toLp_const](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/memlp-tolp-const--e15d8c40aaa3974278486855.md) | 247 | `result-track:e15d8c40aaa397427848685594bcb6041863270f7c50a8f13ae434f0e0999861` |
| 29 | `lemma` | [indicatorConstLp_univ](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/indicatorconstlp-univ--d58c23b499099e68bf49329f.md) | 250 | `result-track:d58c23b499099e68bf49329f22999bc145921bffb2fff1bb800f6530598c98de` |
| 30 | `theorem` | [Lp.norm_const](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/lp-norm-const--c71aaef969cd078835917ebb.md) | 255 | `result-track:c71aaef969cd078835917ebbcd34cb065bc638dc77c473a4659b960d96cf93bd` |
| 31 | `theorem` | [Lp.norm_const'](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/lp-norm-const--d997d035c08a8419dfe7eb78.md) | 262 | `result-track:d997d035c08a8419dfe7eb7839fea1c5c15c1101849296136630971654c6c5e3` |
| 32 | `theorem` | [Lp.norm_const_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/lp-norm-const-le--f97523694bb8306ccb58ee24.md) | 268 | `result-track:f97523694bb8306ccb58ee2431d81b5351ea9c42ee608687a769c357d2d6bbdc` |
| 33 | `def` | [Lp.constₗ](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/lp-const--3128ad8eb4e442033dbc4200.md) | 273 | `declaration-track:3128ad8eb4e442033dbc420003ac78d4d4ed3a77fcc28beedb9f2c1fc65be7ce` |
| 34 | `def` | [Lp.constL](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/lp-constl--1060ad1cd8ddf8b93dcc9b73.md) | 281 | `declaration-track:1060ad1cd8ddf8b93dcc9b732b38f00e5b3a3cf9ab8ce84805c4f530864a45ad` |
| 35 | `theorem` | [Lp.norm_constL_le](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/lp-norm-constl-le--384939d28dfe5902dedd51c5.md) | 286 | `result-track:384939d28dfe5902dedd51c55a952d95b432f69e0412a28447c0c78ac63c68b2` |
| 36 | `theorem` | [indicatorConstLp_compMeasurePreserving](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/indicatorconstlp-compmeasurepreserving--f306277b6fa592bb98bd702a.md) | 297 | `result-track:f306277b6fa592bb98bd702ae18afb91161261214a6fb16e5640af09d6c9d2b0` |
| 37 | `theorem` | [indicatorConstLp_eq_toSpanSingleton_compLp](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/declarations/indicatorconstlp-eq-tospansingleton-complp--76bd4bf6e113dbe9cf0beae9.md) | 306 | `result-track:76bd4bf6e113dbe9cf0beae9226d705abf4570fa050d2d60aafdd2b11b87456b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
