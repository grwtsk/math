# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68cd20e7c436ffe6c331d36a17b0128728a290fc",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68cd20e7c436ffe6c331d36a17b0128728a290fc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/instance--753b751e1f60f87760fa80aa.md) | 42 | `declaration-track:753b751e1f60f87760fa80aafdf5576314bf37ee2fe9143bc6a7f44b6d9297e7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/instance--ee70d00b6cc91c443f4e9d44.md) | 45 | `declaration-track:ee70d00b6cc91c443f4e9d4414c399c9a514ba9478fa72c08b0b80e967bd157b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/instance--1a09ce03d34d071db081b8b5.md) | 49 | `declaration-track:1a09ce03d34d071db081b8b5815fb1327c3b24231a925287d394c0c8112fbfa9` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/instance--fa5777bf2975689b9e9c38cb.md) | 53 | `declaration-track:fa5777bf2975689b9e9c38cb3752d234cf54db0a267521670e21612dbe402736` |
| 5 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/smul-apply--3630a6e6b9093bd14617c305.md) | 56 | `result-track:3630a6e6b9093bd14617c305b3fdff507ac66d62f3126d70a3ef1b588d2c0afa` |
| 6 | `def` | [lmk](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/lmk--611fe655ee859321272167f2.md) | 63 | `declaration-track:611fe655ee859321272167f2359e7c79917e3e08608cc7d909f07f9ee5dc658b` |
| 7 | `def` | [lof](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/lof--0c1657a4aba1b8c3d0464d21.md) | 68 | `declaration-track:0c1657a4aba1b8c3d0464d21f8d4460a9b6d02ca8ff6a51ec5ca70ea2a39f2c1` |
| 8 | `theorem` | [lof_eq_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/lof-eq-of--8a00c552b5f0395aa075411d.md) | 72 | `result-track:8a00c552b5f0395aa075411d861072c638d685c3a4ae604be26360b3c63b0c8c` |
| 9 | `theorem` | [single_eq_lof](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/single-eq-lof--64f2ba8a3647f672eacdc5b8.md) | 77 | `result-track:64f2ba8a3647f672eacdc5b8d824a46da9c1e4402a48636970b6dbd4cfceaf51` |
| 10 | `theorem` | [mk_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/mk-smul--364db009c66190cf92ea3684.md) | 81 | `result-track:364db009c66190cf92ea3684a62c2a753ff77e620bcf09059c53be96b7b904f2` |
| 11 | `theorem` | [of_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/of-smul--b0b486127e91631bc265b948.md) | 86 | `result-track:b0b486127e91631bc265b948bf098b20cfa3e7cdce7d6cdbef9732da7c9ccea6` |
| 12 | `theorem` | [support_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/support-smul--443a5adc69d81e693136228b.md) | 92 | `result-track:443a5adc69d81e693136228b7c683897a5a70a657dc770d9a61ad1a749c1a369` |
| 13 | `def` | [toModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/tomodule--09c49d03c940fa5f11c68e56.md) | 104 | `declaration-track:09c49d03c940fa5f11c68e56c49b7cee0de2db5b7c2d8a13e6921fb5d19fb07b` |
| 14 | `theorem` | [coe_toModule_eq_coe_toAddMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/coe-tomodule-eq-coe-toaddmonoid--c3c9855f0fffccf3b818d5f5.md) | 110 | `result-track:c3c9855f0fffccf3b818d5f50791123d288bd40675d17f3e84fc4d78137224e7` |
| 15 | `theorem` | [toModule_lof](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/tomodule-lof--bdf3ace1125df69da236ad66.md) | 119 | `result-track:bdf3ace1125df69da236ad6637142ca76bc94468cc03e1fcb3ac4671c4938626` |
| 16 | `theorem` | [toModule.unique](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/tomodule-unique--2a60497809980df6fc52b8ee.md) | 127 | `result-track:2a60497809980df6fc52b8eef38c8d7e5463c5acb00bc6e57091c4fed6361ad8` |
| 17 | `theorem` | [linearMap_ext](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/linearmap-ext--8c2107969d0f257a8610b130.md) | 137 | `result-track:8c2107969d0f257a8610b1301e52ccfc23587e264ce778347027131e657ad8aa` |
| 18 | `def` | [lsetToSet](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/lsettoset--0196ec4ea52fed3defc0192a.md) | 144 | `declaration-track:0196ec4ea52fed3defc0192a6c52f0727c670e9831180163f739ae2582fed9c1` |
| 19 | `def` | [linearEquivFunOnFintype](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/linearequivfunonfintype--e56b6c960493bd309eb6a910.md) | 153 | `declaration-track:e56b6c960493bd309eb6a9101264f5ea52d1d48bf286a97c638d336f79fb65f2` |
| 20 | `theorem` | [linearEquivFunOnFintype_lof](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/linearequivfunonfintype-lof--a08447e2f069ef5ae7c3eaff.md) | 167 | `result-track:a08447e2f069ef5ae7c3eaff6065f179d41e29c9de24d6fc73c9f8c8003aff18` |
| 21 | `theorem` | [linearEquivFunOnFintype_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/linearequivfunonfintype-symm-single--9b504537a7adf2603187967e.md) | 175 | `result-track:9b504537a7adf2603187967ead5835fbfc41f25591a21b5d500733757c808d39` |
| 22 | `theorem` | [linearEquivFunOnFintype_symm_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/linearequivfunonfintype-symm-coe--fcad27f06826c66c02a4c1da.md) | 183 | `result-track:fcad27f06826c66c02a4c1da522013615d310f5febaf234565820fe5814339a9` |
| 23 | `def` | [lid](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/lid--9d82bcd2ab31a8217f8c1a3c.md) | 189 | `declaration-track:9d82bcd2ab31a8217f8c1a3c8e474e0890bae428e7bc837f24a64ad1bb7ea1e8` |
| 24 | `def` | [component](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/component--8da95ae56b2e27e241cf20f9.md) | 197 | `declaration-track:8da95ae56b2e27e241cf20f90f7c36f92167a19a734f17ea11834d4ce170d2d0` |
| 25 | `theorem` | [apply_eq_component](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/apply-eq-component--cd3c0c911e0e78874baef70d.md) | 203 | `result-track:cd3c0c911e0e78874baef70d4825ccbaeb488289ce8869adfbbd157f3143afe9` |
| 26 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/ext--194f9650c3fe192dc1da8bcc.md) | 207 | `result-track:194f9650c3fe192dc1da8bcc852d3289efe75cf67609b61b5a438ab17f75daa3` |
| 27 | `theorem` | [ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/ext-iff--ed5a727be741e6cde9266a02.md) | 211 | `result-track:ed5a727be741e6cde9266a02095a61212277c380c78e2369a48c8ddc7c159a0a` |
| 28 | `theorem` | [lof_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/lof-apply--563ca0d46e6628a4e8f142f3.md) | 216 | `result-track:563ca0d46e6628a4e8f142f3739ac792a1cd4148ba00ffb4814b68bc93bafbd8` |
| 29 | `theorem` | [component.lof_self](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/component-lof-self--265253a0806c73ce1afc7884.md) | 221 | `result-track:265253a0806c73ce1afc7884391307d5eea5393377acbcbd4fdc6c0bf4dde0bc` |
| 30 | `theorem` | [component.of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/component-of--d92938d271ca166a71f89163.md) | 225 | `result-track:d92938d271ca166a71f8916385ffb873974731bf3a587654b3b2015aa272b19f` |
| 31 | `def` | [lequivCongrLeft](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/lequivcongrleft--b203779cba13f74b9aa75724.md) | 235 | `declaration-track:b203779cba13f74b9aa75724509b10b7f8fa886d9505f05b9e58ffa5fcb178ad` |
| 32 | `theorem` | [lequivCongrLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/lequivcongrleft-apply--61ef133a7acd682ba13f0b3a.md) | 240 | `result-track:61ef133a7acd682ba13f0b3aa1bc13cee93ddd2f571c76fbe402b7a8ce02501a` |
| 33 | `def` | [sigmaLcurry](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/sigmalcurry--9ee3319f89b75617f7a2cd81.md) | 254 | `declaration-track:9ee3319f89b75617f7a2cd818a7d16605bc997e82843a2a92dd5bd18f2b0a704` |
| 34 | `theorem` | [sigmaLcurry_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/sigmalcurry-apply--d2427b5b0c357992bb93061b.md) | 259 | `result-track:d2427b5b0c357992bb93061b673023c15054844d269d3e3f944953a27219fb5c` |
| 35 | `def` | [sigmaLuncurry](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/sigmaluncurry--14873a9264a0a68a47ce8173.md) | 266 | `declaration-track:14873a9264a0a68a47ce81737002262e1c3a35fd2d9778d068ed7a7526f6fa20` |
| 36 | `theorem` | [sigmaLuncurry_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/sigmaluncurry-apply--1480eb5bdff1336f1b76ef4b.md) | 272 | `result-track:1480eb5bdff1336f1b76ef4b7e4359f58edf9222b0ab281ba30cf1ba525c8afe` |
| 37 | `def` | [sigmaLcurryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/sigmalcurryequiv--ab199e8f9d287725f24ccdf4.md) | 278 | `declaration-track:ab199e8f9d287725f24ccdf48b4ff082890c7f617c7b98f8da0b802965545a24` |
| 38 | `def` | [lequivProdDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/lequivproddirectsum--fb484b053877e1f15fd8e482.md) | 292 | `declaration-track:fb484b053877e1f15fd8e48238ff5e3f3fd06ef2786c61aee31f69cdc467a4c0` |
| 39 | `def` | [coeLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/coelinearmap--735f120e8701a9d8610d1862.md) | 314 | `declaration-track:735f120e8701a9d8610d1862eec9c5f959cf51241a32a1dbe8b4c56081f6dac5` |
| 40 | `theorem` | [coeLinearMap_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/coelinearmap-of--43ab102fa1a4985d67fbf9d9.md) | 319 | `result-track:43ab102fa1a4985d67fbf9d97e96c14621fe0a2ea4d310c0d6b74020af0526ff` |
| 41 | `theorem` | [IsInternal.submodule_iSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/isinternal-submodule-isup-eq-top--ab7ebeeec27e676ab12c738a.md) | 327 | `result-track:ab7ebeeec27e676ab12c738aaa9e7f1805bd8395a1f5dea6005a6233b1a0cb6f` |
| 42 | `theorem` | [IsInternal.submodule_independent](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/isinternal-submodule-independent--afec0bf8d22a21800fb18a6d.md) | 333 | `result-track:afec0bf8d22a21800fb18a6d6730dbe6ee1a35f571ad21bba4331a9ff939b169` |
| 43 | `def` | [IsInternal.collectedBasis](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/isinternal-collectedbasis--6e6530cb55dafab486d075b7.md) | 339 | `declaration-track:6e6530cb55dafab486d075b73abdd0acfb20b80f8983c40ad7f5ccfcc9d73cf6` |
| 44 | `theorem` | [IsInternal.collectedBasis_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/isinternal-collectedbasis-coe--a3ccd1fe62153094c5aa9bb1.md) | 348 | `result-track:a3ccd1fe62153094c5aa9bb1c06754118fbd05a01437f90838ea47aac93d4463` |
| 45 | `theorem` | [IsInternal.collectedBasis_mem](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/isinternal-collectedbasis-mem--8b24c6e46afb21e8fb916a5a.md) | 371 | `result-track:8b24c6e46afb21e8fb916a5a49aa484a533e714d1875414e07252e873a16f980` |
| 46 | `theorem` | [IsInternal.isCompl](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/isinternal-iscompl--535dbe80cb924be8fec9ceea.md) | 378 | `result-track:535dbe80cb924be8fec9ceea6a34d0c2ed792642f32299cc3cccc928b6b22f81` |
| 47 | `theorem` | [isInternal_submodule_of_independent_of_iSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/isinternal-submodule-of-independent-of-isup-eq-top--284b9779dbf961e29c007172.md) | 397 | `result-track:284b9779dbf961e29c007172f81828e157cacc3920ff09ff8851dcf74d908b26` |
| 48 | `theorem` | [isInternal_submodule_iff_independent_and_iSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/isinternal-submodule-iff-independent-and-isup-eq-top--d0881277e4ca094a77ed713a.md) | 405 | `result-track:d0881277e4ca094a77ed713a6d01eff15647a7f62792b609749af2d3a6439d44` |
| 49 | `theorem` | [isInternal_submodule_iff_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/isinternal-submodule-iff-iscompl--8dabacca57fae82fd28799dd.md) | 413 | `result-track:8dabacca57fae82fd28799dd8d2a4d5ec2b3c507356d38f1d4ac5e9d37b60f7d` |
| 50 | `theorem` | [IsInternal.addSubmonoid_independent](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/isinternal-addsubmonoid-independent--dbc59b21f2c3b408cbf7cfe1.md) | 424 | `result-track:dbc59b21f2c3b408cbf7cfe1ebf5ecb33d5b86a5f71bee057cd2a028f0fc0c9f` |
| 51 | `theorem` | [IsInternal.addSubgroup_independent](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant7de128b688c4ac95c916db20ccb783d0667502851e9ca3cfb354645083dfe794.lean/declarations/isinternal-addsubgroup-independent--ab568a14c5beae2855784abc.md) | 429 | `result-track:ab568a14c5beae2855784abc07320a48daf850902c93a95686c478a2026cfc26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
