# Verification target: GRWTSK.Algebra.LinearAlgebra.WithLp.Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79d4744242146e71407cd590eff792d7764305ec",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79d4744242146e71407cd590eff792d7764305ec`.

Source path: `GRWTSK/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean.json)

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
| 1 | `structure` | [WithLp](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/withlp--c766898b642733bcdff6ec96.md) | 58 | `declaration-track:c766898b642733bcdff6ec96fdca1b86cdd743d195a9c67c19814570a8451583` |
| 2 | `def` | [WithLp.delabToLp](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/withlp-delabtolp--299291287bba1687fbb34b20.md) | 70 | `declaration-track:299291287bba1687fbb34b2055f140c5af8c5f10420feb00ea4d1f37fa38fb72` |
| 3 | `def` | [equiv](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/equiv--f9bbd6d9be2b14aa273e073d.md) | 80 | `declaration-track:f9bbd6d9be2b14aa273e073da555c310594a0a882f24a7e7fcd760c7b05d6028` |
| 4 | `lemma` | [equiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/equiv-symm-apply--fe1adcb84a6c8a8ff8c35466.md) | 87 | `result-track:fe1adcb84a6c8a8ff8c3546693ea87e56c680e56c14b34d1eb56e7005690a3c3` |
| 5 | `instance` | [instNontrivial](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/instnontrivial--7500e67737881c5ea38a8fa5.md) | 91 | `declaration-track:7500e67737881c5ea38a8fa59f109aab743ffaab5e7f6ed7e3a120709f5ba332` |
| 6 | `instance` | [instUnique](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/instunique--e91c322301caefd3edc8d991.md) | 92 | `declaration-track:e91c322301caefd3edc8d99194e2b40c9a17baf9f3125b115ea73f4b5517622c` |
| 7 | `instance` | [instDecidableEq](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/instdecidableeq--30c6e2c0818abfcb8586eab2.md) | 93 | `declaration-track:30c6e2c0818abfcb8586eab22d8289a5562c9a761bc31b35aec7edd23cf45d8b` |
| 8 | `instance` | [instAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/instaddcommgroup--8ab7f81252d588efd3a92fe5.md) | 96 | `declaration-track:8ab7f81252d588efd3a92fe5ba54746518592e5c41a10246d18fcf26f68f11a4` |
| 9 | `instance` | [instSMul](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/instsmul--b93fba7ed9a3f1eb56f26e46.md) | 98 | `declaration-track:b93fba7ed9a3f1eb56f26e46e64b20e4685148acd2cd7496d33c9b856e5e24a0` |
| 10 | `instance` | [instMulAction](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/instmulaction--beae549136c479113d829982.md) | 100 | `declaration-track:beae549136c479113d829982142f977ef79ebb67d48f5f50745adb3c46e0c1fd` |
| 11 | `lemma` | [ofLp_toLp](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/oflp-tolp--d7cd7bc6f3008d3873a12c55.md) | 105 | `result-track:d7cd7bc6f3008d3873a12c552a0219ea38c567a7a351cb9430cb12287b988242` |
| 12 | `lemma` | [toLp_ofLp](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/tolp-oflp--72612302890a90093293c3bf.md) | 106 | `result-track:72612302890a90093293c3bfdeb701424825629ea8010a9ac6400d2a8f0e85cc` |
| 13 | `lemma` | [ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/ext-iff--80ce207a32e0c08b3d67a8fc.md) | 108 | `result-track:80ce207a32e0c08b3d67a8fc20497420f308cdc7b2b42e72c2303b2ef1d22611` |
| 14 | `lemma` | [ofLp_surjective](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/oflp-surjective--93aa448b6ebc4770b0f5c2b1.md) | 111 | `result-track:93aa448b6ebc4770b0f5c2b179319919a7c8c4197137a53623e27af043f3be8f` |
| 15 | `lemma` | [toLp_surjective](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/tolp-surjective--184812a21b72ddbd216ed828.md) | 114 | `result-track:184812a21b72ddbd216ed828d51c2158b42d9e02c24f07faae810c4a526d817e` |
| 16 | `lemma` | [ofLp_injective](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/oflp-injective--ff761daf87f6d60db88fcdf9.md) | 117 | `result-track:ff761daf87f6d60db88fcdf95ddd857c9be25b17fffe8a88fb97f785c2ffe26e` |
| 17 | `lemma` | [toLp_injective](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/tolp-injective--18d6d5269a74cb1fd5edbcdf.md) | 120 | `result-track:18d6d5269a74cb1fd5edbcdfc96d07e47d4d9b82b902210cf3e95ac1e157452c` |
| 18 | `lemma` | [ofLp_bijective](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/oflp-bijective--3f477c05dee887536fb13dab.md) | 123 | `result-track:3f477c05dee887536fb13dabc1861c9b78dd1a9268ca6890c7117b7a6249b637` |
| 19 | `lemma` | [toLp_bijective](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/tolp-bijective--f07c75fc29d6325cce88b27a.md) | 126 | `result-track:f07c75fc29d6325cce88b27ae47c36d64246f77e70508073bb5f0714900a3a7e` |
| 20 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/map--ad8b912197cfa905b06b743f.md) | 131 | `declaration-track:ad8b912197cfa905b06b743fbcba8bc8d7a44e404cb56d68309d1d2180f887b6` |
| 21 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/map-id--8c00961230c97a07c37186c8.md) | 135 | `result-track:8c00961230c97a07c37186c8fd9e6cf0d5cc4d1268b76c9f58d3ed26412e6fc7` |
| 22 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/map-comp--fdf7f1e1de03efbe4909c9b6.md) | 138 | `result-track:fdf7f1e1de03efbe4909c9b646e4ca780c5fe80ab338b4ff16548ed09e2745d6` |
| 23 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/congr--8250249a3a51e42f859d7259.md) | 143 | `declaration-track:8250249a3a51e42f859d7259a78645688b4c89c6ab0fbb0215d6c754117417da` |
| 24 | `theorem` | [coe_congr](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/coe-congr--ce8d838aa47e00d2ef8f3faa.md) | 147 | `result-track:ce8d838aa47e00d2ef8f3faa28904f97bd6f202a1656ef04ec6d1b0257b18486` |
| 25 | `theorem` | [congr_refl](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/congr-refl--75cd80018993a5122b43ac97.md) | 151 | `result-track:75cd80018993a5122b43ac979f6ee646c57f937eb05db5d14a63eb4ffddf35c6` |
| 26 | `theorem` | [congr_symm](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/congr-symm--4e705be528b2f2fb294601bb.md) | 155 | `result-track:4e705be528b2f2fb294601bbbb7a8cab802275be6ae3f4b5a7d3aedbe99f5a1e` |
| 27 | `theorem` | [congr_trans](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/congr-trans--d5f6b149070935e9f1bc8c82.md) | 158 | `result-track:d5f6b149070935e9f1bc8c82128f2d95f9127e138e5bc6ec764689e9d2aace64` |
| 28 | `lemma` | [toLp_zero](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/tolp-zero--970cdca680a27198820c1a2a.md) | 165 | `result-track:970cdca680a27198820c1a2ab53113c13c1acb9a5b3541c747593b2741b0a800` |
| 29 | `lemma` | [ofLp_zero](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/oflp-zero--c6044e5a370a59d348524505.md) | 166 | `result-track:c6044e5a370a59d34852450547ca3a7017f7052f6706f06022f2197c2cd92163` |
| 30 | `lemma` | [toLp_add](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/tolp-add--2aa6a4626eb885e4f603a9fe.md) | 168 | `result-track:2aa6a4626eb885e4f603a9fe20b25943fa4c62bd4c0bee82b7c78926a149ba13` |
| 31 | `lemma` | [ofLp_add](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/oflp-add--d446f4e100aa5713f4e63467.md) | 169 | `result-track:d446f4e100aa5713f4e63467b62e869e99e5994319c343f7d525b0640e27d237` |
| 32 | `lemma` | [toLp_sub](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/tolp-sub--cd6bcf63ec45e2a88eda1861.md) | 171 | `result-track:cd6bcf63ec45e2a88eda186110de449fa99c1f7528bf4966fbec3f437d7417d3` |
| 33 | `lemma` | [ofLp_sub](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/oflp-sub--ce9d49cdb87dec4975814b8d.md) | 172 | `result-track:ce9d49cdb87dec4975814b8d4316f7304b58d061743acd7f804c9c16f170bd9c` |
| 34 | `lemma` | [toLp_neg](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/tolp-neg--0096777eb1a5dc844163bea3.md) | 174 | `result-track:0096777eb1a5dc844163bea33dbfa9149174f578f0415e18e20e828f113fc8c0` |
| 35 | `lemma` | [ofLp_neg](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/oflp-neg--473a31bdd6cc5d9d902e2075.md) | 175 | `result-track:473a31bdd6cc5d9d902e2075b1b0505f9ce7eb8a0fe27281ef0db0f2ad09d27c` |
| 36 | `lemma` | [toLp_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/tolp-eq-zero--b4cde5efe878818d10d3fb5e.md) | 177 | `result-track:b4cde5efe878818d10d3fb5e9932455ba497821c128ed91e5aac0bc3355d751a` |
| 37 | `lemma` | [ofLp_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/oflp-eq-zero--157bc58d1f6aa0258010ade0.md) | 178 | `result-track:157bc58d1f6aa0258010ade0b9f6342358449919baa94e610f7ee2b6c8f1dc31` |
| 38 | `lemma` | [toLp_smul](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/tolp-smul--4fc3cc20aac2be73527ca2c5.md) | 182 | `result-track:4fc3cc20aac2be73527ca2c5390177a0c2d9c0fc333da1268c0e17be744e0788` |
| 39 | `lemma` | [ofLp_smul](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/oflp-smul--db7c370d8708867bd1e3b956.md) | 183 | `result-track:db7c370d8708867bd1e3b9566043bdd4992d7996923fd08cdeb16f70b3110bea` |
| 40 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/instisscalartower--4fb0cb11cf8409d25f40ad01.md) | 186 | `declaration-track:4fb0cb11cf8409d25f40ad019ead1ecf6a5371c5d6f484510cfe2e338727abe0` |
| 41 | `instance` | [instSMulCommClass](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/instsmulcommclass--52c3f44de6f2fc84a76927cf.md) | 191 | `declaration-track:52c3f44de6f2fc84a76927cfa04db3d913eb4dd1edabd1e6c20901538030455a` |
| 42 | `def` | [addEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/addequiv--35297f6ce4ef332c23df0cdd.md) | 199 | `declaration-track:35297f6ce4ef332c23df0cdda202ccd61ace5aaee0bf3e8d5a7eb9a6e5642c1f` |
| 43 | `lemma` | [coe_addEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/coe-addequiv--9f9652542ff37bb8d869634b.md) | 204 | `result-track:9f9652542ff37bb8d869634bd8f067504028410dfb23b565b8f2e7ed5ca658cc` |
| 44 | `lemma` | [coe_symm_addEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/coe-symm-addequiv--ce89a1dad1f0505e19c65280.md) | 206 | `result-track:ce89a1dad1f0505e19c652808b190f1c8a404894a285ff466f5bb1b2571ca42d` |
| 45 | `lemma` | [ofLp_sum](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/oflp-sum--2ac7c3e2fee0f72f5fc2de29.md) | 209 | `result-track:2ac7c3e2fee0f72f5fc2de29a79e0e0f6797f3904a882e4682bb7eb4c5683ec2` |
| 46 | `lemma` | [toLp_sum](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/tolp-sum--150d319ccf29403d1e6b0ba7.md) | 214 | `result-track:150d319ccf29403d1e6b0ba7cc8ac62e6b236aaf04dd4cd4583507cc185e8ffd` |
| 47 | `lemma` | [ofLp_listSum](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/oflp-listsum--34d1ada5f87d8a140d0e4e6a.md) | 219 | `result-track:34d1ada5f87d8a140d0e4e6aef0462922a36564fc7cc2a5c1fa40be93efede9c` |
| 48 | `lemma` | [toLp_listSum](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/tolp-listsum--ebee424ff3f25b8a9c2174b7.md) | 224 | `result-track:ebee424ff3f25b8a9c2174b7c99babc684c304600511360efa46a8b4134af7ac` |
| 49 | `lemma` | [ofLp_multisetSum](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/oflp-multisetsum--e77efa064704b174d9f42fbf.md) | 229 | `result-track:e77efa064704b174d9f42fbf1750bb8593dd3b24268e5b4c04b8650fdf01edb0` |
| 50 | `lemma` | [toLp_multisetSum](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/tolp-multisetsum--ef681ecc8fa699cafa827100.md) | 234 | `result-track:ef681ecc8fa699cafa82710021023b651d9c3b736a3cbff8e1db01ca26dc9ff2` |
| 51 | `instance` | [instDistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/instdistribmulaction--c4f7fe41b75add491f3aec19.md) | 238 | `declaration-track:c4f7fe41b75add491f3aec19db108074bd8a231875a98fda413ff7d8dd0e241d` |
| 52 | `instance` | [instModule](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/instmodule--25105234e492d88aa89e8449.md) | 240 | `declaration-track:25105234e492d88aa89e844967d0acc7f097aca30dbd3099b852729a52a6343f` |
| 53 | `def` | [linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/linearequiv--596be0fd1687e7b4624110e7.md) | 245 | `declaration-track:596be0fd1687e7b4624110e74c3e3f365cd29362bb2ababa06737bc7bc902e69` |
| 54 | `lemma` | [coe_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/coe-linearequiv--cd63c7da71f0101919606dc9.md) | 249 | `result-track:cd63c7da71f0101919606dc9f8428c3b4369a2b065ff8c161036923001bc2ed7` |
| 55 | `lemma` | [coe_symm_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/coe-symm-linearequiv--b34d7d2430e080e1bbb84cee.md) | 252 | `result-track:b34d7d2430e080e1bbb84cee2ba741afcf78f74b62ca918693806a7b1bf9871e` |
| 56 | `lemma` | [toAddEquiv_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/toaddequiv-linearequiv--ce369c7be01cc90956f85d51.md) | 256 | `result-track:ce369c7be01cc90956f85d51cecc34ad6429a6d83bb593668fec1e9b2f4adc16` |
| 57 | `instance` | [instModuleFinite](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/instmodulefinite--b7e04d52ddd335b0a3648c69.md) | 259 | `declaration-track:b7e04d52ddd335b0a3648c6903bac631621df1015e7100673606eb09d665d1fb` |
| 58 | `def` | [withLpMap](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/withlpmap--e7e8ba6e87efb7bf13bd1e8b.md) | 278 | `declaration-track:e7e8ba6e87efb7bf13bd1e8b72c7cbf9f89da5cdfbbc5b1e056d891ca359af15` |
| 59 | `theorem` | [coe_withLpMap](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/coe-withlpmap--74192ddfe76f7eb8d34798dd.md) | 282 | `result-track:74192ddfe76f7eb8d34798dd363a3b2a5afa57fdefceecf4193da4a1a1f322cf` |
| 60 | `theorem` | [withLpMap_id](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/withlpmap-id--e08171a15e588b5baeed148a.md) | 286 | `result-track:e08171a15e588b5baeed148a688f9fed341c01efaa20d0822694f58770fd4574` |
| 61 | `theorem` | [withLpMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/withlpmap-comp--371e97dd672d6ee1abdd7dad.md) | 290 | `result-track:371e97dd672d6ee1abdd7dadd3383fe299fd71753c6fed8fff2fe0d05f9c21be` |
| 62 | `def` | [withLpCongr](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/withlpcongr--75c8a9ef40bf1b4b26bd98d3.md) | 299 | `declaration-track:75c8a9ef40bf1b4b26bd98d3e3b008bcb1e7acfc29295a935318a7eb4439385c` |
| 63 | `theorem` | [coe_withLpCongr](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/coe-withlpcongr--5f4cda5b667fb23c9750af0c.md) | 303 | `result-track:5f4cda5b667fb23c9750af0cc82b019b45cc0758a128a20e06d9015aa4d6e760` |
| 64 | `theorem` | [withLpCongr_symm](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/withlpcongr-symm--ac2489687b435f1b65787a52.md) | 307 | `result-track:ac2489687b435f1b65787a5264c15fb417749386a5cc19964fbfe7288465b8da` |
| 65 | `theorem` | [withLpCongr_refl](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/withlpcongr-refl--dcad5bae141070ca34aece5a.md) | 311 | `result-track:dcad5bae141070ca34aece5a8a7ffc38a87e558d1e3f0197a7cd359b181cf25e` |
| 66 | `theorem` | [withLpCongr_trans](../../../../../mathematics/Algebra/LinearAlgebra/WithLp/Variant96b6e64c500616570e4363a6fbd6e9a4676402ea1d7b1e14f41409818c4694e1.lean/declarations/withlpcongr-trans--fb492e83f033e576f26f9687.md) | 315 | `result-track:fb492e83f033e576f26f9687299e367863fd3eb4a6758bfb50ef9e300c17e801` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
