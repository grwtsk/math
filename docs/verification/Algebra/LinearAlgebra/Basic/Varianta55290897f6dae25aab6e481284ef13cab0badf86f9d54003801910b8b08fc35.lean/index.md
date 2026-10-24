# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a5faa086fb4732d5896296784cf7c776c1b048b",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a5faa086fb4732d5896296784cf7c776c1b048b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean.json)

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
| 1 | `def` | [liftAddHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/liftaddhom--d81242feebad5cdcc084afb6.md) | 65 | `declaration-track:d81242feebad5cdcc084afb6cb93a0ea05c32bab2799aea5d1477beea5b4a907` |
| 2 | `theorem` | [liftAddHom_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/liftaddhom-tmul--628fc6a53f04f7eab52664c2.md) | 87 | `result-track:628fc6a53f04f7eab52664c21825ba56b088dccc00f04428c5eba280befe0c73` |
| 3 | `def` | [liftAux](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/liftaux--0ea20947d46d8f1c4b715eae.md) | 106 | `declaration-track:0ea20947d46d8f1c4b715eaea070aca2cc4054816313e0e912287ef69efff39c` |
| 4 | `theorem` | [liftAux_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/liftaux-tmul--0a260bfb5f406f59377c2fa4.md) | 110 | `result-track:0a260bfb5f406f59377c2fa4738b62ad635f671efe83adc3de0b08c0f35f4579` |
| 5 | `theorem` | [liftAux.smulₛₗ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/liftaux-smul--50b7afeba4809e874ba8119f.md) | 116 | `result-track:50b7afeba4809e874ba8119f1743c4071ecdae03b0e9ceef66ae557d530475fc` |
| 6 | `theorem` | [liftAux.smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/liftaux-smul--3e0dda21b24327f98cf63735.md) | 121 | `result-track:3e0dda21b24327f98cf63735331e846ce320bafae05c683e662b211c486065f8` |
| 7 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lift--0a588811b1ceeefeb76f26b4.md) | 130 | `declaration-track:0a588811b1ceeefeb76f26b4d3df1956209ac6b3101d5c3219c0b9db0e706d44` |
| 8 | `theorem` | [lift.tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lift-tmul--7f482a8fd35ee55591fd94e1.md) | 134 | `result-track:7f482a8fd35ee55591fd94e1d6b6f48cedeaf5aecad860a09e650e3527d75639` |
| 9 | `theorem` | [lift.tmul'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lift-tmul--54b783c94f88518494d480ce.md) | 138 | `result-track:54b783c94f88518494d480ce78f3273c58d6c9cc8c1a12846394e4c7b22b613a` |
| 10 | `theorem` | [ext'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/ext--4436448118fa66ef07fa23a3.md) | 141 | `result-track:4436448118fa66ef07fa23a38cfa839f4bcafb7d8e7aeae7b7a4dd0abde07913` |
| 11 | `theorem` | [lift.unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lift-unique--f7c70b5a6f28f84f265839a2.md) | 146 | `result-track:f7c70b5a6f28f84f265839a2a43498aa5da48e8b6486067c02f9ca0cd3ce4b56` |
| 12 | `theorem` | [lift_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lift-mk--ebb521de17776bfc7b67113d.md) | 149 | `result-track:ebb521de17776bfc7b67113de5a4252a0741f276cf03727098fe777cbb20a98c` |
| 13 | `theorem` | [lift_compr₂ₛₗ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lift-compr--1d62c63cdb8d2acc66e150ba.md) | 152 | `result-track:1d62c63cdb8d2acc66e150bafeb5a1ec2338cf824057f8e99808e6c89e0d7bae` |
| 14 | `theorem` | [lift_compr₂](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lift-compr--8013b83fe021c738dc178267.md) | 156 | `result-track:8013b83fe021c738dc1782678cee63ea4bb03579f4b0e6590b0047d56f123448` |
| 15 | `theorem` | [lift_mk_compr₂ₛₗ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lift-mk-compr--49b9eaf56e89760410115cac.md) | 159 | `result-track:49b9eaf56e89760410115cac342d7fca8cca7ceb18939f0027b4d0c3ffd68aae` |
| 16 | `theorem` | [lift_mk_compr₂](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lift-mk-compr--33540e7430401519b79c56db.md) | 162 | `result-track:33540e7430401519b79c56dbadf818bf5ba448702c9d8887d0977861726b2ff0` |
| 17 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/ext--0670c590bca89d4632716988.md) | 171 | `result-track:0670c590bca89d4632716988bf1a420e0aaea0f7bf72e54d7a354af82c8d1815` |
| 18 | `def` | [uncurry](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/uncurry--f5d32747299e421f328b01d8.md) | 181 | `declaration-track:f5d32747299e421f328b01d887f4dd147d071177f20057e1d38a08995d8b0b2e` |
| 19 | `theorem` | [uncurry_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/uncurry-apply--e29a50868c7b7b9b4f37503d.md) | 187 | `result-track:e29a50868c7b7b9b4f37503d16180a04e3e9282338fcd9b8ecc215c2cab8021b` |
| 20 | `def` | [lift.equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lift-equiv--ef911ae8fb276a04099d7c5b.md) | 195 | `declaration-track:ef911ae8fb276a04099d7c5bf1dcfcc8219fa757215f1230ed3ddbc941cbdfca` |
| 21 | `theorem` | [lift.equiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lift-equiv-apply--ed84a3054044c3511e6bba9b.md) | 200 | `result-track:ed84a3054044c3511e6bba9b5b6070a6dd96f821edd792a347e683819b5dc8e5` |
| 22 | `theorem` | [lift.equiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lift-equiv-symm-apply--19273a407786155751019f08.md) | 205 | `result-track:19273a407786155751019f08bcf7dd934cebdf086f09fb3ee9e6266637d5a313` |
| 23 | `def` | [lcurry](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lcurry--409a0ebd478863e127081bdf.md) | 211 | `declaration-track:409a0ebd478863e127081bdf0c90f0729d1a9330f751019249ae4103bfb22a07` |
| 24 | `theorem` | [lcurry_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lcurry-apply--b8126b87b89ea57823e8b1f2.md) | 217 | `result-track:b8126b87b89ea57823e8b1f2d2549faf7bfbdee8b4d0cf968647596b2c723221` |
| 25 | `def` | [curry](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/curry--f584c31b250b0dd970cd3c0e.md) | 223 | `declaration-track:f584c31b250b0dd970cd3c0e0bef42b0f0653cc1fa78c3f583d979f6f010e12f` |
| 26 | `theorem` | [curry_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/curry-apply--4907d5ceb38091d33806365a.md) | 227 | `result-track:4907d5ceb38091d33806365a3eea2e9a9050be5075dde8225c1dcfbd77c081d2` |
| 27 | `theorem` | [curry_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/curry-injective--8154a3df730d8f353405f696.md) | 230 | `result-track:8154a3df730d8f353405f69631f1be18e7c41c621c65a7186cdfecd3aca74045` |
| 28 | `theorem` | [ext_threefold](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/ext-threefold--245a262b220b00f46fa8f0fd.md) | 234 | `result-track:245a262b220b00f46fa8f0fd93a3fc99b55e15dffe99dc8666ab6afb5b770c14` |
| 29 | `theorem` | [ext_threefold'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/ext-threefold--6d5035137e29c82c10d9ad22.md) | 239 | `result-track:6d5035137e29c82c10d9ad228b66f8014901788a06365d97ac6b21242ca2ab02` |
| 30 | `theorem` | [ext_fourfold](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/ext-fourfold--15ac9177aa5888df842386b5.md) | 245 | `result-track:15ac9177aa5888df842386b512babc87a049d12dcc47b1ec4640beb88d21f99c` |
| 31 | `theorem` | [ext_fourfold'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/ext-fourfold--db2b744c4276378d1820ec16.md) | 252 | `result-track:db2b744c4276378d1820ec1616b0936a0ea826a7741b2349944390eedba7bf4a` |
| 32 | `theorem` | [ext_fourfold''](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/ext-fourfold--67f155522406e9b7eab61492.md) | 259 | `result-track:67f155522406e9b7eab61492a675ecd4c88419efdbaefe23d10057878b8d0152` |
| 33 | `def` | [comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/comm--a874a66ce6ae585082421dfc.md) | 272 | `declaration-track:a874a66ce6ae585082421dfca57f8bde7639a1a9988c5ba8bb775dd47b254746` |
| 34 | `theorem` | [comm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/comm-tmul--274d5e49a8b018b3fc8846c0.md) | 277 | `result-track:274d5e49a8b018b3fc8846c0bdefd498738bd7ea048e7f39efac0e81417f0f9c` |
| 35 | `lemma` | [comm_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/comm-symm--6eaf8e98df8102e5b00e6faa.md) | 281 | `result-track:6eaf8e98df8102e5b00e6faa91fcd113189d3975979326d7237dc7897de10e3d` |
| 36 | `theorem` | [comm_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/comm-symm-tmul--e3d6048267213d1d45b1dd3f.md) | 283 | `result-track:e3d6048267213d1d45b1dd3fdbc12a038f8b502d68d6d2d21b5b6e48c3f38b2d` |
| 37 | `lemma` | [lift_comp_comm_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/lift-comp-comm-eq--5d3fa1b5ce45d575228da901.md) | 287 | `result-track:5d3fa1b5ce45d575228da9015968fe6f072ea45e8f164564c2dd98704b45aeaa` |
| 38 | `lemma` | [comm_trans_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/comm-trans-comm--f56daae98cdc3e7446cb3efd.md) | 292 | `result-track:f56daae98cdc3e7446cb3efd78dd8ea58b5b01575bc46ff8ad96cb202c5b022a` |
| 39 | `lemma` | [comm_comp_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/comm-comp-comm--d625ffd72230493b7b767fe1.md) | 296 | `result-track:d625ffd72230493b7b767fe13809d18b59700dd1278b834393c9acbdf523c379` |
| 40 | `lemma` | [comm_comp_comm_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/comm-comp-comm-assoc--bda2cb0a4220d16a8a7db674.md) | 301 | `result-track:bda2cb0a4220d16a8a7db674a06ed9de615ce6ce2b87282bed49856948558b64` |
| 41 | `theorem` | [comm_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/comm-comm--efbe5268a61f32fad884126f.md) | 305 | `result-track:efbe5268a61f32fad884126f3489881510718db8100b177eb946119d48ad5e30` |
| 42 | `def` | [mapOfCompatibleSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/mapofcompatiblesmul--5bc5d6daa29cf7cb976d6810.md) | 323 | `declaration-track:5bc5d6daa29cf7cb976d6810362b7332729e36c1ca1864e0f5a524fe5a02f719` |
| 43 | `theorem` | [mapOfCompatibleSMul_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/mapofcompatiblesmul-tmul--bbea6a1fd810b24f812ff62c.md) | 336 | `result-track:bbea6a1fd810b24f812ff62c4833b87299822b727944787c4e5da512bb65381b` |
| 44 | `theorem` | [mapOfCompatibleSMul_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/mapofcompatiblesmul-surjective--1fcfad5ce667ed003a5fd578.md) | 341 | `result-track:1fcfad5ce667ed003a5fd578f090fdff53ee65d7ef50502f2552563fb425d7c7` |
| 45 | `def` | [equivOfCompatibleSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/equivofcompatiblesmul--0a6b0611e44baa558d4cef31.md) | 350 | `declaration-track:0a6b0611e44baa558d4cef31392d7489d6871641763c2ab7de94a6fc337cdf8f` |
| 46 | `def` | [Neg.aux](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/neg-aux--bef8f8a49870668ca7099a8f.md) | 379 | `declaration-track:bef8f8a49870668ca7099a8f87bc9025914d6b4da4d0059667447a41c1c8f39d` |
| 47 | `instance` | [neg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/neg--6a491af12dd9e00251c53cfb.md) | 382 | `declaration-track:6a491af12dd9e00251c53cfbfeb05c12f8e6e39ba684a860f384ac59f8dd2005` |
| 48 | `theorem` | [neg_add_cancel](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/neg-add-cancel--80b4aea3d0e72a3ddaac5e16.md) | 385 | `result-track:80b4aea3d0e72a3ddaac5e1687084cd970172b7909ddb93a19b8ec5a35970d39` |
| 49 | `instance` | [addCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/addcommgroup--9d1f4b01b4d48dae2bb60e94.md) | 397 | `declaration-track:9d1f4b01b4d48dae2bb60e94a390a156bfb4bf29a897ef326322a8cca68049c4` |
| 50 | `theorem` | [neg_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/neg-tmul--d99ad35ea71b04a779f0958b.md) | 407 | `result-track:d99ad35ea71b04a779f0958b3ac91e120e9d02d6e5672bd8ee9d9664a9ec5758` |
| 51 | `theorem` | [tmul_neg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/tmul-neg--492011b31895997275c59e33.md) | 410 | `result-track:492011b31895997275c59e3315bbbc28167d84a039955c5e5a02a0e8238fce6d` |
| 52 | `theorem` | [tmul_sub](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/tmul-sub--5d728b185a3e80173c999782.md) | 413 | `result-track:5d728b185a3e80173c999782042c827f14166fbbf579711f8e617f37cdf17c92` |
| 53 | `theorem` | [sub_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/sub-tmul--2cef52d6399f531580d8ec17.md) | 416 | `result-track:2cef52d6399f531580d8ec17dc6c0dd6f90a459be7afaaf02c849fc271398df2` |
| 54 | `instance` | [CompatibleSMul.int](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/compatiblesmul-int--df90a840fb128ad7fa832bdb.md) | 427 | `declaration-track:df90a840fb128ad7fa832bdb3a48e3405935f861168598013b4856babce085dd` |
| 55 | `instance` | [CompatibleSMul.unit](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean/declarations/compatiblesmul-unit--f6d029209b30381f51effba5.md) | 432 | `declaration-track:f6d029209b30381f51effba533365ae4241b608a1bc132969fe2bed08f3ee9b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
