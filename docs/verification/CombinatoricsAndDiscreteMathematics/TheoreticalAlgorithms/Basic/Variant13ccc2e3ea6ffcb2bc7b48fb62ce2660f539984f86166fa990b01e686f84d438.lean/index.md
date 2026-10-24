# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e802a6cfa79328dce2d29097195699e145ec06e",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e802a6cfa79328dce2d29097195699e145ec06e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean.json)

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
| 1 | `abbrev` | [CNF.Clause](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/cnf-clause--81e5ba6bf491d0c6de158a56.md) | 31 | `declaration-track:81e5ba6bf491d0c6de158a568452b7a327b991cb17e3591dfc9cdf3758e37ae6` |
| 2 | `structure` | [CNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/cnf--44ab613a5efe2dbcae87bb65.md) | 38 | `declaration-track:44ab613a5efe2dbcae87bb651cb2ed5168530b6273833cb654fa0a08b5c5e008` |
| 3 | `def` | [Clause.eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/clause-eval--73eb53aa63314323ee63bc3e.md) | 46 | `declaration-track:73eb53aa63314323ee63bc3e61d8c4e90b1405d52cd9bad0679fc29a0fcc5241` |
| 4 | `theorem` | [Clause.eval_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/clause-eval-nil--30b7d5b2b65a6b2c20cd5413.md) | 48 | `result-track:30b7d5b2b65a6b2c20cd5413c3621b228afcb00a099b2fba60ada0cf5e980898` |
| 5 | `theorem` | [Clause.eval_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/clause-eval-cons--8730703333a8908d88c52e95.md) | 49 | `result-track:8730703333a8908d88c52e9516d92f317b0a317267f783890da353fb5a0eba89` |
| 6 | `def` | [eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/eval--04a5c2ed303ecac634c92260.md) | 55 | `declaration-track:04a5c2ed303ecac634c92260214eb16e822651925c0aad0f9d81e04a5cb6cf06` |
| 7 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/empty--9b8d4f80afb2359ced3913b5.md) | 58 | `declaration-track:9b8d4f80afb2359ced3913b5078d9424c75ae39099e717743fc6f7b33631fd10` |
| 8 | `def` | [emptyWithCapacity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/emptywithcapacity--6860ec2b51563e8714075044.md) | 61 | `declaration-track:6860ec2b51563e87140750449a6e72bea3892790ffd275d40e4103ae3c60a7a0` |
| 9 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/add--1a3c3b0a8fbdec50e6c21a2d.md) | 64 | `declaration-track:1a3c3b0a8fbdec50e6c21a2d9de2a6f23f2b5af1e66313651f61585b973a3d66` |
| 10 | `def` | [append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/append--570a639bef1b86b936b13127.md) | 67 | `declaration-track:570a639bef1b86b936b13127981399d9d29b35c42fbc233f54669052b6aa4cc0` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/instance--18301cbcbbdfc20419eb8485.md) | 70 | `declaration-track:18301cbcbbdfc20419eb8485276bc699936099d59812a090b3f46638b24ec839` |
| 12 | `theorem` | [eval_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/eval-empty--4a09954e7b968d99567a1f7a.md) | 73 | `result-track:4a09954e7b968d99567a1f7acd8c186b15815947d80603c458b4473fe6a5d3a4` |
| 13 | `theorem` | [eval_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/eval-add--9bb959eee2b3eabac48c0ef6.md) | 74 | `result-track:9bb959eee2b3eabac48c0ef6af1c7e2c4eaf869518efd9c4d46c6fe1948fd14a` |
| 14 | `theorem` | [eval_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/eval-append--0788e3e96590974d1d794b61.md) | 78 | `result-track:0788e3e96590974d1d794b6141b0a5ebfd4908a336ed9df300f830ea50a10c68` |
| 15 | `def` | [Sat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/sat--eb667fcd8bffff481d55072a.md) | 81 | `declaration-track:eb667fcd8bffff481d55072a6618cf7f0c53552c8c867f983c946d0bebf50b08` |
| 16 | `def` | [Unsat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/unsat--7671b265ea68960a8f4c0c9b.md) | 82 | `declaration-track:7671b265ea68960a8f4c0c9bd51f3d5e9d929707a2e6d49150dacd91360194b0` |
| 17 | `theorem` | [sat_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/sat-def--710ab911807479b79d8675d5.md) | 84 | `result-track:710ab911807479b79d8675d5036f03708d11fe0f08ebfd29c06e95a05314f13f` |
| 18 | `theorem` | [unsat_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/unsat-def--bb0f901e578b5940bb1c9e2e.md) | 85 | `result-track:bb0f901e578b5940bb1c9e2ed96bb005ac457e9ee112fc08a2a8f497fded29a7` |
| 19 | `theorem` | [not_unsat_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/not-unsat-empty--f95bcbeff82d1097b06d7558.md) | 88 | `result-track:f95bcbeff82d1097b06d755890988f2edc61de73b841b355614cdb433adf53ce` |
| 20 | `theorem` | [sat_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/sat-empty--e326e1b51f2ae7c2c2a2eba0.md) | 91 | `result-track:e326e1b51f2ae7c2c2a2eba0db97d40a99c63ab7bc82d7d1101dabe3073d8e70` |
| 21 | `theorem` | [unsat_add_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/unsat-add-nil--76b9347580ca37bf3ff3f0bc.md) | 94 | `result-track:76b9347580ca37bf3ff3f0bc9dde6c9b7f3645caf1516bff063ca9b4e2963996` |
| 22 | `def` | [Mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/mem--c695cc8a2051092c3291c745.md) | 102 | `declaration-track:c695cc8a2051092c3291c745b295ee98bca4372d8cc7477cd804b657446a40be` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/instance--299329a662fbb2f0b9c00600.md) | 104 | `declaration-track:299329a662fbb2f0b9c0060036a0168f7a62afc95dd0409f6d9cd29e97901348` |
| 24 | `theorem` | [not_mem_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/not-mem-nil--257bccad834f61443b150ddb.md) | 107 | `result-track:257bccad834f61443b150ddb16ed1a7da086fc0bc212a2a27a3d2df73d9f1efd` |
| 25 | `theorem` | [mem_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/mem-cons--636ca4fdd09d912567616460.md) | 108 | `result-track:636ca4fdd09d9125676164608e21f1c83b29fafbe006c0f51ac670198396365b` |
| 26 | `theorem` | [mem_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/mem-of--84ee792c7d7d47117f131864.md) | 114 | `result-track:84ee792c7d7d47117f1318641f7d485f876312680515b4780e48fe25103cbbf3` |
| 27 | `theorem` | [eval_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/eval-congr--ac6c09a807dc6e90495c03ca.md) | 119 | `result-track:ac6c09a807dc6e90495c03cad50928956097f20b67f3c27156a1d304b13092f3` |
| 28 | `def` | [Mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/mem--4a143d2dfbf6622b2c967472.md) | 140 | `declaration-track:4a143d2dfbf6622b2c967472b6599ae22b94334778b66bc8c2d295290f6320b9` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/instance--3ab5cd5ee68703b5ea1aaaff.md) | 142 | `declaration-track:3ab5cd5ee68703b5ea1aaaffd2974cddc9e436bd5aa6c19f9227a5126648c9ad` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/instance--fccfd54f5bb6838b98a5c35f.md) | 145 | `declaration-track:fccfd54f5bb6838b98a5c35fec7ffdff970fce00b85225cbeae942bac893b791` |
| 31 | `def` | [VarMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/varmem--dbad179fe1940fab1afee178.md) | 151 | `declaration-track:dbad179fe1940fab1afee17871075d4f63722c1f99224437bf5ddd3ff3eb5ee9` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/instance--d5e521b50746792675be3327.md) | 153 | `declaration-track:d5e521b50746792675be332751bb7704db47f8467e0afcc926fd06044103dc4b` |
| 33 | `theorem` | [Internal.any_not_isEmpty_iff_exists_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/internal-any-not-isempty-iff-exists-mem--361903cb2f63deac9ef4fad2.md) | 156 | `result-track:361903cb2f63deac9ef4fad26587ae448f70a7095c9834189d11bb7a1fec5709` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/instance--9fb32da2b8779d186aec58e0.md) | 183 | `declaration-track:9fb32da2b8779d186aec58e0cc02e8972fa8f0b7af8e4d660c426b9e73c8eac0` |
| 35 | `theorem` | [not_VarMem_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/not-varmem-empty--130cb049ca612ebc243c583d.md) | 186 | `result-track:130cb049ca612ebc243c583d3fa4830e050dfeba9dde3653143a7a32d223a362` |
| 36 | `theorem` | [VarMem_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/varmem-add--f36c3c0a4d8f9af9c16136de.md) | 188 | `result-track:f36c3c0a4d8f9af9c16136de82536174b4f9e7afc7713aaf25effaef9b3ece10` |
| 37 | `theorem` | [VarMem_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/varmem-of--1d5d0838af58aeb17c736541.md) | 204 | `result-track:1d5d0838af58aeb17c7365416f90a46d711eab3a662f7f996bb18895d16ea7be` |
| 38 | `theorem` | [Internal.mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/internal-mem-iff--1daab75fe77ebd8214c7ff3d.md) | 208 | `result-track:1daab75fe77ebd8214c7ff3dfe6548ce601278233fa954647b19bf6a875d35a6` |
| 39 | `theorem` | [Internal.clauses_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/internal-clauses-append--781c884e790cf83de3ce4629.md) | 211 | `result-track:781c884e790cf83de3ce462933b8819455858fac8c5dbb543fb26ea4bc49a246` |
| 40 | `theorem` | [Internal.ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/internal-ext-iff--65635555379fa82627d0acf3.md) | 213 | `result-track:65635555379fa82627d0acf314c864c7050ceaddd2934061d1078d7f7378d57e` |
| 41 | `theorem` | [emptyWithCapacity_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/emptywithcapacity-eq-empty--4c2ccd33cace44c0aad73809.md) | 217 | `result-track:4c2ccd33cace44c0aad738098e5f7e293e299c3de79e0a72f8bf54288d027557` |
| 42 | `theorem` | [VarMem_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/varmem-append--3ed89b97437eb422cc14773e.md) | 221 | `result-track:3ed89b97437eb422cc14773e263849bc836c038e0fb9aeb74e7e4f230ed095ba` |
| 43 | `theorem` | [eval_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant13ccc2e3ea6ffcb2bc7b48fb62ce2660f539984f86166fa990b01e686f84d438.lean/declarations/eval-congr--a40403e55c0e39874ba413f0.md) | 234 | `result-track:a40403e55c0e39874ba413f061c440105e6bea33159e794b596d102de955f28f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
