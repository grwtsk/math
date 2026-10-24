# Verification target: GRWTSK.Topology.GeneralTopology.CountableInter.Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3211b83ae709775f19b1bfa258415af9a4a006a4",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3211b83ae709775f19b1bfa258415af9a4a006a4`.

Source path: `GRWTSK/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Curry` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Countable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CountableInterFilter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/countableinterfilter--92129c24063a241724165ab5.md) | 48 | `declaration-track:92129c24063a241724165ab5033299e26126793e7c723f8ab757e6bbb78a5e15` |
| 2 | `theorem` | [countable_sInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/countable-sinter-mem--bce78a606345e4800ec7390b.md) | 54 | `result-track:bce78a606345e4800ec7390b1a875eb674df1de9aa4df4d556fe06f3e46e3d83` |
| 3 | `theorem` | [countable_iInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/countable-iinter-mem--20a4f0856774ccf97f381987.md) | 58 | `result-track:20a4f0856774ccf97f3819875b38752a575a8da22e0d8578c20cd3290c01931a` |
| 4 | `theorem` | [countable_bInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/countable-binter-mem--a805034dc68460a2a2c598c5.md) | 61 | `result-track:a805034dc68460a2a2c598c5015787c5900d910513a6e2229eaf817b36e233c5` |
| 5 | `theorem` | [eventually_countable_forall](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/eventually-countable-forall--cb558e013bb852757bf37e17.md) | 67 | `result-track:cb558e013bb852757bf37e17e731a36f65bed2117633117cf27178e0f5fbc57a` |
| 6 | `theorem` | [eventually_countable_ball](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/eventually-countable-ball--2a99c5e850b81010b8d58118.md) | 72 | `result-track:2a99c5e850b81010b8d581184f29ec145db1a0d6d24c9fcb67ddd806cb4dcf14` |
| 7 | `theorem` | [EventuallyLE.countable_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/eventuallyle-countable-iunion--13488f08994dc3ac09b07152.md) | 78 | `result-track:13488f08994dc3ac09b071525d3877cd33ddf8ce619d2a9f2623e51b4f1614c5` |
| 8 | `theorem` | [EventuallyEq.countable_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/eventuallyeq-countable-iunion--8415fd15df4c72e243045ea5.md) | 82 | `result-track:8415fd15df4c72e243045ea51738e662858f27b2a726ac06cddca10f123ac633` |
| 9 | `theorem` | [EventuallyLE.countable_bUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/eventuallyle-countable-bunion--30b4428b66776c3c1c2e6081.md) | 87 | `result-track:30b4428b66776c3c1c2e60810a5a8e02b0d650c8e6f240586369365055dbb451` |
| 10 | `theorem` | [EventuallyEq.countable_bUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/eventuallyeq-countable-bunion--383be803c7e70b9623634aa0.md) | 94 | `result-track:383be803c7e70b9623634aa0e8bb84fefcbb3b0d491cd37017de12969d401b05` |
| 11 | `theorem` | [EventuallyLE.countable_iInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/eventuallyle-countable-iinter--90a6b9bfcd38310544b5a7a1.md) | 100 | `result-track:90a6b9bfcd38310544b5a7a1d61d61b3c3978992e472cae9ae4bebcefffa26d0` |
| 12 | `theorem` | [EventuallyEq.countable_iInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/eventuallyeq-countable-iinter--ace25071b738347b1a789bef.md) | 105 | `result-track:ace25071b738347b1a789bef5528536770ad33d147ec05092885c429c90c4a8d` |
| 13 | `theorem` | [EventuallyLE.countable_bInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/eventuallyle-countable-binter--6b0c386e00fcc3bea2ecc7d4.md) | 110 | `result-track:6b0c386e00fcc3bea2ecc7d4a8d058f3b8b064b4f8741b22b5594da4f5eb2b94` |
| 14 | `theorem` | [EventuallyEq.countable_bInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/eventuallyeq-countable-binter--5f4d4bbc28a3c20767305b4d.md) | 117 | `result-track:5f4d4bbc28a3c20767305b4d661751c26e13e143b9ba75b22a715b6b75212f9f` |
| 15 | `def` | [Filter.ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/filter-ofcountableinter--18680e3250904370d247d591.md) | 125 | `declaration-track:18680e3250904370d247d59103b8c0433aeb4086263e80a4e8ec100b9c6057fa` |
| 16 | `instance` | [Filter.countableInter_ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/filter-countableinter-ofcountableinter--200407af4f37299649fbb73b.md) | 134 | `declaration-track:200407af4f37299649fbb73b9b84eec76c2235ec6c6bc7633dad5b9c6c87cc90` |
| 17 | `theorem` | [Filter.mem_ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/filter-mem-ofcountableinter--639dd77ad8ea7d0e14442060.md) | 141 | `result-track:639dd77ad8ea7d0e144420603dfd24f48c7ca801d7e83468e44a605e5761b749` |
| 18 | `def` | [Filter.ofCountableUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/filter-ofcountableunion--15d816d4234423905d6e6e91.md) | 151 | `declaration-track:15d816d4234423905d6e6e91355d21de601af2e75487e4c0b7fca42f5fd3298c` |
| 19 | `instance` | [Filter.countableInter_ofCountableUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/filter-countableinter-ofcountableunion--e3c89c42a146bdc1e12bd98d.md) | 165 | `declaration-track:e3c89c42a146bdc1e12bd98de8f9a3069a1c8b6e101211c7759cde7eb2af7137` |
| 20 | `theorem` | [Filter.mem_ofCountableUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/filter-mem-ofcountableunion--ef54d07d6eeb90ae68bc24eb.md) | 170 | `result-track:ef54d07d6eeb90ae68bc24ebc34ec1213fb5866e14a23faba91be864bb69e8f2` |
| 21 | `instance` | [countableInterFilter_principal](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/countableinterfilter-principal--24b1a8d72f10723d5db144dc.md) | 174 | `declaration-track:24b1a8d72f10723d5db144dc61fae81ed5c1f59ad3f80287903dba68e450e621` |
| 22 | `instance` | [countableInterFilter_bot](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/countableinterfilter-bot--118dc9d8105c66633fa1606f.md) | 177 | `declaration-track:118dc9d8105c66633fa1606f19b850b1328bdc7c92f5f336cca9ae0e78e50a5b` |
| 23 | `instance` | [countableInterFilter_top](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/countableinterfilter-top--e52f1391f8639bbe877b3d5e.md) | 181 | `declaration-track:e52f1391f8639bbe877b3d5e4bbe4d995c89b9a9d416a10da181672ae772e360` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/instance--4cb3ca523546d97923661111.md) | 185 | `declaration-track:4cb3ca523546d97923661111c8218dfded93d916365836a3c0f3d7ac921a6281` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/instance--eaaf998f208292b60c8c5a41.md) | 193 | `declaration-track:eaaf998f208292b60c8c5a41c4cb7d0fb80968aa803f7592c3a61c694fae2f47` |
| 26 | `instance` | [countableInterFilter_inf](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/countableinterfilter-inf--a1c0374b77f5cb742f64044f.md) | 200 | `declaration-track:a1c0374b77f5cb742f64044fb875ec6de1899e61c355c8a56efa0160ff48ab5e` |
| 27 | `instance` | [countableInterFilter_sup](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/countableinterfilter-sup--2f5194a7182d33bef7792bb2.md) | 211 | `declaration-track:2f5194a7182d33bef7792bb2fd38e7430963f85e7bb512a88ce0b60931f98ede` |
| 28 | `instance` | [CountableInterFilter.curry](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/countableinterfilter-curry--7965729677934cbf69c44012.md) | 216 | `declaration-track:7965729677934cbf69c4401228f9e754f8106a27ac53a9e6c83197da4a81de4c` |
| 29 | `inductive` | [CountableGenerateSets](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/countablegeneratesets--960fef89c02f4f04e5113d19.md) | 229 | `declaration-track:960fef89c02f4f04e5113d198e933b5707bca50b6991056ebb78bd1c924d9a69` |
| 30 | `def` | [countableGenerate](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/countablegenerate--d4569f39c1739b47aa695e45.md) | 237 | `declaration-track:d4569f39c1739b47aa695e452e6735e164a7d33210c9a98c924f3b7e14f6eef9` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/instance--54ea8395f1a11a5deb219d09.md) | 243 | `declaration-track:54ea8395f1a11a5deb219d0911a88d9e059fbe365bc3ec239eec7a3a30e370a3` |
| 32 | `theorem` | [mem_countableGenerate_iff](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/mem-countablegenerate-iff--f5ed8185134c75dccc7c83f0.md) | 250 | `result-track:f5ed8185134c75dccc7c83f0aac7b764d11c6fb304991d0246784c10b781bc1c` |
| 33 | `theorem` | [le_countableGenerate_iff_of_countableInterFilter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/le-countablegenerate-iff-of-countableinterfilter--14f5a01abc152893c7020cb1.md) | 268 | `result-track:14f5a01abc152893c7020cb105cd7d8159293724eccb5ebad8f2ab5e56f18d19` |
| 34 | `theorem` | [countableGenerate_isGreatest](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant082ca78d4c4d20b8646e1425b47da49a1504dad6700b7c0d5f6c43e90f42ede7.lean/declarations/countablegenerate-isgreatest--a9a6abe5502a97a7f73d71f1.md) | 282 | `result-track:a9a6abe5502a97a7f73d71f12a84e1c913fdec4d5c43f603fd4f334672efe93c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
