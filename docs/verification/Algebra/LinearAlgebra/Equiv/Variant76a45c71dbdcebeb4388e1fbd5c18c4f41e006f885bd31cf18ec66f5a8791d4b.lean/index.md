# Verification target: GRWTSK.Algebra.LinearAlgebra.Equiv.Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "262b49f80f9922e41fe3b52ec89c1e17be4cef17",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `262b49f80f9922e41fe3b52ec89c1e17be4cef17`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean.json)

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
| 1 | `structure` | [CoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/coalgequiv--83842b4b30d9f906247be8a9.md) | 34 | `declaration-track:83842b4b30d9f906247be8a9c3a7bd2bd585d7e885410b91923c8c8c0fa17f95` |
| 2 | `class` | [CoalgEquivClass](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/coalgequivclass--6f1492da640643050de1b2f4.md) | 46 | `declaration-track:6f1492da640643050de1b2f4ab6012d292901c6df00a642d2eee54c4e08434ce` |
| 3 | `def` | [_root_.CoalgEquiv.ofClass](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/root-coalgequiv-ofclass--71453ac9cb8d6b1a12054891.md) | 58 | `declaration-track:71453ac9cb8d6b1a120548919171bb40bc4d0fa9ce0320048d07b7df9833af98` |
| 4 | `instance` | [instCoeToCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/instcoetocoalgequiv--14984a24b147456bb86f7dd3.md) | 64 | `declaration-track:14984a24b147456bb86f7dd3f9cde5e73c62f3425df5b44fe1fe4e3eb0e7a442` |
| 5 | `def` | [toEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/toequiv--72420beaa046ef5235959dca.md) | 80 | `declaration-track:72420beaa046ef5235959dca22319ff5e07a4323783516306d8539c3df6dc577` |
| 6 | `theorem` | [toEquiv_injective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/toequiv-injective--2b756d169dd9a3f940fdf564.md) | 82 | `result-track:2b756d169dd9a3f940fdf5646a43a58a17ee31cd661a418ac2be943a901e60b1` |
| 7 | `theorem` | [toEquiv_inj](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/toequiv-inj--57b3342e1f3948ef8eb329b0.md) | 88 | `result-track:57b3342e1f3948ef8eb329b09972091d529b0116ab1f804602d37cb033bf68e0` |
| 8 | `theorem` | [toCoalgHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/tocoalghom-injective--970c3da11db59e85ab450010.md) | 91 | `result-track:970c3da11db59e85ab4500106505bde0c3d1f45ab58a51297311f3ca1c839685` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/instance--e9317fa0c2d378eded779bf7.md) | 95 | `declaration-track:e9317fa0c2d378eded779bf703a69964dbfe9a45d78bdce25cbcc77f5d96e53b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/instance--2805e3af040fab7210c6496a.md) | 103 | `declaration-track:2805e3af040fab7210c6496ac1970cc89f5692f08121c97828dbe85670f4c836` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/instance--4f26d3e4036956164c1a6f23.md) | 107 | `declaration-track:4f26d3e4036956164c1a6f2346556387a806ab0ae8d1b5147a2ac91dbbfbba1c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/instance--64ddea630b6fba727294b7d3.md) | 113 | `declaration-track:64ddea630b6fba727294b7d371c2b75ffff76c3775072d7811ff31ed5820421f` |
| 13 | `theorem` | [toCoalgHom_inj](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/tocoalghom-inj--9bc33e61000f799e43dcfa9e.md) | 116 | `result-track:9bc33e61000f799e43dcfa9e908c4dee840ea252fa8ac87fd669b528580d3447` |
| 14 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/coe-mk--4a77e5822507768fa5b8326f.md) | 120 | `result-track:4a77e5822507768fa5b8326f699007a675057b7c786d57162f73d546df87f35f` |
| 15 | `theorem` | [coe_ofClass](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/coe-ofclass--e31a5b144979661b5749d534.md) | 133 | `result-track:e31a5b144979661b5749d53444c014bd0aafb36f312b236205b6a1c60bd88ee1` |
| 16 | `theorem` | [coe_coalgHomOfClass](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/coe-coalghomofclass--6da3fd80987a6f624418c4a6.md) | 136 | `result-track:6da3fd80987a6f624418c4a681685699031f3abb2b7037624e34f8c22ee9638c` |
| 17 | `theorem` | [toLinearEquiv_eq_coe](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/tolinearequiv-eq-coe--e11b9f09513a469c7603ba60.md) | 142 | `result-track:e11b9f09513a469c7603ba6002bb143d9448e1d2302f9b6632a7dc4a4f6f89bb` |
| 18 | `theorem` | [toCoalgHom_eq_ofClass](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/tocoalghom-eq-ofclass--31a88f3bdc11402b323d4605.md) | 146 | `result-track:31a88f3bdc11402b323d460532f7be6de27c41a63e24cb62efd147c223cdccb7` |
| 19 | `theorem` | [coe_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/coe-tolinearequiv--898c6f33e4ee204caeb30a61.md) | 152 | `result-track:898c6f33e4ee204caeb30a61c4733d5ab39e0afeddc36e4a512ec1e0fb0f650b` |
| 20 | `theorem` | [toLinearEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/tolinearequiv-tolinearmap--4acb1f0ff4c665a39f650c3f.md) | 157 | `result-track:4acb1f0ff4c665a39f650c3ffecd79640598a5f5947134a5c83c7586e2d782ac` |
| 21 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/ext--29d18ed3900be56e295294fe.md) | 165 | `result-track:29d18ed3900be56e295294fe90b58ad95720cdda6f76cf358d77f476ac981864` |
| 22 | `theorem` | [congr_arg](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/congr-arg--d59856f041a0601fc805f081.md) | 168 | `result-track:d59856f041a0601fc805f081e9d93a5fda8b1f33554b48b180f1830916f988a0` |
| 23 | `theorem` | [congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/congr-fun--7e5b55ffc8c9d42c4802be06.md) | 171 | `result-track:7e5b55ffc8c9d42c4802be064d9de90a6512e362777e770d1196ef936582f94f` |
| 24 | `def` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/symm--d9e7f8ef0000eff4f6050e62.md) | 178 | `declaration-track:d9e7f8ef0000eff4f6050e62a925f6966c7bb75f77c9d708415f8dbed44911ac` |
| 25 | `def` | [Simps.apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/simps-apply--8e677ee668224984d0c7c960.md) | 190 | `declaration-track:8e677ee668224984d0c7c960400cda0aff722839eb945aac851f36444837575a` |
| 26 | `def` | [Simps.symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/simps-symm-apply--5f6d4e21795e015b48aec88a.md) | 196 | `declaration-track:5f6d4e21795e015b48aec88a3c0f3fbd57baa1508c13a528b6dc9e181672e71c` |
| 27 | `def` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/refl--3429b54dd74657e13c18c58c.md) | 207 | `declaration-track:3429b54dd74657e13c18c58c69fb54fb13808e456d5012dd2be7467e6400dd78` |
| 28 | `theorem` | [refl_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/refl-tolinearequiv--3044cb1ad3fedde76e22a8a6.md) | 211 | `result-track:3044cb1ad3fedde76e22a8a6bf82e64bebbeec40074089effd8fcf1a58ba2af9` |
| 29 | `theorem` | [refl_toCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/refl-tocoalghom--e64b1a20bdbd5016921a10ab.md) | 214 | `result-track:e64b1a20bdbd5016921a10ab6aa4b145c7cb6efe7db3df77d79ccafd2a017b9f` |
| 30 | `theorem` | [symm_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/symm-tolinearequiv--75d72919d9be38eecc0c7a4d.md) | 218 | `result-track:75d72919d9be38eecc0c7a4dbc4cb4616e160c4e6a34ee2754361380fbeba466` |
| 31 | `theorem` | [coe_symm_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/coe-symm-tolinearequiv--c2e8d49cd89ab2bbb3a143ef.md) | 221 | `result-track:c2e8d49cd89ab2bbb3a143ef766169f1e205a3cade5f1d79b348b1be5e617cb5` |
| 32 | `theorem` | [symm_toCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/symm-tocoalghom--691b9c81e63e6277d12c54aa.md) | 225 | `result-track:691b9c81e63e6277d12c54aa8a1341c40fd910dd85de134867d37064d70efbc3` |
| 33 | `theorem` | [symm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/symm-apply-apply--d9fbd8c0f3ceaf4171d01b3a.md) | 229 | `result-track:d9fbd8c0f3ceaf4171d01b3aecd1985a18b1e76c46cbbc8b719c21285ac3cb47` |
| 34 | `theorem` | [apply_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/apply-symm-apply--19b933b2980039d75fad97fe.md) | 234 | `result-track:19b933b2980039d75fad97feb81034a04c91bc1aefbdcc645df782e8b410a343` |
| 35 | `theorem` | [invFun_eq_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/invfun-eq-symm--96a92e296c515cffbd038f33.md) | 239 | `result-track:96a92e296c515cffbd038f33fbbe3e20e485df2c9437fb01b387da20035dbef9` |
| 36 | `theorem` | [coe_toEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/coe-toequiv-symm--94e41d41a79a7effe364ed84.md) | 242 | `result-track:94e41d41a79a7effe364ed84c8357ecb20de85f5726bb8440f3c77f80e1ec663` |
| 37 | `theorem` | [toEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/toequiv-symm--2e37edd750c6dab65224416c.md) | 245 | `result-track:2e37edd750c6dab65224416c819a110ca73b47ae27f075ccdc8bc6fa584a79b2` |
| 38 | `theorem` | [coe_toEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/coe-toequiv--e5f5cd7ee4eacc0a67cd92a3.md) | 249 | `result-track:e5f5cd7ee4eacc0a67cd92a34fa46b2627e48fa912deb4742edc030710f8a991` |
| 39 | `theorem` | [coe_symm_toEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/coe-symm-toequiv--4e118ff11b97f0a9be3d3194.md) | 253 | `result-track:4e118ff11b97f0a9be3d31944804b06baf690e15bf102628e5e18226516e1e71` |
| 40 | `def` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/trans--7f49eb9e3c4da7d71dbbbe98.md) | 263 | `declaration-track:7f49eb9e3c4da7d71dbbbe980c931b696fd71c48b699ab5cecf029c1c56cf703` |
| 41 | `theorem` | [trans_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/trans-tolinearequiv--5293f8cb68f8f838950eb849.md) | 266 | `result-track:5293f8cb68f8f838950eb849634d812b50d042bf59c097cea45176f4edb43a07` |
| 42 | `theorem` | [trans_toCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/trans-tocoalghom--1cd068a2819c39f950e804aa.md) | 270 | `result-track:1cd068a2819c39f950e804aa7b5de9e2cea888ec36384e59e97e1f3e767e682e` |
| 43 | `theorem` | [coe_toEquiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/coe-toequiv-trans--201bc86529d8c095648a8daf.md) | 274 | `result-track:201bc86529d8c095648a8daf6633daf8422efe6739571a10834c1f2a00940a0c` |
| 44 | `def` | [ofCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/ofcoalghom--fe342e111000c0705b7eff1b.md) | 278 | `declaration-track:fe342e111000c0705b7eff1be95b0aba87feaf303cd626bcac82db5cf9ea0007` |
| 45 | `theorem` | [coe_ofCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/coe-ofcoalghom--c770c7952f94a0efa13acaef.md) | 287 | `result-track:c770c7952f94a0efa13acaefccb024eddb0b220f33eafbe94e64e1d16a8898a9` |
| 46 | `theorem` | [ofCoalgHom_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/ofcoalghom-symm--d23f3fdb120a8ca4ca08da93.md) | 291 | `result-track:d23f3fdb120a8ca4ca08da9380586ee520abc21a31f44d43e12447903ae9cae7` |
| 47 | `def` | [ofBijective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/ofbijective--72aa407556f138bff81a9c0d.md) | 299 | `declaration-track:72aa407556f138bff81a9c0d4988b24cac56c55e504c0beebd9a890d6ca703d2` |
| 48 | `theorem` | [coe_ofBijective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/coe-ofbijective--6e7d654439baceb9b2f0a78e.md) | 305 | `result-track:6e7d654439baceb9b2f0a78e1afb8b08f1656f9b685e1518c61d32206a2626d4` |
| 49 | `def` | [toCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variant76a45c71dbdcebeb4388e1fbd5c18c4f41e006f885bd31cf18ec66f5a8791d4b.lean/declarations/tocoalgebra--21a9ae950f20b79d17b736d1.md) | 316 | `declaration-track:21a9ae950f20b79d17b736d142422a20f3bb6ff8434183440d3a4713bfecc84e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
