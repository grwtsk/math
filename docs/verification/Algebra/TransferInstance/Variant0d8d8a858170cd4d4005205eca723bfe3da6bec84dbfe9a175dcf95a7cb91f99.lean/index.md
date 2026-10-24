# Verification target: GRWTSK.Algebra.TransferInstance.Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "318cd0b49bd63174a8e2d59b18cfef5d91001b18",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/index.md) · [Full source](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `318cd0b49bd63174a8e2d59b18cfef5d91001b18`.

Source path: `GRWTSK/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [one](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/one--deb53b27446af6950fa02980.md) | 45 | `declaration-track:deb53b27446af6950fa029800db1a2db61b2ff3fc8a15313c7ef4fcb96adc63e` |
| 2 | `theorem` | [one_def](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/one-def--d038ca4ac1af0587319f54ff.md) | 51 | `result-track:d038ca4ac1af0587319f54ff688118f42351fc76d0b1f51eab69d1eb1fcd0db9` |
| 3 | `def` | [mul](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/mul--729f763ed58219e28959c766.md) | 60 | `declaration-track:729f763ed58219e28959c766e46b6806f95c3728e979ad410fbcdb1192cf5b91` |
| 4 | `theorem` | [mul_def](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/mul-def--a437b6f1884be6a2500c0f5b.md) | 66 | `result-track:a437b6f1884be6a2500c0f5b130595e8d68c20c3052c3440604ac005258e63c8` |
| 5 | `def` | [div](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/div--30296f57b4fed533e98f329f.md) | 75 | `declaration-track:30296f57b4fed533e98f329f72c0b318f5bd1d7f2ae598ed449498fa0a659cbe` |
| 6 | `theorem` | [div_def](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/div-def--6fdbb6aa58a7be218b3a13dc.md) | 81 | `result-track:6fdbb6aa58a7be218b3a13dc30648040225bd1bb2f06f99d7ed255f2473e5952` |
| 7 | `def` | [Inv](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/inv--87394b28d0ce396e1ddec055.md) | 92 | `declaration-track:87394b28d0ce396e1ddec0556e8904a8726f9d6b8d0fd713b629de7e8026788a` |
| 8 | `theorem` | [inv_def](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/inv-def--6568af76cd80e0f94af06d67.md) | 98 | `result-track:6568af76cd80e0f94af06d67eb8532f81cb82c78789d6debee74f0fbf9c678bd` |
| 9 | `def` | [smul](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/smul--dc13617afe248276f89019bc.md) | 107 | `declaration-track:dc13617afe248276f89019bcd398cd772306b50993e725c92e8d131e0b6eca5e` |
| 10 | `theorem` | [smul_def](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/smul-def--85347590b6effc21cde7748c.md) | 111 | `result-track:85347590b6effc21cde7748c6cf88b193ce0e16594805eaccaf5255a82650304` |
| 11 | `def` | [pow](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/pow--e5fdf315d6e3a2dcc086a147.md) | 119 | `declaration-track:e5fdf315d6e3a2dcc086a147cad5a05745684154f6796c1777f43d0048d019bf` |
| 12 | `theorem` | [pow_def](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/pow-def--04706e9eaa2c4770af75695d.md) | 123 | `result-track:04706e9eaa2c4770af75695d2c4d118c45336e90680004a546539cc41570ce4d` |
| 13 | `def` | [mulEquiv](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/mulequiv--52e9a650ebd0cd42862e190f.md) | 135 | `declaration-track:52e9a650ebd0cd42862e190f9af2f8a3207442f96103daca256d410b84ba01fb` |
| 14 | `theorem` | [mulEquiv_apply](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/mulequiv-apply--3747bfb3fa4d8445f7ccc028.md) | 148 | `result-track:3747bfb3fa4d8445f7ccc0280af75f1c4385a48634b0ce329a1dddd09ccdd7d0` |
| 15 | `theorem` | [mulEquiv_symm_apply](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/mulequiv-symm-apply--85e638f5c6f69a2593aff56f.md) | 154 | `result-track:85e638f5c6f69a2593aff56fc6d83bacd052cf67be8431119eecb62310200613` |
| 16 | `def` | [ringEquiv](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/ringequiv--95315f3b9577c2c56c09ff9d.md) | 165 | `declaration-track:95315f3b9577c2c56c09ff9d54a796016f9c82a0af0593e251e23893b7959ddb` |
| 17 | `theorem` | [ringEquiv_apply](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/ringequiv-apply--e7978284c877275e6b7f6b98.md) | 181 | `result-track:e7978284c877275e6b7f6b986409e588609134a4af21eb8285dd940c9585a652` |
| 18 | `theorem` | [ringEquiv_symm_apply](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/ringequiv-symm-apply--7c4b749594cc25f65c5f15ce.md) | 185 | `result-track:7c4b749594cc25f65c5f15cee4dbc4d65acdeabcf4e395056026dc0eaca6622d` |
| 19 | `def` | [semigroup](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/semigroup--b8c220b0d355f6f47f8b2d47.md) | 193 | `declaration-track:b8c220b0d355f6f47f8b2d470c2503a6fe4c247ba9f6ca6eaf09543519435a86` |
| 20 | `def` | [semigroupWithZero](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/semigroupwithzero--e3dadb9c6541dcb2a6e1a2a5.md) | 201 | `declaration-track:e3dadb9c6541dcb2a6e1a2a501d2e88e33dea6ae70e3bbf41c798969191be178` |
| 21 | `def` | [commSemigroup](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/commsemigroup--67d180684546bf7a5fa1e079.md) | 209 | `declaration-track:67d180684546bf7a5fa1e079cea4f16aed309d155d3f1dbbf2fd30703d57fd96` |
| 22 | `def` | [mulZeroClass](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/mulzeroclass--3525f999cfe88dfc25cadfe5.md) | 217 | `declaration-track:3525f999cfe88dfc25cadfe59c52016ed33462618ad344378dee5f7d13b66615` |
| 23 | `def` | [mulOneClass](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/muloneclass--53d18b1c0f51ca0115b2ab92.md) | 225 | `declaration-track:53d18b1c0f51ca0115b2ab9271a62fe4d01950303243b70970486b9888d7fdea` |
| 24 | `def` | [mulZeroOneClass](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/mulzerooneclass--c206929fdfe495593cee6b73.md) | 234 | `declaration-track:c206929fdfe495593cee6b73c48866c3a2dbb0bd70592bf121e409f43d8e6190` |
| 25 | `def` | [monoid](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/monoid--3adc41c015d9ca9c9394f402.md) | 243 | `declaration-track:3adc41c015d9ca9c9394f402d57ebe866a0d28b3a705eab0d37525056582d1d2` |
| 26 | `def` | [commMonoid](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/commmonoid--68b0d82b1fb5d95bca8ced42.md) | 253 | `declaration-track:68b0d82b1fb5d95bca8ced42415bde413721ea5811b4bd499dc04692cb447da3` |
| 27 | `def` | [group](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/group--c44dbbb71ddeb18435e9a310.md) | 263 | `declaration-track:c44dbbb71ddeb18435e9a310c44d383ce66432e58a3410e750844a2a7ff8ffa1` |
| 28 | `def` | [commGroup](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/commgroup--6c7ba0e9895c6eb1d6b09857.md) | 276 | `declaration-track:6c7ba0e9895c6eb1d6b09857a83a14ad76638653926d4072b204677e0660e14c` |
| 29 | `def` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/nonunitalnonassocsemiring--7e92a7d10ac030495378021d.md) | 289 | `declaration-track:7e92a7d10ac030495378021d0816cc5ea0d37c177332cdb124d65b520add6396` |
| 30 | `def` | [nonUnitalSemiring](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/nonunitalsemiring--2c48ba6dc24e4db7e549b646.md) | 300 | `declaration-track:2c48ba6dc24e4db7e549b646cef84f5ee6931f93778e65f04493478325126266` |
| 31 | `def` | [addMonoidWithOne](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/addmonoidwithone--c60b64d841a4e120384b514e.md) | 310 | `declaration-track:c60b64d841a4e120384b514ece9bf2fa16916a4bc006ccff030281382ffc3476` |
| 32 | `def` | [addGroupWithOne](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/addgroupwithone--86ca40e4942a42b8cbeb4339.md) | 319 | `declaration-track:86ca40e4942a42b8cbeb433912c86d1653e39da9ef0014371b63f9bb9425130e` |
| 33 | `def` | [nonAssocSemiring](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/nonassocsemiring--bd423efd6a4c562bf368ff17.md) | 330 | `declaration-track:bd423efd6a4c562bf368ff1730f1f36b0c4f791b6002c607667c5331d15fe496` |
| 34 | `def` | [semiring](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/semiring--6849f79e1cfceb31f475c3bf.md) | 338 | `declaration-track:6849f79e1cfceb31f475c3bf8ab06886f8e027085c64b37742c70ab2e46d5d2b` |
| 35 | `def` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/nonunitalcommsemiring--58fb8ce6d5efd08df8fde2fc.md) | 347 | `declaration-track:58fb8ce6d5efd08df8fde2fc6cf38e1c254a48cb55498d2d1c1070c4f5a3fea1` |
| 36 | `def` | [commSemiring](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/commsemiring--32f88ad88f4d67f80bd9009b.md) | 357 | `declaration-track:32f88ad88f4d67f80bd9009bfb5c15da605016c66db0c90b1758d3af440cf88b` |
| 37 | `def` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/nonunitalnonassocring--df3d442ee7d30a38807c56cd.md) | 366 | `declaration-track:df3d442ee7d30a38807c56cd1cf57cf7e770ece9bcc800c8db65fdeecdd27d71` |
| 38 | `def` | [nonUnitalRing](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/nonunitalring--05743a4acbf67dd40287df4b.md) | 379 | `declaration-track:05743a4acbf67dd40287df4bab5f0c7f6479cb2ec3b6819ad6b2c082b59baa64` |
| 39 | `def` | [nonAssocRing](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/nonassocring--5c20293bba3c89fa2a496a1b.md) | 392 | `declaration-track:5c20293bba3c89fa2a496a1b107642fe16eb64341ede1bbab2e520364e223a4e` |
| 40 | `def` | [ring](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/ring--a4f96b8609e3204a629745e6.md) | 400 | `declaration-track:a4f96b8609e3204a629745e617c3df61178bfa3b01a802a22954eac6ce259c1c` |
| 41 | `def` | [nonUnitalCommRing](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/nonunitalcommring--d1e934d6e032da40dd2280f8.md) | 409 | `declaration-track:d1e934d6e032da40dd2280f8d45bcdc199d1f9deca108a7b532882d548e03369` |
| 42 | `def` | [commRing](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/commring--e88ff1d1143ec9758a6cdcdb.md) | 422 | `declaration-track:e88ff1d1143ec9758a6cdcdbe2736fb6f79b369439b4e66e5c4f4fb94912f686` |
| 43 | `theorem` | [nontrivial](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/nontrivial--a6ebc74436f9ad37e3a3e76a.md) | 431 | `result-track:a6ebc74436f9ad37e3a3e76a3c2e350050cf598a8c60f167f687c37d99362953` |
| 44 | `theorem` | [isDomain](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/isdomain--c9cae20eca3fcff32938651c.md) | 437 | `result-track:c9cae20eca3fcff32938651c99d509a505e0ec021af225dc47378e9ef80011ec` |
| 45 | `def` | [RatCast](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/ratcast--e30538e0645a23a06399ba99.md) | 443 | `declaration-track:e30538e0645a23a06399ba991883171cafe7f90bdca0b5ae6ac001c4d4172793` |
| 46 | `def` | [divisionRing](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/divisionring--1f80712e735e3a5a6db3663c.md) | 448 | `declaration-track:1f80712e735e3a5a6db3663c64cf51276b108aab32241b8c11dd21c509aa8f61` |
| 47 | `def` | [field](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/field--58ee7b48d97a7202782bed9e.md) | 462 | `declaration-track:58ee7b48d97a7202782bed9eb2f46cc4fbaf1525d0686e885a706c4ed02b4193` |
| 48 | `def` | [mulAction](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/mulaction--51b13d9ad45bfda5dcec616b.md) | 485 | `declaration-track:51b13d9ad45bfda5dcec616bad8cb409b0cb266d395c2b648c2205e9f6f0ad05` |
| 49 | `def` | [distribMulAction](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/distribmulaction--ad322bd8c75cfc213d3ea1fc.md) | 493 | `declaration-track:ad322bd8c75cfc213d3ea1fc7bfac191ba703545e74640e012dbc46ceabef4f6` |
| 50 | `def` | [module](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/module--66579c5291ef2770ae2fe278.md) | 513 | `declaration-track:66579c5291ef2770ae2fe278f2ed1303edfd1bf34997cde4924edf7c33492694` |
| 51 | `def` | [linearEquiv](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/linearequiv--53da4798fbe8adea49c404e2.md) | 528 | `declaration-track:53da4798fbe8adea49c404e22a6ebf7b140f7287fcff48287c069262c0dd9d29` |
| 52 | `def` | [algebra](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/algebra--558b43915d22a21214773bfb.md) | 549 | `declaration-track:558b43915d22a21214773bfb32d47338f6ff419371e3c53af1cb42722497ad3e` |
| 53 | `def` | [algEquiv](../../../../mathematics/Algebra/TransferInstance/Variant0d8d8a858170cd4d4005205eca723bfe3da6bec84dbfe9a175dcf95a7cb91f99.lean/declarations/algequiv--e9b9346467a986b8cb7e2384.md) | 570 | `declaration-track:e9b9346467a986b8cb7e23848b4c43c8194c6e0b791230b6329ead2ed040caa2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
