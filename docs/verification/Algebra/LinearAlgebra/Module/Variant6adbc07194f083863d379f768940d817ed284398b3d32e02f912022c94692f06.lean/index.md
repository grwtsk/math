# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edc50c8dbe7a317c2ae1809400f1640debda0389",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edc50c8dbe7a317c2ae1809400f1640debda0389`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.SMul` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Cardinality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Tower` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Invertible` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/instance--214e311002c43c84a9a72873.md) | 61 | `declaration-track:214e311002c43c84a9a72873f3cf91fec6e2b53955a56a1be8d838d7171859f1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/instance--38bceb688ea5cd6ad5e52d23.md) | 64 | `declaration-track:38bceb688ea5cd6ad5e52d2373e1ab4cdb4fee21a017fe6e1f4f33df7065c3a6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/instance--905fc1cf7959bae5101917ea.md) | 67 | `declaration-track:905fc1cf7959bae5101917eadc18d5f4214d094563bd7ef2c18acb27f35a1777` |
| 4 | `instance` | [mulAction](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/mulaction--22e9136bbef32232c6666fd9.md) | 70 | `declaration-track:22e9136bbef32232c6666fd9f218f555731edd8375f14135e0a0ecabb7333def` |
| 5 | `instance` | [distribSMul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/distribsmul--5dd5512933be28ada5c06296.md) | 74 | `declaration-track:5dd5512933be28ada5c062969aebe71f038a92037e35a50f802b23012a364e7b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/instance--7f356a6cb27e72291fe2b39d.md) | 78 | `declaration-track:7f356a6cb27e72291fe2b39dde839cc39c4cc8931e0845045a2c30904830b7dd` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/instance--3312da9b4cb3256d282d84aa.md) | 81 | `declaration-track:3312da9b4cb3256d282d84aa95651d072e4d2be127f465499ff4e8e6e17d7f20` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/instance--537554c0761f746acd622307.md) | 85 | `declaration-track:537554c0761f746acd6223078caad552ba3a86591f7d055f551397dc0bd3f9a6` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/instance--ad96d29911ee43b15f470f0c.md) | 91 | `declaration-track:ad96d29911ee43b15f470f0c3fc8853f197df8903ecebf8927559c2e29507d68` |
| 10 | `theorem` | [coe_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/coe-algebramap--c4abd60c1e3777cd4e58bf47.md) | 95 | `result-track:c4abd60c1e3777cd4e58bf47bc16456de2915d579f5fee74808857ea194359ea` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.CoeAlgebraMap.Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.AlgHom.map_coe_real_complex](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/root-grwtsk-algebra-linearalgebra-coealgebramap-variant5805395f30c5a8e3a--e0392ca530d012bb642f5c4e.md) | 106 | `result-track:e0392ca530d012bb642f5c4e1515b02166afd2019ef3292289f4692659f9b649` |
| 12 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/alghom-ext--ef69dea55452f6c25f2fd380.md) | 112 | `result-track:ef69dea55452f6c25f2fd3803070dd71458bd02fbae3dcb88d42a3dc1fb55948` |
| 13 | `def` | [basisOneI](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/basisonei--e5447913b875dbb10d8968e9.md) | 122 | `declaration-track:e5447913b875dbb10d8968e9dd6ddeac3d23a5cdb3c0c7f9bf7038e9ffe791ee` |
| 14 | `theorem` | [coe_basisOneI_repr](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/coe-basisonei-repr--ef0746c1b0e165b2d7957c26.md) | 136 | `result-track:ef0746c1b0e165b2d7957c2680d23d96688f269073ee55e687d7a00001dc79e2` |
| 15 | `theorem` | [coe_basisOneI](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/coe-basisonei--331a1d55c59df0a25575e20c.md) | 142 | `result-track:331a1d55c59df0a25575e20c7767e9957d6dacd3fac8cb175d5c7f9a810d1b19` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/instance--2d5bfbbcf115150d3c719867.md) | 154 | `declaration-track:2d5bfbbcf115150d3c719867de6b80f91913dd6f05652e6be2a037cc07163972` |
| 17 | `theorem` | [finrank_real_complex](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/finrank-real-complex--0df11523c4bbff9a7acea157.md) | 158 | `result-track:0df11523c4bbff9a7acea157f002f552e14ff774e5493d2327559b5894b6c045` |
| 18 | `theorem` | [rank_real_complex](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/rank-real-complex--ddd9076d6dcca8cfcdfda320.md) | 163 | `result-track:ddd9076d6dcca8cfcdfda320eb3c1be2ad945380411d47a68458f9c11750c4df` |
| 19 | `theorem` | [rank_real_complex'.](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/rank-real-complex--0f6e01dfb3250b75267989ed.md) | 166 | `result-track:0f6e01dfb3250b75267989ed0930f08cb0dfcb3376dd85eb528a5a02aeda2bcc` |
| 20 | `theorem` | [finrank_real_complex_fact](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/finrank-real-complex-fact--5abecd1e0a41379b3e1f795f.md) | 172 | `result-track:5abecd1e0a41379b3e1f795fba4c671cc7c573adc174c7a6320633648d181d36` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/instance--b9314fb02107a180178f1b09.md) | 180 | `declaration-track:b9314fb02107a180178f1b098df51070ac4f78eb70dcdf36911b2d1a3933b2f2` |
| 22 | `instance` | [Module.real_complex_tower](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/module-real-complex-tower--b7768f5460ca6ce3021a933c.md) | 185 | `declaration-track:b7768f5460ca6ce3021a933c08642dfa58f12c43ae7a4864f414bdfb020c3194` |
| 23 | `theorem` | [Complex.coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/complex-coe-smul--eff0673d9bc8c27efcb83de5.md) | 191 | `result-track:eff0673d9bc8c27efcb83de5155208e8b9b19d0106c298471b843ace65ce995c` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/instance--ca8ebc48a1e6d8714c1dc2fc.md) | 198 | `declaration-track:ca8ebc48a1e6d8714c1dc2fc217c8699ffdd5798df3a6b1bf9e93411773cc199` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/instance--7c4cc295bc7d2f8117e9d10e.md) | 203 | `declaration-track:7c4cc295bc7d2f8117e9d10ef8724f584bf59c6f75f2998457f0b3c63a549e8e` |
| 26 | `theorem` | [rank_real_of_complex](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/rank-real-of-complex--6ef9c50ee0ffe38b41f69fe9.md) | 208 | `result-track:6ef9c50ee0ffe38b41f69fe90ec28b6c09603c2a06c3ddd516ae9b2fa6ea4deb` |
| 27 | `theorem` | [finrank_real_of_complex](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/finrank-real-of-complex--a5978454efe3afa2e3f329a9.md) | 215 | `result-track:a5978454efe3afa2e3f329a961ddd0b3ae266992231d1a6618a325b99a5b4005` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/instance--78f8b1e0694d22caaa8964ab.md) | 220 | `declaration-track:78f8b1e0694d22caaa8964abed6710ddd1d31fde601a17ee77e20396a47f62cb` |
| 29 | `def` | [reLm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/relm--715a0dd9a0ee114013980157.md) | 230 | `declaration-track:715a0dd9a0ee114013980157101a4184b9566446858aea8db906cdda6bc2805a` |
| 30 | `theorem` | [reLm_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/relm-coe--49abad16ce2068012a9d5ae6.md) | 237 | `result-track:49abad16ce2068012a9d5ae69c2ded349eae37b7bf22aa985998857e5c23e5ab` |
| 31 | `def` | [imLm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/imlm--96d785688fcb0b38e458d8cf.md) | 242 | `declaration-track:96d785688fcb0b38e458d8cf32efdbd59253803adf2df14358d75d3233d8d1c9` |
| 32 | `theorem` | [imLm_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/imlm-coe--a487f028df4aa57d173d5681.md) | 249 | `result-track:a487f028df4aa57d173d568101218df3aad32369d5f1c20b9a89f7905a8a57ee` |
| 33 | `def` | [ofRealAm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/ofrealam--b2aa2ded93c3d590d674dac0.md) | 254 | `declaration-track:b2aa2ded93c3d590d674dac08388b27b1971e7fad174320b99747dd261c7a4d0` |
| 34 | `theorem` | [ofRealAm_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/ofrealam-coe--251a794ec0007ceff9c13dc7.md) | 259 | `result-track:251a794ec0007ceff9c13dc767ad653597965a49a0fe25b4a443f999dc9d3f66` |
| 35 | `def` | [conjAe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/conjae--3289e948595e6e061f88453c.md) | 264 | `declaration-track:3289e948595e6e061f88453c1156b59e3ef0e2b223f55005e8ce16a54aee4730` |
| 36 | `theorem` | [conjAe_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/conjae-coe--9c3eb8046243fd62b89e187d.md) | 273 | `result-track:9c3eb8046243fd62b89e187df4cf9f9c670c68ebbfc75159e74c247ff5610721` |
| 37 | `theorem` | [toMatrix_conjAe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/tomatrix-conjae--50377a58698e47227ce20114.md) | 279 | `result-track:50377a58698e47227ce20114c030b87020a97780539553130280a3b067dd2726` |
| 38 | `theorem` | [real_algHom_eq_id_or_conj](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/real-alghom-eq-id-or-conj--bc398c1e03059fcb820df45e.md) | 287 | `result-track:bc398c1e03059fcb820df45ee7080e6b06b2f4aaa663ead0421e1b7e9d56b463` |
| 39 | `def` | [equivRealProdAddHom](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/equivrealprodaddhom--4e660a3ca61c9a4ae6843a52.md) | 296 | `declaration-track:4e660a3ca61c9a4ae6843a520a14acbc45b7d8905147a441bf10469074190adf` |
| 40 | `def` | [equivRealProdLm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/equivrealprodlm--fef1f84ae81aed3a3e843ee2.md) | 302 | `declaration-track:fef1f84ae81aed3a3e843ee219bea27613a4ccfea0a1d605813b287966a273b3` |
| 41 | `def` | [liftAux](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/liftaux--1d525a7ee457a9056e94299b.md) | 315 | `declaration-track:1d525a7ee457a9056e94299b556b8481a5ac751168aadaec41d137485c783c75` |
| 42 | `theorem` | [liftAux_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/liftaux-apply--8c86cc50cf2ef29c6e047571.md) | 334 | `result-track:8c86cc50cf2ef29c6e0475711c2f35b56f8938c929051b807aa253274c2128f9` |
| 43 | `theorem` | [liftAux_apply_I](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/liftaux-apply-i--a56d7d0c293a447efdc5216e.md) | 338 | `result-track:a56d7d0c293a447efdc5216e2eb7a76c3ae538f8baeb328ff0f7ce75126ef54a` |
| 44 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/lift--cd2ebe34c9bce7f9125c00b8.md) | 349 | `declaration-track:cd2ebe34c9bce7f9125c00b85798b9c80fc10171a6663d7738f5c2b7a8662e59` |
| 45 | `theorem` | [liftAux_I](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/liftaux-i--72c820892814f8b7f5a0281b.md) | 358 | `result-track:72c820892814f8b7f5a0281b452c6e5350fc1603b6248464d47d6523c006488c` |
| 46 | `theorem` | [liftAux_neg_I](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/liftaux-neg-i--8d2a9fec355c18c4bb1bc987.md) | 365 | `result-track:8d2a9fec355c18c4bb1bc9875adc62284700ea5e879a590695db0ffac9985ff6` |
| 47 | `def` | [skewAdjoint.negISMul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/skewadjoint-negismul--4468b44da0b14a3086817da7.md) | 383 | `declaration-track:4468b44da0b14a3086817da79e7a31f47772b17a33e94ace861c1a68f58e6001` |
| 48 | `theorem` | [skewAdjoint.I_smul_neg_I](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/skewadjoint-i-smul-neg-i--f3155559484935e2a683a4fd.md) | 399 | `result-track:f3155559484935e2a683a4fde06360683a640e47deaa4ea383960c16aa3dd4c7` |
| 49 | `def` | [realPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/realpart--f7ed8c1542548556829f4ab5.md) | 408 | `declaration-track:f7ed8c1542548556829f4ab55faed9211447631dda0649764fbbaec8ac82864a` |
| 50 | `def` | [imaginaryPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/imaginarypart--2b79bcb865652003ce703021.md) | 417 | `declaration-track:2b79bcb865652003ce70302121e27f6b6e3101bcbec6ee902f70b76186e9d3af` |
| 51 | `theorem` | [realPart_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/realpart-apply-coe--c967d3ac4ef0ba5b62312cfa.md) | 427 | `result-track:c967d3ac4ef0ba5b62312cfad84ac58d3d5d39972503eef40298be90ef3a499b` |
| 52 | `theorem` | [imaginaryPart_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/imaginarypart-apply-coe--7c1aa8b1e1f93dfb39fd3e18.md) | 433 | `result-track:7c1aa8b1e1f93dfb39fd3e18b023aa224ca6ccd97235a4fc5c4a95fb1ae10eb9` |
| 53 | `theorem` | [realPart_add_I_smul_imaginaryPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/realpart-add-i-smul-imaginarypart--5f3fedf4684abb446ed51d40.md) | 441 | `result-track:5f3fedf4684abb446ed51d400d9edccb2a68215c32b21664992f9f23890d4f02` |
| 54 | `theorem` | [realPart_I_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/realpart-i-smul--d45c76e4ef30e17b280d2cc1.md) | 449 | `result-track:d45c76e4ef30e17b280d2cc1c14d973e7dd0dcede345c6cc0948cd1adef8712b` |
| 55 | `theorem` | [imaginaryPart_I_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/imaginarypart-i-smul--b0572652f965c4f30ad6c68c.md) | 459 | `result-track:b0572652f965c4f30ad6c68c00e7c0d3520a371778d87aab940b278f6e04bd34` |
| 56 | `theorem` | [realPart_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/realpart-smul--40cc7e0f5fe95ec270e3f9fc.md) | 468 | `result-track:40cc7e0f5fe95ec270e3f9fc22106efbb85fd92f87101071e28cf8f348bf12ba` |
| 57 | `theorem` | [imaginaryPart_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/imaginarypart-smul--5b6975054b9cf39e3b234141.md) | 475 | `result-track:5b6975054b9cf39e3b234141e696baf6ae74f9c42465d527ff7c1e8558f39457` |
| 58 | `lemma` | [Real.rank_rat_real](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/real-rank-rat-real--8af42b4de72a7e3392322109.md) | 489 | `result-track:8af42b4de72a7e339232210927806efdfa1bd39635cc931f8960a14d1b773a7c` |
| 59 | `lemma` | [Complex.rank_rat_complex](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/complex-rank-rat-complex--b9a05c0ad81925bc2991296f.md) | 494 | `result-track:b9a05c0ad81925bc2991296f93e0c7672e787720067fe8e94b164401d6fc989a` |
| 60 | `theorem` | [Complex.nonempty_linearEquiv_real](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/declarations/complex-nonempty-linearequiv-real--d89acf52b334b2c30fbe2478.md) | 500 | `result-track:d89acf52b334b2c30fbe2478b8993f348bba9c942fa1188b593b186990ccbdf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
