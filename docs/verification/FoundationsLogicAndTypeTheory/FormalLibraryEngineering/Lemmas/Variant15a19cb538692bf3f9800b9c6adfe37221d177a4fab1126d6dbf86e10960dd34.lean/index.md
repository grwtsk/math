# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1567253ce6cc66a583d15d349591d1f7daa2b500",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1567253ce6cc66a583d15d349591d1f7daa2b500`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Bool` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.BitVec.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Tactic.Simpa` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_of_toNat_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/eq-of-tonat-eq--8362aa01a255fe1b61626f37.md) | 18 | `result-track:8362aa01a255fe1b61626f37914d95d3ef9be7a19c4742ff550a5e4e33071cfd` |
| 2 | `theorem` | [toNat_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/tonat-eq--55c4c0a2e3a1a09b085905ff.md) | 21 | `result-track:55c4c0a2e3a1a09b085905ff165aa3c60e080e0e232e8dfcf58d634311aa357c` |
| 3 | `theorem` | [testBit_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/testbit-tonat--d40bb0b75199957466f3aba9.md) | 24 | `result-track:d40bb0b75199957466f3aba918b30772ad1918661df50b088b37a435f26dcb27` |
| 4 | `theorem` | [getLsb_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/getlsb-ge--3d3435e72276672adcb458c1.md) | 26 | `result-track:3d3435e72276672adcb458c14ef1ed614dde2a8c235104a9fa5bf59d1bc099db` |
| 5 | `theorem` | [eq_of_getLsb_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/eq-of-getlsb-eq--c5439adac7b8ce6b6494a06e.md) | 32 | `result-track:c5439adac7b8ce6b6494a06e89bccc9b5aed127eece4ddef12b344412abdc772` |
| 6 | `theorem` | [eq_of_getMsb_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/eq-of-getmsb-eq--e5685ab5be853fb2fbb92e61.md) | 43 | `result-track:e5685ab5be853fb2fbb92e61d2ebf80a2ebd259deee833f8b15c076bb223533f` |
| 7 | `theorem` | [toNat_ofBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/tonat-ofbool--e58ff4434fa14046abb011b5.md) | 62 | `result-track:e58ff4434fa14046abb011b565e9c77fcc3198e019d8a07d786b54570c45fb85` |
| 8 | `theorem` | [toNat_ofFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/tonat-offin--037d4606dc8072d0c8909607.md) | 65 | `result-track:037d4606dc8072d0c89096079cbc5665a4c7300667d9f5b3e6402142f25a4e06` |
| 9 | `theorem` | [toNat_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/tonat-ofnat--5d9599cf03a72a702ac2f4f4.md) | 67 | `result-track:5d9599cf03a72a702ac2f4f47ba78815d0ace61da0bc9ec352d020867ac802a3` |
| 10 | `theorem` | [toNat_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/tonat-zero--95b19a7ea6c622fce589fd57.md) | 70 | `result-track:95b19a7ea6c622fce589fd573cd745611e47b1606a1c07e3db4af663d7627921` |
| 11 | `theorem` | [lt_two_pow_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/lt-two-pow-of-le--71927be0011b36e0e12a7dbf.md) | 72 | `result-track:71927be0011b36e0e12a7dbfed07ed160855f8062272f12d2d5656e3fef86aa3` |
| 12 | `theorem` | [ofNat_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/ofnat-tonat--f6700659aa7d288e7da827e1.md) | 75 | `result-track:f6700659aa7d288e7da827e1378e60aec72351d8aa6ff873f2cfbc2b5c24faf3` |
| 13 | `theorem` | [toNat_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/tonat-append--790a725bb1e80bc8a4e377bf.md) | 86 | `result-track:790a725bb1e80bc8a4e377bf16191b958392641d902e4c66417b8689d60a5598` |
| 14 | `theorem` | [toNat_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/tonat-cast--2b9fdc91db23fb77668df1ff.md) | 89 | `result-track:2b9fdc91db23fb77668df1ffefc24b2c0f4c72c38bf00fd04ea289dea1cb91d6` |
| 15 | `theorem` | [toNat_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/tonat-cons--fce06603737d68fab91ec033.md) | 91 | `result-track:fce06603737d68fab91ec033b17a1f258e079a082e1af88bcf7fbb9fb7f8c982` |
| 16 | `theorem` | [getLsb_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/getlsb-cons--e9fbf765e755574533348af0.md) | 97 | `result-track:e9fbf765e755574533348af077417b09dcbe2643157a6ca328570646ed15507e` |
| 17 | `theorem` | [toNat_zeroExtend'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/tonat-zeroextend--a5f79b9a87bd5e26c165a9c1.md) | 114 | `result-track:a5f79b9a87bd5e26c165a9c1850658876f6bdd7e59936e37a2114300c09bcdb6` |
| 18 | `theorem` | [toNat_zeroExtend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/tonat-zeroextend--4e3ede09161be68d13df08a1.md) | 119 | `result-track:4e3ede09161be68d13df08a137904070c3127aed1e22d759a03dbd07d599e19a` |
| 19 | `theorem` | [zeroExtend_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/zeroextend-eq--7ab987fc87cb9cf3269e14d1.md) | 129 | `result-track:7ab987fc87cb9cf3269e14d182ca88eb77daa5f73869fb3a84d1cce0a06e2dab` |
| 20 | `theorem` | [zeroExtend_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/zeroextend-zero--fc99999b5a5564a3c1007657.md) | 134 | `result-track:fc99999b5a5564a3c10076575efe6adbe8040c1910b9ded023dd2c6add8a34c6` |
| 21 | `theorem` | [truncate_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/truncate-eq--319e2ae0e40fd53c0f96837a.md) | 138 | `result-track:319e2ae0e40fd53c0f96837a358c54eb782d5985e38516085b03d8955a6d0e1a` |
| 22 | `theorem` | [toNat_truncate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/tonat-truncate--fddcdbb97f0ae9798df7a88d.md) | 140 | `result-track:fddcdbb97f0ae9798df7a88dd690b0b245f108ca3acc7104ed3df675ee764f32` |
| 23 | `theorem` | [getLsb_zeroExtend'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/getlsb-zeroextend--67ac1e1d247ea973a2e7cc69.md) | 143 | `result-track:67ac1e1d247ea973a2e7cc69389dc035d8167712abf0a9138ff9b29a642618ad` |
| 24 | `theorem` | [getLsb_zeroExtend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/getlsb-zeroextend--3dca9834d6604605232d5e94.md) | 147 | `result-track:3dca9834d6604605232d5e94b7e7898f33c81b86f1308debbd6f8011b7d1e3bb` |
| 25 | `theorem` | [getLsb_truncate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/getlsb-truncate--af7ce5b02960e8120b919b26.md) | 151 | `result-track:af7ce5b02960e8120b919b26a39a8db070bea6a692c2e4ef9e0e48cc55bb789e` |
| 26 | `theorem` | [truncate_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/truncate-succ--051a51afc4ba1ca26566c862.md) | 155 | `result-track:051a51afc4ba1ca26566c862f19f85424472e61607e4a7b809caf4c4bdecba6f` |
| 27 | `theorem` | [toNat_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/tonat-add--3e9f153c629d101c467f8a41.md) | 171 | `result-track:3e9f153c629d101c467f8a410f3dbf88d1e5ca66c7086ad1f7f2510a668547f5` |
| 28 | `theorem` | [add_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15a19cb538692bf3f9800b9c6adfe37221d177a4fab1126d6dbf86e10960dd34.lean/declarations/add-zero--117961b4b4e440578f7cc5fd.md) | 173 | `result-track:117961b4b4e440578f7cc5fd5ed9e3f5e06ff5089e12d314fffb26c46403364f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
