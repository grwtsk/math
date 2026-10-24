# Verification target: GRWTSK.Algebra.LinearAlgebra.Equiv.Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "725f943ab44482a0dd614f99727008ad84564b8e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `725f943ab44482a0dd614f99727008ad84564b8e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Coalgebra.Hom` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/coalgequiv--da3ce476dd2a1c190618bca1.md) | 38 | `declaration-track:da3ce476dd2a1c190618bca1a4f2a9d3fb86923b3994503d4f42179444e9cf01` |
| 2 | `class` | [CoalgEquivClass](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/coalgequivclass--3b8d8b150254e5c195b77fe2.md) | 50 | `declaration-track:3b8d8b150254e5c195b77fe24803af9565fd517f96ebfb79c038406fc217a946` |
| 3 | `def` | [toCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/tocoalgequiv--a5154ef35926db16177e38e4.md) | 62 | `declaration-track:a5154ef35926db16177e38e4664ea20931139c4e33af7f121967c25382acc68c` |
| 4 | `instance` | [instCoeToCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/instcoetocoalgequiv--914673de9f689c26baa0a797.md) | 66 | `declaration-track:914673de9f689c26baa0a797aa7337215ffbce64bdbd385aa55077b8d222ce86` |
| 5 | `def` | [toEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/toequiv--7b1d07bd3e06b743a2f55510.md) | 82 | `declaration-track:7b1d07bd3e06b743a2f55510cee02ef7df6194cd8799a7cd1c8edea97e825f37` |
| 6 | `theorem` | [toEquiv_injective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/toequiv-injective--1fe7e83f9c8b819fece8b270.md) | 84 | `result-track:1fe7e83f9c8b819fece8b270b4839a8b1a8a0e669e2931e93ab171ec4584b12e` |
| 7 | `theorem` | [toEquiv_inj](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/toequiv-inj--432412df24a08fd73c761fba.md) | 90 | `result-track:432412df24a08fd73c761fbaac08be0a57f84d608f6b85217a0d4e1728f25516` |
| 8 | `theorem` | [toCoalgHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/tocoalghom-injective--6d646ff5276563cfa60a57fb.md) | 93 | `result-track:6d646ff5276563cfa60a57fb020c87cc9b4c3dcaff5a964d49c2cb9be6bfddec` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/instance--e6d13023522ac299579621af.md) | 96 | `declaration-track:e6d13023522ac299579621af8b01baa7fc3600804102e249e1779e1bd36183fb` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/instance--596fe66e14f9c10ae064527f.md) | 103 | `declaration-track:596fe66e14f9c10ae064527fb3b178418b90a40b0cf1822b406b7ba802f89983` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/instance--58345f3104b496ad02c41d22.md) | 107 | `declaration-track:58345f3104b496ad02c41d220c8f3a62fde340b0f31af55ed06e6f386e95286f` |
| 12 | `theorem` | [toCoalgHom_inj](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/tocoalghom-inj--6419303c70d6c2061879d231.md) | 114 | `result-track:6419303c70d6c2061879d231265f2723b686bca76ad89a58d9ab060b85dbe562` |
| 13 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/coe-mk--ef24be63dad5e187b5d58377.md) | 118 | `result-track:ef24be63dad5e187b5d583779a0fe6562f7c9af5cfc96182d73fa006c06d2a2c` |
| 14 | `theorem` | [coe_coe](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/coe-coe--84d27e231175fb81be2ac9bf.md) | 131 | `result-track:84d27e231175fb81be2ac9bfba4128effcf1f34181634df969c64568182f51e8` |
| 15 | `theorem` | [toLinearEquiv_eq_coe](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/tolinearequiv-eq-coe--8b0003bd3d9274397095f742.md) | 135 | `result-track:8b0003bd3d9274397095f742384d70ede91a19507cf05f3d732fd9d0d460b875` |
| 16 | `theorem` | [toCoalgHom_eq_coe](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/tocoalghom-eq-coe--380e66858dd8dbd0c822af0d.md) | 139 | `result-track:380e66858dd8dbd0c822af0d05f70d7aebe198bfabf099df649d36c2ae50fdcc` |
| 17 | `theorem` | [coe_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/coe-tolinearequiv--1ebb5cac0750f6b8556b5f7e.md) | 143 | `result-track:1ebb5cac0750f6b8556b5f7e06541200e305ed123ab072bc103ba4703a83d962` |
| 18 | `theorem` | [coe_toCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/coe-tocoalghom--09d6c4b2b3f49aeab54b02d1.md) | 147 | `result-track:09d6c4b2b3f49aeab54b02d1cdf231d38ac70d8775a0663615dea2c011ccd0fe` |
| 19 | `theorem` | [toLinearEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/tolinearequiv-tolinearmap--5708d24fe732941c285c8b17.md) | 150 | `result-track:5708d24fe732941c285c8b175c97e452116c66a780f8cd50a867f84228622034` |
| 20 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/ext--1651739cb0a7b1cc992e3489.md) | 158 | `result-track:1651739cb0a7b1cc992e3489cb026913fde5aeb645c42e0bae40cb11e6a75b72` |
| 21 | `theorem` | [congr_arg](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/congr-arg--290be630cc092c24c546ecec.md) | 161 | `result-track:290be630cc092c24c546ececa7274cc8d11178cce49c4a49e924c9bdfe94a506` |
| 22 | `theorem` | [congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/congr-fun--5a6ba3f763881edd71a305fe.md) | 164 | `result-track:5a6ba3f763881edd71a305fe282afd8c29182dc6957ef7ae1f7ba77ae2043360` |
| 23 | `def` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/symm--b9a070d6ce0abe9963edfb30.md) | 171 | `declaration-track:b9a070d6ce0abe9963edfb309d81332145229ac7d4d953cc50b54253e861a4a2` |
| 24 | `def` | [Simps.apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/simps-apply--b0ee12172270363f471fd985.md) | 183 | `declaration-track:b0ee12172270363f471fd985a533ef76703791aa5581b5e71b8a493d2fd43352` |
| 25 | `def` | [Simps.symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/simps-symm-apply--77fc1b7f95f98c75b498cd03.md) | 189 | `declaration-track:77fc1b7f95f98c75b498cd033876e3d1b3839203d0b0b0f688f3f628cec6c8ed` |
| 26 | `def` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/refl--7904848692e78f906d70a8f0.md) | 200 | `declaration-track:7904848692e78f906d70a8f0d94ceef47ea7e7b896a89669847b86091ab82c43` |
| 27 | `theorem` | [refl_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/refl-tolinearequiv--c5f4df08cbfcfb6194d135bb.md) | 204 | `result-track:c5f4df08cbfcfb6194d135bb662d3b3b2017c5916a586761f38a0556db248bf6` |
| 28 | `theorem` | [refl_toCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/refl-tocoalghom--740aebd66e36583d896af2db.md) | 207 | `result-track:740aebd66e36583d896af2db57e789d01697c699464248c9697058dbfa730234` |
| 29 | `theorem` | [symm_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/symm-tolinearequiv--21c0c14ec8342ae9694433d0.md) | 211 | `result-track:21c0c14ec8342ae9694433d057a0a9a1e0040bc66e246c9eb850faa1f444ea78` |
| 30 | `theorem` | [coe_symm_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/coe-symm-tolinearequiv--07c954c517540d53f53eafc8.md) | 214 | `result-track:07c954c517540d53f53eafc89fe744189a7766b693057d77d3b44d5a14435c71` |
| 31 | `theorem` | [symm_toCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/symm-tocoalghom--f4e46e1c708fb4077e738394.md) | 218 | `result-track:f4e46e1c708fb4077e7383944519604a84310b179cc9ac7d8d709401e0e8ec30` |
| 32 | `theorem` | [symm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/symm-apply-apply--b0f6352bab5c0c27498ab2dc.md) | 222 | `result-track:b0f6352bab5c0c27498ab2dc3cc783245e12612554748637aaac28cde1c1fa69` |
| 33 | `theorem` | [apply_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/apply-symm-apply--9b55a740ea4dcd9f9acf217a.md) | 227 | `result-track:9b55a740ea4dcd9f9acf217a7b82e8eb7908e34f439ea6315f002842049cd32d` |
| 34 | `theorem` | [invFun_eq_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/invfun-eq-symm--ee774d4aa6be49e10a7878a0.md) | 232 | `result-track:ee774d4aa6be49e10a7878a07d9a964985f67515df19a5ef7b39d2d3cdd80afc` |
| 35 | `theorem` | [coe_toEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/coe-toequiv-symm--63bc26f78fdf2fac0fec1a98.md) | 236 | `result-track:63bc26f78fdf2fac0fec1a98a3d11e18223821c83675d9279f1eaf8ad0895f17` |
| 36 | `def` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/trans--3be05d37ed2881d1d0cf1326.md) | 243 | `declaration-track:3be05d37ed2881d1d0cf13268ac93ed4801689ef47dfb6e0a576b2c95839b778` |
| 37 | `theorem` | [trans_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/trans-tolinearequiv--53c4e4c9340479726a29518b.md) | 246 | `result-track:53c4e4c9340479726a29518b78a669ae4b5515b81d925523d4ba2ab38177797d` |
| 38 | `theorem` | [trans_toCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/trans-tocoalghom--540779fc6f97e91e9b49c3d0.md) | 250 | `result-track:540779fc6f97e91e9b49c3d0eef51affb121d6deb8ee68854d2a7ba59101c6fe` |
| 39 | `theorem` | [coe_toEquiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/coe-toequiv-trans--1aa6ce24c955af0ed0440c91.md) | 254 | `result-track:1aa6ce24c955af0ed0440c91b245aa864dc5434f33d0bf1c35941f7ebbd42282` |
| 40 | `def` | [ofCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/ofcoalghom--8da99472db1f3b89d7fe5b39.md) | 258 | `declaration-track:8da99472db1f3b89d7fe5b3982c8abcd294fa03f98b77926c96fe7fbf96be165` |
| 41 | `theorem` | [coe_ofCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/coe-ofcoalghom--5444eeb363679567f8458f3c.md) | 267 | `result-track:5444eeb363679567f8458f3c8f167ee041667d7bf151b6d4b86fbb3fb9163afa` |
| 42 | `theorem` | [ofCoalgHom_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/ofcoalghom-symm--9d889b7d740a6ee4b00d1a65.md) | 271 | `result-track:9d889b7d740a6ee4b00d1a6532d6f66c548cc0e83a6cd98349893711c71550b1` |
| 43 | `def` | [ofBijective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/ofbijective--d976d6acec55374418af5d74.md) | 279 | `declaration-track:d976d6acec55374418af5d743f8fb55cc04b7fdf3d2645542e24742aca2659ab` |
| 44 | `theorem` | [coe_ofBijective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/coe-ofbijective--71b1d0ae12a7a476b908335b.md) | 285 | `result-track:71b1d0ae12a7a476b908335b57d985ede05bba286e62ee5263a3b3ed7fb45fd6` |
| 45 | `def` | [toCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/declarations/tocoalgebra--dd3aee49289ab47ef32f3884.md) | 295 | `declaration-track:dd3aee49289ab47ef32f3884abb9ae4ca0f52106ebd98e74e267da87edb65fea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
