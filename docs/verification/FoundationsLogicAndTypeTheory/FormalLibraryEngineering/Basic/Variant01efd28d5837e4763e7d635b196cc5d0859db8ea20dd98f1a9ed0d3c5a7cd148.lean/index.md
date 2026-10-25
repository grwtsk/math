# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76cad522f3f156233d7194d0b2bc8048f1fe089d",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76cad522f3f156233d7194d0b2bc8048f1fe089d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveCountable` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Order.DirectedInverseSystem` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Order.FixedPoints` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Union` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Fold` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ext` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 32; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/expr--e626dd892a9084e1450f1223.md) | 49 | `declaration-track:e626dd892a9084e1450f1223ebf8f03d9b5bdfd2d720ca86698c6e926340ae1f` |
| 2 | `def` | [liftRen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/liftren--13e5fef6b46414273d8eb1b0.md) | 61 | `declaration-track:13e5fef6b46414273d8eb1b08fb92ced5ee43d0b44261bccbf342e4caea09765` |
| 3 | `def` | [rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/rename--8757c9a2ce0eb15634a0d0e6.md) | 65 | `declaration-track:8757c9a2ce0eb15634a0d0e62442080afbef4e325c97cad427b40898463022cd` |
| 4 | `def` | [liftSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/liftsub--db2c496d9248d047c90400a3.md) | 72 | `declaration-track:db2c496d9248d047c90400a32c1e6b6a09df0d3dc5340012a14ee6c1360fee11` |
| 5 | `def` | [subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/subst--8040f2f3110282bc4c78c01e.md) | 76 | `declaration-track:8040f2f3110282bc4c78c01e7fa79eec2dfd533ed0b59ba2f5137f7c878ac74b` |
| 6 | `def` | [single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/single--1c1ccf03328636b455dbf3b1.md) | 83 | `declaration-track:1c1ccf03328636b455dbf3b1e53f883ab19b78fe848703c5b4c5432113d1378b` |
| 7 | `def` | [instantiate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/instantiate--0c1356d2d75bff3dbfeac201.md) | 87 | `declaration-track:0c1356d2d75bff3dbfeac2019cb71b5bd0bfd8ac6ab0592e36987720be03589b` |
| 8 | `structure` | [Specification](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/specification--ce43622a15aaa2307afcec9f.md) | 91 | `declaration-track:ce43622a15aaa2307afcec9f9b26edd9e2d33e7ca57e8500bb8c43ab8d9a5629` |
| 9 | `axioms` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/axioms--59a2a645c22f844c58706255.md) | 92 | `declaration-track:59a2a645c22f844c587062558de1622887e422d204d686ba9b06856f6a2679c4` |
| 10 | `inductive` | [Beta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/beta--0646abadb445a754099c8515.md) | 95 | `declaration-track:0646abadb445a754099c85158f7b1cb607a0e5c1ac331b2e8f0961a5101bdd4e` |
| 11 | `def` | [Converts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/converts--c4ee5d009334e960e5047fca.md) | 104 | `declaration-track:c4ee5d009334e960e5047fca13f0e59e3fa23308bd4b68017c2be660538b6b95` |
| 12 | `def` | [Normal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/normal--a5f80fa772795a35cf44d66a.md) | 106 | `declaration-track:a5f80fa772795a35cf44d66a83a87dcbdbe86922a04369d81c0a4b9ea6b5d0d2` |
| 13 | `def` | [WeaklyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/weaklynormalizing--12511ffb0907cf5d003f336c.md) | 108 | `declaration-track:12511ffb0907cf5d003f336c3ad2fd0b219ad895b82a2000be46639cb31f6ec7` |
| 14 | `def` | [StronglyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/stronglynormalizing--0fe0e077e947df7c44f57de2.md) | 113 | `declaration-track:0fe0e077e947df7c44f57de25405a1e47660b444374b5fd65fbe90235bf98046` |
| 15 | `inductive` | [HasType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/hastype--28b9e9fa0db92593325ab805.md) | 116 | `declaration-track:28b9e9fa0db92593325ab80575b530938483ac061cb233aef0392aed86b5970e` |
| 16 | `inductive` | [ValidContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/validcontext--1f7a12a5255769f6d0252a61.md) | 134 | `declaration-track:1f7a12a5255769f6d0252a61986d496f76d6323ff3b6e14a9ce4e8427a0dc409` |
| 17 | `def` | [Legal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/legal--8308ae8f504e8b791e0e9ce2.md) | 139 | `declaration-track:8308ae8f504e8b791e0e9ce2a0f65345d0e52a18b5868ef308c98e70e02efca6` |
| 18 | `def` | [SystemWeaklyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/systemweaklynormalizing--435c07c3142d623ca8e30422.md) | 142 | `declaration-track:435c07c3142d623ca8e304220b6c2e31b0a75e12966d061f5a880b91c9262951` |
| 19 | `def` | [SystemStronglyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/systemstronglynormalizing--0b048bbbb912ea63f976638d.md) | 145 | `declaration-track:0b048bbbb912ea63f976638d0ea7cfae752bd2562cdbce65323a84742a4545f9` |
| 20 | `theorem` | [valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/valid--ede1913a8c5046ef46855a15.md) | 153 | `result-track:ede1913a8c5046ef46855a15a5d86bcf44522c58325a3c33b25cf2a45092f0d5` |
| 21 | `theorem` | [liftRen_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/liftren-zero--aa9a7ce358635dff06bda71f.md) | 169 | `result-track:aa9a7ce358635dff06bda71fad37a0befaa46fe40d9e230a6eb22764278dca95` |
| 22 | `theorem` | [liftRen_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/liftren-succ--ea62fdb495cca2ec95a419bd.md) | 170 | `result-track:ea62fdb495cca2ec95a419bd8d7d15acc52c1ecd281e43d6659e24c9339cc38a` |
| 23 | `theorem` | [liftRen_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/liftren-id--2e4801ae7df2abf350dbcab2.md) | 173 | `result-track:2e4801ae7df2abf350dbcab261133b51874742ffdcffbfe5764030eda8cfefe0` |
| 24 | `theorem` | [liftRen_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/liftren-comp--18bba08bf6e5a762c0b04ddf.md) | 177 | `result-track:18bba08bf6e5a762c0b04ddf1e18632f9f228b3d1ac147d8d40e865acc53a41f` |
| 25 | `theorem` | [rename_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/rename-id--e04eb68b7de077ad8dc05132.md) | 181 | `result-track:e04eb68b7de077ad8dc051320f25d590b1a08633d4e32292fbe4a2f371c7b60e` |
| 26 | `theorem` | [rename_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/rename-comp--f8b27db6a55c17edeff387a4.md) | 189 | `result-track:f8b27db6a55c17edeff387a4b3140bb26f2d96b5b810be78727fe525e51ee225` |
| 27 | `theorem` | [liftSub_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/liftsub-zero--2dda5d017cd21cd71c6c41e5.md) | 198 | `result-track:2dda5d017cd21cd71c6c41e5acdb8266753af84ec808450621b0320549920957` |
| 28 | `theorem` | [liftSub_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/liftsub-succ--654f489ecca3ddfa441f7372.md) | 199 | `result-track:654f489ecca3ddfa441f7372341e836e16bddad0880aa864297d1b79723761da` |
| 29 | `theorem` | [liftSub_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/liftsub-var--af6582e61d7744f5541dfd77.md) | 202 | `result-track:af6582e61d7744f5541dfd774694af9e0378229c786fda361e25e5c33956d885` |
| 30 | `theorem` | [subst_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/subst-var--5a7acf5dfb94caf53511af82.md) | 206 | `result-track:5a7acf5dfb94caf53511af82ad248e33901a21709c5fc70c3e1a975b2887ae25` |
| 31 | `theorem` | [subst_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/subst-rename--28adedafdfe8d14aad12876c.md) | 214 | `result-track:28adedafdfe8d14aad12876ceea75a23bcc7c0e69ea35ba492807df9b52328d5` |
| 32 | `theorem` | [rename_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/rename-subst--8e50a86b6f058e216d9ac105.md) | 228 | `result-track:8e50a86b6f058e216d9ac1058ee908b2822b237db78d3d5ddff565477f61bc99` |
| 33 | `theorem` | [subst_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/subst-subst--28d3f95ebcd6f9379da3af95.md) | 247 | `result-track:28d3f95ebcd6f9379da3af9572022266ff9c08dc46a589f961375fc518c68865` |
| 34 | `theorem` | [instantiate_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/instantiate-rename--afec17fb412ef56902ced826.md) | 266 | `result-track:afec17fb412ef56902ced826b2adabc9c3a7e620d0b8c9389df876bd7444cb63` |
| 35 | `theorem` | [instantiate_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/instantiate-subst--4af111d5391d7d7009a16924.md) | 273 | `result-track:4af111d5391d7d7009a16924186c9a87f677b924dbf5c797d04c5b26b8fdd2e9` |
| 36 | `theorem` | [rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/rename--cb2e0fa1b0d2e062946c44c0.md) | 290 | `result-track:cb2e0fa1b0d2e062946c44c04cca44c106b01a01e6dc6eae4d44ca3113d6b833` |
| 37 | `theorem` | [subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant01efd28d5837e4763e7d635b196cc5d0859db8ea20dd98f1a9ed0d3c5a7cd148.lean/declarations/subst--7f8c5f99c1527b48ec29d3dc.md) | 302 | `result-track:7f8c5f99c1527b48ec29d3dc8a7dd1ab001cdfa2fccc6912d1cf1c3e127d2450` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
