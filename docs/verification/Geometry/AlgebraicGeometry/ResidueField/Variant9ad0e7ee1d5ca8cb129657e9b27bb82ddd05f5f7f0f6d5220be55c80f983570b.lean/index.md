# Verification target: GRWTSK.Geometry.AlgebraicGeometry.ResidueField.Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4384dfd7ac628f7087956a6a2d18b0a9a4433cb2",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4384dfd7ac628f7087956a6a2d18b0a9a4433cb2`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean.json)

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
| 1 | `def` | [residueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residuefield--5cd8d469fd28886ba8ae4db6.md) | 45 | `declaration-track:5cd8d469fd28886ba8ae4db64d24864019de383f137d740a6cd0db74afb077dc` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/instance--8edbee808e6980dafd2aa8c1.md) | 48 | `declaration-track:8edbee808e6980dafd2aa8c1baea0e27aa73225a8d192e16cec852e67b636afb` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/instance--810a811bc09fd41c168d08a0.md) | 51 | `declaration-track:810a811bc09fd41c168d08a04b01744e304987a886df1af1d03635b1756ad533` |
| 4 | `def` | [residue](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residue--e7a679da48703e3b8153145e.md) | 54 | `declaration-track:e7a679da48703e3b8153145ee7d6d579f19c3705e09ae8099d5f32e8c27532dd` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/instance--c675ea02ed098c949b79ebde.md) | 59 | `declaration-track:c675ea02ed098c949b79ebdea682bccded46fda2e04e4ffc7e0c27f983ea591f` |
| 6 | `lemma` | [SpecMap_residue_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/specmap-residue-apply--5208cb224fc24d5961388e11.md) | 66 | `result-track:5208cb224fc24d5961388e11f54c77e3d7d4d1685d621661668b656628b7e341` |
| 7 | `lemma` | [residue_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residue-surjective--e49a367e8b10ee6f775727a2.md) | 70 | `result-track:e49a367e8b10ee6f775727a218351372ebe5f0f05bf9c478391dcba4ab0e4f41` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/instance--f6f31febaf5a5e9cf430f7a9.md) | 73 | `declaration-track:f6f31febaf5a5e9cf430f7a9b19d921876d13398d0444452aa5dc89ea2a90a41` |
| 9 | `def` | [descResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/descresiduefield--38c41953909ae0d09082f364.md) | 78 | `declaration-track:38c41953909ae0d09082f364f013d507c610bb86f2a352bace8a3d572bf47d69` |
| 10 | `lemma` | [residue_descResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residue-descresiduefield--4de22de568c3fd0ae8c1c20e.md) | 84 | `result-track:4de22de568c3fd0ae8c1c20ed6589b5903126802f9287ec78141542650a7e244` |
| 11 | `def` | [evaluation](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/evaluation--2f052d99575bcab935920ea2.md) | 96 | `declaration-track:2f052d99575bcab935920ea2ae2e366ddfaee0aea4b823a85c072eed754b8c8a` |
| 12 | `lemma` | [germ_residue](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/germ-residue--37d0957ea65f45cd8c347f25.md) | 100 | `result-track:37d0957ea65f45cd8c347f250a1c9d04dbbfe66fd631d6d5f4c92ad0c3af0a1d` |
| 13 | `abbrev` | [Γevaluation](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/evaluation--b1dc3db950b22c3ed107231f.md) | 103 | `declaration-track:b1dc3db950b22c3ed107231f651c80e354fae09869f5056ce9f467d673505cd1` |
| 14 | `lemma` | [evaluation_eq_zero_iff_notMem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/evaluation-eq-zero-iff-notmem-basicopen--c47c15a2e5961968b68160cd.md) | 107 | `result-track:c47c15a2e5961968b68160cde07a074f2b3a4a7b3058cd78c0bacbd8c02f0ead` |
| 15 | `lemma` | [evaluation_ne_zero_iff_mem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/evaluation-ne-zero-iff-mem-basicopen--eb82a1342aa5255e5c6fbce8.md) | 111 | `result-track:eb82a1342aa5255e5c6fbce829a0adc6ba11c25758ea9efc9604e48ef9333043` |
| 16 | `lemma` | [basicOpen_eq_bot_iff_forall_evaluation_eq_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/basicopen-eq-bot-iff-forall-evaluation-eq-zero--b90a4194219260b64a8a7c36.md) | 115 | `result-track:b90a4194219260b64a8a7c36e27a4bf95e4290d0c72b0d4376a1339d4a4fc33b` |
| 17 | `def` | [Hom.residueFieldMap](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/hom-residuefieldmap--f8f7f1fbde3f369e39a4af7d.md) | 123 | `declaration-track:f8f7f1fbde3f369e39a4af7d7658ecda3841c76e7541633f10417c03d97237c4` |
| 18 | `lemma` | [residue_residueFieldMap](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residue-residuefieldmap--de73efab4dbd4c4e7031465b.md) | 128 | `result-track:de73efab4dbd4c4e7031465bfca4b40ac1e523b5c398f8f376ad7b3397392544` |
| 19 | `lemma` | [residueFieldMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residuefieldmap-id--37f50cd439180f46636348f1.md) | 134 | `result-track:37f50cd439180f46636348f10f4ea5759c0f6c04e8933cdbd133d498b80bab39` |
| 20 | `lemma` | [residueFieldMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residuefieldmap-comp--addba13fcbd5c64c9ba1a6ce.md) | 139 | `result-track:addba13fcbd5c64c9ba1a6ce5a7d8d439fe0f0ca32ddd9554ec8f5a96f075458` |
| 21 | `def` | [Hom.residueDegree](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/hom-residuedegree--c7de54930eba33cf09c21351.md) | 147 | `declaration-track:c7de54930eba33cf09c21351158267a2cb8546a18239a63be04c4c716758ba56` |
| 22 | `lemma` | [Hom.residueDegree_id](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/hom-residuedegree-id--bc99386a62b301bf94c0716c.md) | 152 | `result-track:bc99386a62b301bf94c0716c370b5208f660b69b220ce9fe96fc64fa03389b6a` |
| 23 | `lemma` | [evaluation_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/evaluation-naturality--e868baeacd6db23a3f6ea59b.md) | 158 | `result-track:e868baeacd6db23a3f6ea59b69286d56a087dac2831f01e67ab25974aef4c0b4` |
| 24 | `lemma` | [evaluation_naturality_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/evaluation-naturality-apply--9eeae9f7634e3130b8932f4d.md) | 163 | `result-track:9eeae9f7634e3130b8932f4d81985f4b4e8033d26f0bbad2fa960b473ded22dd` |
| 25 | `lemma` | [Γevaluation_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/evaluation-naturality--14ad0091a3e056bfcef55b9a.md) | 169 | `result-track:14ad0091a3e056bfcef55b9a9350b8ca62134672f8077e7f8db590d35b60917c` |
| 26 | `lemma` | [Γevaluation_naturality_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/evaluation-naturality-apply--7550463666150e6cb69a6926.md) | 173 | `result-track:7550463666150e6cb69a6926c85ccd3a76611d76fb4324bb8148085bda1ef70d` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/instance--9002f1f08b41601fe7f583e6.md) | 177 | `declaration-track:9002f1f08b41601fe7f583e61bc1cade6485d50d1395acba5317359f706d091d` |
| 28 | `def` | [residueFieldCongr](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residuefieldcongr--fba35cbf29180a42a703dde4.md) | 185 | `declaration-track:fba35cbf29180a42a703dde41d8ab07fb816859a06617e89fd6dd96f6fcb3d7b` |
| 29 | `lemma` | [residueFieldCongr_refl](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residuefieldcongr-refl--1892d569574cb7854d93acdb.md) | 190 | `result-track:1892d569574cb7854d93acdb89de75691a7e3b1507e9295c3a44ce2813a07455` |
| 30 | `lemma` | [residueFieldCongr_symm](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residuefieldcongr-symm--b8f53cd99417df67f7142c8b.md) | 194 | `result-track:b8f53cd99417df67f7142c8bc638a6d95342ceb91704dc12de6819e090e84b3a` |
| 31 | `lemma` | [residueFieldCongr_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residuefieldcongr-inv--ebbace1835d8fc3fbf5e0a7e.md) | 198 | `result-track:ebbace1835d8fc3fbf5e0a7e4c6d90788c5e9eac7461eaa8a9fb83fe732e323d` |
| 32 | `lemma` | [residueFieldCongr_trans](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residuefieldcongr-trans--af754a124b44df68ec5999e5.md) | 202 | `result-track:af754a124b44df68ec5999e594e4fbfef17d0b6c9faaedc0b29e17de595b0173` |
| 33 | `lemma` | [residueFieldCongr_trans_hom](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residuefieldcongr-trans-hom--ab492315e527c71b4f0bb679.md) | 208 | `result-track:ab492315e527c71b4f0bb679710cc9e699dc045a5e915950c1a991605e7358e2` |
| 34 | `lemma` | [residue_residueFieldCongr](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residue-residuefieldcongr--67c567d34a9ab019f9bd68d7.md) | 215 | `result-track:67c567d34a9ab019f9bd68d7b3c972f36880459c1de5e2fa8ec785c17cb36153` |
| 35 | `lemma` | [Hom.residueFieldMap_congr](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/hom-residuefieldmap-congr--34e5655e0df5f13b2a6beb8d.md) | 221 | `result-track:34e5655e0df5f13b2a6beb8d64cad75197028bf314242527c56da53a8886dcbc` |
| 36 | `lemma` | [Hom.residueFieldMap_congr'](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/hom-residuefieldmap-congr--1c5b850a732cf645ebe0f8ee.md) | 226 | `result-track:1c5b850a732cf645ebe0f8ee78dd6f5de87c9e73fc70fa8146e8ae51f150495b` |
| 37 | `def` | [fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/fromspecresiduefield--33b7e2c9becc76fcc36ced62.md) | 237 | `declaration-track:33b7e2c9becc76fcc36ced62ec3c1b2b5f793ee4df9185d8a7615eaf918d106e` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/instance--19bcef9a0705a571c30c2885.md) | 241 | `declaration-track:19bcef9a0705a571c30c2885e50a879e05617af8e3b1fb4662f4724e6352dfe4` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/instance--6a192b53b490740fc3fd4def.md) | 247 | `declaration-track:6a192b53b490740fc3fd4def5b269b32224934b14082a226279198d321b0f3e0` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/instance--e5eaf1007f711bd124f4a956.md) | 250 | `declaration-track:e5eaf1007f711bd124f4a956d515187d92dad8c48196492621d1811bf1ab9e8e` |
| 41 | `lemma` | [residueFieldCongr_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/residuefieldcongr-fromspecresiduefield--5125c0392da1911fcf70e37d.md) | 253 | `result-track:5125c0392da1911fcf70e37d7e4989f551e2750a00b9ff7387ec99f8040bedbb` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/instance--6cc3efabcd20f268194d8eba.md) | 258 | `declaration-track:6cc3efabcd20f268194d8ebae5a88ad52be135188466a72ad51c984c1dd9dd35` |
| 43 | `lemma` | [Hom.SpecMap_residueFieldMap_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/hom-specmap-residuefieldmap-fromspecresiduefield--2c93355075f41d78126512b1.md) | 261 | `result-track:2c93355075f41d78126512b1c986b2ba6536328ab3dcc284f05f847110e4ca62` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/instance--12b9b2bad8e9a75e9a6f6f30.md) | 269 | `declaration-track:12b9b2bad8e9a75e9a6f6f3080506edd9d871499cd80a9aefd6d2912d021a39e` |
| 45 | `lemma` | [fromSpecResidueField_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/fromspecresiduefield-apply--c73f44dd6cc80e2b851e9497.md) | 272 | `result-track:c73f44dd6cc80e2b851e94974f00b6fc1169fdcc4e23366a9b76d2fb09673ec9` |
| 46 | `lemma` | [range_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/range-fromspecresiduefield--812df0578fda8a775de6c01c.md) | 276 | `result-track:812df0578fda8a775de6c01cd2f9a5f5251f205a0e252da2a5cbbbf363d09917` |
| 47 | `lemma` | [descResidueField_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/descresiduefield-fromspecresiduefield--f04a08455f30d65bd751ea46.md) | 280 | `result-track:f04a08455f30d65bd751ea4639302b32d4ad0f0ebe96317fa4eea70f70ec2042` |
| 48 | `lemma` | [descResidueField_stalkClosedPointTo_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/descresiduefield-stalkclosedpointto-fromspecresiduefield--8cb9d476f7f1e096afc827c4.md) | 286 | `result-track:8cb9d476f7f1e096afc827c458f7c754f662ed0411771f99f894f2f2ecc6f9b3` |
| 49 | `def` | [Spec.residueFieldIso](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/spec-residuefieldiso--1c3ffa7a70fd0b19ee5831e4.md) | 301 | `declaration-track:1c3ffa7a70fd0b19ee5831e44413a06aa394723d4891de36a3c473791a670f40` |
| 50 | `lemma` | [Spec.algebraMap_residueFieldIso_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/spec-algebramap-residuefieldiso-inv--fd05996cb7fbde9a139eca3a.md) | 308 | `result-track:fd05996cb7fbde9a139eca3ac1e8b447c97a0b43f5c44c78dd882e25ee3d3679` |
| 51 | `lemma` | [Spec.residue_residueFieldIso_hom](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/spec-residue-residuefieldiso-hom--c1930f6ad67668ad9d90b700.md) | 314 | `result-track:c1930f6ad67668ad9d90b700d454bacce7c0aafa735601080bc5e6f6afe94161` |
| 52 | `lemma` | [Spec.map_residueFieldIso_inv_eq_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/spec-map-residuefieldiso-inv-eq-fromspecresiduefield--2290edb6e45de6867e84b640.md) | 320 | `result-track:2290edb6e45de6867e84b6405c91cb511ca928d3ae9ad57076cc2cc6618204f2` |
| 53 | `lemma` | [SpecToEquivOfField_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/spectoequivoffield-eq-iff--e8ac2b1e7f31401f57ba69b9.md) | 331 | `result-track:e8ac2b1e7f31401f57ba69b9f67ad5df5aaa42e921d2bb0c330418192789fa9b` |
| 54 | `def` | [SpecToEquivOfField](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/spectoequivoffield--c598499124731cb49526b391.md) | 346 | `declaration-track:c598499124731cb49526b39195a79c4f6c2b8eda28d3039b3bdee984dd836364` |
| 55 | `lemma` | [descResidueField_stalkClosedPointTo_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/ResidueField/Variant9ad0e7ee1d5ca8cb129657e9b27bb82ddd05f5f7f0f6d5220be55c80f983570b.lean/declarations/descresiduefield-stalkclosedpointto-comp--dc98eae5396a2e90901a70d7.md) | 363 | `result-track:dc98eae5396a2e90901a70d7dfa0468d03615e2188c419ed26897ce974e055a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
