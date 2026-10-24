# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b3bb4472e916d30f9dd55bd8499d5feed2b9704",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b3bb4472e916d30f9dd55bd8499d5feed2b9704`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/instance--c6fad4897b38802b8451185d.md) | 50 | `declaration-track:c6fad4897b38802b8451185d131f80b0326f36a26816e3c9aae1bcbb646c50da` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/instance--8335ae06e1d015e9de0c1a85.md) | 53 | `declaration-track:8335ae06e1d015e9de0c1a85c02792e028dc91a9292570554272b343af0fc47a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/instance--94697773f909f47cd6422aa4.md) | 57 | `declaration-track:94697773f909f47cd6422aa43a7e0e54993649dac541bc048fc2164991b0216a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/instance--e3cb02fb91291c493392450e.md) | 61 | `declaration-track:e3cb02fb91291c493392450e9371964d80ada87cd06e8c330293b314b94acc09` |
| 5 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/smul-apply--80c3f39835e915533883515a.md) | 64 | `result-track:80c3f39835e915533883515a2411b23ff400393ca31a207ffff206e1ce1e338d` |
| 6 | `def` | [lmk](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/lmk--f368f849376689e45bea8a09.md) | 71 | `declaration-track:f368f849376689e45bea8a09534e36e6519b00445ae372a20968dd738daf3a0b` |
| 7 | `def` | [lof](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/lof--aa310ada7e6b7a62d918161c.md) | 76 | `declaration-track:aa310ada7e6b7a62d918161c498718a67477d7aa0057dc010fedc0366d096eda` |
| 8 | `theorem` | [lof_eq_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/lof-eq-of--636cdeeb4c20d54c7e0c49da.md) | 80 | `result-track:636cdeeb4c20d54c7e0c49da82e3674952043955c185df702a867253147b123a` |
| 9 | `theorem` | [single_eq_lof](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/single-eq-lof--6338be708e037c293401474d.md) | 85 | `result-track:6338be708e037c293401474dfbbd4d7e0164b1e4a4834bc7c7b81e32ca81033e` |
| 10 | `theorem` | [mk_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/mk-smul--0326296a1a7dda339abd7ec4.md) | 89 | `result-track:0326296a1a7dda339abd7ec4938616b3748eff6d7d3cdb00adc0c61898d92bb5` |
| 11 | `theorem` | [of_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/of-smul--1948e6ea3619519cf8135fce.md) | 94 | `result-track:1948e6ea3619519cf8135fce033c01cc4e0fc89dd5dc99d5e354e61820ea9422` |
| 12 | `theorem` | [support_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/support-smul--cc3dafbe15dcca6aeea03fa7.md) | 100 | `result-track:cc3dafbe15dcca6aeea03fa7f68f69ecc770890a082e975cf840143a72b7b06a` |
| 13 | `def` | [toModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/tomodule--99642015ce0461df0526585f.md) | 112 | `declaration-track:99642015ce0461df0526585f3bc30f9c5f7a1074621800e5cb644b17f0b90e1d` |
| 14 | `theorem` | [coe_toModule_eq_coe_toAddMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/coe-tomodule-eq-coe-toaddmonoid--a5de0b1e0a5174a25d260c48.md) | 118 | `result-track:a5de0b1e0a5174a25d260c481f1a52dee1ec01f6aec3d97d39ce5b572696ee0f` |
| 15 | `theorem` | [toModule_lof](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/tomodule-lof--f092b5620f51e296614c712f.md) | 127 | `result-track:f092b5620f51e296614c712f8f553afd2c88b5d52c2500a6f5120531616cd76d` |
| 16 | `theorem` | [toModule.unique](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/tomodule-unique--f1ff0cbd6c0d9c0689f9ad70.md) | 135 | `result-track:f1ff0cbd6c0d9c0689f9ad708d217a956108121ad989e6cc7aa0f92f62a7302f` |
| 17 | `theorem` | [linearMap_ext](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/linearmap-ext--4cccb99501661f66406f24ed.md) | 145 | `result-track:4cccb99501661f66406f24edf1dc142941d060b892f4b8bdf3656bcafefda58c` |
| 18 | `def` | [lsetToSet](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/lsettoset--f2b2d1e47dbe7dcec03e3f46.md) | 152 | `declaration-track:f2b2d1e47dbe7dcec03e3f469671147c9ab460b6513acaca9129e9a97ae5ba93` |
| 19 | `def` | [linearEquivFunOnFintype](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/linearequivfunonfintype--3cb19d7f290113a8f2e367d0.md) | 161 | `declaration-track:3cb19d7f290113a8f2e367d0a3b7c27859e70eecab06b3f248524c80b7854f14` |
| 20 | `theorem` | [linearEquivFunOnFintype_lof](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/linearequivfunonfintype-lof--eb7b4f11113d27007bab0cb8.md) | 175 | `result-track:eb7b4f11113d27007bab0cb838f285ad9d5d0421186307fb3be27393c4f8ef2c` |
| 21 | `theorem` | [linearEquivFunOnFintype_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/linearequivfunonfintype-symm-single--846357bec48a887838dc1b79.md) | 183 | `result-track:846357bec48a887838dc1b796e121f5ed27c3bedfbbb39e6ba695d0927c699e9` |
| 22 | `theorem` | [linearEquivFunOnFintype_symm_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/linearequivfunonfintype-symm-coe--26550205224d06557784e4cb.md) | 191 | `result-track:26550205224d06557784e4cb69d7f4c1ceab892079ddffe21f350dee3f355c19` |
| 23 | `def` | [lid](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/lid--c058598c621b23783dc126b8.md) | 197 | `declaration-track:c058598c621b23783dc126b8a9a529bf364f1a234d643dfad42768233111a754` |
| 24 | `def` | [component](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/component--9d1013490961a10bcb559181.md) | 205 | `declaration-track:9d1013490961a10bcb559181285b4b4432296a1193a62a76ed525163e4d3bdf0` |
| 25 | `theorem` | [apply_eq_component](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/apply-eq-component--4ad3fe24df3d2b2bd807ab83.md) | 211 | `result-track:4ad3fe24df3d2b2bd807ab834dbf37bc340adefedbee869e3075128721b13981` |
| 26 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/ext--648760678806a5d09d25e364.md) | 215 | `result-track:648760678806a5d09d25e364bba6ffa34bd20aeb18384fa88931fc2b2686d854` |
| 27 | `theorem` | [ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/ext-iff--69089c0dc5011a99651adeae.md) | 219 | `result-track:69089c0dc5011a99651adeae6473013a6913b5d29e6a3fc7add57d1b0a7a5b42` |
| 28 | `theorem` | [lof_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/lof-apply--57269dda6269cf6b0bc6cf39.md) | 224 | `result-track:57269dda6269cf6b0bc6cf39a4577506bdebf4f1553a92bdb38521406ea2cbc7` |
| 29 | `theorem` | [component.lof_self](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/component-lof-self--305cb780434c7550efa71889.md) | 229 | `result-track:305cb780434c7550efa7188980759f49739a84f38d57c2d4b3e018d0f2a14642` |
| 30 | `theorem` | [component.of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/component-of--54efe7b3d98466a958df358d.md) | 233 | `result-track:54efe7b3d98466a958df358dbf19948d24ca18ab29ac8813db0fa911d7ab32e4` |
| 31 | `def` | [lequivCongrLeft](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/lequivcongrleft--1090b9afee4a84bd05a86a94.md) | 243 | `declaration-track:1090b9afee4a84bd05a86a94104b1a131422a11ae5fdc858f126af376d92dc28` |
| 32 | `theorem` | [lequivCongrLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/lequivcongrleft-apply--c633cdb446c09a2afa8a5448.md) | 248 | `result-track:c633cdb446c09a2afa8a544889b43e0af8adc905ebf7b54e8129771ff58a5e12` |
| 33 | `def` | [sigmaLcurry](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/sigmalcurry--8c89a9fe32297a12adf076a4.md) | 262 | `declaration-track:8c89a9fe32297a12adf076a4dce02289bdf22774d6b0eb97b19ccb4fd92b6b84` |
| 34 | `theorem` | [sigmaLcurry_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/sigmalcurry-apply--bece8a130203cf0863d46371.md) | 267 | `result-track:bece8a130203cf0863d46371df3348ba516279a1844d728c14fd6385f667517b` |
| 35 | `def` | [sigmaLuncurry](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/sigmaluncurry--0124a80d49bb0551b28a44c3.md) | 274 | `declaration-track:0124a80d49bb0551b28a44c31ebe9daa1713cb2506a3a698d1e20f7c4ba5999c` |
| 36 | `theorem` | [sigmaLuncurry_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/sigmaluncurry-apply--eea544d2065ce8b5c47bfb88.md) | 280 | `result-track:eea544d2065ce8b5c47bfb88672ff98dbe0d6409303e45ef8a5f0e9af4c4b6ac` |
| 37 | `def` | [sigmaLcurryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/sigmalcurryequiv--1b74f76b590c745ee9797a2a.md) | 286 | `declaration-track:1b74f76b590c745ee9797a2a844dd4f8752a77886943324f5c6e532079feefc3` |
| 38 | `def` | [lequivProdDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/lequivproddirectsum--14c5a592f73f8a4135819596.md) | 300 | `declaration-track:14c5a592f73f8a4135819596e6ea0993dda0db506d818203a60e9027cf22b0ad` |
| 39 | `def` | [coeLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/coelinearmap--8354ee49af70bca7ed0ee021.md) | 322 | `declaration-track:8354ee49af70bca7ed0ee0219a94beb64a7df41f17c10f552a12021e3cc0bf3d` |
| 40 | `theorem` | [coeLinearMap_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/coelinearmap-of--5be6f8e217814244564767ec.md) | 327 | `result-track:5be6f8e217814244564767ecb57e4c9ab3f27310d0fb81c725b9324bc80ea2f9` |
| 41 | `theorem` | [IsInternal.submodule_iSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/isinternal-submodule-isup-eq-top--8d5096c6444460850772f4b3.md) | 335 | `result-track:8d5096c6444460850772f4b362ad1fb20e67887ac0cc12c2ac30f50d1eb8f8d5` |
| 42 | `theorem` | [IsInternal.submodule_independent](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/isinternal-submodule-independent--90d82b294e8908c455120fe5.md) | 341 | `result-track:90d82b294e8908c455120fe52bbfac60863ef6d1e93f2c6646f19de705198deb` |
| 43 | `def` | [IsInternal.collectedBasis](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/isinternal-collectedbasis--59dfecfaff22239453b38c0f.md) | 347 | `declaration-track:59dfecfaff22239453b38c0f93c07f222c0db05f9013202df88a480d4a43206e` |
| 44 | `theorem` | [IsInternal.collectedBasis_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/isinternal-collectedbasis-coe--f16f4f939309a51dc7064626.md) | 356 | `result-track:f16f4f939309a51dc706462646d1ff6f1a439cc7aee7361115f527a60ab3a856` |
| 45 | `theorem` | [IsInternal.collectedBasis_mem](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/isinternal-collectedbasis-mem--d282c9a3123f971197e5e226.md) | 379 | `result-track:d282c9a3123f971197e5e2264cd9a572371c9325907305aa6ee515fa1f36b867` |
| 46 | `theorem` | [IsInternal.isCompl](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/isinternal-iscompl--04ca93c9989a08cdbb92a231.md) | 386 | `result-track:04ca93c9989a08cdbb92a231dda781ac29a83c9ff88aef83735202ba77ef04a0` |
| 47 | `theorem` | [isInternal_submodule_of_independent_of_iSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/isinternal-submodule-of-independent-of-isup-eq-top--a4435d6f748fb7612025f824.md) | 405 | `result-track:a4435d6f748fb7612025f824a38a7860dcdb4fbe30cb57ac5fe8f6fce3cfa4ee` |
| 48 | `theorem` | [isInternal_submodule_iff_independent_and_iSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/isinternal-submodule-iff-independent-and-isup-eq-top--a4a8c078a5f2200bee1a58f9.md) | 413 | `result-track:a4a8c078a5f2200bee1a58f9badc1d5c9a48df914b69af804ba22aec6d86e93e` |
| 49 | `theorem` | [isInternal_submodule_iff_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/isinternal-submodule-iff-iscompl--11b99e88e7e0b602f5e112d1.md) | 421 | `result-track:11b99e88e7e0b602f5e112d1a149c75c8f479a3e931bfffa37f7d7811c67292c` |
| 50 | `theorem` | [IsInternal.addSubmonoid_independent](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/isinternal-addsubmonoid-independent--16135864f21298f79c7582bf.md) | 432 | `result-track:16135864f21298f79c7582bfd9d2e6cba81c107e78b81fbf90131849e67de9b6` |
| 51 | `theorem` | [IsInternal.addSubgroup_independent](../../../../../mathematics/Algebra/LinearAlgebra/Module/Varianta7d9ba997616b2c292e828e1e8df272385cdd72ae1c91768819b31b894c2f42a.lean/declarations/isinternal-addsubgroup-independent--dfb74d1de5d90d5ff8ae1cb5.md) | 437 | `result-track:dfb74d1de5d90d5ff8ae1cb52a0c08d852118186fd333a74926c4777b414b6d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
