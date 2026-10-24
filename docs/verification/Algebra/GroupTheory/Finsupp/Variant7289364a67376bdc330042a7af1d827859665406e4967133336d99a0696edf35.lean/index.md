# Verification target: GRWTSK.Algebra.GroupTheory.Finsupp.Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ca1da52a2379751bbc9093966cda0a207e24b84",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ca1da52a2379751bbc9093966cda0a207e24b84`.

Source path: `GRWTSK/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instAdd](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/instadd--6072da33e96d7fbbb7521034.md) | 33 | `declaration-track:6072da33e96d7fbbb752103458f7a0f08ce4b9191f1938dcc68a69f83eb87d2e` |
| 2 | `lemma` | [coe_add](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/coe-add--8a416e3d6c745d485a4153d6.md) | 35 | `result-track:8a416e3d6c745d485a4153d626ae38887e6b77c3f3bce7ce351bbd82eac9fdfe` |
| 3 | `lemma` | [add_apply](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/add-apply--edd6759a6a1fc6e1813848ca.md) | 37 | `result-track:edd6759a6a1fc6e1813848ca9c7b35bba3a05ef8b5f7ba6a1d9ef7c93f3446ad` |
| 4 | `lemma` | [support_add](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/support-add--eff53eb228db8d9dc502fcc7.md) | 39 | `result-track:eff53eb228db8d9dc502fcc786c31165dc6e9172f79bb67b60abbb205e8349bc` |
| 5 | `lemma` | [support_add_eq](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/support-add-eq--4bb586df182a7455c583c0a7.md) | 41 | `result-track:4bb586df182a7455c583c0a782d5ad410747feb67fc9494b6547c3e546509f4d` |
| 6 | `instance` | [instAddZeroClass](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/instaddzeroclass--1e3d8ad903236aabad118299.md) | 52 | `declaration-track:1e3d8ad903236aabad118299102a27b6b2e7fe2f8a879e17ba3c8217ab7c0fcb` |
| 7 | `instance` | [instIsLeftCancelAdd](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/instisleftcanceladd--650f064a9503490daff043d6.md) | 55 | `declaration-track:650f064a9503490daff043d6e2d424cc1d1fa9e9fe5e891730e7bfdcc2c154cb` |
| 8 | `def` | [addEquivFunOnFinite](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/addequivfunonfinite--36e9e30d81756ea9db463172.md) | 60 | `declaration-track:36e9e30d81756ea9db4631728952ed9d24d2e55cdaaf1b80e9f0fd9978fd487d` |
| 9 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.AddApply.Variantad34516efcef8b3805f6e3c767fd076330b4b9a2fe3c7db48760c1d9a6f4ae72.AddEquiv.finsuppUnique](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/root-grwtsk-algebra-grouptheory-addapply-variantad34516efcef8b3805f6e3c7--6f6324b42b6716a415773c60.md) | 66 | `declaration-track:6f6324b42b6716a415773c602c34151f81b9272e0e4073c4fb2d33ded7b48449` |
| 10 | `instance` | [instIsRightCancelAdd](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/instisrightcanceladd--999af237d823be49a23ae301.md) | 71 | `declaration-track:999af237d823be49a23ae301c6e1c3f0d6f0a2aaa35f779aac5d783bd2e334b3` |
| 11 | `instance` | [instIsCancelAdd](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/instiscanceladd--a7743c41ffa6087c94be2690.md) | 74 | `declaration-track:a7743c41ffa6087c94be26908bd86bb0877108185d23e019da0c218758b90b6e` |
| 12 | `def` | [applyAddHom](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/applyaddhom--cef694e94ca6e5aa67bec6e8.md) | 81 | `declaration-track:cef694e94ca6e5aa67bec6e8afb703a1768414b09cffd6f9179fe5bd695e78a5` |
| 13 | `def` | [coeFnAddHom](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/coefnaddhom--d2d7a1d45ba51cef3fed033a.md) | 88 | `declaration-track:d2d7a1d45ba51cef3fed033a819a1aab3df9841e3fde30ec63db28cf611f8ee8` |
| 14 | `lemma` | [mapRange_add](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/maprange-add--e974105d44a2ca9b207ae971.md) | 93 | `result-track:e974105d44a2ca9b207ae971183887d081a5c763876ac33ced8b59cb1f444b47` |
| 15 | `lemma` | [mapRange_add'](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/maprange-add--d8ca97912cdfc3071aa975bc.md) | 97 | `result-track:d8ca97912cdfc3071aa975bc0cbdece6dc7f4b099ec818f559eb281bc040ea49` |
| 16 | `def` | [embDomain.addMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/embdomain-addmonoidhom--5b37f5f01e5b7660d3478cdf.md) | 103 | `declaration-track:5b37f5f01e5b7660d3478cdf737a2cd2acfb9c55752d94f994be0683936dbf0b` |
| 17 | `lemma` | [embDomain_add](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/embdomain-add--3f94b9d32716b101b4aeb1e1.md) | 115 | `result-track:3f94b9d32716b101b4aeb1e10432933b2c0434cd3fe39a682231cd136339427a` |
| 18 | `instance` | [instNatSMul](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/instnatsmul--d9342eb40c3faeb2881c2e40.md) | 125 | `declaration-track:d9342eb40c3faeb2881c2e404fabbec4c3ceda24505ccacfabf73701bb373582` |
| 19 | `instance` | [instAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/instaddmonoid--9f939fecf5a0395d3aa818c5.md) | 127 | `declaration-track:9f939fecf5a0395d3aa818c51df38c725eee457e936172e260cc9257d865b55c` |
| 20 | `instance` | [instAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/instaddcommmonoid--b4bd987ff7c4601656f9bcc7.md) | 132 | `declaration-track:b4bd987ff7c4601656f9bcc7367ca4eab2713d84391db2c7ccbf18e915aeba5c` |
| 21 | `instance` | [instNeg](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/instneg--42538a4a197b7974bb7b23d0.md) | 136 | `declaration-track:42538a4a197b7974bb7b23d08abfa44576c59a4b7ed9bfd0a33549dff96f37a0` |
| 22 | `lemma` | [coe_neg](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/coe-neg--2dd1ee4f92e5a248249d0192.md) | 138 | `result-track:2dd1ee4f92e5a248249d0192316dd6e35c3c8e58082fc0ca730c4e2306eedb52` |
| 23 | `lemma` | [neg_apply](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/neg-apply--8ee0553f8db1420de7c06cfa.md) | 140 | `result-track:8ee0553f8db1420de7c06cfa9e832755050d37f2a8a6f5cdd68ef4c0c8c6b421` |
| 24 | `lemma` | [mapRange_neg](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/maprange-neg--797327edbb99524e4660ec4e.md) | 143 | `result-track:797327edbb99524e4660ec4e5c1afd8c7547d1c7d6dc12a478e00b24123d3059` |
| 25 | `lemma` | [mapRange_neg'](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/maprange-neg--daaab19a1efed803735476fb.md) | 147 | `result-track:daaab19a1efed803735476fb36ded3c45a7b0ff430eb99a886127c029b9ad91b` |
| 26 | `instance` | [instSub](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/instsub--a64c37b46960239221b0cb94.md) | 152 | `declaration-track:a64c37b46960239221b0cb942b531a44f7d800fdb2855ee44b8e4dac2b9ebe73` |
| 27 | `lemma` | [coe_sub](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/coe-sub--c1b02156101ee22bd7a6cb36.md) | 155 | `result-track:c1b02156101ee22bd7a6cb36f1181539e428707cc27a952e54f880494e45729f` |
| 28 | `lemma` | [sub_apply](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/sub-apply--a61205feef4f9f15d370744b.md) | 157 | `result-track:a61205feef4f9f15d370744b72209486d00b5da0b213b97baad2acd94efc2077` |
| 29 | `lemma` | [mapRange_sub](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/maprange-sub--0f983a9c3e0560f1065f8944.md) | 159 | `result-track:0f983a9c3e0560f1065f89441ff66d90646feabafef025479c9cc6684490d38f` |
| 30 | `lemma` | [mapRange_sub'](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/maprange-sub--f9cdf9d551b382c8e7623684.md) | 164 | `result-track:f9cdf9d551b382c8e7623684882ababdf97dd1de38e81ed29b1db0a5f3e1aeed` |
| 31 | `instance` | [instIntSMul](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/instintsmul--9faa4c64e1454c0f650627ab.md) | 171 | `declaration-track:9faa4c64e1454c0f650627abb2c88a74bc94125d7eceeda731d9549d45926ed7` |
| 32 | `instance` | [instAddGroup](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/instaddgroup--c0742adc0e2fee8c82446e8b.md) | 174 | `declaration-track:c0742adc0e2fee8c82446e8bbed5ccea85226d9dd230a3912a78312db0c1257e` |
| 33 | `instance` | [instAddCommGroup](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/instaddcommgroup--7ced91811c6ce1e7485d1dd0.md) | 178 | `declaration-track:7ced91811c6ce1e7485d1dd004e92aed4937b0f21a4e9890e39d8e019beae4d1` |
| 34 | `lemma` | [support_neg](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/support-neg--62ffdfea694feb1cb4175e5a.md) | 183 | `result-track:62ffdfea694feb1cb4175e5aca050d90e67ccf6006cfc0111a9cfc835e247f07` |
| 35 | `lemma` | [support_sub](../../../../../mathematics/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean/declarations/support-sub--987d1313c8a1c20d9df63491.md) | 190 | `result-track:987d1313c8a1c20d9df63491ade685b75dd8492a7a6befe49fa56b10660b3be0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
